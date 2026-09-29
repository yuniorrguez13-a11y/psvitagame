// Namespace: 
internal class <Module> // TypeDefIndex: 2086
{}

// Namespace: 
public class cameraSC : MonoBehaviour // TypeDefIndex: 2087
{
	// Fields
	public cameraSC.CameraSettings settings; // 0xFFFFFFFF
	private Transform t; // 0xFFFFFFFF
	public Camera cam; // 0xFFFFFFFF
	public GameOptions gameOptions; // 0xFFFFFFFF
	public cameraSC.Players[] players; // 0xFFFFFFFF
	public Transform camT; // 0xFFFFFFFF
	public float dist; // 0xFFFFFFFF
	public float height; // 0xFFFFFFFF
	private Vector3 camRot; // 0xFFFFFFFF
	public cameraSC.CameraOption Options; // 0xFFFFFFFF
	private float distance; // 0xFFFFFFFF
	public LayerMask maskObstCam; // 0xFFFFFFFF
	public Transform NinjCamera; // 0xFFFFFFFF
	public Animator cameraAnim; // 0xFFFFFFFF
	public MyController ninjActor; // 0xFFFFFFFF
	private float ZdistAdditive; // 0xFFFFFFFF
	private float YCamAdditive; // 0xFFFFFFFF
	private float speedRot; // 0xFFFFFFFF
	private float inFight; // 0xFFFFFFFF
	private float playerCamDistance; // 0xFFFFFFFF
	private Vector3 oldPos; // 0xFFFFFFFF
	public float Xrot; // 0xFFFFFFFF
	public float playerDistance; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x8134C3E3 Offset: 0x34D3E3 VA: 0x8134C3E3
	private void Start() { }

	// RVA: 0x81341A41 Offset: 0x342A41 VA: 0x81341A41
	public void hited() { }

	// RVA: 0x8134C3F1 Offset: 0x34D3F1 VA: 0x8134C3F1
	public void setPlayer(controller c) { }

	// RVA: 0x813418A3 Offset: 0x3428A3 VA: 0x813418A3
	public void setLifeUI(int _player) { }

	// RVA: 0x8134C487 Offset: 0x34D487 VA: 0x8134C487
	public void setChakraUI(int _player) { }

	// RVA: 0x813418DB Offset: 0x3428DB VA: 0x813418DB
	public void setGuardUI(int _player) { }

	// RVA: 0x8134C4BF Offset: 0x34D4BF VA: 0x8134C4BF
	public void StartNinj(MyController c) { }

	// RVA: 0x8134C523 Offset: 0x34D523 VA: 0x8134C523
	public void EndCamera() { }

	// RVA: 0x8134C549 Offset: 0x34D549 VA: 0x8134C549
	public void EndtNinj() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void OnDrawGizmos() { }

	// RVA: 0x8134C551 Offset: 0x34D551 VA: 0x8134C551
	private void LateUpdate() { }

	// RVA: 0x8134D319 Offset: 0x34E319 VA: 0x8134D319
	private void LateUpdateOld() { }
}

