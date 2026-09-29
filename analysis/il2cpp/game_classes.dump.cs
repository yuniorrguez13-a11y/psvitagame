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
