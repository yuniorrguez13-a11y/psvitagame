// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Fight camera, attached to the "cam" object (together with GameOptions).
//  - LateUpdate frames both fighters, orbits so they stay side-on, and zooms/tilts
//    with the distance between them. "Start" opens the options panel (pauses the
//    game) and "Select" toggles player 1 between human and AI control.
//  - Owns the HUD bars (life / chakra / guard) of both players.
//  - StartNinj / EndCamera / EndtNinj switch to the animated "ninj" camera.
// LateUpdateOld is the previous camera implementation; nothing calls it any more.
using UnityEngine;
using UnityEngine.UI;

public class cameraSC : MonoBehaviour
{
    public cameraSC.CameraSettings settings;
    private Transform t;
    public Camera cam;
    public GameOptions gameOptions;
    public cameraSC.Players[] players;
    public Transform camT;
    public float dist;                    // used only by LateUpdateOld
    public float height;                  // used only by LateUpdateOld
    private Vector3 camRot;               // NOTE: never used in the build.
    public cameraSC.CameraOption Options; // NOTE: never read in the build.
    private float distance;               // used only by LateUpdateOld
    public LayerMask maskObstCam;         // NOTE: never used in the build.
    public Transform NinjCamera;
    public Animator cameraAnim;
    public MyController ninjActor;
    private float ZdistAdditive;
    private float YCamAdditive;
    private float speedRot;
    private float inFight;
    private float playerCamDistance;
    private Vector3 oldPos;
    public float Xrot;
    public float playerDistance;

    private void Start()
    {
        t = transform;
    }

    // Called when a hit lands: puts the camera in "fight" mode for 1.5 s,
    // but only if the fighters are close together.
    public void hited()
    {
        if (playerDistance < 4f)
            inFight = 1.5f;
    }

    // Registers a fighter in the first free HUD slot.
    public void setPlayer(controller c)
    {
        if (players[0].player == null)
        {
            players[0].player = c;
            players[0].icon.sprite = c.stats.icon;
            c._player = 0;
        }
        else
        {
            players[1].player = c;
            players[1].icon.sprite = c.stats.icon;
            c._player = 1;
        }
    }

    public void setLifeUI(int _player)
    {
        players[_player].life.fillAmount = 1f / players[_player].player.stats.hpMax * players[_player].player.stats.hp;
    }

    public void setChakraUI(int _player)
    {
        players[_player].chakra.fillAmount = 1f / players[_player].player.stats.chakraMax * players[_player].player.stats.chakra;
    }

    public void setGuardUI(int _player)
    {
        players[_player].guard.fillAmount = 1f / players[_player].player.stats.guardMax * players[_player].player.stats.guard;
    }

    public void StartNinj(MyController c)
    {
        ninjActor = c;
        NinjCamera.gameObject.SetActive(true);
        camT.gameObject.SetActive(false);
        cameraAnim.Play("ninj", 0);
    }

    public void EndCamera()
    {
        camT.gameObject.SetActive(true);
        NinjCamera.gameObject.SetActive(false);
    }

    public void EndtNinj()
    {
        ninjActor = null;
    }

    private void OnDrawGizmos()
    {
        // Empty in the build (possibly editor-only code that was stripped).
    }