// Namespace: 
[Serializable]
public class cameraSC.CameraOption // TypeDefIndex: 2088
{
	// Fields
	public Vector2 RotSpeed; // 0xFFFFFFFF
	public bool inversX; // 0xFFFFFFFF
	public bool inversY; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8134DDF5 Offset: 0x34EDF5 VA: 0x8134DDF5
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class cameraSC.CameraSettings // TypeDefIndex: 2089
{
	// Fields
	public float basicXAngle; // 0xFFFFFFFF
	public float basicHeight; // 0xFFFFFFFF
	public float HeightAdditive; // 0xFFFFFFFF
	public float Xangle; // 0xFFFFFFFF
	public float basicDist; // 0xFFFFFFFF
	public float fightDist; // 0xFFFFFFFF
	public float HeightDist; // 0xFFFFFFFF
	public float angleAdjust; // 0xFFFFFFFF
	public float maxAngle; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8134DE55 Offset: 0x34EE55 VA: 0x8134DE55
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class cameraSC.Players // TypeDefIndex: 2090
{
	// Fields
	public controller player; // 0xFFFFFFFF
	public Image icon; // 0xFFFFFFFF
	public Image life; // 0xFFFFFFFF
	public Image chakra; // 0xFFFFFFFF
	public Image guard; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
public class eyes : MonoBehaviour // TypeDefIndex: 2091
{
	// Fields
	public Material eyeMat; // 0xFFFFFFFF
	private Vector2 offset; // 0xFFFFFFFF
	private Vector2 toOffset; // 0xFFFFFFFF
	private float randomTime; // 0xFFFFFFFF
	public float speed; // 0xFFFFFFFF
	public float minTime; // 0xFFFFFFFF
	public float maxTime; // 0xFFFFFFFF
	public float maxOffset; // 0xFFFFFFFF
	private Vector2 toOffsetAdd; // 0xFFFFFFFF
	private float randomTimeAdd; // 0xFFFFFFFF
	public float minTimeAdd; // 0xFFFFFFFF
	public float maxTimeAdd; // 0xFFFFFFFF
	public float maxOffsetAdd; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81354DDD Offset: 0x355DDD VA: 0x81354DDD
	private void Update() { }
}

// Namespace: 
public class loadingScreen : MonoBehaviour // TypeDefIndex: 2092
{
	// Fields
	private AsyncOperation sceneAO; // 0xFFFFFFFF
	public TextMesh text; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x813550BF Offset: 0x3560BF VA: 0x813550BF
	private void Start() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81355075 Offset: 0x356075 VA: 0x81355075
	private IEnumerator LoadingSceneRealProgress(string sceneName) { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x812C56E1 Offset: 0x2C66E1 VA: 0x812C56E1
private sealed class loadingScreen.<LoadingSceneRealProgress>c__Iterator0 : IEnumerator, IDisposable, IEnumerator<object> // TypeDefIndex: 2093
{
	// Fields
	internal string sceneName; // 0xFFFFFFFF
	internal bool <loaded>__0; // 0xFFFFFFFF
	internal loadingScreen $this; // 0xFFFFFFFF
	internal object $current; // 0xFFFFFFFF
	internal bool $disposing; // 0xFFFFFFFF
	internal int $PC; // 0xFFFFFFFF

	// Properties
	private object System.Collections.Generic.IEnumerator<object>.Current { get; }
	private object System.Collections.IEnumerator.Current { get; }

	// Methods

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x8135513F Offset: 0x35613F VA: 0x8135513F Slot: 5
	public bool MoveNext() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81000BE1 Offset: 0x1BE1 VA: 0x81000BE1 Slot: 8
	private object System.Collections.Generic.IEnumerator<object>.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81000BE1 Offset: 0x1BE1 VA: 0x81000BE1 Slot: 4
	private object System.Collections.IEnumerator.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x8135538D Offset: 0x35638D VA: 0x8135538D Slot: 7
	public void Dispose() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81355399 Offset: 0x356399 VA: 0x81355399 Slot: 6
	public void Reset() { }
}

// Namespace: 
public class collisionSC : MonoBehaviour // TypeDefIndex: 2094
{
	// Fields
	public Transform t; // 0xFFFFFFFF
	public float gravity; // 0xFFFFFFFF
	public float maxGravity; // 0xFFFFFFFF
	public bool grounded; // 0xFFFFFFFF
	public Collider myCollider; // 0xFFFFFFFF
	public Vector3 dir; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8134DEA7 Offset: 0x34EEA7 VA: 0x8134DEA7
	public void .ctor() { }

	// RVA: 0x8134DEBF Offset: 0x34EEBF VA: 0x8134DEBF
	private void Start() { }

	// RVA: 0x8134DF07 Offset: 0x34EF07 VA: 0x8134DF07
	private void OnTriggerStay(Collider other) { }

	// RVA: 0x8134E10D Offset: 0x34F10D VA: 0x8134E10D
	private void FixedUpdate() { }
}

// Namespace: 
[ExecuteInEditMode] // RVA: 0x812D96A1 Offset: 0x2DA6A1 VA: 0x812D96A1
[ImageEffectTransformsToLDR] // RVA: 0x812D96A1 Offset: 0x2DA6A1 VA: 0x812D96A1
[RequireComponent] // RVA: 0x812D96A1 Offset: 0x2DA6A1 VA: 0x812D96A1
[AddComponentMenu] // RVA: 0x812D96A1 Offset: 0x2DA6A1 VA: 0x812D96A1
public class ColorSuite : MonoBehaviour // TypeDefIndex: 2095
{
	// Fields
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float _colorTemp; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float _colorTint; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private bool _toneMapping; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float _exposure; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float _saturation; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private AnimationCurve _rCurve; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private AnimationCurve _gCurve; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private AnimationCurve _bCurve; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private AnimationCurve _cCurve; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private ColorSuite.DitherMode _ditherMode; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Shader shader; // 0xFFFFFFFF
	private Material _material; // 0xFFFFFFFF
	private Texture2D _lutTexture; // 0xFFFFFFFF

	// Properties
	public float colorTemp { get; set; }
	public float colorTint { get; set; }
	public bool toneMapping { get; set; }
	public float exposure { get; set; }
	public float saturation { get; set; }
	public AnimationCurve redCurve { get; set; }
	public AnimationCurve greenCurve { get; set; }
	public AnimationCurve blueCurve { get; set; }
	public AnimationCurve rgbCurve { get; set; }
	public ColorSuite.DitherMode ditherMode { get; set; }

	// Methods

	// RVA: 0x813386A9 Offset: 0x3396A9 VA: 0x813386A9
	public void .ctor() { }

	// RVA: 0x81011A49 Offset: 0x12A49 VA: 0x81011A49
	public float get_colorTemp() { }

	// RVA: 0x81011A51 Offset: 0x12A51 VA: 0x81011A51
	public void set_colorTemp(float value) { }

	// RVA: 0x81011A59 Offset: 0x12A59 VA: 0x81011A59
	public float get_colorTint() { }

	// RVA: 0x8100CE01 Offset: 0xDE01 VA: 0x8100CE01
	public void set_colorTint(float value) { }

	// RVA: 0x810A84E9 Offset: 0xA94E9 VA: 0x810A84E9
	public bool get_toneMapping() { }

	// RVA: 0x81338739 Offset: 0x339739 VA: 0x81338739
	public void set_toneMapping(bool value) { }

	// RVA: 0x8133873D Offset: 0x33973D VA: 0x8133873D
	public float get_exposure() { }

	// RVA: 0x810C5891 Offset: 0xC6891 VA: 0x810C5891
	public void set_exposure(float value) { }

	// RVA: 0x810BB445 Offset: 0xBC445 VA: 0x810BB445
	public float get_saturation() { }

	// RVA: 0x813481B9 Offset: 0x3491B9 VA: 0x813481B9
	public void set_saturation(float value) { }

	// RVA: 0x81005875 Offset: 0x6875 VA: 0x81005875
	public AnimationCurve get_redCurve() { }

	// RVA: 0x813389D9 Offset: 0x3399D9 VA: 0x813389D9
	public void set_redCurve(AnimationCurve value) { }

	// RVA: 0x810A3065 Offset: 0xA4065 VA: 0x810A3065
	public AnimationCurve get_greenCurve() { }

	// RVA: 0x813389E5 Offset: 0x3399E5 VA: 0x813389E5
	public void set_greenCurve(AnimationCurve value) { }

	// RVA: 0x81087CE1 Offset: 0x88CE1 VA: 0x81087CE1
	public AnimationCurve get_blueCurve() { }

	// RVA: 0x813389F1 Offset: 0x3399F1 VA: 0x813389F1
	public void set_blueCurve(AnimationCurve value) { }

	// RVA: 0x8106B22D Offset: 0x6C22D VA: 0x8106B22D
	public AnimationCurve get_rgbCurve() { }

	// RVA: 0x813389FD Offset: 0x3399FD VA: 0x813389FD
	public void set_rgbCurve(AnimationCurve value) { }

	// RVA: 0x810C5B39 Offset: 0xC6B39 VA: 0x810C5B39
	public ColorSuite.DitherMode get_ditherMode() { }

	// RVA: 0x810ABC21 Offset: 0xACC21 VA: 0x810ABC21
	public void set_ditherMode(ColorSuite.DitherMode value) { }

	// RVA: 0x81338745 Offset: 0x339745 VA: 0x81338745
	private static Color EncodeRGBM(float r, float g, float b) { }

	// RVA: 0x81338A09 Offset: 0x339A09 VA: 0x81338A09
	private static float StandardIlluminantY(float x) { }

	// RVA: 0x81338A37 Offset: 0x339A37 VA: 0x81338A37
	private static Vector3 CIExyToLMS(float x, float y) { }

	// RVA: 0x81338B19 Offset: 0x339B19 VA: 0x81338B19
	private void Setup() { }

	// RVA: 0x8133883F Offset: 0x33983F VA: 0x8133883F
	private void UpdateLUT() { }

	// RVA: 0x81338C0F Offset: 0x339C0F VA: 0x81338C0F
	private Vector3 CalculateColorBalance() { }

	// RVA: 0x81338B19 Offset: 0x339B19 VA: 0x81338B19
	private void Start() { }

	// RVA: 0x81338DD5 Offset: 0x339DD5 VA: 0x81338DD5
	private void OnValidate() { }

	// RVA: 0x81338DD5 Offset: 0x339DD5 VA: 0x81338DD5
	private void Reset() { }

	// RVA: 0x81338ED3 Offset: 0x339ED3 VA: 0x81338ED3
	private void OnRenderImage(RenderTexture source, RenderTexture destination) { }
}

// Namespace: 
public enum ColorSuite.DitherMode // TypeDefIndex: 2096
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ColorSuite.DitherMode Off = 0;
	public const ColorSuite.DitherMode Ordered = 1;
	public const ColorSuite.DitherMode Triangular = 2;
}

// Namespace: 
public class controller : MonoBehaviour // TypeDefIndex: 2097
{
	// Fields
	public controller.Sounds sounds; // 0xFFFFFFFF
	public controller.Bones bones; // 0xFFFFFFFF
	public int _player; // 0xFFFFFFFF
	public controller.State state; // 0xFFFFFFFF
	public controller.Action action; // 0xFFFFFFFF
	public controller.Action oldAction; // 0xFFFFFFFF
	public controller.CharStats stats; // 0xFFFFFFFF
	public bool isPlayer; // 0xFFFFFFFF
	public MyController character; // 0xFFFFFFFF
	public controller target; // 0xFFFFFFFF
	public Transform substitution; // 0xFFFFFFFF
	private bool move; // 0xFFFFFFFF
	private bool oldMove; // 0xFFFFFFFF
	private Vector3 dir; // 0xFFFFFFFF
	public Vector3 moveSpeed; // 0xFFFFFFFF
	public Vector3 moveFight; // 0xFFFFFFFF
	private Vector3 rot; // 0xFFFFFFFF
	public int _jump; // 0xFFFFFFFF
	public int _hit; // 0xFFFFFFFF
	private bool oldGrounded; // 0xFFFFFFFF
	private float hitForce; // 0xFFFFFFFF
	public controller.Components components; // 0xFFFFFFFF
	public controller._Particles _particles; // 0xFFFFFFFF
	public controller.Attacks[] attacks; // 0xFFFFFFFF
	public Dictionary<string, controller.Attacks> AttacksList; // 0xFFFFFFFF
	public controller.BreakedGuard breakedGuard; // 0xFFFFFFFF
	private controller.Attacks thisAttack; // 0xFFFFFFFF
	private float blockTime; // 0xFFFFFFFF
	private bool oldRtrigger; // 0xFFFFFFFF
	public bool disabled; // 0xFFFFFFFF
	public bool guard; // 0xFFFFFFFF
	private float jumpTime; // 0xFFFFFFFF
	private bool jumpBool; // 0xFFFFFFFF
	public float hitedTime; // 0xFFFFFFFF
	private bool oldGUARDbutton; // 0xFFFFFFFF
	private bool oldSQUAREbutton; // 0xFFFFFFFF
	private float SQUAREtime; // 0xFFFFFFFF
	private bool SQUAREbool; // 0xFFFFFFFF
	private bool oldTHROWbutton; // 0xFFFFFFFF
	private float THROWtime; // 0xFFFFFFFF
	private bool THROWbool; // 0xFFFFFFFF
	private Vector3 botDirRandom; // 0xFFFFFFFF
	private float startAttackDist; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81350365 Offset: 0x351365 VA: 0x81350365
	public void .ctor() { }

	// RVA: 0x81350455 Offset: 0x351455 VA: 0x81350455
	private void Start() { }

	// RVA: 0x813505F1 Offset: 0x3515F1 VA: 0x813505F1
	public void step() { }

	// RVA: 0x81350601 Offset: 0x351601 VA: 0x81350601
	public void StartNinj() { }

	// RVA: 0x8135066B Offset: 0x35166B VA: 0x8135066B
	public void EndCamera() { }

	// RVA: 0x81350693 Offset: 0x351693 VA: 0x81350693
	public void EndNinj() { }

	// RVA: 0x81341979 Offset: 0x342979 VA: 0x81341979
	public void RecoverChakra(int i) { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x813503C7 Offset: 0x3513C7 VA: 0x813503C7
	private IEnumerator recoverChakra() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81341915 Offset: 0x342915 VA: 0x81341915
	public IEnumerator Substitution(controller from, controller.Attacks attack, int index) { }

	// RVA: 0x81341A5D Offset: 0x342A5D VA: 0x81341A5D
	public int dmg(controller from, controller.Attacks attack, int index) { }

	// RVA: 0x813506F5 Offset: 0x3516F5 VA: 0x813506F5
	public void hit(int index) { }

	// RVA: 0x8134240D Offset: 0x34340D VA: 0x8134240D
	public void collided(Collider other) { }

	// RVA: 0x81350EDB Offset: 0x351EDB VA: 0x81350EDB
	public void fine() { }

	// RVA: 0x81351053 Offset: 0x352053 VA: 0x81351053
	public void dodge(string direction) { }

	// RVA: 0x8135177F Offset: 0x35277F VA: 0x8135177F
	public void Jump(int count) { }

	// RVA: 0x813519F9 Offset: 0x3529F9 VA: 0x813519F9
	public void Dash() { }

	// RVA: 0x81351E2D Offset: 0x352E2D VA: 0x81351E2D
	public void Throw(int i) { }

	// RVA: 0x813524EF Offset: 0x3534EF VA: 0x813524EF
	public void Combo(string animKey) { }

	// RVA: 0x813526E7 Offset: 0x3536E7 VA: 0x813526E7
	public void AddMove(int index) { }

	// RVA: 0x81352B2F Offset: 0x353B2F VA: 0x81352B2F
	public void GuardBreak(int i) { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x8135040F Offset: 0x35140F VA: 0x8135040F
	private IEnumerator guardRecovering() { }

	// RVA: 0x81352C63 Offset: 0x353C63 VA: 0x81352C63
	private void Update() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void OnGUI() { }
}

// Namespace: 
[Serializable]
public class controller.Bones // TypeDefIndex: 2098
{
	// Fields
	public Transform head; // 0xFFFFFFFF
	public Transform chest; // 0xFFFFFFFF
	public Transform leftHand; // 0xFFFFFFFF
	public Transform rightHand; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class controller.Sounds // TypeDefIndex: 2099
{
	// Fields
	public AudioSource aud; // 0xFFFFFFFF
	public AudioClip recoverChakra; // 0xFFFFFFFF
	public AudioClip[] hited; // 0xFFFFFFFF
	public AudioClip[] ko; // 0xFFFFFFFF
	public AudioClip[] attack; // 0xFFFFFFFF
	public AudioClip[] jump; // 0xFFFFFFFF
	public AudioClip[] dodge; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class controller.Attacks // TypeDefIndex: 2100
{
	// Fields
	public string _name; // 0xFFFFFFFF
	public Vector3[] move; // 0xFFFFFFFF
	public controller.Attacks.hitType[] type; // 0xFFFFFFFF
	public int[] dmg; // 0xFFFFFFFF
	public Vector3[] force; // 0xFFFFFFFF
	public int[] soundIndex; // 0xFFFFFFFF
	public GameObject Weapon; // 0xFFFFFFFF
	public GameObject Throw; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
public enum controller.Attacks.hitType // TypeDefIndex: 2101
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const controller.Attacks.hitType upRight = 0;
	public const controller.Attacks.hitType upLeft = 1;
	public const controller.Attacks.hitType head = 2;
	public const controller.Attacks.hitType uppercutS = 3;
	public const controller.Attacks.hitType uppercutB = 4;
	public const controller.Attacks.hitType kickB = 5;
}

// Namespace: 
[Serializable]
public class controller.BreakedGuard // TypeDefIndex: 2102
{
	// Fields
	public Vector3[] move; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class controller.CharStats // TypeDefIndex: 2103
{
	// Fields
	public Sprite icon; // 0xFFFFFFFF
	public int hp; // 0xFFFFFFFF
	public int hpMax; // 0xFFFFFFFF
	public int chakra; // 0xFFFFFFFF
	public int chakraMax; // 0xFFFFFFFF
	public int guard; // 0xFFFFFFFF
	public int guardMax; // 0xFFFFFFFF
	public float speedMove; // 0xFFFFFFFF
	public float jumpPower; // 0xFFFFFFFF
	public float dashSpeed; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class controller.Components // TypeDefIndex: 2104
{
	// Fields
	public SkinnedMeshRenderer rend; // 0xFFFFFFFF
	public SkinnedMeshRenderer shadow; // 0xFFFFFFFF
	public Collider col; // 0xFFFFFFFF
	public Animator anim; // 0xFFFFFFFF
	public cameraSC cam; // 0xFFFFFFFF
	public Transform directionToEnemy; // 0xFFFFFFFF
	public AudioSource aud; // 0xFFFFFFFF
	public AudioClip step; // 0xFFFFFFFF
	public AudioClip dash; // 0xFFFFFFFF
	public AudioClip[] hits; // 0xFFFFFFFF
	public AudioClip[] miss; // 0xFFFFFFFF
	public AudioClip[] toFloor; // 0xFFFFFFFF
	public AudioClip substHit; // 0xFFFFFFFF
	public AudioClip startCHRecover; // 0xFFFFFFFF
	public AudioClip substitSound; // 0xFFFFFFFF
	public AudioClip ThrowSound; // 0xFFFFFFFF
	public ParticleSystem ChakraRecoverEffect; // 0xFFFFFFFF
	public GameObject substitutionObj; // 0xFFFFFFFF
	public GameObject ThrowObj; // 0xFFFFFFFF
	public GameObject guardObj; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class controller._Particles // TypeDefIndex: 2105
{
	// Fields
	public ParticleSystem[] hits; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
public enum controller.State // TypeDefIndex: 2106
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const controller.State nothing = 0;
	public const controller.State hited = 1;
	public const controller.State ko = 2;
	public const controller.State substitution = 3;
	public const controller.State stunned = 4;
}

// Namespace: 
public enum controller.Action // TypeDefIndex: 2107
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const controller.Action nothing = 0;
	public const controller.Action attack = 1;
	public const controller.Action guard = 2;
	public const controller.Action chRecover = 3;
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x812C56E1 Offset: 0x2C66E1 VA: 0x812C56E1
private sealed class controller.<recoverChakra>c__Iterator0 : IEnumerator, IDisposable, IEnumerator<object> // TypeDefIndex: 2108
{
	// Fields
	internal controller $this; // 0xFFFFFFFF
	internal object $current; // 0xFFFFFFFF
	internal bool $disposing; // 0xFFFFFFFF
	internal int $PC; // 0xFFFFFFFF

	// Properties
	private object System.Collections.Generic.IEnumerator<object>.Current { get; }
	private object System.Collections.IEnumerator.Current { get; }

	// Methods

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x81354C73 Offset: 0x355C73 VA: 0x81354C73 Slot: 5
	public bool MoveNext() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1 Slot: 8
	private object System.Collections.Generic.IEnumerator<object>.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1 Slot: 4
	private object System.Collections.IEnumerator.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x810BC7BD Offset: 0xBD7BD VA: 0x810BC7BD Slot: 7
	public void Dispose() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81354D87 Offset: 0x355D87 VA: 0x81354D87 Slot: 6
	public void Reset() { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x812C56E1 Offset: 0x2C66E1 VA: 0x812C56E1
private sealed class controller.<Substitution>c__Iterator1 : IEnumerator, IDisposable, IEnumerator<object> // TypeDefIndex: 2109
{
	// Fields
	internal GameObject <substObj>__0; // 0xFFFFFFFF
	internal Rigidbody <rb>__0; // 0xFFFFFFFF
	internal controller from; // 0xFFFFFFFF
	internal controller.Attacks attack; // 0xFFFFFFFF
	internal int index; // 0xFFFFFFFF
	internal float <time>__0; // 0xFFFFFFFF
	internal controller $this; // 0xFFFFFFFF
	internal object $current; // 0xFFFFFFFF
	internal bool $disposing; // 0xFFFFFFFF
	internal int $PC; // 0xFFFFFFFF

	// Properties
	private object System.Collections.Generic.IEnumerator<object>.Current { get; }
	private object System.Collections.IEnumerator.Current { get; }

	// Methods

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x81354391 Offset: 0x355391 VA: 0x81354391 Slot: 5
	public bool MoveNext() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x810A3065 Offset: 0xA4065 VA: 0x810A3065 Slot: 8
	private object System.Collections.Generic.IEnumerator<object>.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x810A3065 Offset: 0xA4065 VA: 0x810A3065 Slot: 4
	private object System.Collections.IEnumerator.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x8124D741 Offset: 0x24E741 VA: 0x8124D741 Slot: 7
	public void Dispose() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81354AF3 Offset: 0x355AF3 VA: 0x81354AF3 Slot: 6
	public void Reset() { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x812C56E1 Offset: 0x2C66E1 VA: 0x812C56E1
private sealed class controller.<guardRecovering>c__Iterator2 : IEnumerator, IDisposable, IEnumerator<object> // TypeDefIndex: 2110
{
	// Fields
	internal controller $this; // 0xFFFFFFFF
	internal object $current; // 0xFFFFFFFF
	internal bool $disposing; // 0xFFFFFFFF
	internal int $PC; // 0xFFFFFFFF

	// Properties
	private object System.Collections.Generic.IEnumerator<object>.Current { get; }
	private object System.Collections.IEnumerator.Current { get; }

	// Methods

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x81354B49 Offset: 0x355B49 VA: 0x81354B49 Slot: 5
	public bool MoveNext() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1 Slot: 8
	private object System.Collections.Generic.IEnumerator<object>.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1 Slot: 4
	private object System.Collections.IEnumerator.get_Current() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x810BC7BD Offset: 0xBD7BD VA: 0x810BC7BD Slot: 7
	public void Dispose() { }

	[DebuggerHiddenAttribute] // RVA: 0x812C56F1 Offset: 0x2C66F1 VA: 0x812C56F1
	// RVA: 0x81354C1D Offset: 0x355C1D VA: 0x81354C1D Slot: 6
	public void Reset() { }
}

// Namespace: com.cortastudios.DynamicColorCorrection.DemoScene
[RequireComponent] // RVA: 0x812D9719 Offset: 0x2DA719 VA: 0x812D9719
public class DemoCurveImageBehavior : MonoBehaviour // TypeDefIndex: 2111
{
	// Fields
	public bool InverseTransparency; // 0xFFFFFFFF
	public bool IsDepthCurve; // 0xFFFFFFFF
	private Image ImageComponent; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81350287 Offset: 0x351287 VA: 0x81350287
	private void Start() { }

	// RVA: 0x813502F7 Offset: 0x3512F7 VA: 0x813502F7
	public void SetTransparency(float transparency) { }
}

// Namespace: com.cortastudios.DynamicColorCorrection
[RequireComponent] // RVA: 0x812D9761 Offset: 0x2DA761 VA: 0x812D9761
[ExecuteInEditMode] // RVA: 0x812D9761 Offset: 0x2DA761 VA: 0x812D9761
[AddComponentMenu] // RVA: 0x812D9761 Offset: 0x2DA761 VA: 0x812D9761
public class ColorCurvesManager : MonoBehaviour // TypeDefIndex: 2112
{
	// Fields
	public float Factor; // 0xFFFFFFFF
	public float SaturationA; // 0xFFFFFFFF
	public AnimationCurve RedA; // 0xFFFFFFFF
	public AnimationCurve GreenA; // 0xFFFFFFFF
	public AnimationCurve BlueA; // 0xFFFFFFFF
	public AnimationCurve RedADepth; // 0xFFFFFFFF
	public AnimationCurve GreenADepth; // 0xFFFFFFFF
	public AnimationCurve BlueADepth; // 0xFFFFFFFF
	public AnimationCurve ZCurveA; // 0xFFFFFFFF
	public Color SelectiveFromColorA; // 0xFFFFFFFF
	public Color SelectiveToColorA; // 0xFFFFFFFF
	public float SaturationB; // 0xFFFFFFFF
	public AnimationCurve RedB; // 0xFFFFFFFF
	public AnimationCurve GreenB; // 0xFFFFFFFF
	public AnimationCurve BlueB; // 0xFFFFFFFF
	public AnimationCurve RedBDepth; // 0xFFFFFFFF
	public AnimationCurve GreenBDepth; // 0xFFFFFFFF
	public AnimationCurve BlueBDepth; // 0xFFFFFFFF
	public AnimationCurve ZCurveB; // 0xFFFFFFFF
	public Color SelectiveFromColorB; // 0xFFFFFFFF
	public Color SelectiveToColorB; // 0xFFFFFFFF
	private List<Keyframe[]> RedPairedKeyframes; // 0xFFFFFFFF
	private List<Keyframe[]> GreenPairedKeyframes; // 0xFFFFFFFF
	private List<Keyframe[]> BluePairedKeyframes; // 0xFFFFFFFF
	private List<Keyframe[]> DepthRedPairedKeyframes; // 0xFFFFFFFF
	private List<Keyframe[]> DepthGreenPairedKeyframes; // 0xFFFFFFFF
	private List<Keyframe[]> DepthBluePairedKeyframes; // 0xFFFFFFFF
	private List<Keyframe[]> ZCurvePairedKeyframes; // 0xFFFFFFFF
	private ColorCorrectionCurves CurvesScript; // 0xFFFFFFFF
	private const float PAIRING_DISTANCE = 0.01;
	private const float TANGENT_DISTANCE = 0.0012;
	private bool ChangesInEditor; // 0xFFFFFFFF
	private float LastFactor; // 0xFFFFFFFF
	private float LastSaturationA; // 0xFFFFFFFF
	private float LastSaturationB; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8134E285 Offset: 0x34F285 VA: 0x8134E285
	public void .ctor() { }

	// RVA: 0x81011A51 Offset: 0x12A51 VA: 0x81011A51
	public void SetFactor(float factor) { }

	// RVA: 0x8100CE01 Offset: 0xDE01 VA: 0x8100CE01
	public void SetSaturationA(float saturationA) { }

	// RVA: 0x8134EECF Offset: 0x34FECF VA: 0x8134EECF
	public void SetSaturationB(float saturationB) { }

	// RVA: 0x8134FA07 Offset: 0x350A07 VA: 0x8134FA07
	private void Start() { }

	// RVA: 0x813501B1 Offset: 0x3511B1 VA: 0x813501B1
	private void Update() { }

	// RVA: 0x813500E5 Offset: 0x3510E5 VA: 0x813500E5
	private void UpdateScript() { }

	// RVA: 0x813501BB Offset: 0x3511BB VA: 0x813501BB
	private void EditorHasChanged() { }

	// RVA: 0x8134F1DD Offset: 0x3501DD VA: 0x8134F1DD
	public static List<Keyframe[]> PairKeyframes(AnimationCurve curveA, AnimationCurve curveB) { }

	// RVA: 0x8134F07F Offset: 0x35007F VA: 0x8134F07F
	private static List<Keyframe[]> SimplePairKeyframes(AnimationCurve curveA, AnimationCurve curveB) { }

	// RVA: 0x8134EED5 Offset: 0x34FED5 VA: 0x8134EED5
	private static Keyframe CreatePair(Keyframe kf, AnimationCurve curve) { }

	// RVA: 0x8134FBCB Offset: 0x350BCB VA: 0x8134FBCB
	public static AnimationCurve CreateCurveFromKeyframes(IList<Keyframe[]> keyframePairs, float factor) { }

	// RVA: 0x8134FA71 Offset: 0x350A71 VA: 0x8134FA71
	public static Keyframe AverageKeyframe(Keyframe a, Keyframe b, float factor) { }

	// RVA: 0x8134F967 Offset: 0x350967 VA: 0x8134F967
	private void PairCurvesKeyframes() { }

	// RVA: 0x8134FEB5 Offset: 0x350EB5 VA: 0x8134FEB5
	private void UpdateScriptParameters() { }

	// RVA: 0x8134F921 Offset: 0x350921 VA: 0x8134F921
	private bool PairedListsInitiated() { }

	// RVA: 0x8134F957 Offset: 0x350957 VA: 0x8134F957
	public bool ScriptAdvancedMode() { }

	// RVA: 0x8134FA67 Offset: 0x350A67 VA: 0x8134FA67
	public bool ScriptSelective() { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x812C56E1 Offset: 0x2C66E1 VA: 0x812C56E1
private sealed class ColorCurvesManager.<PairKeyframes>c__AnonStorey0 // TypeDefIndex: 2113
{
	// Fields
	internal Keyframe aKeyframe; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x813501CB Offset: 0x3511CB VA: 0x813501CB
	internal bool <>m__0(Keyframe bKeyframe) { }
}

// Namespace: UnityStandardAssets.ImageEffects
[ExecuteInEditMode] // RVA: 0x812D97D1 Offset: 0x2DA7D1 VA: 0x812D97D1
[AddComponentMenu] // RVA: 0x812D97D1 Offset: 0x2DA7D1 VA: 0x812D97D1
public class ColorCorrectionCurves : PostEffectsBase // TypeDefIndex: 2114
{
	// Fields
	public AnimationCurve redChannel; // 0xFFFFFFFF
	public AnimationCurve greenChannel; // 0xFFFFFFFF
	public AnimationCurve blueChannel; // 0xFFFFFFFF
	public bool useDepthCorrection; // 0xFFFFFFFF
	public AnimationCurve zCurve; // 0xFFFFFFFF
	public AnimationCurve depthRedChannel; // 0xFFFFFFFF
	public AnimationCurve depthGreenChannel; // 0xFFFFFFFF
	public AnimationCurve depthBlueChannel; // 0xFFFFFFFF
	private Material ccMaterial; // 0xFFFFFFFF
	private Material ccDepthMaterial; // 0xFFFFFFFF
	private Material selectiveCcMaterial; // 0xFFFFFFFF
	private Texture2D rgbChannelTex; // 0xFFFFFFFF
	private Texture2D rgbDepthChannelTex; // 0xFFFFFFFF
	private Texture2D zCurveTex; // 0xFFFFFFFF
	public float saturation; // 0xFFFFFFFF
	public bool selectiveCc; // 0xFFFFFFFF
	public Color selectiveFromColor; // 0xFFFFFFFF
	public Color selectiveToColor; // 0xFFFFFFFF
	public ColorCorrectionCurves.ColorCorrectionMode mode; // 0xFFFFFFFF
	public bool updateTextures; // 0xFFFFFFFF
	public Shader colorCorrectionCurvesShader; // 0xFFFFFFFF
	public Shader simpleColorCorrectionCurvesShader; // 0xFFFFFFFF
	public Shader colorCorrectionSelectiveShader; // 0xFFFFFFFF
	private bool updateTexturesOnStartup; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81348A63 Offset: 0x349A63 VA: 0x81348A63
	public void .ctor() { }

	// RVA: 0x813490F9 Offset: 0x34A0F9 VA: 0x813490F9
	private void Start() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void Awake() { }

	// RVA: 0x81349571 Offset: 0x34A571 VA: 0x81349571 Slot: 4
	public override bool CheckResources() { }

	// RVA: 0x81349867 Offset: 0x34A867 VA: 0x81349867
	public void UpdateParameters() { }

	// RVA: 0x81349C6F Offset: 0x34AC6F VA: 0x81349C6F
	private void UpdateTextures() { }

	// RVA: 0x81349C79 Offset: 0x34AC79 VA: 0x81349C79
	private void OnRenderImage(RenderTexture source, RenderTexture destination) { }
}

// Namespace: 
public enum ColorCorrectionCurves.ColorCorrectionMode // TypeDefIndex: 2115
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ColorCorrectionCurves.ColorCorrectionMode Simple = 0;
	public const ColorCorrectionCurves.ColorCorrectionMode Advanced = 1;
}

// Namespace: UnityStandardAssets.ImageEffects
[ExecuteInEditMode] // RVA: 0x812D97FD Offset: 0x2DA7FD VA: 0x812D97FD
[AddComponentMenu] // RVA: 0x812D97FD Offset: 0x2DA7FD VA: 0x812D97FD
public class ColorCorrectionLookup : PostEffectsBase // TypeDefIndex: 2116
{
	// Fields
	public Shader shader; // 0xFFFFFFFF
	private Material material; // 0xFFFFFFFF
	public Texture3D converted3DLut; // 0xFFFFFFFF
	public string basedOnTempTex; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81349ECB Offset: 0x34AECB VA: 0x81349ECB
	public void .ctor() { }

	// RVA: 0x81349F7B Offset: 0x34AF7B VA: 0x81349F7B Slot: 4
	public override bool CheckResources() { }

	// RVA: 0x8134A0AD Offset: 0x34B0AD VA: 0x8134A0AD
	private void OnDisable() { }

	// RVA: 0x8134A131 Offset: 0x34B131 VA: 0x8134A131
	private void OnDestroy() { }

	// RVA: 0x8134A1B5 Offset: 0x34B1B5 VA: 0x8134A1B5
	public void SetIdentityLut() { }

	// RVA: 0x8134A387 Offset: 0x34B387 VA: 0x8134A387
	public bool ValidDimensions(Texture2D tex2d) { }

	// RVA: 0x8134A44F Offset: 0x34B44F VA: 0x8134A44F
	public void Convert(Texture2D temp2DTex, string path) { }

	// RVA: 0x8134A6ED Offset: 0x34B6ED VA: 0x8134A6ED
	private void OnRenderImage(RenderTexture source, RenderTexture destination) { }
}

// Namespace: UnityStandardAssets.ImageEffects
[ExecuteInEditMode] // RVA: 0x812D9829 Offset: 0x2DA829 VA: 0x812D9829
[AddComponentMenu] // RVA: 0x812D9829 Offset: 0x2DA829 VA: 0x812D9829
public class ColorCorrectionRamp : ImageEffectBase // TypeDefIndex: 2117
{
	// Fields
	public Texture textureRamp; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x8134A8E3 Offset: 0x34B8E3 VA: 0x8134A8E3
	private void OnRenderImage(RenderTexture source, RenderTexture destination) { }
}

// Namespace: UnityStandardAssets.ImageEffects
[RequireComponent] // RVA: 0x812D9855 Offset: 0x2DA855 VA: 0x812D9855
[AddComponentMenu] // RVA: 0x812D9855 Offset: 0x2DA855 VA: 0x812D9855
public class ImageEffectBase : MonoBehaviour // TypeDefIndex: 2118
{
	// Fields
	public Shader shader; // 0xFFFFFFFF
	private Material m_Material; // 0xFFFFFFFF

	// Properties
	protected Material material { get; }

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x8134AA55 Offset: 0x34BA55 VA: 0x8134AA55 Slot: 4
	protected virtual void Start() { }

	// RVA: 0x8134A861 Offset: 0x34B861 VA: 0x8134A861
	protected Material get_material() { }

	// RVA: 0x8134AADB Offset: 0x34BADB VA: 0x8134AADB Slot: 5
	protected virtual void OnDisable() { }
}

// Namespace: UnityStandardAssets.ImageEffects
[AddComponentMenu] // RVA: 0x812D98B9 Offset: 0x2DA8B9 VA: 0x812D98B9
public class ImageEffects // TypeDefIndex: 2119
{
	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x8134AB5D Offset: 0x34BB5D VA: 0x8134AB5D
	public static void RenderDistortion(Material material, RenderTexture source, RenderTexture destination, float angle, Vector2 center, Vector2 radius) { }

	[ObsoleteAttribute] // RVA: 0x812D98D9 Offset: 0x2DA8D9 VA: 0x812D98D9
	// RVA: 0x8134AE4F Offset: 0x34BE4F VA: 0x8134AE4F
	public static void Blit(RenderTexture source, RenderTexture dest) { }

	[ObsoleteAttribute] // RVA: 0x812D98F9 Offset: 0x2DA8F9 VA: 0x812D98F9
	// RVA: 0x8134AEA5 Offset: 0x34BEA5 VA: 0x8134AEA5
	public static void BlitWithMaterial(Material material, RenderTexture source, RenderTexture dest) { }
}

// Namespace: UnityStandardAssets.ImageEffects
[ExecuteInEditMode] // RVA: 0x812D9919 Offset: 0x2DA919 VA: 0x812D9919
[RequireComponent] // RVA: 0x812D9919 Offset: 0x2DA919 VA: 0x812D9919
public class PostEffectsBase : MonoBehaviour // TypeDefIndex: 2120
{
	// Fields
	protected bool supportHDRTextures; // 0xFFFFFFFF
	protected bool supportDX11; // 0xFFFFFFFF
	protected bool isSupported; // 0xFFFFFFFF
	private List<Material> createdMaterials; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81348A07 Offset: 0x349A07 VA: 0x81348A07
	public void .ctor() { }

	// RVA: 0x813491C9 Offset: 0x34A1C9 VA: 0x813491C9
	protected Material CheckShaderAndCreateMaterial(Shader s, Material m2Create) { }

	// RVA: 0x8134AF05 Offset: 0x34BF05 VA: 0x8134AF05
	protected Material CreateMaterial(Shader s, Material m2Create) { }

	// RVA: 0x8134B085 Offset: 0x34C085 VA: 0x8134B085
	private void OnEnable() { }

	// RVA: 0x8134B08B Offset: 0x34C08B VA: 0x8134B08B
	private void OnDestroy() { }

	// RVA: 0x8134B08B Offset: 0x34C08B VA: 0x8134B08B
	private void RemoveCreatedMaterials() { }

	// RVA: 0x8134B11F Offset: 0x34C11F VA: 0x8134B11F
	protected bool CheckSupport() { }

	// RVA: 0x8134B19B Offset: 0x34C19B VA: 0x8134B19B Slot: 4
	public virtual bool CheckResources() { }

	// RVA: 0x813490E9 Offset: 0x34A0E9 VA: 0x813490E9
	protected void Start() { }

	// RVA: 0x813494AF Offset: 0x34A4AF VA: 0x813494AF
	protected bool CheckSupport(bool needDepth) { }

	// RVA: 0x8134B241 Offset: 0x34C241 VA: 0x8134B241
	protected bool CheckSupport(bool needDepth, bool needHdr) { }

	// RVA: 0x810E7F15 Offset: 0xE8F15 VA: 0x810E7F15
	public bool Dx11Support() { }

	// RVA: 0x81349113 Offset: 0x34A113 VA: 0x81349113
	protected void ReportAutoDisable() { }

	// RVA: 0x8134B31F Offset: 0x34C31F VA: 0x8134B31F
	private bool CheckShader(Shader s) { }

	// RVA: 0x813491B7 Offset: 0x34A1B7 VA: 0x813491B7
	protected void NotSupported() { }

	// RVA: 0x8134B4B9 Offset: 0x34C4B9 VA: 0x8134B4B9
	protected void DrawBorder(RenderTexture dest, Material material) { }
}

// Namespace: UnityStandardAssets.ImageEffects
[ExecuteInEditMode] // RVA: 0x812D996B Offset: 0x2DA96B VA: 0x812D996B
[RequireComponent] // RVA: 0x812D996B Offset: 0x2DA96B VA: 0x812D996B
internal class PostEffectsHelper : MonoBehaviour // TypeDefIndex: 2121
{
	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x8134B7E1 Offset: 0x34C7E1 VA: 0x8134B7E1
	private void OnRenderImage(RenderTexture source, RenderTexture destination) { }

	// RVA: 0x8134B839 Offset: 0x34C839 VA: 0x8134B839
	private static void DrawLowLevelPlaneAlignedWithCamera(float dist, RenderTexture source, RenderTexture dest, Material material, Camera cameraForProjectionMatrix) { }

	// RVA: 0x8134B4B9 Offset: 0x34C4B9 VA: 0x8134B4B9
	private static void DrawBorder(RenderTexture dest, Material material) { }

	// RVA: 0x8134BA8D Offset: 0x34CA8D VA: 0x8134BA8D
	private static void DrawLowLevelQuad(float x1, float x2, float y1, float y2, RenderTexture source, RenderTexture dest, Material material) { }
}

// Namespace: UnityStandardAssets.ImageEffects
internal class Quads // TypeDefIndex: 2122
{
	// Fields
	private static Mesh[] meshes; // 0xFFFFFFFF
	private static int currentQuads; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x8134BBE1 Offset: 0x34CBE1 VA: 0x8134BBE1
	private static bool HasMeshes() { }

	// RVA: 0x8134BCAB Offset: 0x34CCAB VA: 0x8134BCAB
	public static void Cleanup() { }

	// RVA: 0x8134C14D Offset: 0x34D14D VA: 0x8134C14D
	public static Mesh[] GetMeshes(int totalWidth, int totalHeight) { }

	// RVA: 0x8134BDED Offset: 0x34CDED VA: 0x8134BDED
	private static Mesh GetMesh(int triCount, int triOffset, int totalWidth, int totalHeight) { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private static void .cctor() { }
}

// Namespace: DynamicShadowProjector.Sample
public class Rotate : MonoBehaviour // TypeDefIndex: 2123
{
	// Fields
	public float m_rotateSpeed; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8133C253 Offset: 0x33D253 VA: 0x8133C253
	public void .ctor() { }

	// RVA: 0x8133C265 Offset: 0x33D265 VA: 0x8133C265
	private void Update() { }
}

// Namespace: DynamicShadowProjector.Sample
public class Swing : MonoBehaviour // TypeDefIndex: 2124
{
	// Fields
	public float m_minAngle; // 0xFFFFFFFF
	public float m_maxAngle; // 0xFFFFFFFF
	public float m_swingSpeed; // 0xFFFFFFFF
	private Quaternion m_initialRotation; // 0xFFFFFFFF
	private float m_swing; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8133C3BF Offset: 0x33D3BF VA: 0x8133C3BF
	public void .ctor() { }

	// RVA: 0x8133C3E3 Offset: 0x33D3E3 VA: 0x8133C3E3
	private void Start() { }

	// RVA: 0x8133C427 Offset: 0x33D427 VA: 0x8133C427
	private void Update() { }
}

// Namespace: DynamicShadowProjector
[ExecuteInEditMode] // RVA: 0x812D99BD Offset: 0x2DA9BD VA: 0x812D99BD
[DisallowMultipleComponent] // RVA: 0x812D99BD Offset: 0x2DA9BD VA: 0x812D99BD
[RequireComponent] // RVA: 0x812D99BD Offset: 0x2DA9BD VA: 0x812D99BD
public class DrawSceneObject : MonoBehaviour // TypeDefIndex: 2125
{
	// Fields
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Shader m_replacementShader; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private LayerMask m_cullingMask; // 0xFFFFFFFF
	private ShadowTextureRenderer m_shadowTextureRenderer; // 0xFFFFFFFF

	// Properties
	public Shader replacementShader { get; set; }
	public LayerMask cullingMask { get; set; }
	public ShadowTextureRenderer shadowTextureRenderer { get; }

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1
	public Shader get_replacementShader() { }

	// RVA: 0x81339EDF Offset: 0x33AEDF VA: 0x81339EDF
	public void set_replacementShader(Shader value) { }

	// RVA: 0x810000BD Offset: 0x10BD VA: 0x810000BD
	public LayerMask get_cullingMask() { }

	// RVA: 0x8133A0A7 Offset: 0x33B0A7 VA: 0x8133A0A7
	public void set_cullingMask(LayerMask value) { }

	// RVA: 0x81339E71 Offset: 0x33AE71 VA: 0x81339E71
	public ShadowTextureRenderer get_shadowTextureRenderer() { }

	// RVA: 0x8133A1FF Offset: 0x33B1FF VA: 0x8133A1FF
	private void OnValidate() { }

	// RVA: 0x8133A4A3 Offset: 0x33B4A3 VA: 0x8133A4A3
	private void OnEnable() { }

	// RVA: 0x8133A6C5 Offset: 0x33B6C5 VA: 0x8133A6C5
	private void OnDisable() { }

	// RVA: 0x8133A8BF Offset: 0x33B8BF VA: 0x8133A8BF
	private void OnVisibilityChanged(bool isVisible) { }
}

// Namespace: DynamicShadowProjector
[ExecuteInEditMode] // RVA: 0x812D9A19 Offset: 0x2DAA19 VA: 0x812D9A19
[RequireComponent] // RVA: 0x812D9A19 Offset: 0x2DAA19 VA: 0x812D9A19
public class DrawTargetObject : MonoBehaviour // TypeDefIndex: 2126
{
	// Fields
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Transform m_target; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Transform m_targetDirection; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private LayerMask m_layerMask; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private DrawTargetObject.TextureAlignment m_textureAlignment; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private DrawTargetObject.UpdateFunction m_updateFunction; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Material m_shadowShader; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private DrawTargetObject.ReplaceShader[] m_replacementShaders; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private bool m_renderChildren; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private bool m_followTarget; // 0xFFFFFFFF
	private bool m_isCommandBufferDirty; // 0xFFFFFFFF
	private CommandBuffer m_commandBuffer; // 0xFFFFFFFF
	private ShadowTextureRenderer m_shadowRenderer; // 0xFFFFFFFF
	private Vector3 m_localTargetPosition; // 0xFFFFFFFF
	private Dictionary<Material, Material> m_replacedMaterialCache; // 0xFFFFFFFF

	// Properties
	public Transform target { get; set; }
	public Transform targetDirection { get; set; }
	public bool renderChildren { get; set; }
	public LayerMask layerMask { get; set; }
	public DrawTargetObject.TextureAlignment textureAlignment { get; set; }
	public DrawTargetObject.UpdateFunction updateFunction { get; set; }
	public bool followTarget { get; set; }
	public Material shadowShader { get; set; }
	public DrawTargetObject.ReplaceShader[] replacementShaders { get; set; }

	// Methods

	// RVA: 0x8133AA93 Offset: 0x33BA93 VA: 0x8133AA93
	public void .ctor() { }

	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1
	public Transform get_target() { }

	// RVA: 0x8133AAC1 Offset: 0x33BAC1 VA: 0x8133AAC1
	public void set_target(Transform value) { }

	// RVA: 0x810000BD Offset: 0x10BD VA: 0x810000BD
	public Transform get_targetDirection() { }

	// RVA: 0x8100514D Offset: 0x614D VA: 0x8100514D
	public void set_targetDirection(Transform value) { }

	// RVA: 0x8133AB25 Offset: 0x33BB25 VA: 0x8133AB25
	public bool get_renderChildren() { }

	// RVA: 0x8133AB2B Offset: 0x33BB2B VA: 0x8133AB2B
	public void set_renderChildren(bool value) { }

	// RVA: 0x81000BE1 Offset: 0x1BE1 VA: 0x81000BE1
	public LayerMask get_layerMask() { }

	// RVA: 0x8133AB43 Offset: 0x33BB43 VA: 0x8133AB43
	public void set_layerMask(LayerMask value) { }

	// RVA: 0x810000B9 Offset: 0x10B9 VA: 0x810000B9
	public DrawTargetObject.TextureAlignment get_textureAlignment() { }

	// RVA: 0x81005871 Offset: 0x6871 VA: 0x81005871
	public void set_textureAlignment(DrawTargetObject.TextureAlignment value) { }

	// RVA: 0x81000BD9 Offset: 0x1BD9 VA: 0x81000BD9
	public DrawTargetObject.UpdateFunction get_updateFunction() { }

	// RVA: 0x81000BDD Offset: 0x1BDD VA: 0x81000BDD
	public void set_updateFunction(DrawTargetObject.UpdateFunction value) { }

	// RVA: 0x8108E9BD Offset: 0x8F9BD VA: 0x8108E9BD
	public bool get_followTarget() { }

	// RVA: 0x8131C065 Offset: 0x31D065 VA: 0x8131C065
	public void set_followTarget(bool value) { }

	// RVA: 0x81005875 Offset: 0x6875 VA: 0x81005875
	public Material get_shadowShader() { }

	// RVA: 0x8133AB73 Offset: 0x33BB73 VA: 0x8133AB73
	public void set_shadowShader(Material value) { }

	// RVA: 0x810A3065 Offset: 0xA4065 VA: 0x810A3065
	public DrawTargetObject.ReplaceShader[] get_replacementShaders() { }

	// RVA: 0x8133ABD7 Offset: 0x33BBD7 VA: 0x8133ABD7
	public void set_replacementShaders(DrawTargetObject.ReplaceShader[] value) { }

	// RVA: 0x8133AAB9 Offset: 0x33BAB9 VA: 0x8133AAB9
	public void SetCommandBufferDirty() { }

	// RVA: 0x8133B03D Offset: 0x33C03D VA: 0x8133B03D
	public void UpdateCommandBuffer() { }

	// RVA: 0x8133B0BB Offset: 0x33C0BB VA: 0x8133B0BB
	public void UpdateMaterial(Material mat) { }

	// RVA: 0x8133B12F Offset: 0x33C12F VA: 0x8133B12F
	public void UpdateTransform() { }

	// RVA: 0x8133B4B5 Offset: 0x33C4B5 VA: 0x8133B4B5
	private void Awake() { }

	// RVA: 0x8133B5E1 Offset: 0x33C5E1 VA: 0x8133B5E1
	private void OnValidate() { }

	// RVA: 0x8133B665 Offset: 0x33C665 VA: 0x8133B665
	private void OnEnable() { }

	// RVA: 0x8133B75F Offset: 0x33C75F VA: 0x8133B75F
	private void OnDisable() { }

	// RVA: 0x8133B7C9 Offset: 0x33C7C9 VA: 0x8133B7C9
	private void OnDestroy() { }

	// RVA: 0x8133B939 Offset: 0x33C939 VA: 0x8133B939
	private void LateUpdate() { }

	// RVA: 0x8133B949 Offset: 0x33C949 VA: 0x8133B949
	private void OnPreCull() { }

	// RVA: 0x8133B9DB Offset: 0x33C9DB VA: 0x8133B9DB
	private void OnVisibilityChanged(bool isVisible) { }

	// RVA: 0x8133B44B Offset: 0x33C44B VA: 0x8133B44B
	private void CreateCommandBuffer() { }

	// RVA: 0x8133AEC7 Offset: 0x33BEC7 VA: 0x8133AEC7
	private void AddDrawCommandForGameObject(GameObject obj, bool recursive) { }

	// RVA: 0x8133ABE1 Offset: 0x33BBE1 VA: 0x8133ABE1
	private void AddDrawCommand(Renderer renderer, int renderTypeIndex) { }
}

// Namespace: 
[Serializable]
public struct DrawTargetObject.ReplaceShader // TypeDefIndex: 2127
{
	// Fields
	public string renderType; // 0xFFFFFFFF
	public Shader shader; // 0xFFFFFFFF
}

// Namespace: 
public enum DrawTargetObject.TextureAlignment // TypeDefIndex: 2128
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const DrawTargetObject.TextureAlignment None = 0;
	public const DrawTargetObject.TextureAlignment TargetAxisX = 1;
	public const DrawTargetObject.TextureAlignment TargetAxisY = 2;
	public const DrawTargetObject.TextureAlignment TargetAxisZ = 3;
}

// Namespace: 
public enum DrawTargetObject.UpdateFunction // TypeDefIndex: 2129
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const DrawTargetObject.UpdateFunction OnPreCull = 0;
	public const DrawTargetObject.UpdateFunction LateUpdate = 1;
	public const DrawTargetObject.UpdateFunction UpdateTransform = 2;
}

// Namespace: DynamicShadowProjector
public class FollowTargetObject : MonoBehaviour // TypeDefIndex: 2130
{
	// Fields
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Transform m_target; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Transform m_targetDirection; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private FollowTargetObject.TextureAlignment m_textureAlignment; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private FollowTargetObject.UpdateFunction m_updateFunction; // 0xFFFFFFFF
	private Vector3 m_localTargetPosition; // 0xFFFFFFFF

	// Properties
	public Transform target { get; set; }
	public Transform targetDirection { get; set; }
	public FollowTargetObject.TextureAlignment textureAlignment { get; set; }
	public FollowTargetObject.UpdateFunction updateFunction { get; set; }

	// Methods

	// RVA: 0x8133BA2D Offset: 0x33CA2D VA: 0x8133BA2D
	public void .ctor() { }

	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1
	public Transform get_target() { }

	// RVA: 0x81006CD5 Offset: 0x7CD5 VA: 0x81006CD5
	public void set_target(Transform value) { }

	// RVA: 0x810000BD Offset: 0x10BD VA: 0x810000BD
	public Transform get_targetDirection() { }

	// RVA: 0x8100514D Offset: 0x614D VA: 0x8100514D
	public void set_targetDirection(Transform value) { }

	// RVA: 0x81000BE1 Offset: 0x1BE1 VA: 0x81000BE1
	public FollowTargetObject.TextureAlignment get_textureAlignment() { }

	// RVA: 0x810020A1 Offset: 0x30A1 VA: 0x810020A1
	public void set_textureAlignment(FollowTargetObject.TextureAlignment value) { }

	// RVA: 0x810000B9 Offset: 0x10B9 VA: 0x810000B9
	public FollowTargetObject.UpdateFunction get_updateFunction() { }

	// RVA: 0x81005871 Offset: 0x6871 VA: 0x81005871
	public void set_updateFunction(FollowTargetObject.UpdateFunction value) { }

	// RVA: 0x8133BA3B Offset: 0x33CA3B VA: 0x8133BA3B
	public void UpdateTransform() { }

	// RVA: 0x8133BD2F Offset: 0x33CD2F VA: 0x8133BD2F
	private void Awake() { }

	// RVA: 0x8133BDD9 Offset: 0x33CDD9 VA: 0x8133BDD9
	private void LateUpdate() { }

	// RVA: 0x8133BDE9 Offset: 0x33CDE9 VA: 0x8133BDE9
	private void OnPreCull() { }
}

// Namespace: 
public enum FollowTargetObject.TextureAlignment // TypeDefIndex: 2131
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const FollowTargetObject.TextureAlignment None = 0;
	public const FollowTargetObject.TextureAlignment TargetAxisX = 1;
	public const FollowTargetObject.TextureAlignment TargetAxisY = 2;
	public const FollowTargetObject.TextureAlignment TargetAxisZ = 3;
}

// Namespace: 
public enum FollowTargetObject.UpdateFunction // TypeDefIndex: 2132
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const FollowTargetObject.UpdateFunction OnPreCull = 0;
	public const FollowTargetObject.UpdateFunction LateUpdate = 1;
	public const FollowTargetObject.UpdateFunction UpdateTransform = 2;
}

// Namespace: DynamicShadowProjector
[RequireComponent] // RVA: 0x812D9A6D Offset: 0x2DAA6D VA: 0x812D9A6D
public class MipmappedShadowFallback : MonoBehaviour // TypeDefIndex: 2133
{
	// Fields
	public Object m_fallbackShaderOrMaterial; // 0xFFFFFFFF
	public int m_blurLevel; // 0xFFFFFFFF
	public float m_blurSize; // 0xFFFFFFFF
	public bool m_modifyTextureSize; // 0xFFFFFFFF
	public ShadowTextureRenderer.TextureMultiSample m_multiSampling; // 0xFFFFFFFF
	public ShadowTextureRenderer.TextureSuperSample m_superSampling; // 0xFFFFFFFF
	public int m_textureWidth; // 0xFFFFFFFF
	public int m_textureHeight; // 0xFFFFFFFF
	public Shader m_tex2DlodCheckShader; // 0xFFFFFFFF
	public Shader m_glslCheckShader; // 0xFFFFFFFF

	// Methods

	// RVA: 0x8133BDF7 Offset: 0x33CDF7 VA: 0x8133BDF7
	public void .ctor() { }

	// RVA: 0x8133C055 Offset: 0x33D055 VA: 0x8133C055
	private void Awake() { }

	// RVA: 0x8133BECD Offset: 0x33CECD VA: 0x8133BECD
	public void ApplyFallback(Projector projector) { }
}

// Namespace: DynamicShadowProjector
[ExecuteInEditMode] // RVA: 0x812D9AB5 Offset: 0x2DAAB5 VA: 0x812D9AB5
[DisallowMultipleComponent] // RVA: 0x812D9AB5 Offset: 0x2DAAB5 VA: 0x812D9AB5
[RequireComponent] // RVA: 0x812D9AB5 Offset: 0x2DAAB5 VA: 0x812D9AB5
public class ShadowTextureRenderer : MonoBehaviour // TypeDefIndex: 2134
{
	// Fields
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private ShadowTextureRenderer.TextureMultiSample m_multiSampling; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private ShadowTextureRenderer.TextureSuperSample m_superSampling; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private ShadowTextureRenderer.MipmapFalloff m_mipmapFalloff; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private ShadowTextureRenderer.BlurFilter m_blurFilter; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private bool m_testViewClip; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private int m_textureWidth; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private int m_textureHeight; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private int m_mipLevel; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private int m_blurLevel; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float m_blurSize; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float m_mipmapBlurSize; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private bool m_singlePassMipmapBlur; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Color m_shadowColor; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Material m_blurShader; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Material m_downsampleShader; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Material m_copyMipmapShader; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Material m_eraseShadowShader; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float[] m_customMipmapFalloff; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private RenderTextureFormat[] m_preferredTextureFormats; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Camera[] m_camerasForViewClipTest; // 0xFFFFFFFF
	private static int s_falloffParamID; // 0xFFFFFFFF
	private static int s_blurOffsetHParamID; // 0xFFFFFFFF
	private static int s_blurOffsetVParamID; // 0xFFFFFFFF
	private static int s_blurWeightHParamID; // 0xFFFFFFFF
	private static int s_blurWeightVParamID; // 0xFFFFFFFF
	private static int s_downSampleBlurOffset0ParamID; // 0xFFFFFFFF
	private static int s_downSampleBlurOffset1ParamID; // 0xFFFFFFFF
	private static int s_downSampleBlurOffset2ParamID; // 0xFFFFFFFF
	private static int s_downSampleBlurOffset3ParamID; // 0xFFFFFFFF
	private static int s_downSampleBlurWeightParamID; // 0xFFFFFFFF
	private Projector m_projector; // 0xFFFFFFFF
	private Material m_projectorMaterial; // 0xFFFFFFFF
	private CommandBuffer m_commandBuffer; // 0xFFFFFFFF
	private RenderTexture m_shadowTexture; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812D9B11 Offset: 0x2DAB11 VA: 0x812D9B11
	[HideInInspector] // RVA: 0x812D9B11 Offset: 0x2DAB11 VA: 0x812D9B11
	private Camera m_camera; // 0xFFFFFFFF
	private bool m_isTexturePropertyChanged; // 0xFFFFFFFF
	private bool m_isVisible; // 0xFFFFFFFF
	private bool m_shadowTextureValid; // 0xFFFFFFFF
	private static HashSet<Material> s_sharedMaterials; // 0xFFFFFFFF
	private const HideFlags CLONED_MATERIAL_HIDE_FLAGS = 61;
	private const int MAX_BLUR_TAP_SIZE = 7;
	private static float[] s_blurWeights; // 0xFFFFFFFF

	// Properties
	public ShadowTextureRenderer.TextureMultiSample multiSampling { get; set; }
	public ShadowTextureRenderer.TextureSuperSample superSampling { get; set; }
	public int textureWidth { get; set; }
	public int textureHeight { get; set; }
	public RenderTextureFormat[] preferredTextureFormats { get; set; }
	public int mipLevel { get; set; }
	public int blurLevel { get; set; }
	public float blurSize { get; set; }
	public ShadowTextureRenderer.BlurFilter blurFilter { get; set; }
	public float mipmapBlurSize { get; set; }
	public bool singlePassMipmapBlur { get; set; }
	public ShadowTextureRenderer.MipmapFalloff mipmapFalloff { get; set; }
	public float[] customMipmapFalloff { get; set; }
	public Color shadowColor { get; set; }
	public Material blurShader { get; set; }
	public Material downsampleShader { get; set; }
	public Material copyMipmapShader { get; set; }
	public Material eraseShadowShader { get; set; }
	public RenderTexture shadowTexture { get; }
	public bool testViewClip { get; set; }
	public Camera[] camerasForViewClipTest { get; set; }
	public float cameraNearClipPlane { get; set; }
	public LayerMask cameraCullingMask { get; set; }
	public bool isProjectorVisible { get; }
	private bool useIntermediateTexture { get; }

	// Methods

	// RVA: 0x8133C5B7 Offset: 0x33D5B7 VA: 0x8133C5B7
	public void .ctor() { }

	// RVA: 0x81006CD1 Offset: 0x7CD1 VA: 0x81006CD1
	public ShadowTextureRenderer.TextureMultiSample get_multiSampling() { }

	// RVA: 0x8133BE55 Offset: 0x33CE55 VA: 0x8133BE55
	public void set_multiSampling(ShadowTextureRenderer.TextureMultiSample value) { }

	// RVA: 0x810000BD Offset: 0x10BD VA: 0x810000BD
	public ShadowTextureRenderer.TextureSuperSample get_superSampling() { }

	// RVA: 0x8133BE23 Offset: 0x33CE23 VA: 0x8133BE23
	public void set_superSampling(ShadowTextureRenderer.TextureSuperSample value) { }

	// RVA: 0x81005875 Offset: 0x6875 VA: 0x81005875
	public int get_textureWidth() { }

	// RVA: 0x8133BE75 Offset: 0x33CE75 VA: 0x8133BE75
	public void set_textureWidth(int value) { }

	// RVA: 0x810A3065 Offset: 0xA4065 VA: 0x810A3065
	public int get_textureHeight() { }

	// RVA: 0x8133BE65 Offset: 0x33CE65 VA: 0x8133BE65
	public void set_textureHeight(int value) { }

	// RVA: 0x8100808B Offset: 0x908B VA: 0x8100808B
	public RenderTextureFormat[] get_preferredTextureFormats() { }

	// RVA: 0x8133C647 Offset: 0x33D647 VA: 0x8133C647
	public void set_preferredTextureFormats(RenderTextureFormat[] value) { }

	// RVA: 0x81087CE1 Offset: 0x88CE1 VA: 0x81087CE1
	public int get_mipLevel() { }

	// RVA: 0x8133BE85 Offset: 0x33CE85 VA: 0x8133BE85
	public void set_mipLevel(int value) { }

	// RVA: 0x8106B22D Offset: 0x6C22D VA: 0x8106B22D
	public int get_blurLevel() { }

	// RVA: 0x8133BE9B Offset: 0x33CE9B VA: 0x8133BE9B
	public void set_blurLevel(int value) { }

	// RVA: 0x810117A1 Offset: 0x127A1 VA: 0x810117A1
	public float get_blurSize() { }

	// RVA: 0x810117A9 Offset: 0x127A9 VA: 0x810117A9
	public void set_blurSize(float value) { }

	// RVA: 0x810000B9 Offset: 0x10B9 VA: 0x810000B9
	public ShadowTextureRenderer.BlurFilter get_blurFilter() { }

	// RVA: 0x81005871 Offset: 0x6871 VA: 0x81005871
	public void set_blurFilter(ShadowTextureRenderer.BlurFilter value) { }

	// RVA: 0x8100D021 Offset: 0xE021 VA: 0x8100D021
	public float get_mipmapBlurSize() { }

	// RVA: 0x8133C651 Offset: 0x33D651 VA: 0x8133C651
	public void set_mipmapBlurSize(float value) { }

	// RVA: 0x8130DD4D Offset: 0x30ED4D VA: 0x8130DD4D
	public bool get_singlePassMipmapBlur() { }

	// RVA: 0x8133C659 Offset: 0x33D659 VA: 0x8133C659
	public void set_singlePassMipmapBlur(bool value) { }

	// RVA: 0x81000BE1 Offset: 0x1BE1 VA: 0x81000BE1
	public ShadowTextureRenderer.MipmapFalloff get_mipmapFalloff() { }

	// RVA: 0x810020A1 Offset: 0x30A1 VA: 0x810020A1
	public void set_mipmapFalloff(ShadowTextureRenderer.MipmapFalloff value) { }

	// RVA: 0x8114D961 Offset: 0x14E961 VA: 0x8114D961
	public float[] get_customMipmapFalloff() { }

	// RVA: 0x8127E4B5 Offset: 0x27F4B5 VA: 0x8127E4B5
	public void set_customMipmapFalloff(float[] value) { }

	// RVA: 0x81339265 Offset: 0x33A265 VA: 0x81339265
	public Color get_shadowColor() { }

	// RVA: 0x8133C65F Offset: 0x33D65F VA: 0x8133C65F
	public void set_shadowColor(Color value) { }

	// RVA: 0x81308375 Offset: 0x309375 VA: 0x81308375
	public Material get_blurShader() { }

	// RVA: 0x8133C6DB Offset: 0x33D6DB VA: 0x8133C6DB
	public void set_blurShader(Material value) { }

	// RVA: 0x81020255 Offset: 0x21255 VA: 0x81020255
	public Material get_downsampleShader() { }

	// RVA: 0x8130DD7B Offset: 0x30ED7B VA: 0x8130DD7B
	public void set_downsampleShader(Material value) { }

	// RVA: 0x8102029D Offset: 0x2129D VA: 0x8102029D
	public Material get_copyMipmapShader() { }

	// RVA: 0x8127E4BD Offset: 0x27F4BD VA: 0x8127E4BD
	public void set_copyMipmapShader(Material value) { }

	// RVA: 0x8114D965 Offset: 0x14E965 VA: 0x8114D965
	public Material get_eraseShadowShader() { }

	// RVA: 0x8127E4B9 Offset: 0x27F4B9 VA: 0x8127E4B9
	public void set_eraseShadowShader(Material value) { }

	// RVA: 0x8137B4A1 Offset: 0x37C4A1 VA: 0x8137B4A1
	public RenderTexture get_shadowTexture() { }

	// RVA: 0x8103D671 Offset: 0x3E671 VA: 0x8103D671
	public bool get_testViewClip() { }

	// RVA: 0x8109C641 Offset: 0x9D641 VA: 0x8109C641
	public void set_testViewClip(bool value) { }

	// RVA: 0x810C2625 Offset: 0xC3625 VA: 0x810C2625
	public Camera[] get_camerasForViewClipTest() { }

	// RVA: 0x8127D901 Offset: 0x27E901 VA: 0x8127D901
	public void set_camerasForViewClipTest(Camera[] value) { }

	// RVA: 0x8133C6DF Offset: 0x33D6DF VA: 0x8133C6DF
	public float get_cameraNearClipPlane() { }

	// RVA: 0x8133C749 Offset: 0x33D749 VA: 0x8133C749
	public void set_cameraNearClipPlane(float value) { }

	// RVA: 0x8133C7C3 Offset: 0x33D7C3 VA: 0x8133C7C3
	public LayerMask get_cameraCullingMask() { }

	// RVA: 0x8133A027 Offset: 0x33B027 VA: 0x8133A027
	public void set_cameraCullingMask(LayerMask value) { }

	// RVA: 0x81339DC5 Offset: 0x33ADC5 VA: 0x81339DC5
	public void SetReplacementShader(Shader shader, string replacementTag) { }

	// RVA: 0x8133A0A1 Offset: 0x33B0A1 VA: 0x8133A0A1
	public bool get_isProjectorVisible() { }

	// RVA: 0x8133BE1B Offset: 0x33CE1B VA: 0x8133BE1B
	public void SetTexturePropertyDirty() { }

	// RVA: 0x81339319 Offset: 0x33A319 VA: 0x81339319
	public void CreateRenderTexture() { }

	// RVA: 0x8133B42B Offset: 0x33C42B VA: 0x8133B42B
	public void AddCommandBuffer(CommandBuffer commandBuffer) { }

	// RVA: 0x8133B74F Offset: 0x33C74F VA: 0x8133B74F
	public void RemoveCommandBuffer(CommandBuffer commandBuffer) { }

	// RVA: 0x81339829 Offset: 0x33A829 VA: 0x81339829
	private static void InitializeShaderPropertyIDs() { }

	// RVA: 0x813392BB Offset: 0x33A2BB VA: 0x813392BB
	private bool get_useIntermediateTexture() { }

	// RVA: 0x81339A07 Offset: 0x33AA07 VA: 0x81339A07
	private bool Initialize() { }

	// RVA: 0x81339973 Offset: 0x33A973 VA: 0x81339973
	private bool IsInitialized() { }

	// RVA: 0x8133C837 Offset: 0x33D837 VA: 0x8133C837
	private void Awake() { }

	// RVA: 0x8133C841 Offset: 0x33D841 VA: 0x8133C841
	private void OnEnable() { }

	// RVA: 0x8133C8A5 Offset: 0x33D8A5 VA: 0x8133C8A5
	private void OnDisable() { }

	// RVA: 0x8133C909 Offset: 0x33D909 VA: 0x8133C909
	private void Start() { }

	// RVA: 0x8133C9B7 Offset: 0x33D9B7 VA: 0x8133C9B7
	private void OnValidate() { }

	// RVA: 0x813395BB Offset: 0x33A5BB VA: 0x813395BB
	private void CloneProjectorMaterialIfShared() { }

	// RVA: 0x8133CC9D Offset: 0x33DC9D VA: 0x8133CC9D
	private void OnDestroy() { }

	// RVA: 0x8133CEDF Offset: 0x33DEDF VA: 0x8133CEDF
	private bool IsReadyToExecute() { }

	// RVA: 0x8133D047 Offset: 0x33E047 VA: 0x8133D047
	private void SetVisible(bool isVisible) { }

	// RVA: 0x8133D0BF Offset: 0x33E0BF VA: 0x8133D0BF
	private void Update() { }

	// RVA: 0x8133D12F Offset: 0x33E12F VA: 0x8133D12F
	private void OnPreCull() { }

	// RVA: 0x81339277 Offset: 0x33A277 VA: 0x81339277
	private bool HasShadowColor() { }

	// RVA: 0x8133DE43 Offset: 0x33EE43 VA: 0x8133DE43
	private void OnPreRender() { }

	// RVA: 0x8133DECD Offset: 0x33EECD VA: 0x8133DECD
	private static ShadowTextureRenderer.BlurParam GetBlurParam(float blurSize, ShadowTextureRenderer.BlurFilter filter) { }

	// RVA: 0x8133EC8B Offset: 0x33FC8B VA: 0x8133EC8B
	private static ShadowTextureRenderer.BlurParam GetDownsampleBlurParam(float blurSize, ShadowTextureRenderer.BlurFilter filter) { }

	// RVA: 0x8133F28B Offset: 0x34028B VA: 0x8133F28B
	private void OnPostRender() { }

	// RVA: 0x8133F18D Offset: 0x34018D VA: 0x8133F18D
	private void EraseShadowOnBorder(int w, int h) { }

	// RVA: 0x8133EF89 Offset: 0x33FF89 VA: 0x8133EF89
	private void SetDownsampleBlurOffsetParams(ShadowTextureRenderer.BlurParam blurH, ShadowTextureRenderer.BlurParam blurV, int w, int h) { }

	// RVA: 0x813406E7 Offset: 0x3416E7 VA: 0x813406E7
	private static void .cctor() { }
}

// Namespace: 
public enum ShadowTextureRenderer.TextureMultiSample // TypeDefIndex: 2135
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ShadowTextureRenderer.TextureMultiSample x1 = 1;
	public const ShadowTextureRenderer.TextureMultiSample x2 = 2;
	public const ShadowTextureRenderer.TextureMultiSample x4 = 4;
	public const ShadowTextureRenderer.TextureMultiSample x8 = 8;
}

// Namespace: 
public enum ShadowTextureRenderer.TextureSuperSample // TypeDefIndex: 2136
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ShadowTextureRenderer.TextureSuperSample x1 = 1;
	public const ShadowTextureRenderer.TextureSuperSample x4 = 2;
	public const ShadowTextureRenderer.TextureSuperSample x16 = 4;
}

// Namespace: 
public enum ShadowTextureRenderer.MipmapFalloff // TypeDefIndex: 2137
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ShadowTextureRenderer.MipmapFalloff None = 0;
	public const ShadowTextureRenderer.MipmapFalloff Linear = 1;
	public const ShadowTextureRenderer.MipmapFalloff Custom = 2;
}

// Namespace: 
public enum ShadowTextureRenderer.BlurFilter // TypeDefIndex: 2138
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ShadowTextureRenderer.BlurFilter Uniform = 0;
	public const ShadowTextureRenderer.BlurFilter Gaussian = 1;
}

// Namespace: 
private struct ShadowTextureRenderer.BlurParam // TypeDefIndex: 2139
{
	// Fields
	public int tap; // 0xFFFFFFFF
	public Vector4 offset; // 0xFFFFFFFF
	public Vector4 weight; // 0xFFFFFFFF
}

// Namespace: FantasySkyFree
public class GE_FantasySkyboxFREE_Demo : MonoBehaviour // TypeDefIndex: 2140
{
	// Fields
	public GE_FantasySkyboxFREE_Demo.LightAndSky[] m_LightAndSkyList; // 0xFFFFFFFF
	private int m_CurrentSkyBox; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81340AF5 Offset: 0x341AF5 VA: 0x81340AF5
	private void Start() { }

	// RVA: 0x81340B41 Offset: 0x341B41 VA: 0x81340B41
	private void Update() { }

	// RVA: 0x81340C3F Offset: 0x341C3F VA: 0x81340C3F
	private void OnTriggerExit(Collider other) { }

	// RVA: 0x81340B29 Offset: 0x341B29 VA: 0x81340B29
	public void OnPreviousSkybox() { }

	// RVA: 0x81340B13 Offset: 0x341B13 VA: 0x81340B13
	public void OnNextSkybox() { }

	// RVA: 0x813409BF Offset: 0x3419BF VA: 0x813409BF
	private void SwitchSkyBox(int DiffNum) { }

	// RVA: 0x81340D29 Offset: 0x341D29 VA: 0x81340D29
	public void OnOpenFullVersion() { }

	// RVA: 0x81340805 Offset: 0x341805 VA: 0x81340805
	private void UpdateDetailsText() { }

	// RVA: 0x81340731 Offset: 0x341731 VA: 0x81340731
	private void UpdateHowToText() { }
}

// Namespace: 
[Serializable]
public class GE_FantasySkyboxFREE_Demo.LightAndSky // TypeDefIndex: 2141
{
	// Fields
	public string m_Name; // 0xFFFFFFFF
	public Light m_Light; // 0xFFFFFFFF
	public Material m_Skybox; // 0xFFFFFFFF
	public Color m_FogColor; // 0xFFFFFFFF
	public Color m_AmbientLight; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: FantasySkyFree
public class GE_FantasySkyboxFREE_UIs : MonoBehaviour // TypeDefIndex: 2142
{
	// Fields
	public Canvas m_Canvas; // 0xFFFFFFFF
	public Button m_Help_Button; // 0xFFFFFFFF
	public GameObject m_Help_Window; // 0xFFFFFFFF
	public GameObject m_Details; // 0xFFFFFFFF
	public GameObject m_PanelDetails; // 0xFFFFFFFF
	public GameObject m_HowTo1; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void Start() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void Update() { }

	// RVA: 0x81340D65 Offset: 0x341D65 VA: 0x81340D65
	public void Button_Help_Support() { }

	// RVA: 0x81340DA1 Offset: 0x341DA1 VA: 0x81340DA1
	public void Button_Help_Products() { }
}

// Namespace: 
[ExecuteInEditMode] // RVA: 0x812D9B2B Offset: 0x2DAB2B VA: 0x812D9B2B
[RequireComponent] // RVA: 0x812D9B2B Offset: 0x2DAB2B VA: 0x812D9B2B
[AddComponentMenu] // RVA: 0x812D9B2B Offset: 0x2DAB2B VA: 0x812D9B2B
public class FastMobileBloom : MonoBehaviour // TypeDefIndex: 2143
{
	// Fields
	[RangeAttribute] // RVA: 0x812D9B99 Offset: 0x2DAB99 VA: 0x812D9B99
	public float threshold; // 0xFFFFFFFF
	[RangeAttribute] // RVA: 0x812D9BB1 Offset: 0x2DABB1 VA: 0x812D9BB1
	public float intensity; // 0xFFFFFFFF
	[RangeAttribute] // RVA: 0x812D9BC9 Offset: 0x2DABC9 VA: 0x812D9BC9
	public float blurSize; // 0xFFFFFFFF
	[RangeAttribute] // RVA: 0x812D9BDF Offset: 0x2DABDF VA: 0x812D9BDF
	public int blurIterations; // 0xFFFFFFFF
	public Material fastBloomMaterial; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81340DDD Offset: 0x341DDD VA: 0x81340DDD
	public void .ctor() { }

	// RVA: 0x81340DFD Offset: 0x341DFD VA: 0x81340DFD
	private void OnRenderImage(RenderTexture source, RenderTexture destination) { }
}

// Namespace: 
public class GameOptions : MonoBehaviour // TypeDefIndex: 2144
{
	// Fields
	public GameObject panel; // 0xFFFFFFFF
	public GameOptions.Aliasing aliasing; // 0xFFFFFFFF
	public GameOptions.Shadows shadows; // 0xFFFFFFFF
	public GameOptions.Fps fps; // 0xFFFFFFFF
	public GameOptions.Resolution resolution; // 0xFFFFFFFF
	public FastMobileBloom bloom; // 0xFFFFFFFF
	public Toggle bloomTog; // 0xFFFFFFFF
	public ColorSuite colorSuite; // 0xFFFFFFFF
	public Toggle colorSuiteTog; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x8134164D Offset: 0x34264D VA: 0x8134164D
	private void Start() { }

	// RVA: 0x8134173D Offset: 0x34273D VA: 0x8134173D
	public void OpenOptionPanel() { }

	// RVA: 0x813415BD Offset: 0x3425BD VA: 0x813415BD
	public void SetDefaults() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	public void setResolution() { }

	// RVA: 0x813417DD Offset: 0x3427DD VA: 0x813417DD
	public void SetFPS(bool tog) { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	public void SetShadows(bool tog) { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	public void SetAliasing(bool tog) { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	public void SetBloom(bool tog) { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	public void SetcolorSuite(bool tog) { }

	// RVA: 0x813416E3 Offset: 0x3426E3 VA: 0x813416E3
	public void SavePrefs() { }

	// RVA: 0x813415CD Offset: 0x3425CD VA: 0x813415CD
	public void LoadPrefs() { }
}

// Namespace: 
[Serializable]
public class GameOptions.Aliasing // TypeDefIndex: 2145
{
	// Fields
	public Toggle msaaTog; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class GameOptions.Shadows // TypeDefIndex: 2146
{
	// Fields
	public Light light; // 0xFFFFFFFF
	public Toggle disabled; // 0xFFFFFFFF
	public Toggle low; // 0xFFFFFFFF
	public Toggle medium; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class GameOptions.Fps // TypeDefIndex: 2147
{
	// Fields
	public Toggle target30; // 0xFFFFFFFF
	public Toggle target60; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
[Serializable]
public class GameOptions.Resolution // TypeDefIndex: 2148
{
	// Fields
	public Toggle res960; // 0xFFFFFFFF
	public Toggle res720; // 0xFFFFFFFF
	public Toggle res480; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
public class GE_ToggleFullScreenUI : MonoBehaviour // TypeDefIndex: 2149
{
	// Fields
	private int m_DefWidth; // 0xFFFFFFFF
	private int m_DefHeight; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81341133 Offset: 0x342133 VA: 0x81341133
	private void Start() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void Update() { }

	// RVA: 0x813411AD Offset: 0x3421AD VA: 0x813411AD
	public void OnButton_ToggleFullScreen() { }
}

// Namespace: 
public class GE_UIResponder : MonoBehaviour // TypeDefIndex: 2150
{
	// Fields
	public string m_PackageTitle; // 0xFFFFFFFF
	public string m_TargetURL; // 0xFFFFFFFF

	// Methods

	// RVA: 0x813414D3 Offset: 0x3424D3 VA: 0x813414D3
	public void .ctor() { }

	// RVA: 0x8134151F Offset: 0x34251F VA: 0x8134151F
	private void Start() { }

	// RVA: 0x81000D01 Offset: 0x1D01 VA: 0x81000D01
	private void Update() { }

	// RVA: 0x813415AD Offset: 0x3425AD VA: 0x813415AD
	public void OnButton_AssetName() { }
}

// Namespace: 
public class MyController : MonoBehaviour // TypeDefIndex: 2151
{
	// Fields
	public MyController.CollisionTest colliderOptions; // 0xFFFFFFFF
	[HideInInspector] // RVA: 0x812D9BF5 Offset: 0x2DABF5 VA: 0x812D9BF5
	public Transform myT; // 0xFFFFFFFF
	public Rigidbody rb; // 0xFFFFFFFF
	public CapsuleCollider coll; // 0xFFFFFFFF
	public bool grounded; // 0xFFFFFFFF
	public LayerMask groundMasks; // 0xFFFFFFFF
	public Vector3 directionMove; // 0xFFFFFFFF
	public float jump; // 0xFFFFFFFF
	public float dashTime; // 0xFFFFFFFF
	public float gravity; // 0xFFFFFFFF
	public float maxGravity; // 0xFFFFFFFF
	private controller myController; // 0xFFFFFFFF
	public Vector3 oldPos; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81341851 Offset: 0x342851 VA: 0x81341851
	private void Start() { }

	// RVA: 0x81342543 Offset: 0x343543 VA: 0x81342543
	public void OnTriggerEnter(Collider other) { }

	// RVA: 0x8134254F Offset: 0x34354F VA: 0x8134254F
	public void OnTriggerStay(Collider other) { }

	// RVA: 0x81341899 Offset: 0x342899 VA: 0x81341899
	public void SetJump(float power, float dash) { }

	// RVA: 0x813427A1 Offset: 0x3437A1 VA: 0x813427A1
	private void toGround(RaycastHit hit) { }

	// RVA: 0x8134284D Offset: 0x34384D VA: 0x8134284D
	private void OnDrawGizmos() { }

	// RVA: 0x813431C3 Offset: 0x3441C3 VA: 0x813431C3
	public void GoUpdate() { }
}

// Namespace: 
[Serializable]
public class MyController.CollisionTest // TypeDefIndex: 2152
{
	// Fields
	public float stepHeight; // 0xFFFFFFFF
	public float height; // 0xFFFFFFFF
	public float radius; // 0xFFFFFFFF
	public float castDistanse; // 0xFFFFFFFF
	public Color debugCollider; // 0xFFFFFFFF
	public Color debugCastDist; // 0xFFFFFFFF
	[HideInInspector] // RVA: 0x812D9BF5 Offset: 0x2DABF5 VA: 0x812D9BF5
	public Vector3 dir; // 0xFFFFFFFF
	[HideInInspector] // RVA: 0x812D9BF5 Offset: 0x2DABF5 VA: 0x812D9BF5
	public Vector3 pos; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }
}

// Namespace: 
public class ShadowMeshCreator // TypeDefIndex: 2153
{
	// Fields
	protected const float cellSize = 0.01;

	// Methods

	// RVA: 0x81000001 Offset: 0x1001 VA: 0x81000001
	public void .ctor() { }

	// RVA: 0x8134459F Offset: 0x34559F VA: 0x8134459F
	protected static void AddEdge(IDictionary<ShadowMeshCreator.Edge, List<int>> edges, ShadowMeshCreator.Edge edge, int triangleIndex) { }

	// RVA: 0x813447C1 Offset: 0x3457C1 VA: 0x813447C1
	protected static bool NeighborSameWindingOrder(Vector3[] vertices, int[] indices, int triangleA, int triangleB) { }

	// RVA: 0x81344981 Offset: 0x345981 VA: 0x81344981
	protected static void CreateDegenerateQuad(Vector3[] vertices, int[] indices, Vector3 vertexA, Vector3 vertexB, int triangleA, int triangleB, ICollection<int> outIndices) { }

	// RVA: 0x81344EA9 Offset: 0x345EA9 VA: 0x81344EA9
	public static Mesh CalculateShadowMesh(Mesh reference, float boundsMargin) { }
}

// Namespace: 
protected struct ShadowMeshCreator.Edge // TypeDefIndex: 2154
{
	// Fields
	public Vector3 a; // 0xFFFFFFFF
	public Vector3 b; // 0xFFFFFFFF

	// Methods

	// RVA: 0x81345FFB Offset: 0x346FFB VA: 0x81345FFB
	public void .ctor(Vector3 a, Vector3 b) { }

	// RVA: 0x813461BD Offset: 0x3471BD VA: 0x813461BD
	public bool SameRobust(ShadowMeshCreator.Edge other) { }

	// RVA: 0x81346321 Offset: 0x347321 VA: 0x81346321
	public bool Same(ShadowMeshCreator.Edge other) { }

	// RVA: 0x81346355 Offset: 0x347355 VA: 0x81346355
	public int CalculateHashCode() { }
}

// Namespace: 
protected struct ShadowMeshCreator.EdgeEqualityComparerRobust : IEqualityComparer<ShadowMeshCreator.Edge> // TypeDefIndex: 2155
{
	// Methods

	// RVA: 0x813465C5 Offset: 0x3475C5 VA: 0x813465C5 Slot: 4
	public bool Equals(ShadowMeshCreator.Edge x, ShadowMeshCreator.Edge y) { }

	// RVA: 0x8127E7AD Offset: 0x27F7AD VA: 0x8127E7AD Slot: 5
	public int GetHashCode(ShadowMeshCreator.Edge obj) { }
}

// Namespace: 
protected struct ShadowMeshCreator.EdgeEqualityComparer : IEqualityComparer<ShadowMeshCreator.Edge> // TypeDefIndex: 2156
{
	// Methods

	// RVA: 0x81346411 Offset: 0x347411 VA: 0x81346411 Slot: 4
	public bool Equals(ShadowMeshCreator.Edge x, ShadowMeshCreator.Edge y) { }

	// RVA: 0x813464B3 Offset: 0x3474B3 VA: 0x813464B3 Slot: 5
	public int GetHashCode(ShadowMeshCreator.Edge obj) { }
}

// Namespace: 
public enum ShadowVolumeBackend // TypeDefIndex: 2157
{
	// Fields
	public int value__; // 0xFFFFFFFF
	public const ShadowVolumeBackend StencilBuffer = 0;
	public const ShadowVolumeBackend StencilBufferNoTwoSided = 1;
	public const ShadowVolumeBackend AlphaChannel = 2;
	public const ShadowVolumeBackend AlphaChannelNoBlendOp = 3;
}

// Namespace: 
[RequireComponent] // RVA: 0x812D9C03 Offset: 0x2DAC03 VA: 0x812D9C03
public class ShadowComponentToGO : MonoBehaviour // TypeDefIndex: 2158
{
	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81344075 Offset: 0x345075 VA: 0x81344075
	public void Start() { }
}

// Namespace: 
[ExecuteInEditMode] // RVA: 0x812D959D Offset: 0x2DA59D VA: 0x812D959D
public class ShadowVolume : MonoBehaviour // TypeDefIndex: 2159
{
	// Fields
	public Material stencilBackFrontAlways; // 0xFFFFFFFF
	public Material stencilFrontBack; // 0xFFFFFFFF
	public Material stencilBackAlways; // 0xFFFFFFFF
	public Material stencilFrontAlways; // 0xFFFFFFFF
	public Material stencilFront; // 0xFFFFFFFF
	public Material stencilBack; // 0xFFFFFFFF
	public Material alphaBackAlways; // 0xFFFFFFFF
	public Material alphaFrontAlways; // 0xFFFFFFFF
	public Material alphaFront; // 0xFFFFFFFF
	public Material alphaBack; // 0xFFFFFFFF
	public Material alphaFrontAlwaysNoBlendOp; // 0xFFFFFFFF
	public Material alphaBackNoBlendOp; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected Mesh shadowMesh; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected bool isSimple; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected int layer; // 0xFFFFFFFF

	// Properties
	public Mesh ShadowMesh { get; set; }
	public bool IsSimple { get; set; }
	public int Layer { get; set; }

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81020149 Offset: 0x21149 VA: 0x81020149
	public Mesh get_ShadowMesh() { }

	// RVA: 0x81315A31 Offset: 0x316A31 VA: 0x81315A31
	public void set_ShadowMesh(Mesh value) { }

	// RVA: 0x81343EE9 Offset: 0x344EE9 VA: 0x81343EE9
	public bool get_IsSimple() { }

	// RVA: 0x8100A565 Offset: 0xB565 VA: 0x8100A565
	public void set_IsSimple(bool value) { }

	// RVA: 0x8102EF81 Offset: 0x2FF81 VA: 0x8102EF81
	public int get_Layer() { }

	// RVA: 0x810C5EFF Offset: 0xC6EFF VA: 0x810C5EFF
	public void set_Layer(int value) { }

	// RVA: 0x81346667 Offset: 0x347667 VA: 0x81346667
	protected void DrawShadowMesh() { }

	// RVA: 0x8134759F Offset: 0x34859F VA: 0x8134759F
	public void Update() { }
}

// Namespace: 
[ExecuteInEditMode] // RVA: 0x812D959D Offset: 0x2DA59D VA: 0x812D959D
public class ShadowVolumeRenderer : MonoBehaviour // TypeDefIndex: 2160
{
	// Fields
	public Material stencilClear; // 0xFFFFFFFF
	public Material stencilInterpolate; // 0xFFFFFFFF
	public Material alphaClear; // 0xFFFFFFFF
	public Material alphaClamp; // 0xFFFFFFFF
	public Material alphaStrength; // 0xFFFFFFFF
	public Material alphaInterpolate; // 0xFFFFFFFF
	public Material alphaFlip0; // 0xFFFFFFFF
	public Material alphaFlip1; // 0xFFFFFFFF
	public Material alphaFlip2; // 0xFFFFFFFF
	public Material alphaFlip3; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected ShadowVolumeBackend backend; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected int layer; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected Mesh quadMesh; // 0xFFFFFFFF
	protected static ShadowVolumeRenderer instance; // 0xFFFFFFFF

	// Properties
	public static ShadowVolumeRenderer Instance { get; }
	public ShadowVolumeBackend Backend { get; set; }
	public int Layer { get; set; }

	// Methods

	// RVA: 0x813475A9 Offset: 0x3485A9 VA: 0x813475A9
	public void .ctor() { }

	// RVA: 0x813475B7 Offset: 0x3485B7 VA: 0x813475B7
	public static void ResetInstance() { }

	// RVA: 0x81343EEF Offset: 0x344EEF VA: 0x81343EEF
	public static ShadowVolumeRenderer get_Instance() { }

	// RVA: 0x8108ABFD Offset: 0x8BBFD VA: 0x8108ABFD
	public ShadowVolumeBackend get_Backend() { }

	// RVA: 0x8109C63D Offset: 0x9D63D VA: 0x8109C63D
	public void set_Backend(ShadowVolumeBackend value) { }

	// RVA: 0x81020101 Offset: 0x21101 VA: 0x81020101
	public int get_Layer() { }

	// RVA: 0x8102E80D Offset: 0x2F80D VA: 0x8102E80D
	public void set_Layer(int value) { }

	// RVA: 0x813475F1 Offset: 0x3485F1 VA: 0x813475F1
	protected void CreateQuadMesh() { }

	// RVA: 0x81347881 Offset: 0x348881 VA: 0x81347881
	protected void DrawQuadMesh() { }

	// RVA: 0x81348091 Offset: 0x349091 VA: 0x81348091
	public void Start() { }

	// RVA: 0x813480D5 Offset: 0x3490D5 VA: 0x813480D5
	public void Update() { }

	// RVA: 0x813480DF Offset: 0x3490DF VA: 0x813480DF
	public void OnDestroy() { }
}

// Namespace: 
[ExecuteInEditMode] // RVA: 0x812D9C4B Offset: 0x2DAC4B VA: 0x812D9C4B
[RequireComponent] // RVA: 0x812D9C4B Offset: 0x2DAC4B VA: 0x812D9C4B
public class ShadowVolumeSource : MonoBehaviour // TypeDefIndex: 2161
{
	// Fields
	private static string colorPropertyName; // 0xFFFFFFFF
	private static string sourcePropertyName; // 0xFFFFFFFF
	private static string extrudeBiasPropertyName; // 0xFFFFFFFF
	private static string extrudeAmountPropertyName; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private Color shadowColor; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float extrudeBias; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	private float extrudeAmount; // 0xFFFFFFFF

	// Properties
	public Color ShadowColor { get; set; }
	public float ExtrudeBias { get; set; }
	public float ExtrudeAmount { get; set; }

	// Methods

	// RVA: 0x81348133 Offset: 0x349133 VA: 0x81348133
	public void .ctor() { }

	// RVA: 0x81011751 Offset: 0x12751 VA: 0x81011751
	public Color get_ShadowColor() { }

	// RVA: 0x81011765 Offset: 0x12765 VA: 0x81011765
	public void set_ShadowColor(Color value) { }

	// RVA: 0x810BB445 Offset: 0xBC445 VA: 0x810BB445
	public float get_ExtrudeBias() { }

	// RVA: 0x813481B9 Offset: 0x3491B9 VA: 0x813481B9
	public void set_ExtrudeBias(float value) { }

	// RVA: 0x81278629 Offset: 0x279629 VA: 0x81278629
	public float get_ExtrudeAmount() { }

	// RVA: 0x810C5899 Offset: 0xC6899 VA: 0x810C5899
	public void set_ExtrudeAmount(float value) { }

	// RVA: 0x813481BF Offset: 0x3491BF VA: 0x813481BF
	public void Update() { }

	// RVA: 0x8134837D Offset: 0x34937D VA: 0x8134837D
	private static void .cctor() { }
}

// Namespace: 
[ExecuteInEditMode] // RVA: 0x812D9C9F Offset: 0x2DAC9F VA: 0x812D9C9F
[RequireComponent] // RVA: 0x812D9C9F Offset: 0x2DAC9F VA: 0x812D9C9F
public class SkinnedShadowVolume : MonoBehaviour // TypeDefIndex: 2162
{
	// Fields
	public Material stencilBackFrontAlways; // 0xFFFFFFFF
	public Material stencilFrontBack; // 0xFFFFFFFF
	public Material stencilBackAlways; // 0xFFFFFFFF
	public Material stencilFrontAlways; // 0xFFFFFFFF
	public Material stencilFront; // 0xFFFFFFFF
	public Material stencilBack; // 0xFFFFFFFF
	public Material alphaBackAlways; // 0xFFFFFFFF
	public Material alphaFrontAlways; // 0xFFFFFFFF
	public Material alphaFront; // 0xFFFFFFFF
	public Material alphaBack; // 0xFFFFFFFF
	public Material alphaFrontAlwaysNoBlendOp; // 0xFFFFFFFF
	public Material alphaBackNoBlendOp; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected bool isSimple; // 0xFFFFFFFF
	[SerializeField] // RVA: 0x812CD199 Offset: 0x2CE199 VA: 0x812CD199
	protected ShadowVolumeBackend backend; // 0xFFFFFFFF
	protected bool updateMaterials; // 0xFFFFFFFF

	// Properties
	public bool IsSimple { get; set; }

	// Methods

	// RVA: 0x81000359 Offset: 0x1359 VA: 0x81000359
	public void .ctor() { }

	// RVA: 0x81020F39 Offset: 0x21F39 VA: 0x81020F39
	public bool get_IsSimple() { }

	// RVA: 0x813483EF Offset: 0x3493EF VA: 0x813483EF
	public void set_IsSimple(bool value) { }

	// RVA: 0x81348407 Offset: 0x349407 VA: 0x81348407
	protected bool IsSetupCorrectly() { }

	// RVA: 0x81348497 Offset: 0x349497 VA: 0x81348497
	protected void SetShadowMaterials() { }

	// RVA: 0x8134896D Offset: 0x34996D VA: 0x8134896D
	public void Start() { }

	// RVA: 0x813489FD Offset: 0x3499FD VA: 0x813489FD
	public void Update() { }
}

// Namespace: 
public class throwingObject : MonoBehaviour // TypeDefIndex: 2163
{
	// Fields
	public controller.Attacks attack; // 0xFFFFFFFF
	public Transform obj; // 0xFFFFFFFF
	public controller from; // 0xFFFFFFFF
	public Transform t; // 0xFFFFFFFF
	public float speed; // 0xFFFFFFFF
	public Vector3 rotation; // 0xFFFFFFFF
	public Transform targetT; // 0xFFFFFFFF
	public controller target; // 0xFFFFFFFF
	public float lifeTime; // 0xFFFFFFFF
	public ParticleSystem sparks; // 0xFFFFFFFF
	public AudioClip collisSound; // 0xFFFFFFFF
	public AudioClip collisBush; // 0xFFFFFFFF
	public AudioClip deflectSound; // 0xFFFFFFFF
	public AudioSource aud; // 0xFFFFFFFF

	// Methods

	// RVA: 0x813553EF Offset: 0x3563EF VA: 0x813553EF
	public void .ctor() { }

	// RVA: 0x81355401 Offset: 0x356401 VA: 0x81355401
	private void Start() { }

	// RVA: 0x813556D1 Offset: 0x3566D1 VA: 0x813556D1
	private void OnTriggerEnter(Collider other) { }

	// RVA: 0x81355975 Offset: 0x356975 VA: 0x81355975
	private void Update() { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x812C56E1 Offset: 0x2C66E1 VA: 0x812C56E1
internal static class <PrivateImplementationDetails> // TypeDefIndex: 2164
{
	// Fields
	internal static readonly <PrivateImplementationDetails>.$ArrayType=24 $field-898C2022A0C02FCE602BF05E1C09BD48301606E5 /*Metadata offset 0x125635*/; // 0xFFFFFFFF
}

// Namespace: 
private struct <PrivateImplementationDetails>.$ArrayType=24 // TypeDefIndex: 2165
{}
