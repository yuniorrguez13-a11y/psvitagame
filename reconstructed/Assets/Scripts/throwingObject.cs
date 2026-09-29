// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Thrown kunai / shuriken. Spawned by controller.Throw(), which fills in
// 'from', 'target' and 'targetT' (target.substitution if set, else target.character.myT).
// Flies forward, homes a little toward its target, damages players,
// clashes with other thrown objects and sticks into bushes.
using UnityEngine;

public class throwingObject : MonoBehaviour
{
    public controller.Attacks attack;
    public Transform obj;
    public controller from;
    public Transform t;
    public float speed;
    public Vector3 rotation;
    public Transform targetT;
    public controller target;
    public float lifeTime = 10f;
    public ParticleSystem sparks;
    public AudioClip collisSound;
    public AudioClip collisBush;
    public AudioClip deflectSound; // NOTE: not used anywhere in the shipped code.
    public AudioSource aud;

    private void Start()
    {
        float dist;
        if (targetT != target.character.myT)
        {
            // Aiming at something other than the character (e.g. a substitution log).
            dist = (t.position - targetT.position).magnitude; // NOTE: value unused on this path (as in the original).
            t.LookAt(targetT.position);
        }
        else
        {
            // Lead the target: aim at its chest plus half the travel time of its current movement.
            dist = (t.position - target.character.myT.position).magnitude;
            t.LookAt(target.bones.chest.position + target.character.directionMove * (dist / speed * 0.5f));
        }

        obj.localEulerAngles = new Vector3(0f, 0f, Random.Range(-20, 20));
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (other.gameObject != from.gameObject)
            {
                if (other.GetComponent<controller>().dmg(from, attack, 0) > 0)
                    Destroy(gameObject);
            }
        }
        else if (other.CompareTag("ThrowObj"))
        {
            // Two projectiles from different throwers collide.
            if (other.GetComponent<throwingObject>().from != from)
            {
                // Only one of the two projectiles plays the clash sound.
                if (other.GetInstanceID() < GetInstanceID())
                    aud.PlayOneShot(collisSound);

                sparks.transform.parent = null;
                sparks.transform.LookAt(other.transform.position);
                sparks.Play();
                Destroy(gameObject);
            }
        }
        else if (other.CompareTag("bush"))
        {
            aud.PlayOneShot(collisBush);
            obj.parent = other.transform; // leave the mesh stuck in the bush
            Destroy(gameObject);
        }
        else
        {
            aud.PlayOneShot(collisSound);
            sparks.transform.parent = null;
            sparks.Play();
            Destroy(gameObject);
        }
    }

    private void Update()
    {
        float dist = (t.position - target.bones.chest.position).magnitude;
        Vector3 dir = Vector3.zero;
        Vector3 rot = Vector3.zero; // NOTE: this initial value is never used.

        if (target.substitution)
            targetT = target.substitution;

        if (targetT)
        {
            // NOTE: the original may have had the "dot > 0.8f" block duplicated in each branch;
            // the compiler merged the identical tails, so it is written once here.
            float dot;
            if (targetT != target.character.myT)
            {
                dist = (t.position - targetT.position).magnitude; // NOTE: value unused on this path (as in the original).
                dir = -(t.position - targetT.position);
                rot = Quaternion.LookRotation(dir.normalized).eulerAngles;
                dot = Vector3.Dot(t.forward, -(t.position - targetT.position).normalized);
            }
            else
            {
                dir = -(t.position - (target.bones.chest.position + target.character.directionMove * (dist / speed * 0.5f)));
                rot = Quaternion.LookRotation(dir.normalized).eulerAngles;
                dot = Vector3.Dot(t.forward, -(t.position - target.bones.chest.position).normalized);
            }

            // Only home in while the target is still roughly in front of the projectile.
            if (dot > 0.8f)
            {
                t.eulerAngles = new Vector3(
                    Mathf.MoveTowardsAngle(t.eulerAngles.x, rot.x, Time.deltaTime * 55f),
                    Mathf.MoveTowardsAngle(t.eulerAngles.y, rot.y, Time.deltaTime * 55f),
                    0f);
            }
        }

        t.position += t.forward * speed * Time.deltaTime;
        obj.Rotate(rotation, Space.Self);

        lifeTime -= Time.deltaTime;
        if (lifeTime < 0f)
            Destroy(gameObject);
    }
}
