// Reconstructed from the IL2CPP (ARM Thumb-2) build of the PS Vita prototype.
// Source of truth: controller.asm (symbolised disassembly) + metadata dump.
//
// General notes:
//  * Field names/types/order/access match the metadata dump so existing scene data still binds.
//  * Several small helper calls were inlined by the C++ compiler (cameraSC.hited/setPlayer/setLifeUI/
//    setChakraUI/setGuardUI/StartNinj/EndCamera/EndtNinj, MyController.SetJump, controller.RecoverChakra).
//    Their inlined bodies match those methods exactly, so they are written here as normal calls.
//  * Almost every public method except Update/Start is an Animator animation-event receiver
//    (step, StartNinj, EndCamera, EndNinj, RecoverChakra, hit, fine, dodge, Jump, Dash, Throw,
//    Combo, AddMove, GuardBreak); Update only sets animator parameters.

using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class controller : MonoBehaviour
{
    [System.Serializable]
    public class Bones
    {
        public Transform head;
        public Transform chest;
        public Transform leftHand;
        public Transform rightHand;
    }

    [System.Serializable]
    public class Sounds
    {
        public AudioSource aud;
        public AudioClip recoverChakra;
        public AudioClip[] hited;
        public AudioClip[] ko;
        public AudioClip[] attack;
        public AudioClip[] jump;
        public AudioClip[] dodge;
    }

    [System.Serializable]
    public class Attacks
    {
        public enum hitType
        {
            upRight = 0,
            upLeft = 1,
            head = 2,
            uppercutS = 3,
            uppercutB = 4,
            kickB = 5
        }

        public string _name;
        public Vector3[] move;
        public controller.Attacks.hitType[] type;
        public int[] dmg;
        public Vector3[] force;
        public int[] soundIndex;
        public GameObject Weapon;
        public GameObject Throw;
    }

    [System.Serializable]
    public class BreakedGuard
    {
        public Vector3[] move;
    }

    [System.Serializable]
    public class CharStats
    {
        public Sprite icon;
        public int hp;
        public int hpMax;
        public int chakra;
        public int chakraMax;
        public int guard;
        public int guardMax;
        public float speedMove;
        public float jumpPower;
        public float dashSpeed;
    }

    [System.Serializable]
    public class Components
    {
        public SkinnedMeshRenderer rend;
        public SkinnedMeshRenderer shadow;
        public Collider col;
        public Animator anim;
        public cameraSC cam;
        public Transform directionToEnemy;
        public AudioSource aud;
        public AudioClip step;
        public AudioClip dash;
        public AudioClip[] hits;
        public AudioClip[] miss;
        public AudioClip[] toFloor;
        public AudioClip substHit;
        public AudioClip startCHRecover;
        public AudioClip substitSound;
        public AudioClip ThrowSound;
        public ParticleSystem ChakraRecoverEffect;
        public GameObject substitutionObj;
        public GameObject ThrowObj;
        public GameObject guardObj;
    }

    [System.Serializable]
    public class _Particles
    {
        public ParticleSystem[] hits;
    }

    public enum State
    {
        nothing = 0,
        hited = 1,
        ko = 2,
        substitution = 3,
        stunned = 4
    }

    public enum Action
    {
        nothing = 0,
        attack = 1,
        guard = 2,
        chRecover = 3
    }

    // Fields
    public controller.Sounds sounds;
    public controller.Bones bones;
    public int _player;
    public controller.State state;
    public controller.Action action;
    public controller.Action oldAction;
    public controller.CharStats stats;
    public bool isPlayer;
    public MyController character;
    public controller target;
    public Transform substitution;
    private bool move;
    private bool oldMove;
    private Vector3 dir;
    public Vector3 moveSpeed;
    public Vector3 moveFight;
    private Vector3 rot;
    public int _jump;
    public int _hit;                 // NOTE: never read or written by any method in this build.
    private bool oldGrounded;
    private float hitForce;
    public controller.Components components;
    public controller._Particles _particles;
    public controller.Attacks[] attacks;
    public Dictionary<string, controller.Attacks> AttacksList = new Dictionary<string, controller.Attacks>();
    public controller.BreakedGuard breakedGuard;
    private controller.Attacks thisAttack;
    private float blockTime;         // time since the guard button (Rtrigger) was first pressed
    private bool oldRtrigger;        // last "guard" value pushed to the animator
    public bool disabled;
    public bool guard;
    private float jumpTime;
    private bool jumpBool;
    public float hitedTime;
    private bool oldGUARDbutton;
    private bool oldSQUAREbutton;    // NOTE: unused in this build.
    private float SQUAREtime;
    private bool SQUAREbool;
    private bool oldTHROWbutton;     // NOTE: unused in this build.
    private float THROWtime;
    private bool THROWbool;
    private Vector3 botDirRandom;
    private float startAttackDist = 1.5f;

    private void Start()
    {
        stats.guard = stats.guardMax;
        for (int i = 0; i < attacks.Length; i++)
        {
            AttacksList.Add(attacks[i]._name, attacks[i]);
        }
        // NOTE: the character starts in State.hited (1); presumably an intro animation event calls fine().
        state = State.hited;
        components.directionToEnemy.parent = null;
        components.cam.setPlayer(this); // inlined in the binary (assigns players[0] or players[1], icon, _player)
        StartCoroutine(guardRecovering());
        StartCoroutine(recoverChakra());
    }

    // Animation event: footstep sound.
    public void step()
    {
        components.aud.PlayOneShot(components.step);
    }

    // Animation event: start of a ninjutsu cut-scene camera.
    public void StartNinj()
    {
        action = Action.attack;
        components.cam.StartNinj(character);
    }

    public void EndCamera()
    {
        components.cam.EndCamera();
    }

    public void EndNinj()
    {
        action = Action.nothing;
        components.anim.SetBool("hit", false);
        components.anim.SetBool("throw", false);
        components.cam.EndtNinj();
    }

    // Animation event: i == 0 starts chakra charging, anything else stops it.
    public void RecoverChakra(int i)
    {
        if (i == 0)
        {
            components.ChakraRecoverEffect.Play();
            components.anim.SetBool("hit", false);
            components.anim.SetBool("throw", false);
            components.aud.PlayOneShot(components.startCHRecover);
            sounds.aud.Stop();
            sounds.aud.clip = sounds.recoverChakra;
            sounds.aud.Play();
            action = Action.chRecover;
        }
        else
        {
            components.ChakraRecoverEffect.Stop();
            components.anim.SetBool("recoverChakra", false);
            if (action == Action.chRecover)
            {
                action = Action.nothing;
            }
        }
    }

    private IEnumerator recoverChakra()
    {
        while (true)
        {
            if (state == State.nothing && stats.chakra < stats.chakraMax)
            {
                stats.chakra += (action == Action.chRecover) ? 5 : 1;
                if (stats.chakra >= stats.chakraMax)
                {
                    stats.chakra = stats.chakraMax;
                }
                components.cam.setChakraUI(_player);
            }
            if (action == Action.chRecover)
            {
                yield return new WaitForSeconds(0.07f);
            }
            else
            {
                yield return new WaitForSeconds(0.2f);
            }
        }
    }

    // Substitution jutsu: leaves a log (substitutionObj) behind, hides the character and
    // re-appears behind the attacker (or 1 unit higher for a "Throw" attack).
    public IEnumerator Substitution(controller from, controller.Attacks attack, int index)
    {
        state = State.substitution;
        stats.chakra -= 80;
        components.cam.setChakraUI(_player);
        GameObject substObj = Instantiate(components.substitutionObj, character.myT.position + Vector3.up * 0.6f, character.myT.rotation);
        substitution = substObj.transform;
        Rigidbody rb = substObj.GetComponent<Rigidbody>();
        rb.velocity = Vector3.up * 2f;
        rb.AddForce(from.character.myT.TransformDirection(attack.force[index]) * 500f);
        components.aud.PlayOneShot(components.substHit);
        float time = 1.8f;
        components.rend.enabled = false;
        components.anim.enabled = false;
        components.shadow.enabled = false;
        components.col.enabled = false;
        components.aud.PlayOneShot(components.substitSound);
        moveSpeed = Vector3.zero;
        moveFight = Vector3.zero;
        while (time > 0f)
        {
            if (time < 1.4f && !components.rend.enabled)
            {
                // NOTE: attack names in the scene are e.g. "Throw_JumpCross"; the literal compared here is exactly "Throw"
                // (probably the name used by the kunai prefab's throwingObject.attack).
                if (attack._name != "Throw")
                {
                    character.myT.position = from.character.myT.position + from.character.myT.TransformDirection(Vector3.back) * 1.3f;
                }
                else
                {
                    character.myT.position = character.myT.position + Vector3.up;
                }
                character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - from.character.myT.position)).eulerAngles.y, 0f);
                components.rend.enabled = true;
                components.anim.enabled = true;
                components.shadow.enabled = true;
                components.col.enabled = true;
                fine();
                // NOTE: the binary calls the Animator.Play(string, int) overload with layer 0.
                components.anim.Play("idle", 0);
            }
            if (time < 1f && substitution == substObj.transform)
            {
                substitution = null;
            }
            time -= Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
        Destroy(substObj);
    }

    // Called on the victim. Returns 0 = no damage (KO'd already / substitution), 1 = hit, 2 = blocked.
    public int dmg(controller from, controller.Attacks attack, int index)
    {
        if (state == State.ko)
        {
            return 0;
        }
        if (thisAttack != null && thisAttack.Weapon)
        {
            thisAttack.Weapon.SetActive(false);
        }
        thisAttack = null;
        hitedTime = 0f;
        components.cam.hited();
        if (action == Action.chRecover)
        {
            RecoverChakra(1); // NOTE: inlined; argument is some non-zero value (1 assumed).
        }

        if (isPlayer)
        {
            // "Perfect guard": pressing guard less than 0.1 s before the hit triggers substitution.
            if (blockTime < 0.1f && stats.chakra >= 80)
            {
                StartCoroutine(Substitution(from, attack, index));
                return 0;
            }
        }
        else if (!disabled && !guard && Random.Range(0, 10) == 0 && stats.chakra >= 80)
        {
            StartCoroutine(Substitution(from, attack, index));
            return 0;
        }

        state = State.hited;

        if (guard)
        {
            stats.guard -= attack.dmg[index];
            components.cam.setGuardUI(_player);
            if (stats.guard <= 0)
            {
                stats.guard = -50;
                components.anim.SetBool("guardBreak", true);
            }
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - from.character.myT.position)).eulerAngles.y, 0f);
            components.anim.SetBool("hit", false);
            components.anim.SetBool("throw", false);
            components.anim.SetTrigger("hited");
            components.anim.SetBool("hitGrounded", character.grounded);
            components.aud.PlayOneShot(components.hits[attack.soundIndex[index]]);
            moveSpeed = Vector3.zero;
            character.directionMove = Vector3.zero;
            moveFight = from.character.myT.forward * (attack.force[index].z * 2f);
            moveFight = moveFight + from.character.myT.right * (attack.force[index].x * 2f);
            return 2;
        }

        action = Action.nothing;
        stats.hp -= attack.dmg[index];
        if (stats.hp < 0)
        {
            // NOTE: HP wraps around instead of ending the match (prototype / training behaviour).
            stats.hp = stats.hpMax + stats.hp;
        }
        components.cam.setLifeUI(_player);
        character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - from.character.myT.position)).eulerAngles.y, 0f);
        components.anim.SetBool("hit", false);
        components.anim.SetBool("throw", false);
        components.anim.SetInteger("hitType", (int)attack.type[index]);
        components.anim.SetTrigger("hited");
        components.anim.SetBool("hitGrounded", character.grounded);
        components.aud.PlayOneShot(components.hits[attack.soundIndex[index]]);
        if (attack.type[index] == Attacks.hitType.uppercutB || attack.type[index] == Attacks.hitType.kickB)
        {
            state = State.ko;
        }
        if (!character.grounded)
        {
            character.SetJump(1.7f, 0f);
        }
        if (state == State.ko)
        {
            sounds.aud.PlayOneShot(sounds.ko[Random.Range(0, sounds.ko.Length)]);
        }
        else
        {
            sounds.aud.PlayOneShot(sounds.hited[Random.Range(0, sounds.hited.Length)]);
        }
        moveSpeed = Vector3.zero;
        character.directionMove = Vector3.zero;
        moveFight = from.character.myT.forward * (attack.force[index].z * 2f);
        moveFight = moveFight + from.character.myT.right * (attack.force[index].x * 2f);
        if (attack.force[index].y != 0f)
        {
            character.SetJump(attack.force[index].y, 0f);
        }
        return 1;
    }

    // Animation event: the active frame of hit number `index` of the current attack.
    public void hit(int index)
    {
        if (state == State.hited || thisAttack == null)
        {
            return;
        }
        if (target.substitution)
        {
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.substitution.position)).eulerAngles.y, 0f);
        }
        else
        {
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.character.myT.position)).eulerAngles.y, 0f);
        }
        Collider[] cols = Physics.OverlapSphere(character.myT.position + Vector3.up * 0.4f + character.myT.forward * 0.3f, 0.7f);
        moveSpeed = Vector3.zero;
        for (int i = 0; i < cols.Length; i++)
        {
            if (target.substitution)
            {
                if (target.substitution == cols[i].transform)
                {
                    Rigidbody rb = target.substitution.GetComponent<Rigidbody>();
                    rb.velocity = Vector3.up * 2f;
                    rb.AddForce(character.myT.TransformDirection(thisAttack.force[index]) * 1000f);
                    rb.AddTorque(Random.insideUnitSphere * 500f);
                    components.aud.PlayOneShot(components.substHit);
                    return;
                }
            }
            else if (cols[i].transform == target.character.myT)
            {
                if (target.dmg(this, thisAttack, index) == 1)
                {
                    _particles.hits[0].transform.position = character.myT.position + character.myT.forward * 1f + Vector3.up * 0.8f;
                    _particles.hits[0].Play();
                }
                return;
            }
        }
        components.aud.PlayOneShot(components.miss[Random.Range(0, 2)]);
    }

    // Called (by MyController trigger callbacks) when this character's collider touches something.
    // A running dash that bumps into the enemy deals the "Dash" attack.
    public void collided(Collider other)
    {
        if (state == State.hited)
        {
            return;
        }
        if (other.transform == target.character.myT && character.dashTime > 0f)
        {
            character.SetJump(0f, 0f);
            moveSpeed = Vector3.zero;
            moveFight = Vector3.zero;
            target.dmg(this, AttacksList["Dash"], 0);
        }
    }

    // Animation event: end of an attack / hit reaction; back to neutral.
    public void fine()
    {
        components.anim.SetBool("hited", false);
        components.anim.SetBool("guardBreak", false);
        components.anim.SetBool("fallToWall", false);
        if (thisAttack != null && thisAttack.Weapon)
        {
            thisAttack.Weapon.SetActive(false);
        }
        thisAttack = null;
        state = State.nothing;
        action = Action.nothing;
        if (_jump > 0 && moveSpeed != Vector3.zero)
        {
            moveFight = Vector3.zero;
        }
        _jump = 0;
    }

    // Animation event: dodge step. direction = "L", "R", "F", "B", "RThrow", "LThrow" or "" (end of dodge).
    public void dodge(string direction)
    {
        if (state == State.hited)
        {
            return;
        }
        if (guard)
        {
            guard = false;
            action = Action.nothing;
            if (components.guardObj)
            {
                components.guardObj.SetActive(false);
            }
        }
        jumpBool = false;
        _jump = 2;
        components.anim.SetBool("jump", false);
        moveSpeed = Vector3.zero;
        if (character.jump < 0f)
        {
            character.SetJump(0f, 0f);
        }
        if (direction != string.Empty)
        {
            sounds.aud.PlayOneShot(sounds.dodge[Random.Range(0, sounds.dodge.Length)]);
            components.aud.PlayOneShot(components.dash);
            if (!move)
            {
                rot.y = components.directionToEnemy.eulerAngles.y;
            }
            if (direction == "L")
            {
                character.myT.eulerAngles = new Vector3(0f, rot.y + 90f, 0f);
                moveFight = -character.myT.right * 11f;
            }
            else if (direction == "R")
            {
                character.myT.eulerAngles = new Vector3(0f, rot.y - 90f, 0f);
                moveFight = character.myT.right * 11f;
            }
            else if (direction == "F")
            {
                character.myT.eulerAngles = new Vector3(0f, rot.y, 0f);
                moveFight = character.myT.forward * 11f;
            }
            else if (direction == "B")
            {
                character.myT.eulerAngles = new Vector3(0f, rot.y + 180f, 0f);
                moveFight = -character.myT.forward * 11f;
            }
            else if (direction == "RThrow")
            {
                action = Action.attack;
                character.myT.eulerAngles = new Vector3(0f, rot.y - 90f, 0f);
                moveFight = character.myT.right * 11f;
            }
            else if (direction == "LThrow")
            {
                action = Action.attack;
                character.myT.eulerAngles = new Vector3(0f, rot.y + 90f, 0f);
                moveFight = -character.myT.right * 11f;
            }
        }
        else
        {
            _jump = 0;
            components.anim.SetBool("jump", false);
        }
    }

    // Animation event: count 0 = full jump (carries run speed forward), 1 = half-height jump.
    public void Jump(int count)
    {
        if (state == State.hited)
        {
            return;
        }
        jumpBool = false;
        components.anim.SetBool("jump", false);
        _jump = 1;
        if (count == 0)
        {
            moveFight = (moveSpeed != Vector3.zero) ? character.myT.forward * stats.speedMove : Vector3.zero;
            moveSpeed = Vector3.zero;
            character.SetJump(stats.jumpPower, 0f);
            sounds.aud.PlayOneShot(sounds.jump[Random.Range(0, sounds.jump.Length)]);
            components.aud.PlayOneShot(components.dash);
        }
        else if (count == 1)
        {
            moveSpeed = Vector3.zero;
            character.SetJump(stats.jumpPower * 0.5f, 0f);
        }
    }

    // Animation event: dash toward the stick direction (or toward the enemy when not moving).
    public void Dash()
    {
        if (state == State.hited)
        {
            return;
        }
        moveFight = Vector3.zero;
        _jump = 1;
        jumpBool = false;
        components.anim.SetBool("jump", false);
        action = Action.nothing;
        components.anim.SetBool("hit", false);
        components.anim.SetBool("throw", false);
        if (move)
        {
            character.myT.eulerAngles = new Vector3(0f, rot.y, 0f);
        }
        else if (target.substitution)
        {
            character.myT.eulerAngles = Quaternion.LookRotation(-(character.myT.position - target.substitution.position)).eulerAngles;
        }
        else
        {
            character.myT.eulerAngles = Quaternion.LookRotation(-(character.myT.position - target.character.myT.position)).eulerAngles;
        }
        character.SetJump(0f, 0.35f);
        moveSpeed = character.myT.forward * stats.dashSpeed;
        components.aud.PlayOneShot(components.dash);
    }

    // Animation event: i == 0 only plays an attack voice, otherwise throws two kunai at the enemy.
    public void Throw(int i)
    {
        if (state == State.hited)
        {
            return;
        }
        action = Action.attack;
        if (thisAttack != null && thisAttack.Weapon)
        {
            thisAttack.Weapon.SetActive(false);
        }
        if (target.substitution)
        {
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.substitution.position)).eulerAngles.y, 0f);
        }
        else
        {
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.character.myT.position)).eulerAngles.y, 0f);
        }
        if (i == 0)
        {
            sounds.aud.PlayOneShot(sounds.attack[Random.Range(0, sounds.attack.Length)]);
        }
        else
        {
            components.aud.PlayOneShot(components.ThrowSound);
            GameObject throwObj = components.ThrowObj;
            if (thisAttack != null && thisAttack.Throw)
            {
                throwObj = thisAttack.Throw;
            }
            throwingObject kunai = Instantiate(throwObj, bones.chest.position + transform.forward * 0.55f, Quaternion.identity).GetComponent<throwingObject>();
            kunai.targetT = target.substitution ? target.substitution : target.character.myT;
            kunai.from = this;
            kunai.target = target;
            kunai = Instantiate(throwObj, bones.chest.position + transform.forward, Quaternion.identity).GetComponent<throwingObject>();
            kunai.targetT = target.substitution ? target.substitution : target.character.myT;
            kunai.from = this;
            kunai.target = target;
        }
    }

    // Animation event: start of attack animKey ("" = end of combo).
    public void Combo(string animKey)
    {
        if (state == State.hited)
        {
            return;
        }
        if (animKey == string.Empty)
        {
            action = Action.nothing;
            if (thisAttack != null && thisAttack.Weapon)
            {
                thisAttack.Weapon.SetActive(false);
            }
            thisAttack = null;
            return;
        }
        sounds.aud.PlayOneShot(sounds.attack[Random.Range(0, sounds.attack.Length)]);
        if (action == Action.chRecover)
        {
            RecoverChakra(1); // NOTE: inlined; argument is some non-zero value (1 assumed).
        }
        if (thisAttack != null && thisAttack.Weapon)
        {
            thisAttack.Weapon.SetActive(false);
        }
        action = Action.attack;
        thisAttack = AttacksList[animKey];
        if (thisAttack.Weapon)
        {
            thisAttack.Weapon.SetActive(true);
        }
        components.anim.SetBool("hit", false);
        components.anim.SetBool("throw", false);
    }

    // Animation event: lunge of step `index` of the current attack (uses attack.move[index]).
    public void AddMove(int index)
    {
        if (state == State.hited || thisAttack == null)
        {
            return;
        }
        if (target.substitution)
        {
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.substitution.position)).eulerAngles.y, 0f);
        }
        else
        {
            character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.character.myT.position)).eulerAngles.y, 0f);
        }
        hitForce = thisAttack.move[index].z * 2f;
        moveSpeed = Vector3.zero;
        moveFight = character.myT.forward * hitForce + Vector3.up;
        character.SetJump(thisAttack.move[index].y, 0f);
        if (thisAttack.move[index].y > 0f)
        {
            _jump = 1;
        }
    }

    // Animation event: guard broken -> stunned and pushed back by breakedGuard.move[i].z.
    public void GuardBreak(int i)
    {
        components.anim.SetBool("guardBreak", false);
        if (components.guardObj)
        {
            components.guardObj.SetActive(false);
        }
        guard = false;
        state = State.stunned;
        action = Action.nothing;
        moveFight = -character.myT.forward * breakedGuard.move[i].z;
    }

    private IEnumerator guardRecovering()
    {
        while (true)
        {
            if (stats.guard < stats.guardMax)
            {
                if (state == State.nothing && action != Action.guard)
                {
                    stats.guard++;
                    components.cam.setGuardUI(_player);
                }
            }
            else
            {
                stats.guard = stats.guardMax;
            }
            yield return new WaitForSeconds(0.1f);
        }
    }

    private void Update()
    {
        float deltaTime = Time.deltaTime;
        if (Time.timeScale == 0f)
        {
            return;
        }

        hitedTime -= deltaTime;
        blockTime += deltaTime;
        jumpTime -= deltaTime;
        SQUAREtime -= deltaTime;
        THROWtime -= deltaTime;

        if (jumpBool && jumpTime <= 0f)
        {
            jumpBool = false;
            components.anim.SetBool("jump", false);
        }
        if (SQUAREbool && SQUAREtime <= 0f)
        {
            SQUAREbool = false;
            components.anim.SetBool("hit", false);
        }
        if (THROWbool && THROWtime <= 0f)
        {
            THROWbool = false;
            components.anim.SetBool("throw", false);
        }

        character.GoUpdate();

        bool JUMPbutton = false;    // "Jump"     (dodge / jump)
        bool CHAKRAbutton = false;  // "Ltrigger" (hold: recover chakra)
        bool SQUAREbutton = false;  // "Square"   (melee attack)
        bool GUARDbutton = false;   // "Rtrigger" (hold: guard)
        bool THROWbutton = false;   // "Circle"   (throw kunai)

        if (!disabled)
        {
            if (isPlayer)
            {
                JUMPbutton = Input.GetButtonDown("Jump");
                CHAKRAbutton = Input.GetButton("Ltrigger");
                SQUAREbutton = Input.GetButtonDown("Square");
                GUARDbutton = Input.GetButton("Rtrigger");
                THROWbutton = Input.GetButtonDown("Circle");
                float h = Input.GetAxis("Horizontal");
                float v = Input.GetAxis("Vertical");
                dir.x = h;
                dir.z = v;
            }
            else
            {
                // ---------------- Bot AI ----------------
                if (guard)
                {
                    // keep guarding until hitedTime drops below -0.6 (hitedTime is also used as the bot's guard timer)
                    if (hitedTime < -0.6f)
                    {
                        GUARDbutton = false;
                    }
                    else
                    {
                        GUARDbutton = true;
                    }
                }
                Vector3 toEnemy = -(character.myT.position - target.character.myT.position);
                float enemyDist = new Vector3(toEnemy.x, 0f, toEnemy.z).magnitude;

                if ((stats.chakra < stats.chakraMax && target.state == State.ko) || (stats.chakra < 150 && enemyDist > 2f))
                {
                    CHAKRAbutton = true;
                }
                else
                {
                    if (Random.Range(0, 50) == 0)
                    {
                        botDirRandom = components.directionToEnemy.right * Random.Range(-3f, 3f);
                    }
                    if (character.grounded && !jumpBool)
                    {
                        dir = Vector3.zero;
                    }
                    if (Random.Range(0, 50) == 0)
                    {
                        startAttackDist = Random.Range(1.35f, 1.55f);
                    }

                    if (enemyDist > startAttackDist)
                    {
                        // far: walk toward the enemy (or away from a KO'd one), throw kunai, dodge/jump randomly
                        if (character.grounded && !jumpBool)
                        {
                            if (target.state != State.ko)
                            {
                                dir = toEnemy + botDirRandom;
                            }
                            else if (enemyDist < 6f)
                            {
                                dir = -toEnemy + botDirRandom;
                            }
                        }
                        if (Random.Range(0, 200) == 0 && target.state != State.ko)
                        {
                            THROWbutton = true;
                        }
                        if (Random.Range(0, 80) == 0 && target.state != State.ko && _jump > 1)
                        {
                            THROWbutton = true;
                        }
                        else if (target.state != State.ko && !jumpBool)
                        {
                            if (_jump == 0 && Random.Range(0, 100) == 0)
                            {
                                JUMPbutton = true;
                            }
                            else if (character.dashTime > -0.2 && Random.Range(0, 70) == 0)
                            {
                                dir = Vector3.zero;
                                JUMPbutton = true;
                            }
                            else if (_jump > 0 && character.dashTime < -0.2 && Random.Range(0, 10) == 0)
                            {
                                JUMPbutton = true;
                                dir = components.directionToEnemy.right * Random.Range(-3f, 3f);
                            }
                        }
                    }
                    else if (state == State.nothing && target.state != State.ko)
                    {
                        // close range
                        if (target.state == State.hited)
                        {
                            int side = Random.Range(0, 2);
                            if (thisAttack != null && thisAttack._name == "PunchR" && Random.Range(0, 100) == 0)
                            {
                                JUMPbutton = true;
                            }
                            else if (thisAttack != null && thisAttack._name == "SideDoubleSlashing" && Random.Range(0, 6) == 0)
                            {
                                THROWbutton = true;
                            }
                            else
                            {
                                SQUAREbutton = true;
                            }
                            if (side == 0)
                            {
                                components.anim.SetFloat("V", 1f);
                            }
                            else
                            {
                                components.anim.SetFloat("V", -1f);
                            }
                        }
                        else if (!jumpBool)
                        {
                            if (character.dashTime > -0.2 && Random.Range(0, 50) == 0)
                            {
                                dir = Vector3.zero;
                                JUMPbutton = true;
                            }
                            else if (_jump > 0 && character.dashTime < -0.2 && Random.Range(0, 10) == 0)
                            {
                                JUMPbutton = true;
                                dir = components.directionToEnemy.right * Random.Range(-3f, 3f);
                            }
                        }

                        if (action != Action.attack && target.action == Action.attack && Random.Range(0, 5) == 0 && !substitution)
                        {
                            GUARDbutton = true;
                            hitedTime = Random.Range(-0.2f, 0.2f);
                        }
                        else
                        {
                            // NOTE: this attack-selection block really is executed a second time in the binary
                            // (same code as above, new Random calls), not a compiler artefact.
                            int side = Random.Range(0, 2);
                            if (thisAttack != null && thisAttack._name == "PunchR" && Random.Range(0, 100) == 0)
                            {
                                JUMPbutton = true;
                            }
                            else if (thisAttack != null && thisAttack._name == "SideDoubleSlashing" && Random.Range(0, 6) == 0)
                            {
                                THROWbutton = true;
                            }
                            else
                            {
                                SQUAREbutton = true;
                            }
                            if (side == 0)
                            {
                                components.anim.SetFloat("V", 1f);
                            }
                            else
                            {
                                components.anim.SetFloat("V", -1f);
                            }
                        }
                    }
                    else if (target.state == State.ko && enemyDist < 6f)
                    {
                        dir = -toEnemy + botDirRandom;
                    }
                }
            }

            if (dir.magnitude > 0.3f && action != Action.attack)
            {
                move = true;
            }
            else
            {
                move = false;
            }
            rot = Quaternion.LookRotation(dir).eulerAngles;
            if (isPlayer)
            {
                // camera-relative movement
                rot.y += components.cam.camT.parent.eulerAngles.y;
                components.anim.SetFloat("H", dir.x);
                components.anim.SetFloat("V", dir.z);
            }
        }

        if (character.grounded)
        {
            if (!oldGrounded && state == State.ko)
            {
                // landing after a knock-down
                components.aud.PlayOneShot(components.toFloor[0]);
                stats.hp -= 10;
                if (stats.hp <= 0)
                {
                    stats.hp = stats.hpMax; // NOTE: HP resets instead of a real KO (prototype behaviour).
                }
                components.cam.setLifeUI(_player);
            }
            if (_jump == 1 && action != Action.attack)
            {
                _jump = 0;
                if (move)
                {
                    moveFight = Vector3.zero;
                }
                components.anim.SetBool("jump", false);
            }
            if (state == State.nothing)
            {
                if (_jump == 0 && CHAKRAbutton && (action == Action.nothing || action == Action.chRecover))
                {
                    components.anim.SetBool("recoverChakra", true);
                }
                else if (action == Action.chRecover)
                {
                    components.anim.SetBool("recoverChakra", false);
                }
            }
        }

        if (GUARDbutton)
        {
            if (!guard && !oldGUARDbutton)
            {
                blockTime = 0f;
            }
            if (stats.guard > 0 && _jump == 0 && (action == Action.nothing || action == Action.guard) && state == State.nothing)
            {
                action = Action.guard;
                guard = true;
                character.myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(-(character.myT.position - target.character.myT.position)).eulerAngles.y, 0f);
                if (components.guardObj)
                {
                    components.guardObj.SetActive(true);
                }
            }
        }
        else if (guard)
        {
            guard = false;
            action = Action.nothing;
            if (components.guardObj)
            {
                components.guardObj.SetActive(false);
            }
        }

        // moving the stick while guarding = dodge
        if (guard && move && _jump == 0)
        {
            JUMPbutton = true;
        }

        if (SQUAREbutton)
        {
            SQUAREbool = true;
            components.anim.SetBool("hit", true);
            SQUAREtime = 0.3f;
        }
        else if (THROWbutton)
        {
            THROWbool = true;
            components.anim.SetBool("throw", true);
            THROWtime = 0.3f;
        }
        components.directionToEnemy.position = character.myT.position;

        if (JUMPbutton)
        {
            jumpBool = true;
            components.anim.SetBool("jump", true);
            jumpTime = 0.3f;
            components.directionToEnemy.LookAt(target.character.myT.position);
            // NOTE: when not moving this is DeltaAngle(x, x) == 0 (as in the binary).
            components.anim.SetFloat("Yrot", Mathf.DeltaAngle(move ? rot.y : components.directionToEnemy.eulerAngles.y, components.directionToEnemy.eulerAngles.y));
        }

        if (character.grounded)
        {
            if (state == State.nothing && action == Action.nothing && move && _jump == 0)
            {
                character.myT.eulerAngles = new Vector3(0f, Mathf.LerpAngle(character.myT.eulerAngles.y, rot.y, Time.deltaTime * 32f), 0f);
                moveSpeed = character.myT.forward * stats.speedMove;
            }
            else
            {
                character.myT.eulerAngles = new Vector3(0f, character.myT.eulerAngles.y, 0f);
                moveSpeed = Vector3.zero;
            }
        }

        character.directionMove = moveSpeed + moveFight;
        components.anim.SetFloat("dashTime", character.dashTime);
        components.anim.SetInteger("jumpCount", _jump);

        if (oldRtrigger != guard)
        {
            components.anim.SetBool("guard", guard);
            oldRtrigger = guard;
        }
        if (oldMove != move)
        {
            oldMove = move;
            components.anim.SetBool("move", move);
        }
        if (oldGrounded != character.grounded)
        {
            oldGrounded = character.grounded;
            components.anim.SetBool("grounded", character.grounded);
        }
        if (oldAction == Action.attack && action != oldAction)
        {
            components.anim.SetBool("attack", false);
        }
        else if (action == Action.attack && action != oldAction)
        {
            components.anim.SetBool("attack", true);
        }

        // friction on the knock-back / lunge velocity
        if ((state == State.nothing && _jump == 0) || state == State.hited)
        {
            moveFight = Vector3.MoveTowards(moveFight, Vector3.zero, deltaTime * 30f);
        }
        else if (_jump == 1 && state == State.nothing)
        {
            if (action == Action.attack)
            {
                moveFight = Vector3.MoveTowards(moveFight, Vector3.zero, deltaTime * 5f);
            }
        }
        else
        {
            moveFight = Vector3.MoveTowards(moveFight, Vector3.zero, deltaTime * 10f);
        }

        oldGUARDbutton = GUARDbutton;
        oldAction = action;
    }

    private void OnGUI()
    {
        // Empty in the shipped build.
    }
}