    private void LateUpdate()
    {
        // NOTE: inlined in the binary; the code is exactly GameOptions.OpenOptionPanel().
        if (Input.GetButtonDown("Start"))
            gameOptions.OpenOptionPanel();

        if (Time.timeScale == 0f)
            return;

        // Debug: switch player 1 between human and AI control.
        if (Input.GetButtonDown("Select"))
            players[0].player.isPlayer = !players[0].player.isPlayer;

        float dt = Time.deltaTime;

        if (inFight > 0f)
            inFight -= dt;

        // Distance between the fighters (horizontal) and their height difference.
        Vector3 toEnemy = -(players[0].player.character.myT.position - players[0].player.target.character.myT.position);
        float heightDiff = Mathf.Abs(toEnemy.y);
        toEnemy.y = 0f;
        playerDistance = toEnemy.magnitude;

        // Bounding box of all fighters.
        Bounds bounds = new Bounds(players[0].player.character.myT.position, Vector3.zero);
        for (int i = 0; i < players.Length; i++)
            bounds.Encapsulate(players[i].player.character.myT.position);

        Vector3 center = bounds.center;
        Vector3 camDir = center - t.position;
        playerCamDistance = camDir.magnitude;

        // Screen-space midpoint of both fighters (at head height), projected back
        // into the world and smoothed with last frame's value.
        Vector2 screen1 = cam.WorldToScreenPoint(players[0].player.character.myT.position + Vector3.up * (settings.basicHeight + YCamAdditive));
        Vector2 screen2 = cam.WorldToScreenPoint(players[1].player.character.myT.position + Vector3.up * (settings.basicHeight + YCamAdditive));
        center = (cam.ScreenToWorldPoint(new Vector3((screen1.x + screen2.x) * 0.5f, (screen1.y + screen2.y) * 0.5f, playerCamDistance)) + oldPos) / 2f;
        camDir = center - t.position;
        oldPos = center;

        // Yaw looking from player 1 to player 2 and vice versa; keep the one
        // closest to the current camera yaw.
        float angle1 = Quaternion.LookRotation(-(players[0].player.character.myT.position - players[1].player.character.myT.position)).eulerAngles.y;
        float angle2 = Quaternion.LookRotation(-(players[1].player.character.myT.position - players[0].player.character.myT.position)).eulerAngles.y;
        float camAngle = Quaternion.LookRotation(camDir).eulerAngles.y; // NOTE: computed but never used in the build.

        float targetY = angle2;
        if (Mathf.Abs(Mathf.DeltaAngle(angle1, t.eulerAngles.y)) < Mathf.Abs(Mathf.DeltaAngle(angle2, t.eulerAngles.y)))
            targetY = angle1;

        float delta = Mathf.DeltaAngle(t.eulerAngles.y, targetY);
        float maxAngle = settings.maxAngle;

        if (inFight > 0f && playerDistance < 4f)
        {
            // Close-range fight: swing round to the side of the fighters.
            if (delta < 0f)
                targetY += maxAngle + 85f;
            else
                targetY -= maxAngle + 85f;

            speedRot = dt * 1.5f;
            ZdistAdditive = Mathf.MoveTowards(ZdistAdditive, settings.fightDist - heightDiff * settings.HeightDist, dt * 3f);
        }
        else
        {
            if (playerDistance > 4f)
                ZdistAdditive = Mathf.MoveTowards(ZdistAdditive, Mathf.Abs(delta) * settings.angleAdjust, dt * 3f);
            else
                ZdistAdditive = Mathf.MoveTowards(ZdistAdditive, 0f, dt * 3f);

            inFight = 0f;

            if (playerDistance > 4f)
                speedRot = Mathf.MoveTowards(speedRot, 1f, dt * 0.3f);
            else
                speedRot = Mathf.MoveTowards(speedRot, 0f, dt * 1.5f);
        }

        t.LookAt(center);

        YCamAdditive = Mathf.Clamp(playerDistance - 3f, 0f, 8f) * settings.HeightAdditive;
        Xrot = settings.basicXAngle + Mathf.Clamp(playerDistance - 3f, 0f, 8f) * settings.Xangle;

        // Only rotate once the yaw error exceeds maxAngle; pitch is always Xrot.
        float angleDiff = Mathf.DeltaAngle(t.eulerAngles.y, targetY);
        if (angleDiff > maxAngle)
            t.eulerAngles = new Vector3(Xrot, t.eulerAngles.y + speedRot * (angleDiff - maxAngle), 0f);

        // NOTE: two separate ifs in the build (not "else if"): after the first
        // branch runs, this "else" re-applies the new yaw with Xrot.
        if (angleDiff < -maxAngle)
            t.eulerAngles = new Vector3(Xrot, t.eulerAngles.y + speedRot * (angleDiff + maxAngle), 0f);
        else
            t.eulerAngles = new Vector3(Xrot, t.eulerAngles.y, 0f);

        t.position = center - t.forward * (settings.basicDist + playerDistance * 0.5f - ZdistAdditive);
    }

