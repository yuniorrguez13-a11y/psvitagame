// Reconstructed from the IL2CPP build (Unity 2018.2, PS Vita).
// Options panel. Only the FPS option is implemented; the other setters were
// empty in the shipped build. Settings are persisted with PlayerPrefs.
// FastMobileBloom and ColorSuite are third-party image-effect scripts that must be re-imported.
using UnityEngine;
using UnityEngine.UI;

public class GameOptions : MonoBehaviour
{
    public GameObject panel;
    public GameOptions.Aliasing aliasing;
    public GameOptions.Shadows shadows;
    public GameOptions.Fps fps;
    public GameOptions.Resolution resolution;
    public FastMobileBloom bloom;
    public Toggle bloomTog;
    public ColorSuite colorSuite;
    public Toggle colorSuiteTog;

    private void Start()
    {
        // Panel is enabled while the toggles are restored, then hidden again.
        panel.SetActive(true);
        LoadPrefs();
        panel.SetActive(false);
    }

    public void OpenOptionPanel()
    {
        panel.SetActive(!panel.activeSelf);

        if (panel.activeSelf)
        {
            // Pause the game while the options are open.
            Time.timeScale = 0f;
        }
        else
        {
            Time.timeScale = 1f;
            SavePrefs();
        }
    }

    public void SetDefaults()
    {
        fps.target60.isOn = true;
    }

    public void setResolution()
    {
        // Empty in the original build.
    }

    public void SetFPS(bool tog)
    {
        // NOTE: 'tog' is not used; the method reads the 60 FPS toggle directly.
        if (fps.target60.isOn)
        {
            Screen.SetResolution(960, 544, true, 60);
            Application.targetFrameRate = 60;
            QualitySettings.vSyncCount = 1;
        }
        else
        {
            Screen.SetResolution(960, 544, true, 60);
            Application.targetFrameRate = 60;
            QualitySettings.vSyncCount = 2; // 30 FPS (every second vblank)
        }
    }

    public void SetShadows(bool tog)
    {
        // Empty in the original build.
    }

    public void SetAliasing(bool tog)
    {
        // Empty in the original build.
    }

    public void SetBloom(bool tog)
    {
        // Empty in the original build.
    }

    public void SetcolorSuite(bool tog)
    {
        // Empty in the original build.
    }

    public void SavePrefs()
    {
        PlayerPrefs.SetInt("Settings.fpsTarget", fps.target30.isOn ? 1 : 0);
        PlayerPrefs.Save();
    }

    public void LoadPrefs()
    {
        if (PlayerPrefs.HasKey("Settings.fpsTarget"))
        {
            if (PlayerPrefs.GetInt("Settings.fpsTarget") == 1)
                fps.target30.isOn = true;
            else
                fps.target60.isOn = true;
        }
        else
        {
            // NOTE: inlined in the binary as "fps.target60.isOn = true", which is exactly SetDefaults().
            SetDefaults();
        }
    }

    [System.Serializable]
    public class Aliasing
    {
        public Toggle msaaTog;
    }

    [System.Serializable]
    public class Shadows
    {
        public Light light;
        public Toggle disabled;
        public Toggle low;
        public Toggle medium;
    }

    [System.Serializable]
    public class Fps
    {
        public Toggle target30;
        public Toggle target60;
    }

    [System.Serializable]
    public class Resolution
    {
        public Toggle res960;
        public Toggle res720;
        public Toggle res480;
    }
}
