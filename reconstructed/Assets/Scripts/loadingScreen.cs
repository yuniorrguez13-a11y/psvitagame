// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Loading screen: loads scene "1" asynchronously, shows the progress in a TextMesh
// and activates the scene once loading has reached 90%.
using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class loadingScreen : MonoBehaviour
{
    private AsyncOperation sceneAO;
    public TextMesh text;

    private void Start()
    {
        StartCoroutine(LoadingSceneRealProgress("1"));
    }

    private IEnumerator LoadingSceneRealProgress(string sceneName)
    {
        yield return new WaitForSeconds(0.2f);

        sceneAO = SceneManager.LoadSceneAsync(sceneName);
        sceneAO.allowSceneActivation = false;

        bool loaded = false;
        while (!loaded)
        {
            // NOTE: the original concatenation starts with String.Empty (the mcs compiler emits "" that way).
            text.text = "" + Mathf.RoundToInt(sceneAO.progress * 100f) + "%";

            // With allowSceneActivation == false, progress stops at exactly 0.9.
            if (sceneAO.progress == 0.9f)
                loaded = true;

            yield return null;
        }

        text.text = "" + 100 + "%";
        yield return new WaitForSeconds(0.2f);

        sceneAO.allowSceneActivation = true;
    }
}