    // Previous camera implementation (dead code, never called).
    private void LateUpdateOld()
    {
        // NOTE: inlined in the binary; the code is exactly GameOptions.OpenOptionPanel().
        if (Input.GetButtonDown("Start"))
            gameOptions.OpenOptionPanel();

        if (Time.timeScale == 0f)
            return;

        if (NinjCamera.gameObject.activeInHierarchy)
        {
            NinjCamera.eulerAngles = ninjActor.myT.eulerAngles + Vector3.up * 230f;
            NinjCamera.position = ninjActor.myT.position + Vector3.up * 0.8f;
            NinjCamera.position += NinjCamera.TransformDirection(Vector3.back) * 0.8f;
            return;
        }

        Vector3 diff = players[0].player.character.myT.position - players[0].player.target.character.myT.position;
        float heightDiff = Mathf.Abs(diff.y);
        diff.y = 0f;
        distance = diff.magnitude;

        Vector3 back = transform.TransformDirection(Vector3.back);
        transform.position = Vector3.Lerp(
            transform.position,
            (players[0].player.character.myT.position + players[0].player.target.character.myT.position) / 2f
                + back * (dist + distance * 0.5f)
                + new Vector3(0f, height, 0f),
            Time.deltaTime * 27f);

        camT.localPosition = new Vector3(
            0f,
            Mathf.Lerp(camT.localPosition.y, Mathf.Clamp(distance - 2.5f, 0f, 0.55f) - 0.55f, Time.deltaTime * 4f),
            Mathf.Lerp(camT.localPosition.z, 0.9f - Mathf.Clamp(distance - 2.5f, 0f, 0.9f) - heightDiff, Time.deltaTime * 4f));

        camT.localEulerAngles = new Vector3(
            Mathf.Lerp(camT.localEulerAngles.x, Mathf.Clamp(distance * 2f, 0f, 5f), Time.deltaTime * 4f),
            0f,
            0f);

        float angle = Quaternion.LookRotation(-(players[0].player.character.myT.position - players[0].player.target.character.myT.position)).eulerAngles.y;

        if (Mathf.DeltaAngle(transform.eulerAngles.y, angle) > 0f)
        {
            transform.eulerAngles = new Vector3(
                transform.eulerAngles.x,
                Mathf.LerpAngle(transform.eulerAngles.y, angle - (80f - Mathf.Clamp(distance * 16f, 0f, 80f)), Time.deltaTime * 8f),
                transform.eulerAngles.z);
        }
        else
        {
            transform.eulerAngles = new Vector3(
                transform.eulerAngles.x,
                Mathf.LerpAngle(transform.eulerAngles.y, angle + (80f - Mathf.Clamp(distance * 16f, 0f, 80f)), Time.deltaTime * 8f),
                transform.eulerAngles.z);
        }
    }

    [System.Serializable]
    public class CameraOption
    {
        public Vector2 RotSpeed = new Vector2(200f, 100f);
        public bool inversX;
        public bool inversY;
    }

    [System.Serializable]
    public class CameraSettings
    {
        public float basicXAngle = 2f;
        public float basicHeight = 0.95f;
        public float HeightAdditive = 0.015f;
        public float Xangle = 0.5f;
        public float basicDist = 6f;
        public float fightDist = 1f;
        public float HeightDist = 1.5f;
        public float angleAdjust = 0.02f;
        public float maxAngle = 15f;
    }

    [System.Serializable]
    public class Players
    {
        public controller player;
        public Image icon;
        public Image life;
        public Image chakra;
        public Image guard;
    }
}
