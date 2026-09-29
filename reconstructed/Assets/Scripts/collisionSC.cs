// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Simple "manual" physics helper: applies gravity while not grounded and
// resolves trigger overlaps with Physics.ComputePenetration.
using UnityEngine;

public class collisionSC : MonoBehaviour
{
    public Transform t;
    public float gravity = 10f;
    public float maxGravity = 10f; // NOTE: set in the constructor but never read by this class.
    public bool grounded;
    public Collider myCollider;
    public Vector3 dir;

    private void Start()
    {
        t = transform;
        myCollider = GetComponent<Collider>();
    }

    private void OnTriggerStay(Collider other)
    {
        Vector3 direction = Vector3.zero;
        float distance = 0f;

        Physics.ComputePenetration(
            myCollider, t.position, Quaternion.identity,
            other, other.transform.position, other.transform.rotation,
            out direction, out distance);

        // Accumulate the push-out vector; it is applied (and cleared) in FixedUpdate.
        dir += direction * distance;

        // Pushed straight up => standing on something.
        if (direction.y == 1f)
            grounded = true;
    }

    private void FixedUpdate()
    {
        if (!grounded)
            t.Translate(Vector3.down * gravity * Time.deltaTime);

        t.position += dir;

        dir = Vector3.zero;
        grounded = false;
    }
}
