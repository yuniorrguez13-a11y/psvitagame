// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Custom capsule character motor. It does not run on its own: controller.Update
// calls GoUpdate() every frame. It works on a kinematic-style Rigidbody by writing
// rb.position directly:
//  - ground check with a SphereCast down from the capsule centre, and snap to ground;
//  - gravity / jump / dash through 'jump', 'dashTime' and 'directionMove';
//  - collision resolution with CapsuleCastAll + Physics.ComputePenetration against
//    groundMasks, including the "knocked into a wall" reaction (fallToWall);
//  - trigger callbacks (hits are forwarded to controller.collided, and fighters
//    are pushed apart when they overlap).
using UnityEngine;

public class MyController : MonoBehaviour
{
    public MyController.CollisionTest colliderOptions;
    [HideInInspector]
    public Transform myT;
    public Rigidbody rb;
    public CapsuleCollider coll;
    public bool grounded;
    public LayerMask groundMasks;
    public Vector3 directionMove;
    public float jump;
    public float dashTime;
    public float gravity;
    public float maxGravity;
    private controller myController;
    public Vector3 oldPos;

    private void Start()
    {
        myController = GetComponentInChildren<controller>();
        myT = transform;
    }

    public void OnTriggerEnter(Collider other)
    {
        myController.collided(other);
    }

    // Pushes this character away from the other fighter while both overlap and this one is moving.
    public void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Vector3 away = myT.position - other.transform.position;
            float awayDistance = away.magnitude; // NOTE: computed but never used in the build.
            away.y = 0f;

