// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Makes a character's eyes wander by animating the eye material's _MainTex offset:
// a large random "look" target plus a small random "jitter" added on top.
using UnityEngine;

public class eyes : MonoBehaviour
{
    public Material eyeMat;
    private Vector2 offset;
    private Vector2 toOffset;
    private float randomTime;
    public float speed;
    public float minTime;
    public float maxTime;
    public float maxOffset;
    private Vector2 toOffsetAdd;
    private float randomTimeAdd;
    public float minTimeAdd;
    public float maxTimeAdd;
    public float maxOffsetAdd;

    private void Update()
    {
        // Main look direction: pick a new random target every minTime..maxTime seconds.
        randomTime -= Time.deltaTime;
        if (randomTime < 0f)
        {
            randomTime = Random.Range(minTime, maxTime);
            toOffset = Random.insideUnitCircle * maxOffset;
        }

        offset = Vector2.MoveTowards(offset, toOffset, speed * Time.deltaTime);

        // Small jitter, only re-rolled once the eyes have reached their main target.
        randomTimeAdd -= Time.deltaTime;
        if (randomTimeAdd < 0f && offset == toOffset)
        {
            randomTimeAdd = Random.Range(minTimeAdd, maxTimeAdd);
            toOffsetAdd = Random.insideUnitCircle * maxOffsetAdd;
        }

        eyeMat.SetTextureOffset("_MainTex", offset + toOffsetAdd);
    }
}