            if (directionMove != Vector3.zero)
                myT.position += away.normalized * 5f * Time.deltaTime;
        }
    }

    public void SetJump(float power, float dash)
    {
        jump = power;
        dashTime = dash;
    }

    private void toGround(RaycastHit hit)
    {
        rb.position = new Vector3(rb.position.x, hit.point.y, rb.position.z);
    }

    private void OnDrawGizmos()
    {
        if (!myT)
            myT = transform;

        // Capsule used for the collision cast, at the current position.
        Vector3 bottom = myT.position + Vector3.up * (colliderOptions.stepHeight + colliderOptions.radius);
        Vector3 top = myT.position + Vector3.up * (colliderOptions.height - colliderOptions.radius);
        Vector3 right = Vector3.right * colliderOptions.radius;
        Vector3 forward = Vector3.forward * colliderOptions.radius;

        Gizmos.color = colliderOptions.debugCollider;
        Gizmos.DrawLine(bottom + right, top + right);
        Gizmos.DrawLine(bottom - right, top - right);
        Gizmos.DrawLine(bottom + forward, top + forward);
        Gizmos.DrawLine(bottom - forward, top - forward);
        Gizmos.DrawWireSphere(bottom, colliderOptions.radius);
        Gizmos.DrawWireSphere(top, colliderOptions.radius);
        Gizmos.DrawWireSphere(colliderOptions.pos, 0.1f); // NOTE: 'pos' is never written by the build.

        if (colliderOptions.dir == Vector3.zero)
            return;

        // Same capsule, moved by the last cast direction.
        bottom = myT.position + colliderOptions.dir + Vector3.up * (colliderOptions.stepHeight + colliderOptions.radius);
        top = myT.position + colliderOptions.dir + Vector3.up * (colliderOptions.height - colliderOptions.radius);
        right = Vector3.right * colliderOptions.radius;
        forward = Vector3.forward * colliderOptions.radius;

        Gizmos.color = colliderOptions.debugCastDist;
        Gizmos.DrawLine(bottom + right, top + right);
        Gizmos.DrawLine(bottom - right, top - right);
        Gizmos.DrawLine(bottom + forward, top + forward);
        Gizmos.DrawLine(bottom - forward, top - forward);
        Gizmos.DrawWireSphere(bottom, colliderOptions.radius);
        Gizmos.DrawWireSphere(top, colliderOptions.radius);
    }

    // Called every frame by controller.Update.
    public void GoUpdate()
    {
        RaycastHit hit;

        rb.velocity = new Vector3(0f, 0f, 0f);
        dashTime -= Time.deltaTime;

        // Ground check. The bool result is ignored; hit.collider is tested instead.
        Physics.SphereCast(coll.center + myT.position, 0.2f, Vector3.down, out hit, coll.center.y - 0.15f, groundMasks);

        if (hit.collider && jump <= 0f && dashTime <= 0f)
        {
            grounded = true;
            toGround(hit); // inlined in the binary
        }
        else
        {
            grounded = false;
            if (hit.collider && directionMove.y <= 0f && dashTime > 0f)
                toGround(hit); // inlined in the binary
        }

        // Fell off the map: respawn above the origin.
        if (myT.position.y < -1f)
            myT.position = Vector3.up * 2.5f;

        if (grounded)
        {
            jump = 0f;
            directionMove.y = 0f;
        }
        else
        {
            // Half gravity while being hit or knocked out.
            float grav = gravity;
            if (myController.state == controller.State.hited || myController.state == controller.State.ko)
                grav *= 0.5f;

            if (jump > -maxGravity)
                jump -= grav * Time.deltaTime;
            else
                jump = -maxGravity;

            // While dashing the vertical speed is left as is.
            if (dashTime <= 0f)
                directionMove.y = jump;
        }

        rb.position += directionMove * Time.deltaTime;

        // Sweep the capsule from last frame's position along the horizontal movement
        // and push out of everything it overlaps.
        Vector3 dir = rb.position - oldPos;
        dir.y = 0f;
        Vector3 point1 = oldPos + Vector3.up * (colliderOptions.stepHeight + colliderOptions.radius);
        Vector3 point2 = oldPos + Vector3.up * (colliderOptions.height - colliderOptions.radius);
        colliderOptions.castDistanse = colliderOptions.radius;
        // NOTE: both the radius and the max distance read colliderOptions.radius in the build
        // (castDistanse is written just above but not read here).
        RaycastHit[] hits = Physics.CapsuleCastAll(point1, point2, colliderOptions.radius, dir, colliderOptions.radius, groundMasks);
        colliderOptions.dir = dir;

        if (hits.Length > 0)
        {
            Vector3 push = Vector3.zero;
            Vector3 wallDir = Vector3.zero;
            int wallHits = 0;

            for (int i = 0; i < hits.Length; i++)
            {
                Vector3 direction = Vector3.zero;
                float distance = 0f;
                Physics.ComputePenetration(
                    coll, rb.position, Quaternion.identity,
                    hits[i].collider, hits[i].collider.transform.position, hits[i].collider.transform.rotation,
                    out direction, out distance);

                push += direction * distance;

                // Knocked out and flying fast face-first into something.
                if (Vector3.Dot(myT.forward, direction) > 0.5f
                    && myController.state == controller.State.ko
                    && !grounded
                    && myController.moveFight.magnitude > 3f)
                {
                    wallHits++;
                    wallDir += direction;
                }
            }

            push.y = 0f;
            push /= hits.Length;
            rb.position += push;

            if (wallHits > 0)
            {
                wallDir /= wallHits;
                jump = 2f;
                myController.components.aud.PlayOneShot(myController.components.toFloor[0]);
                myController.components.anim.SetBool("fallToWall", true);
                myController.components.anim.SetTrigger("hited");
                myT.eulerAngles = new Vector3(0f, Quaternion.LookRotation(wallDir).eulerAngles.y, 0f);

                myController.stats.hp -= 20;
                // NOTE: debug behaviour kept from the build: HP is refilled instead of a KO.
                if (myController.stats.hp <= 0)
                    myController.stats.hp = myController.stats.hpMax;

                myController.components.cam.setLifeUI(myController._player); // inlined in the binary
                myController.moveFight = myT.forward * 4f;
            }
        }

        oldPos = rb.position;
    }

    [System.Serializable]
    public class CollisionTest
    {
        public float stepHeight;
        public float height;
        public float radius;
        public float castDistanse;
        public Color debugCollider;
        public Color debugCastDist;
        [HideInInspector]
        public Vector3 dir;
        [HideInInspector]
        public Vector3 pos;
    }
}
