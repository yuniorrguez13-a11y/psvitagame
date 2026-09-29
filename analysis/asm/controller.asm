; ==== controller$$.ctor  @ 0x81350364 .. 0x813503c6
81350364  push     {r4, r5, r6, lr}                
81350366  movw     r1, #0x34d2                     
8135036a  movt     r1, #0x8151                       ; = 0x815134d2
8135036e  ldrb     r1, [r1]                        
81350370  adds     r4, r0, #0                      
81350372  cbnz     r1, #0x8135038e                 
81350374  movw     r0, #0x3750                     
81350378  movt     r0, #0x814c                       ; = 0x814c3750
8135037c  ldr      r0, [r0]                        
8135037e  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81350382  movw     r0, #0x34d2                     
81350386  movt     r0, #0x8151                       ; = 0x815134d2
8135038a  movs     r1, #1                          
8135038c  strb     r1, [r0]                        
8135038e  movw     r0, #0x4bb8                     
81350392  movt     r0, #0x8151                       ; System.Collections.Generic.Dictionary<string, controller.Attacks>_TypeInfo
81350396  ldr      r0, [r0]                        
81350398  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
8135039c  adds     r5, r0, #0                      
8135039e  movw     r0, #0x6fd0                     
813503a2  movt     r0, #0x8151                       ; Method$System.Collections.Generic.Dictionary<string, controller.Attacks>..ctor()
813503a6  ldr      r1, [r0]                        
813503a8  adds     r0, r5, #0                      
813503aa  bl       #0x811bd288                       ; -> System.Collections.Generic.Dictionary<ShadowMeshCreator.Edge, object>$$.ctor
813503ae  str.w    r5, [r4, #0x88]                   ; this.AttacksList
813503b2  movs.w   r0, #0x3fc00000                 
813503b6  str.w    r0, [r4, #0xc8]                   ; this.startAttackDist
813503ba  adds     r0, r4, #0                      
813503bc  movs     r1, #0                          
813503be  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
813503c2  pop      {r4, r5, r6, pc}                
813503c4  pop      {r4, pc}                        

; ==== controller$$Start  @ 0x81350454 .. 0x813505f0
81350454  push.w   {r4, r5, r6, r7, r8, lr}        
81350458  movw     r1, #0x34d5                     
8135045c  movt     r1, #0x8151                       ; = 0x815134d5
81350460  ldrb     r1, [r1]                        
81350462  adds     r6, r0, #0                      
81350464  cbnz     r1, #0x81350480                 
81350466  movw     r0, #0x3740                     
8135046a  movt     r0, #0x814c                       ; = 0x814c3740
8135046e  ldr      r0, [r0]                        
81350470  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81350474  movw     r0, #0x34d5                     
81350478  movt     r0, #0x8151                       ; = 0x815134d5
8135047c  movs     r1, #1                          
8135047e  strb     r1, [r0]                        
81350480  movs     r4, #0                          
81350482  ldr      r0, [r6, #0x24]                   ; this.stats
81350484  adds     r7, r4, #0                      
81350486  ldr      r1, [r0, #0x20]                 
81350488  adds     r5, r7, #0                      
8135048a  str      r1, [r0, #0x1c]                 
8135048c  ldr.w    r1, [r6, #0x84]                   ; this.attacks
81350490  ldr      r2, [r1, #0xc]                  
81350492  cmp      r4, r2                          
81350494  bge      #0x813504bc                     
81350496  adds     r0, r1, r5                      
81350498  ldr.w    r1, [r6, #0x88]                   ; this.AttacksList
8135049c  ldr      r2, [r0, #0x10]                 
8135049e  movw     r0, #0x6fd4                     
813504a2  ldr      r3, [r2, #8]                    
813504a4  movt     r0, #0x8151                       ; Method$System.Collections.Generic.Dictionary<string, controller.Attacks>.Add()
813504a8  ldr.w    lr, [r0]                        
813504ac  adds     r0, r1, #0                      
813504ae  adds     r1, r3, #0                      
813504b0  mov      r3, lr                          
813504b2  bl       #0x811c68dc                       ; -> System.Collections.Generic.Dictionary<object, object>$$Add
813504b6  adds     r5, #4                          
813504b8  adds     r4, #1                          
813504ba  b        #0x8135048c                     
813504bc  movs     r0, #1                          
813504be  ldr      r2, [r6, #0x7c]                   ; this.components
813504c0  movs     r1, #0                          
813504c2  str      r0, [r6, #0x18]                   ; this.state
813504c4  ldr      r0, [r2, #0x1c]                 
813504c6  movs     r2, #0                          
813504c8  bl       #0x813a16ba                       ; -> UnityEngine.Transform$$set_parent
813504cc  ldr      r4, [r6, #0x7c]                   ; this.components
813504ce  movw     r0, #0x34c3                     
813504d2  ldr      r4, [r4, #0x18]                 
813504d4  movt     r0, #0x8151                       ; = 0x815134c3
813504d8  ldrb     r0, [r0]                        
813504da  cbnz     r0, #0x813504f6                 
813504dc  movw     r0, #0x3714                     
813504e0  movt     r0, #0x814c                       ; = 0x814c3714
813504e4  ldr      r0, [r0]                        
813504e6  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813504ea  movw     r0, #0x34c3                     
813504ee  movt     r0, #0x8151                       ; = 0x815134c3
813504f2  movs     r1, #1                          
813504f4  strb     r1, [r0]                        
813504f6  movw     r0, #0x461c                     
813504fa  ldr      r1, [r4, #0x1c]                 
813504fc  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81350500  ldr      r5, [r1, #0x10]                 
81350502  ldr      r0, [r0]                        
81350504  ldrsb.w  r1, [r0, #0xc2]                 
81350508  ands     r1, r1, #1                      
8135050c  ldr      r5, [r5, #8]                    
8135050e  beq      #0x81350518                     
81350510  ldr      r1, [r0, #0x70]                 
81350512  cbnz     r1, #0x81350518                 
81350514  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350518  movs     r0, #0                          
8135051a  adds     r1, r5, #0                      
8135051c  movs     r2, #0                          
8135051e  movs     r3, #0                          
81350520  bl       #0x812e65d2                       ; -> UnityEngine.Object$$op_Equality
81350524  cmp      r0, #0                          
81350526  beq      #0x813505d2                     
81350528  ldr      r0, [r4, #0x1c]                 
8135052a  ldr      r1, [r0, #0x10]                 
8135052c  movs     r2, #0                          
8135052e  str      r6, [r1, #8]                    
81350530  ldr      r0, [r4, #0x1c]                 
81350532  ldr      r0, [r0, #0x10]                 
81350534  ldr      r1, [r6, #0x24]                   ; this.stats
81350536  ldr      r0, [r0, #0xc]                  
81350538  ldr      r1, [r1, #8]                    
8135053a  bl       #0x8101211c                       ; -> UnityEngine.UI.Image$$set_sprite
8135053e  movw     r0, #0x34d4                     
81350542  str      r7, [r6, #0x14]                   ; this._player
81350544  movt     r0, #0x8151                       ; = 0x815134d4
81350548  ldrb     r0, [r0]                        
8135054a  cbnz     r0, #0x81350566                 
8135054c  movw     r0, #0x3764                     
81350550  movt     r0, #0x814c                       ; = 0x814c3764
81350554  ldr      r0, [r0]                        
81350556  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8135055a  movw     r0, #0x34d4                     
8135055e  movt     r0, #0x8151                       ; = 0x815134d4
81350562  movs     r1, #1                          
81350564  strb     r1, [r0]                        
81350566  movw     r0, #0x4bc4                     
8135056a  movt     r0, #0x8151                       ; controller.<guardRecovering>c__Iterator2_TypeInfo
8135056e  ldr      r0, [r0]                        
81350570  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81350574  adds     r4, r0, #0                      
81350576  movs     r1, #0                          
81350578  bl       #0x81000d00                       ; -> System.Object$$.ctor
8135057c  str      r6, [r4, #8]                    
8135057e  adds     r0, r6, #0                      
81350580  adds     r1, r4, #0                      
81350582  movs     r2, #0                          
81350584  bl       #0x812eda9c                       ; -> UnityEngine.MonoBehaviour$$StartCoroutine
81350588  movw     r0, #0x34d3                     
8135058c  movt     r0, #0x8151                       ; = 0x815134d3
81350590  ldrb     r0, [r0]                        
81350592  cbnz     r0, #0x813505ae                 
81350594  movw     r0, #0x376c                     
81350598  movt     r0, #0x814c                       ; = 0x814c376c
8135059c  ldr      r0, [r0]                        
8135059e  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813505a2  movw     r0, #0x34d3                     
813505a6  movt     r0, #0x8151                       ; = 0x815134d3
813505aa  movs     r1, #1                          
813505ac  strb     r1, [r0]                        
813505ae  movw     r0, #0x4bbc                     
813505b2  movt     r0, #0x8151                       ; controller.<recoverChakra>c__Iterator0_TypeInfo
813505b6  ldr      r0, [r0]                        
813505b8  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
813505bc  adds     r4, r0, #0                      
813505be  movs     r1, #0                          
813505c0  bl       #0x81000d00                       ; -> System.Object$$.ctor
813505c4  str      r6, [r4, #8]                    
813505c6  adds     r0, r6, #0                      
813505c8  adds     r1, r4, #0                      
813505ca  movs     r2, #0                          
813505cc  bl       #0x812eda9c                       ; -> UnityEngine.MonoBehaviour$$StartCoroutine
813505d0  b        #0x813505ec                     
813505d2  ldr      r0, [r4, #0x1c]                 
813505d4  ldr      r1, [r0, #0x14]                 
813505d6  movs     r2, #0                          
813505d8  str      r6, [r1, #8]                    
813505da  ldr      r0, [r4, #0x1c]                 
813505dc  ldr      r0, [r0, #0x14]                 
813505de  ldr      r1, [r6, #0x24]                   ; this.stats
813505e0  ldr      r0, [r0, #0xc]                  
813505e2  ldr      r1, [r1, #8]                    
813505e4  bl       #0x8101211c                       ; -> UnityEngine.UI.Image$$set_sprite
813505e8  movs     r7, #1                          
813505ea  b        #0x8135053e                     
813505ec  pop.w    {r4, r5, r6, r7, r8, pc}        

; ==== controller$$step  @ 0x813505f0 .. 0x81350600
813505f0  push     {r4, lr}                        
813505f2  ldr      r1, [r0, #0x7c]                   ; this.components
813505f4  movs     r2, #0                          
813505f6  ldr      r0, [r1, #0x20]                 
813505f8  ldr      r1, [r1, #0x24]                 
813505fa  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813505fe  pop      {r4, pc}                        

; ==== controller$$StartNinj  @ 0x81350600 .. 0x8135066a
81350600  push     {r4, r5, r6, lr}                
81350602  ldr      r5, [r0, #0x7c]                   ; this.components
81350604  movw     r1, #0x34c4                     
81350608  ldr      r5, [r5, #0x18]                 
8135060a  movs     r2, #1                          
8135060c  str      r2, [r0, #0x1c]                   ; this.action
8135060e  movt     r1, #0x8151                       ; = 0x815134c4
81350612  ldr      r4, [r0, #0x2c]                   ; this.character
81350614  ldrb     r0, [r1]                        
81350616  cbnz     r0, #0x81350632                 
81350618  movw     r0, #0x3710                     
8135061c  movt     r0, #0x814c                       ; = 0x814c3710
81350620  ldr      r0, [r0]                        
81350622  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81350626  movw     r0, #0x34c4                     
8135062a  movt     r0, #0x8151                       ; = 0x815134c4
8135062e  movs     r1, #1                          
81350630  strb     r1, [r0]                        
81350632  ldr      r0, [r5, #0x44]                 
81350634  movs     r1, #0                          
81350636  str      r4, [r5, #0x4c]                 
81350638  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8135063c  movs     r1, #1                          
8135063e  movs     r2, #0                          
81350640  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81350644  ldr      r0, [r5, #0x20]                 
81350646  movs     r1, #0                          
81350648  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8135064c  movs     r1, #0                          
8135064e  movs     r2, #0                          
81350650  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81350654  ldr      r0, [r5, #0x48]                 
81350656  movw     r1, #0xb380                     
8135065a  movt     r1, #0x8151                       ; str "ninj"
8135065e  ldr      r1, [r1]                        
81350660  movs     r2, #0                          
81350662  movs     r3, #0                          
81350664  bl       #0x8126a414                       ; -> UnityEngine.Animator$$Play
81350668  pop      {r4, r5, r6, pc}                

; ==== controller$$EndCamera  @ 0x8135066a .. 0x81350692
8135066a  push     {r4, lr}                        
8135066c  ldr      r0, [r0, #0x7c]                   ; this.components
8135066e  movs     r1, #0                          
81350670  ldr      r4, [r0, #0x18]                 
81350672  ldr      r0, [r4, #0x20]                 
81350674  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
81350678  movs     r1, #1                          
8135067a  movs     r2, #0                          
8135067c  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81350680  ldr      r0, [r4, #0x44]                 
81350682  movs     r1, #0                          
81350684  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
81350688  movs     r1, #0                          
8135068a  movs     r2, #0                          
8135068c  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81350690  pop      {r4, pc}                        

; ==== controller$$EndNinj  @ 0x81350692 .. 0x813506f4
81350692  push     {r4, r5, r6, lr}                
81350694  movw     r1, #0x34d6                     
81350698  movt     r1, #0x8151                       ; = 0x815134d6
8135069c  ldrb     r1, [r1]                        
8135069e  adds     r4, r0, #0                      
813506a0  cbnz     r1, #0x813506bc                 
813506a2  movw     r0, #0x3730                     
813506a6  movt     r0, #0x814c                       ; = 0x814c3730
813506aa  ldr      r0, [r0]                        
813506ac  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813506b0  movw     r0, #0x34d6                     
813506b4  movt     r0, #0x8151                       ; = 0x815134d6
813506b8  movs     r1, #1                          
813506ba  strb     r1, [r0]                        
813506bc  ldr      r0, [r4, #0x7c]                   ; this.components
813506be  movw     r1, #0xb394                     
813506c2  ldr      r0, [r0, #0x14]                 
813506c4  movs     r5, #0                          
813506c6  str      r5, [r4, #0x1c]                   ; this.action
813506c8  movt     r1, #0x8151                       ; str "hit"
813506cc  ldr      r1, [r1]                        
813506ce  movs     r2, #0                          
813506d0  movs     r3, #0                          
813506d2  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813506d6  ldr      r0, [r4, #0x7c]                   ; this.components
813506d8  movw     r1, #0x9848                     
813506dc  ldr      r0, [r0, #0x14]                 
813506de  movt     r1, #0x8151                       ; str "throw"
813506e2  ldr      r1, [r1]                        
813506e4  movs     r2, #0                          
813506e6  movs     r3, #0                          
813506e8  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813506ec  ldr      r0, [r4, #0x7c]                   ; this.components
813506ee  ldr      r1, [r0, #0x18]                 
813506f0  str      r5, [r1, #0x4c]                 
813506f2  pop      {r4, r5, r6, pc}                

; ==== controller$$RecoverChakra  @ 0x81341978 .. 0x81341a40
81341978  push     {r4, r5, r6, lr}                
8134197a  movw     r2, #0x348c                     
8134197e  movt     r2, #0x8151                       ; = 0x8151348c
81341982  ldrb     r2, [r2]                        
81341984  adds     r4, r1, #0                      
81341986  adds     r5, r0, #0                      
81341988  cbnz     r2, #0x813419a4                 
8134198a  movw     r0, #0x373c                     
8134198e  movt     r0, #0x814c                       ; = 0x814c373c
81341992  ldr      r0, [r0]                        
81341994  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341998  movw     r0, #0x348c                     
8134199c  movt     r0, #0x8151                       ; = 0x8151348c
813419a0  movs     r1, #1                          
813419a2  strb     r1, [r0]                        
813419a4  cmp      r4, #0                          
813419a6  bne      #0x81341a14                     
813419a8  ldr      r0, [r5, #0x7c]                   ; this.components
813419aa  movs     r1, #0                          
813419ac  ldr      r0, [r0, #0x48]                 
813419ae  bl       #0x8127d684                       ; -> UnityEngine.ParticleSystem$$Play
813419b2  ldr      r0, [r5, #0x7c]                   ; this.components
813419b4  movw     r1, #0xb394                     
813419b8  ldr      r0, [r0, #0x14]                 
813419ba  movt     r1, #0x8151                       ; str "hit"
813419be  ldr      r1, [r1]                        
813419c0  movs     r2, #0                          
813419c2  movs     r3, #0                          
813419c4  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813419c8  ldr      r0, [r5, #0x7c]                   ; this.components
813419ca  movw     r1, #0x9848                     
813419ce  ldr      r0, [r0, #0x14]                 
813419d0  movt     r1, #0x8151                       ; str "throw"
813419d4  ldr      r1, [r1]                        
813419d6  movs     r2, #0                          
813419d8  movs     r3, #0                          
813419da  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813419de  ldr      r0, [r5, #0x7c]                   ; this.components
813419e0  movs     r2, #0                          
813419e2  ldr      r3, [r0, #0x3c]                 
813419e4  adds     r1, r3, #0                      
813419e6  ldr      r0, [r0, #0x20]                 
813419e8  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813419ec  ldr      r0, [r5, #0xc]                    ; this.sounds
813419ee  movs     r1, #0                          
813419f0  ldr      r0, [r0, #8]                    
813419f2  bl       #0x81267da6                       ; -> UnityEngine.AudioSource$$Stop
813419f6  ldr      r0, [r5, #0xc]                    ; this.sounds
813419f8  movs     r2, #0                          
813419fa  ldr      r3, [r0, #0xc]                  
813419fc  adds     r1, r3, #0                      
813419fe  ldr      r0, [r0, #8]                    
81341a00  bl       #0x81267cc6                       ; -> UnityEngine.AudioSource$$set_clip
81341a04  ldr      r0, [r5, #0xc]                    ; this.sounds
81341a06  movs     r1, #0                          
81341a08  ldr      r0, [r0, #8]                    
81341a0a  bl       #0x81267d5e                       ; -> UnityEngine.AudioSource$$Play
81341a0e  movs     r0, #3                          
81341a10  str      r0, [r5, #0x1c]                   ; this.action
81341a12  b        #0x81341a3e                     
81341a14  ldr      r0, [r5, #0x7c]                   ; this.components
81341a16  movs     r1, #0                          
81341a18  ldr      r0, [r0, #0x48]                 
81341a1a  bl       #0x8127d71a                       ; -> UnityEngine.ParticleSystem$$Stop
81341a1e  ldr      r0, [r5, #0x7c]                   ; this.components
81341a20  movw     r1, #0xb398                     
81341a24  ldr      r0, [r0, #0x14]                 
81341a26  movt     r1, #0x8151                       ; str "recoverChakra"
81341a2a  ldr      r1, [r1]                        
81341a2c  movs     r2, #0                          
81341a2e  movs     r3, #0                          
81341a30  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81341a34  ldr      r0, [r5, #0x1c]                   ; this.action
81341a36  cmp      r0, #3                          
81341a38  bne      #0x81341a12                     
81341a3a  movs     r0, #0                          
81341a3c  str      r0, [r5, #0x1c]                   ; this.action
81341a3e  pop      {r4, r5, r6, pc}                

; ==== controller$$recoverChakra  @ 0x813503c6 .. 0x8135040e
813503c6  push     {r4, r5, r6, lr}                
813503c8  movw     r1, #0x34d3                     
813503cc  movt     r1, #0x8151                       ; = 0x815134d3
813503d0  ldrb     r1, [r1]                        
813503d2  adds     r4, r0, #0                      
813503d4  cbnz     r1, #0x813503f0                 
813503d6  movw     r0, #0x376c                     
813503da  movt     r0, #0x814c                       ; = 0x814c376c
813503de  ldr      r0, [r0]                        
813503e0  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813503e4  movw     r0, #0x34d3                     
813503e8  movt     r0, #0x8151                       ; = 0x815134d3
813503ec  movs     r1, #1                          
813503ee  strb     r1, [r0]                        
813503f0  movw     r0, #0x4bbc                     
813503f4  movt     r0, #0x8151                       ; controller.<recoverChakra>c__Iterator0_TypeInfo
813503f8  ldr      r0, [r0]                        
813503fa  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
813503fe  adds     r5, r0, #0                      
81350400  movs     r1, #0                          
81350402  bl       #0x81000d00                       ; -> System.Object$$.ctor
81350406  str      r4, [r5, #8]                    
81350408  adds     r0, r5, #0                      
8135040a  pop      {r4, r5, r6, pc}                
8135040c  pop      {r4, pc}                        

; ==== controller$$Substitution  @ 0x81341914 .. 0x81341978
81341914  push.w   {r4, r5, r6, r7, r8, lr}        
81341918  movw     r4, #0x348b                     
8134191c  movt     r4, #0x8151                       ; = 0x8151348b
81341920  ldrb.w   lr, [r4]                        
81341924  adds     r4, r3, #0                      
81341926  adds     r5, r2, #0                      
81341928  adds     r6, r1, #0                      
8134192a  adds     r7, r0, #0                      
8134192c  cmp.w    lr, #0                          
81341930  bne      #0x8134194c                     
81341932  movw     r0, #0x3744                     
81341936  movt     r0, #0x814c                       ; = 0x814c3744
8134193a  ldr      r0, [r0]                        
8134193c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341940  movw     r0, #0x348b                     
81341944  movt     r0, #0x8151                       ; = 0x8151348b
81341948  movs     r1, #1                          
8134194a  strb     r1, [r0]                        
8134194c  movw     r0, #0x4bc0                     
81341950  movt     r0, #0x8151                       ; controller.<Substitution>c__Iterator1_TypeInfo
81341954  ldr      r0, [r0]                        
81341956  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
8134195a  mov      r8, r0                          
8134195c  movs     r1, #0                          
8134195e  bl       #0x81000d00                       ; -> System.Object$$.ctor
81341962  str.w    r6, [r8, #0x10]                 
81341966  mov      r0, r8                          
81341968  str.w    r5, [r8, #0x14]                 
8134196c  str.w    r4, [r8, #0x18]                 
81341970  str.w    r7, [r8, #0x20]                 
81341974  pop.w    {r4, r5, r6, r7, r8, pc}        

; ==== controller$$dmg  @ 0x81341a5c .. 0x8134240c
81341a5c  push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
81341a60  vpush    {s16, s17, s18, s19, s20, s21}  
81341a64  sub      sp, #0x184                      
81341a66  movw     r4, #0x2514                     
81341a6a  movt     r4, #0x813e                       ; = 0x813e2514
81341a6e  ldr      r4, [r4]                        
81341a70  str      r4, [sp, #0x17c]                
81341a72  movw     r4, #0x348d                     
81341a76  movt     r4, #0x8151                       ; = 0x8151348d
81341a7a  ldrb     r4, [r4]                        
81341a7c  adds     r6, r3, #0                      
81341a7e  mov      sl, r2                          
81341a80  mov      fp, r1                          
81341a82  adds     r7, r0, #0                      
81341a84  cbnz     r4, #0x81341aa0                 
81341a86  movw     r0, #0x3758                     
81341a8a  movt     r0, #0x814c                       ; = 0x814c3758
81341a8e  ldr      r0, [r0]                        
81341a90  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341a94  movw     r0, #0x348d                     
81341a98  movt     r0, #0x8151                       ; = 0x8151348d
81341a9c  movs     r1, #1                          
81341a9e  strb     r1, [r0]                        
81341aa0  movs     r0, #0                          
81341aa2  movs     r1, #0                          
81341aa4  strd     r0, r1, [sp, #0x158]            
81341aa8  strd     r0, r1, [sp, #0x160]            
81341aac  strd     r0, r1, [sp, #0x168]            
81341ab0  strd     r0, r1, [sp, #0x170]            
81341ab4  ldr      r0, [r7, #0x18]                   ; this.state
81341ab6  cmp      r0, #2                          
81341ab8  bne      #0x81341ac0                     
81341aba  movs     r0, #0                          
81341abc  b.w      #0x813423ec                     
81341ac0  ldr.w    r4, [r7, #0x90]                   ; this.thisAttack
81341ac4  cbz      r4, #0x81341b00                 
81341ac6  movw     r0, #0x461c                     
81341aca  ldr      r4, [r4, #0x20]                 
81341acc  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81341ad0  ldr      r0, [r0]                        
81341ad2  ldrsb.w  r1, [r0, #0xc2]                 
81341ad6  ands     r1, r1, #1                      
81341ada  beq      #0x81341ae4                     
81341adc  ldr      r1, [r0, #0x70]                 
81341ade  cbnz     r1, #0x81341ae4                 
81341ae0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81341ae4  movs     r0, #0                          
81341ae6  adds     r1, r4, #0                      
81341ae8  movs     r2, #0                          
81341aea  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81341aee  cmp      r0, #0                          
81341af0  beq      #0x81341b00                     
81341af2  ldr.w    r0, [r7, #0x90]                   ; this.thisAttack
81341af6  movs     r1, #0                          
81341af8  ldr      r0, [r0, #0x20]                 
81341afa  movs     r2, #0                          
81341afc  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81341b00  movs     r0, #0                          
81341b02  ldr.w    lr, [r7, #0x7c]                   ; this.components
81341b06  vmov.f32 s0, #4.000000e+00               
81341b0a  str.w    r0, [r7, #0x90]                   ; this.thisAttack
81341b0e  str.w    r0, [r7, #0xa4]                   ; this.hitedTime
81341b12  ldr.w    lr, [lr, #0x18]                 
81341b16  vldr     s1, [lr, #0x74]                 
81341b1a  vcmp.f32 s1, s0                          
81341b1e  vmrs     apsr_nzcv, fpscr                
81341b22  bmi      #0x81341b26                     
81341b24  b        #0x81341b2e                     
81341b26  movs.w   r0, #0x3fc00000                 
81341b2a  str.w    r0, [lr, #0x5c]                 
81341b2e  ldr      r0, [r7, #0x1c]                   ; this.action
81341b30  cmp      r0, #3                          
81341b32  bne      #0x81341b84                     
81341b34  movw     r0, #0x348c                     
81341b38  movt     r0, #0x8151                       ; = 0x8151348c
81341b3c  ldrb     r0, [r0]                        
81341b3e  cbnz     r0, #0x81341b5a                 
81341b40  movw     r0, #0x373c                     
81341b44  movt     r0, #0x814c                       ; = 0x814c373c
81341b48  ldr      r0, [r0]                        
81341b4a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341b4e  movw     r0, #0x348c                     
81341b52  movt     r0, #0x8151                       ; = 0x8151348c
81341b56  movs     r1, #1                          
81341b58  strb     r1, [r0]                        
81341b5a  ldr      r0, [r7, #0x7c]                   ; this.components
81341b5c  movs     r1, #0                          
81341b5e  ldr      r0, [r0, #0x48]                 
81341b60  bl       #0x8127d71a                       ; -> UnityEngine.ParticleSystem$$Stop
81341b64  ldr      r0, [r7, #0x7c]                   ; this.components
81341b66  movw     r1, #0xb398                     
81341b6a  ldr      r0, [r0, #0x14]                 
81341b6c  movt     r1, #0x8151                       ; str "recoverChakra"
81341b70  ldr      r1, [r1]                        
81341b72  movs     r2, #0                          
81341b74  movs     r3, #0                          
81341b76  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81341b7a  ldr      r0, [r7, #0x1c]                   ; this.action
81341b7c  cmp      r0, #3                          
81341b7e  bne      #0x81341b84                     
81341b80  movs     r0, #0                          
81341b82  str      r0, [r7, #0x1c]                   ; this.action
81341b84  ldrb.w   r0, [r7, #0x28]                   ; this.isPlayer
81341b88  cmp      r0, #0                          
81341b8a  beq.w    #0x81342344                     
81341b8e  movw     r0, #0xcccd                     
81341b92  vldr     s0, [r7, #0x94]                   ; this.blockTime
81341b96  movt     r0, #0x3dcc                       ; = 0x3dcccccd
81341b9a  vmov     s1, r0                          
81341b9e  vcmp.f32 s0, s1                          
81341ba2  vmrs     apsr_nzcv, fpscr                
81341ba6  bmi      #0x81341baa                     
81341ba8  b        #0x81341c08                     
81341baa  ldr      r0, [r7, #0x24]                   ; this.stats
81341bac  ldr      r1, [r0, #0x14]                 
81341bae  cmp      r1, #0x50                       
81341bb0  blt      #0x81341c08                     
81341bb2  movw     r0, #0x348b                     
81341bb6  movt     r0, #0x8151                       ; = 0x8151348b
81341bba  ldrb     r0, [r0]                        
81341bbc  cbnz     r0, #0x81341bd8                 
81341bbe  movw     r0, #0x3744                     
81341bc2  movt     r0, #0x814c                       ; = 0x814c3744
81341bc6  ldr      r0, [r0]                        
81341bc8  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341bcc  movw     r0, #0x348b                     
81341bd0  movt     r0, #0x8151                       ; = 0x8151348b
81341bd4  movs     r1, #1                          
81341bd6  strb     r1, [r0]                        
81341bd8  movw     r0, #0x4bc0                     
81341bdc  movt     r0, #0x8151                       ; controller.<Substitution>c__Iterator1_TypeInfo
81341be0  ldr      r0, [r0]                        
81341be2  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81341be6  adds     r4, r0, #0                      
81341be8  movs     r1, #0                          
81341bea  bl       #0x81000d00                       ; -> System.Object$$.ctor
81341bee  str.w    fp, [r4, #0x10]                 
81341bf2  adds     r0, r7, #0                      
81341bf4  str.w    sl, [r4, #0x14]                 
81341bf8  adds     r1, r4, #0                      
81341bfa  str      r6, [r4, #0x18]                 
81341bfc  movs     r2, #0                          
81341bfe  str      r7, [r4, #0x20]                 
81341c00  bl       #0x812eda9c                       ; -> UnityEngine.MonoBehaviour$$StartCoroutine
81341c04  movs     r0, #0                          
81341c06  b        #0x813423ec                     
81341c08  movs     r0, #1                          
81341c0a  ldrb.w   r1, [r7, #0x9a]                   ; this.guard
81341c0e  cmp      r1, #0                          
81341c10  str      r0, [r7, #0x18]                   ; this.state
81341c12  beq.w    #0x81341f4a                     
81341c16  ldr.w    r0, [sl, #0x14]                 
81341c1a  lsls     r4, r6, #2                      
81341c1c  ldr      r1, [r7, #0x24]                   ; this.stats
81341c1e  adds     r0, r0, r4                      
81341c20  ldr      r2, [r1, #0x1c]                 
81341c22  ldr      r3, [r0, #0x10]                 
81341c24  subs     r0, r2, r3                      
81341c26  str      r0, [r1, #0x1c]                 
81341c28  ldr      r0, [r7, #0x7c]                   ; this.components
81341c2a  ldr      r1, [r0, #0x18]                 
81341c2c  ldr      r2, [r7, #0x14]                   ; this._player
81341c2e  ldr      r3, [r1, #0x1c]                 
81341c30  add.w    r0, r3, r2, lsl #2              
81341c34  ldr      r0, [r0, #0x10]                 
81341c36  ldr      r1, [r0, #8]                    
81341c38  ldr      r2, [r1, #0x24]                 
81341c3a  ldr      r3, [r2, #0x20]                 
81341c3c  vmov     s0, r3                          
81341c40  ldr      r1, [r2, #0x1c]                 
81341c42  vmov.f32 s2, #1.000000e+00               
81341c46  vmov     s1, r1                          
81341c4a  ldr      r0, [r0, #0x18]                 
81341c4c  vcvt.f32.s32 s0, s0                          
81341c50  vcvt.f32.s32 s1, s1                          
81341c54  movs     r1, #0                          
81341c56  vdiv.f32 s0, s2, s0                      
81341c5a  vmul.f32 s0, s0, s1                      
81341c5e  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81341c62  ldr.w    lr, [r7, #0x24]                   ; this.stats
81341c66  ldr.w    r0, [lr, #0x1c]                 
81341c6a  cmp      r0, #0                          
81341c6c  bgt      #0x81341c8e                     
81341c6e  mvns     r0, #0x31                       
81341c72  str.w    r0, [lr, #0x1c]                 
81341c76  movw     r0, #0xb39c                     
81341c7a  ldr      r1, [r7, #0x7c]                   ; this.components
81341c7c  movt     r0, #0x8151                       ; str "guardBreak"
81341c80  ldr      r3, [r0]                        
81341c82  movs     r2, #1                          
81341c84  ldr      r0, [r1, #0x14]                 
81341c86  adds     r1, r3, #0                      
81341c88  movs     r3, #0                          
81341c8a  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81341c8e  ldr      r5, [r7, #0x2c]                   ; this.character
81341c90  movs     r1, #0                          
81341c92  ldr      r5, [r5, #0x10]                 
81341c94  adds     r0, r5, #0                      
81341c96  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81341c9a  movs     r1, #0                          
81341c9c  vmov.f32 s16, s0                         
81341ca0  vmov.f32 s18, s2                         
81341ca4  vmov.f32 s17, s1                         
81341ca8  vstr     s16, [sp]                       
81341cac  vstr     s18, [sp, #8]                   
81341cb0  vstr     s17, [sp, #4]                   
81341cb4  ldr.w    r0, [fp, #0x2c]                 
81341cb8  ldr      r0, [r0, #0x10]                 
81341cba  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81341cbe  movw     r0, #0x45fc                     
81341cc2  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81341cc6  vmov.f32 s19, s0                         
81341cca  vmov.f32 s21, s2                         
81341cce  vmov.f32 s20, s1                         
81341cd2  ldr      r0, [r0]                        
81341cd4  vstr     s19, [sp, #0xc]                 
81341cd8  vstr     s21, [sp, #0x14]                
81341cdc  vstr     s20, [sp, #0x10]                
81341ce0  ldrsb.w  r1, [r0, #0xc2]                 
81341ce4  ands     r1, r1, #1                      
81341ce8  beq      #0x81341cf2                     
81341cea  ldr      r1, [r0, #0x70]                 
81341cec  cbnz     r1, #0x81341cf2                 
81341cee  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81341cf2  vmov.f32 s0, s16                         
81341cf6  vmov.f32 s1, s17                         
81341cfa  vmov.f32 s2, s18                         
81341cfe  vmov.f32 s3, s19                         
81341d02  vmov.f32 s4, s20                         
81341d06  vmov.f32 s5, s21                         
81341d0a  movs     r0, #0                          
81341d0c  movs     r1, #0                          
81341d0e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81341d12  movs     r0, #0                          
81341d14  movs     r1, #0                          
81341d16  vstr     s0, [sp, #0x18]                 
81341d1a  vstr     s2, [sp, #0x20]                 
81341d1e  vstr     s1, [sp, #0x1c]                 
81341d22  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81341d26  movw     r0, #0x4710                     
81341d2a  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81341d2e  vmov.f32 s16, s0                         
81341d32  vmov.f32 s18, s2                         
81341d36  vmov.f32 s17, s1                         
81341d3a  ldr      r0, [r0]                        
81341d3c  vstr     s16, [sp, #0x24]                
81341d40  vstr     s18, [sp, #0x2c]                
81341d44  vstr     s17, [sp, #0x28]                
81341d48  ldrsb.w  r1, [r0, #0xc2]                 
81341d4c  ands     r1, r1, #1                      
81341d50  beq      #0x81341d5a                     
81341d52  ldr      r1, [r0, #0x70]                 
81341d54  cbnz     r1, #0x81341d5a                 
81341d56  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81341d5a  vmov.f32 s0, s16                         
81341d5e  vmov.f32 s1, s17                         
81341d62  vmov.f32 s2, s18                         
81341d66  movs     r0, #0                          
81341d68  movs     r1, #0                          
81341d6a  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81341d6e  add      r0, sp, #0x158                  
81341d70  movs     r1, #0                          
81341d72  vstr     s0, [sp, #0x30]                 
81341d76  vstr     s3, [sp, #0x3c]                 
81341d7a  vstr     s1, [sp, #0x34]                 
81341d7e  vstr     s2, [sp, #0x38]                 
81341d82  vstr     s0, [sp, #0x158]                
81341d86  vstr     s1, [sp, #0x15c]                
81341d8a  vstr     s2, [sp, #0x160]                
81341d8e  vstr     s3, [sp, #0x164]                
81341d92  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81341d96  movs     r0, #0                          
81341d98  movs     r2, #0                          
81341d9a  vstr     s0, [sp, #0x40]                 
81341d9e  vmov     s0, r0                          
81341da2  vstr     s1, [sp, #0x44]                 
81341da6  vstr     s2, [sp, #0x48]                 
81341daa  strd     r2, r2, [sp, #0x140]            
81341dae  add      r0, sp, #0x140                  
81341db0  str      r2, [sp, #0x148]                
81341db2  movs     r1, #0                          
81341db4  vmov.f32 s2, s0                          
81341db8  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81341dbc  vldr     s0, [sp, #0x140]                
81341dc0  vldr     s1, [sp, #0x144]                
81341dc4  vldr     s2, [sp, #0x148]                
81341dc8  adds     r0, r5, #0                      
81341dca  movs     r1, #0                          
81341dcc  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81341dd0  ldr      r0, [r7, #0x7c]                   ; this.components
81341dd2  movw     r1, #0xb394                     
81341dd6  ldr      r0, [r0, #0x14]                 
81341dd8  movt     r1, #0x8151                       ; str "hit"
81341ddc  ldr      r1, [r1]                        
81341dde  movs     r2, #0                          
81341de0  movs     r3, #0                          
81341de2  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81341de6  ldr      r0, [r7, #0x7c]                   ; this.components
81341de8  movw     r1, #0x9848                     
81341dec  ldr      r0, [r0, #0x14]                 
81341dee  movt     r1, #0x8151                       ; str "throw"
81341df2  ldr      r1, [r1]                        
81341df4  movs     r2, #0                          
81341df6  movs     r3, #0                          
81341df8  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81341dfc  ldr      r0, [r7, #0x7c]                   ; this.components
81341dfe  movw     r1, #0xb2fc                     
81341e02  ldr      r0, [r0, #0x14]                 
81341e04  movt     r1, #0x8151                       ; str "hited"
81341e08  ldr      r1, [r1]                        
81341e0a  movs     r2, #0                          
81341e0c  bl       #0x8126a240                       ; -> UnityEngine.Animator$$SetTrigger
81341e10  ldr      r0, [r7, #0x7c]                   ; this.components
81341e12  movw     r2, #0xb3a0                     
81341e16  ldr      r1, [r7, #0x2c]                   ; this.character
81341e18  movt     r2, #0x8151                       ; str "hitGrounded"
81341e1c  ldr      r0, [r0, #0x14]                 
81341e1e  ldr      r3, [r2]                        
81341e20  ldrb     r2, [r1, #0x1c]                 
81341e22  adds     r1, r3, #0                      
81341e24  movs     r3, #0                          
81341e26  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81341e2a  ldr      r0, [r7, #0x7c]                   ; this.components
81341e2c  ldr.w    r1, [sl, #0x1c]                 
81341e30  adds     r1, r1, r4                      
81341e32  ldr      r2, [r0, #0x2c]                 
81341e34  ldr      r3, [r1, #0x10]                 
81341e36  add.w    r1, r2, r3, lsl #2              
81341e3a  ldr      r0, [r0, #0x20]                 
81341e3c  movs     r2, #0                          
81341e3e  ldr      r1, [r1, #0x10]                 
81341e40  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81341e44  movs     r0, #0                          
81341e46  movs     r1, #0                          
81341e48  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81341e4c  movs     r0, #0                          
81341e4e  movs     r1, #0                          
81341e50  vstr     s0, [sp, #0x4c]                 
81341e54  vstr     s2, [sp, #0x54]                 
81341e58  vstr     s1, [sp, #0x50]                 
81341e5c  vstr     s0, [r7, #0x48]                   ; this.moveSpeed
81341e60  vstr     s1, [r7, #0x4c]                   ; this.moveSpeed+4
81341e64  vstr     s2, [r7, #0x50]                   ; this.moveSpeed+8
81341e68  ldr      r5, [r7, #0x2c]                   ; this.character
81341e6a  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81341e6e  movs     r1, #0                          
81341e70  vstr     s0, [sp, #0x58]                 
81341e74  vstr     s2, [sp, #0x60]                 
81341e78  vstr     s1, [sp, #0x5c]                 
81341e7c  vstr     s0, [r5, #0x24]                 
81341e80  vstr     s1, [r5, #0x28]                 
81341e84  vstr     s2, [r5, #0x2c]                 
81341e88  ldr.w    r0, [fp, #0x2c]                 
81341e8c  ldr      r0, [r0, #0x10]                 
81341e8e  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81341e92  subs     r0, r4, r6                      
81341e94  vmov.f32 s16, #2.000000e+00              
81341e98  lsls     r4, r0, #2                      
81341e9a  vstr     s0, [sp, #0x64]                 
81341e9e  vstr     s2, [sp, #0x6c]                 
81341ea2  vstr     s1, [sp, #0x68]                 
81341ea6  ldr.w    r0, [sl, #0x18]                 
81341eaa  adds     r0, r0, r4                      
81341eac  vldr     s3, [r0, #0x18]                 
81341eb0  movs     r0, #0                          
81341eb2  movs     r1, #0                          
81341eb4  vmul.f32 s3, s3, s16                     
81341eb8  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81341ebc  movs     r1, #0                          
81341ebe  vmov.f32 s17, s0                         
81341ec2  vmov.f32 s18, s2                         
81341ec6  vmov.f32 s19, s1                         
81341eca  vstr     s17, [sp, #0x70]                
81341ece  vstr     s18, [sp, #0x78]                
81341ed2  vstr     s19, [sp, #0x74]                
81341ed6  vstr     s17, [r7, #0x54]                  ; this.moveFight
81341eda  vstr     s19, [r7, #0x58]                  ; this.moveFight+4
81341ede  vstr     s18, [r7, #0x5c]                  ; this.moveFight+8
81341ee2  ldr.w    r0, [fp, #0x2c]                 
81341ee6  ldr      r0, [r0, #0x10]                 
81341ee8  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
81341eec  movs     r0, #0                          
81341eee  vstr     s0, [sp, #0x7c]                 
81341ef2  vstr     s2, [sp, #0x84]                 
81341ef6  vstr     s1, [sp, #0x80]                 
81341efa  ldr.w    r1, [sl, #0x18]                 
81341efe  adds     r1, r1, r4                      
81341f00  vldr     s3, [r1, #0x10]                 
81341f04  movs     r1, #0                          
81341f06  vmul.f32 s3, s3, s16                     
81341f0a  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81341f0e  movs     r0, #0                          
81341f10  movs     r1, #0                          
81341f12  vmov.f32 s3, s0                          
81341f16  vmov.f32 s5, s2                          
81341f1a  vmov.f32 s4, s1                          
81341f1e  vmov.f32 s0, s17                         
81341f22  vmov.f32 s1, s19                         
81341f26  vmov.f32 s2, s18                         
81341f2a  vstr     s3, [sp, #0x88]                 
81341f2e  vstr     s5, [sp, #0x90]                 
81341f32  vstr     s4, [sp, #0x8c]                 
81341f36  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81341f3a  movs     r0, #2                          
81341f3c  vstr     s0, [r7, #0x54]                   ; this.moveFight
81341f40  vstr     s2, [r7, #0x5c]                   ; this.moveFight+8
81341f44  vstr     s1, [r7, #0x58]                   ; this.moveFight+4
81341f48  b        #0x813423ec                     
81341f4a  movs     r0, #0                          
81341f4c  ldr      r1, [r7, #0x24]                   ; this.stats
81341f4e  lsl.w    sb, r6, #2                      
81341f52  str      r0, [r7, #0x1c]                   ; this.action
81341f54  ldr.w    r0, [sl, #0x14]                 
81341f58  adds.w   r0, r0, sb                      
81341f5c  ldr      r2, [r1, #0xc]                  
81341f5e  ldr      r3, [r0, #0x10]                 
81341f60  subs     r0, r2, r3                      
81341f62  str      r0, [r1, #0xc]                  
81341f64  ldr.w    ip, [r7, #0x24]                   ; this.stats
81341f68  ldr.w    lr, [ip, #0xc]                  
81341f6c  cmp.w    lr, #0                          
81341f70  bge      #0x81341f7c                     
81341f72  ldr.w    r0, [ip, #0x10]                 
81341f76  add      r0, lr                          
81341f78  str.w    r0, [ip, #0xc]                  
81341f7c  ldr      r0, [r7, #0x7c]                   ; this.components
81341f7e  ldr      r1, [r0, #0x18]                 
81341f80  ldr      r2, [r7, #0x14]                   ; this._player
81341f82  ldr      r3, [r1, #0x1c]                 
81341f84  add.w    r0, r3, r2, lsl #2              
81341f88  ldr      r0, [r0, #0x10]                 
81341f8a  ldr      r1, [r0, #8]                    
81341f8c  ldr      r2, [r1, #0x24]                 
81341f8e  ldr      r3, [r2, #0x10]                 
81341f90  vmov     s0, r3                          
81341f94  ldr      r1, [r2, #0xc]                  
81341f96  vmov.f32 s2, #1.000000e+00               
81341f9a  vmov     s1, r1                          
81341f9e  str      r6, [sp, #0x178]                
81341fa0  vcvt.f32.s32 s0, s0                          
81341fa4  vcvt.f32.s32 s1, s1                          
81341fa8  ldr      r0, [r0, #0x10]                 
81341faa  movs     r1, #0                          
81341fac  vdiv.f32 s0, s2, s0                      
81341fb0  vmul.f32 s0, s0, s1                      
81341fb4  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81341fb8  ldr.w    r8, [r7, #0x2c]                   ; this.character
81341fbc  movs     r1, #0                          
81341fbe  ldr.w    r8, [r8, #0x10]                 
81341fc2  mov      r0, r8                          
81341fc4  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81341fc8  movs     r1, #0                          
81341fca  vmov.f32 s16, s0                         
81341fce  vmov.f32 s18, s2                         
81341fd2  vmov.f32 s17, s1                         
81341fd6  vstr     s16, [sp, #0xa0]                
81341fda  vstr     s18, [sp, #0xa8]                
81341fde  vstr     s17, [sp, #0xa4]                
81341fe2  ldr.w    r0, [fp, #0x2c]                 
81341fe6  ldr      r0, [r0, #0x10]                 
81341fe8  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81341fec  movw     r0, #0x45fc                     
81341ff0  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81341ff4  vmov.f32 s19, s0                         
81341ff8  vmov.f32 s21, s2                         
81341ffc  vmov.f32 s20, s1                         
81342000  ldr      r0, [r0]                        
81342002  vstr     s19, [sp, #0xac]                
81342006  vstr     s21, [sp, #0xb4]                
8134200a  vstr     s20, [sp, #0xb0]                
8134200e  ldrsb.w  r1, [r0, #0xc2]                 
81342012  ands     r1, r1, #1                      
81342016  beq      #0x81342020                     
81342018  ldr      r1, [r0, #0x70]                 
8134201a  cbnz     r1, #0x81342020                 
8134201c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81342020  vmov.f32 s0, s16                         
81342024  vmov.f32 s1, s17                         
81342028  vmov.f32 s2, s18                         
8134202c  vmov.f32 s3, s19                         
81342030  vmov.f32 s4, s20                         
81342034  vmov.f32 s5, s21                         
81342038  movs     r0, #0                          
8134203a  movs     r1, #0                          
8134203c  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81342040  movs     r0, #0                          
81342042  movs     r1, #0                          
81342044  vstr     s0, [sp, #0xb8]                 
81342048  vstr     s2, [sp, #0xc0]                 
8134204c  vstr     s1, [sp, #0xbc]                 
81342050  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81342054  movw     r0, #0x4710                     
81342058  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
8134205c  vmov.f32 s16, s0                         
81342060  vmov.f32 s18, s2                         
81342064  vmov.f32 s17, s1                         
81342068  ldr      r0, [r0]                        
8134206a  vstr     s16, [sp, #0xc4]                
8134206e  vstr     s18, [sp, #0xcc]                
81342072  vstr     s17, [sp, #0xc8]                
81342076  ldrsb.w  r1, [r0, #0xc2]                 
8134207a  ands     r1, r1, #1                      
8134207e  beq      #0x81342088                     
81342080  ldr      r1, [r0, #0x70]                 
81342082  cbnz     r1, #0x81342088                 
81342084  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81342088  vmov.f32 s0, s16                         
8134208c  vmov.f32 s1, s17                         
81342090  vmov.f32 s2, s18                         
81342094  movs     r0, #0                          
81342096  movs     r1, #0                          
81342098  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
8134209c  add      r0, sp, #0x168                  
8134209e  movs     r1, #0                          
813420a0  vstr     s0, [sp, #0xd0]                 
813420a4  vstr     s3, [sp, #0xdc]                 
813420a8  vstr     s1, [sp, #0xd4]                 
813420ac  vstr     s2, [sp, #0xd8]                 
813420b0  vstr     s0, [sp, #0x168]                
813420b4  vstr     s1, [sp, #0x16c]                
813420b8  vstr     s2, [sp, #0x170]                
813420bc  vstr     s3, [sp, #0x174]                
813420c0  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
813420c4  movs     r0, #0                          
813420c6  movs     r2, #0                          
813420c8  vstr     s0, [sp, #0xe0]                 
813420cc  vmov     s0, r0                          
813420d0  vstr     s1, [sp, #0xe4]                 
813420d4  vstr     s2, [sp, #0xe8]                 
813420d8  strd     r2, r2, [sp, #0x14c]            
813420dc  add      r0, sp, #0x14c                  
813420de  str      r2, [sp, #0x154]                
813420e0  movs     r1, #0                          
813420e2  vmov.f32 s2, s0                          
813420e6  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813420ea  vldr     s0, [sp, #0x14c]                
813420ee  vldr     s1, [sp, #0x150]                
813420f2  vldr     s2, [sp, #0x154]                
813420f6  mov      r0, r8                          
813420f8  movs     r1, #0                          
813420fa  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813420fe  ldr      r0, [r7, #0x7c]                   ; this.components
81342100  movw     r1, #0xb394                     
81342104  ldr      r0, [r0, #0x14]                 
81342106  movt     r1, #0x8151                       ; str "hit"
8134210a  ldr      r1, [r1]                        
8134210c  movs     r2, #0                          
8134210e  movs     r3, #0                          
81342110  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81342114  ldr      r0, [r7, #0x7c]                   ; this.components
81342116  movw     r1, #0x9848                     
8134211a  ldr      r0, [r0, #0x14]                 
8134211c  movt     r1, #0x8151                       ; str "throw"
81342120  ldr      r1, [r1]                        
81342122  movs     r2, #0                          
81342124  movs     r3, #0                          
81342126  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
8134212a  ldr.w    r0, [sl, #0x10]                 
8134212e  adds.w   r0, r0, sb                      
81342132  ldr      r1, [r7, #0x7c]                   ; this.components
81342134  movw     r2, #0xb3a4                     
81342138  ldr      r3, [r0, #0x10]                 
8134213a  movt     r2, #0x8151                       ; str "hitType"
8134213e  ldr      r0, [r1, #0x14]                 
81342140  ldr      r1, [r2]                        
81342142  adds     r2, r3, #0                      
81342144  movs     r3, #0                          
81342146  bl       #0x8126a1f0                       ; -> UnityEngine.Animator$$SetInteger
8134214a  ldr      r0, [r7, #0x7c]                   ; this.components
8134214c  movw     r1, #0xb2fc                     
81342150  ldr      r0, [r0, #0x14]                 
81342152  movt     r1, #0x8151                       ; str "hited"
81342156  ldr      r1, [r1]                        
81342158  movs     r2, #0                          
8134215a  bl       #0x8126a240                       ; -> UnityEngine.Animator$$SetTrigger
8134215e  ldr      r0, [r7, #0x7c]                   ; this.components
81342160  movw     r2, #0xb3a0                     
81342164  ldr      r1, [r7, #0x2c]                   ; this.character
81342166  movt     r2, #0x8151                       ; str "hitGrounded"
8134216a  ldr      r0, [r0, #0x14]                 
8134216c  ldr      r3, [r2]                        
8134216e  ldrb     r2, [r1, #0x1c]                 
81342170  adds     r1, r3, #0                      
81342172  movs     r3, #0                          
81342174  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81342178  ldr      r0, [r7, #0x7c]                   ; this.components
8134217a  ldr.w    r1, [sl, #0x1c]                 
8134217e  adds.w   r1, r1, sb                      
81342182  ldr      r2, [r0, #0x2c]                 
81342184  ldr      r1, [r1, #0x10]                 
81342186  add.w    r1, r2, r1, lsl #2              
8134218a  ldr      r0, [r0, #0x20]                 
8134218c  movs     r2, #0                          
8134218e  ldr      r1, [r1, #0x10]                 
81342190  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81342194  ldr.w    r0, [sl, #0x10]                 
81342198  add.w    r8, r0, sb                      
8134219c  ldr.w    r8, [r8, #0x10]                 
813421a0  cmp.w    r8, #4                          
813421a4  beq      #0x813421ac                     
813421a6  cmp.w    r8, #5                          
813421aa  bne      #0x813421b0                     
813421ac  movs     r0, #2                          
813421ae  str      r0, [r7, #0x18]                   ; this.state
813421b0  ldr.w    lr, [r7, #0x2c]                   ; this.character
813421b4  ldrb.w   r0, [lr, #0x1c]                 
813421b8  cbnz     r0, #0x813421cc                 
813421ba  movw     r0, #0x999a                     
813421be  movt     r0, #0x3fd9                       ; = 0x3fd9999a
813421c2  str.w    r0, [lr, #0x30]                 
813421c6  movs     r0, #0                          
813421c8  str.w    r0, [lr, #0x34]                 
813421cc  ldr      r0, [r7, #0x18]                   ; this.state
813421ce  cmp      r0, #2                          
813421d0  bne.w    #0x813423ca                     
813421d4  ldr      r2, [r7, #0xc]                    ; this.sounds
813421d6  movs     r0, #0                          
813421d8  ldr      r4, [r2, #0x14]                 
813421da  movs     r1, #0                          
813421dc  ldr      r6, [r2, #8]                    
813421de  movs     r3, #0                          
813421e0  ldr      r2, [r4, #0xc]                  
813421e2  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
813421e6  add.w    r0, r4, r0, lsl #2              
813421ea  ldr      r1, [r0, #0x10]                 
813421ec  adds     r0, r6, #0                      
813421ee  movs     r2, #0                          
813421f0  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813421f4  movw     r0, #0x45fc                     
813421f8  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813421fc  ldr      r0, [r0]                        
813421fe  ldrsb.w  r1, [r0, #0xc2]                 
81342202  ands     r1, r1, #1                      
81342206  beq      #0x81342210                     
81342208  ldr      r1, [r0, #0x70]                 
8134220a  cbnz     r1, #0x81342210                 
8134220c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81342210  ldr      r4, [sp, #0x178]                
81342212  movs     r0, #0                          
81342214  movs     r1, #0                          
81342216  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134221a  movs     r0, #0                          
8134221c  movs     r1, #0                          
8134221e  vstr     s0, [sp, #0xec]                 
81342222  vstr     s2, [sp, #0xf4]                 
81342226  vstr     s1, [sp, #0xf0]                 
8134222a  vstr     s0, [r7, #0x48]                   ; this.moveSpeed
8134222e  vstr     s1, [r7, #0x4c]                   ; this.moveSpeed+4
81342232  vstr     s2, [r7, #0x50]                   ; this.moveSpeed+8
81342236  ldr      r5, [r7, #0x2c]                   ; this.character
81342238  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134223c  movs     r1, #0                          
8134223e  vstr     s0, [sp, #0xf8]                 
81342242  vstr     s2, [sp, #0x100]                
81342246  vstr     s1, [sp, #0xfc]                 
8134224a  vstr     s0, [r5, #0x24]                 
8134224e  vstr     s1, [r5, #0x28]                 
81342252  vstr     s2, [r5, #0x2c]                 
81342256  ldr.w    r0, [fp, #0x2c]                 
8134225a  ldr      r0, [r0, #0x10]                 
8134225c  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81342260  sub.w    r0, sb, r4                      
81342264  vmov.f32 s16, #2.000000e+00              
81342268  lsls     r4, r0, #2                      
8134226a  vstr     s0, [sp, #0x104]                
8134226e  vstr     s2, [sp, #0x10c]                
81342272  vstr     s1, [sp, #0x108]                
81342276  ldr.w    r0, [sl, #0x18]                 
8134227a  adds     r0, r0, r4                      
8134227c  vldr     s3, [r0, #0x18]                 
81342280  movs     r0, #0                          
81342282  movs     r1, #0                          
81342284  vmul.f32 s3, s3, s16                     
81342288  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134228c  movs     r1, #0                          
8134228e  vmov.f32 s17, s0                         
81342292  vmov.f32 s18, s2                         
81342296  vmov.f32 s19, s1                         
8134229a  vstr     s17, [sp, #0x110]               
8134229e  vstr     s18, [sp, #0x118]               
813422a2  vstr     s19, [sp, #0x114]               
813422a6  vstr     s17, [r7, #0x54]                  ; this.moveFight
813422aa  vstr     s19, [r7, #0x58]                  ; this.moveFight+4
813422ae  vstr     s18, [r7, #0x5c]                  ; this.moveFight+8
813422b2  ldr.w    r0, [fp, #0x2c]                 
813422b6  ldr      r0, [r0, #0x10]                 
813422b8  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
813422bc  movs     r0, #0                          
813422be  vstr     s0, [sp, #0x11c]                
813422c2  vstr     s2, [sp, #0x124]                
813422c6  vstr     s1, [sp, #0x120]                
813422ca  ldr.w    r1, [sl, #0x18]                 
813422ce  adds     r1, r1, r4                      
813422d0  vldr     s3, [r1, #0x10]                 
813422d4  movs     r1, #0                          
813422d6  vmul.f32 s3, s3, s16                     
813422da  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813422de  movs     r0, #0                          
813422e0  movs     r1, #0                          
813422e2  vmov.f32 s3, s0                          
813422e6  vmov.f32 s5, s2                          
813422ea  vmov.f32 s4, s1                          
813422ee  vmov.f32 s0, s17                         
813422f2  vmov.f32 s1, s19                         
813422f6  vmov.f32 s2, s18                         
813422fa  vstr     s3, [sp, #0x128]                
813422fe  vstr     s5, [sp, #0x130]                
81342302  vstr     s4, [sp, #0x12c]                
81342306  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134230a  vstr     s0, [sp, #0x134]                
8134230e  vstr     s2, [sp, #0x13c]                
81342312  vstr     s1, [sp, #0x138]                
81342316  vstr     s0, [r7, #0x54]                   ; this.moveFight
8134231a  vstr     s1, [r7, #0x58]                   ; this.moveFight+4
8134231e  vstr     s2, [r7, #0x5c]                   ; this.moveFight+8
81342322  ldr.w    r0, [sl, #0x18]                 
81342326  adds     r0, r0, r4                      
81342328  vldr     s0, [r0, #0x14]                 
8134232c  vcmp.f32 s0, #0                          
81342330  vmrs     apsr_nzcv, fpscr                
81342334  beq      #0x81342340                     
81342336  ldr      r1, [r7, #0x2c]                   ; this.character
81342338  movs     r0, #0                          
8134233a  vstr     s0, [r1, #0x30]                 
8134233e  str      r0, [r1, #0x34]                 
81342340  movs     r0, #1                          
81342342  b        #0x813423ec                     
81342344  ldrb.w   r0, [r7, #0x99]                   ; this.disabled
81342348  cmp      r0, #0                          
8134234a  bne.w    #0x81341c08                     
8134234e  ldrb.w   r0, [r7, #0x9a]                   ; this.guard
81342352  cmp      r0, #0                          
81342354  bne.w    #0x81341c08                     
81342358  movs     r0, #0                          
8134235a  movs     r1, #0                          
8134235c  movs     r2, #0xa                        
8134235e  movs     r3, #0                          
81342360  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81342364  cmp      r0, #0                          
81342366  bne.w    #0x81341c08                     
8134236a  ldr      r0, [r7, #0x24]                   ; this.stats
8134236c  ldr      r1, [r0, #0x14]                 
8134236e  cmp      r1, #0x50                       
81342370  blt.w    #0x81341c08                     
81342374  movw     r0, #0x348b                     
81342378  movt     r0, #0x8151                       ; = 0x8151348b
8134237c  ldrb     r0, [r0]                        
8134237e  cbnz     r0, #0x8134239a                 
81342380  movw     r0, #0x3744                     
81342384  movt     r0, #0x814c                       ; = 0x814c3744
81342388  ldr      r0, [r0]                        
8134238a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134238e  movw     r0, #0x348b                     
81342392  movt     r0, #0x8151                       ; = 0x8151348b
81342396  movs     r1, #1                          
81342398  strb     r1, [r0]                        
8134239a  movw     r0, #0x4bc0                     
8134239e  movt     r0, #0x8151                       ; controller.<Substitution>c__Iterator1_TypeInfo
813423a2  ldr      r0, [r0]                        
813423a4  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
813423a8  adds     r4, r0, #0                      
813423aa  movs     r1, #0                          
813423ac  bl       #0x81000d00                       ; -> System.Object$$.ctor
813423b0  str.w    fp, [r4, #0x10]                 
813423b4  adds     r0, r7, #0                      
813423b6  str.w    sl, [r4, #0x14]                 
813423ba  adds     r1, r4, #0                      
813423bc  str      r6, [r4, #0x18]                 
813423be  movs     r2, #0                          
813423c0  str      r7, [r4, #0x20]                 
813423c2  bl       #0x812eda9c                       ; -> UnityEngine.MonoBehaviour$$StartCoroutine
813423c6  movs     r0, #0                          
813423c8  b        #0x813423ec                     
813423ca  ldr      r2, [r7, #0xc]                    ; this.sounds
813423cc  movs     r0, #0                          
813423ce  ldr      r4, [r2, #0x10]                 
813423d0  movs     r1, #0                          
813423d2  ldr      r6, [r2, #8]                    
813423d4  movs     r3, #0                          
813423d6  ldr      r2, [r4, #0xc]                  
813423d8  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
813423dc  add.w    r0, r4, r0, lsl #2              
813423e0  ldr      r1, [r0, #0x10]                 
813423e2  adds     r0, r6, #0                      
813423e4  movs     r2, #0                          
813423e6  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813423ea  b        #0x813421f4                     
813423ec  ldr      r2, [sp, #0x17c]                
813423ee  movw     r1, #0x2514                     
813423f2  movt     r1, #0x813e                       ; = 0x813e2514
813423f6  ldr      r1, [r1]                        
813423f8  cmp      r1, r2                          
813423fa  bne      #0x81342406                     
813423fc  add      sp, #0x184                      
813423fe  vpop     {s16, s17, s18, s19, s20, s21}  
81342402  pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
81342406  blx      #0x813e1118                       ; -> __stack_chk_fail
8134240a  nop                                      

; ==== controller$$hit  @ 0x813506f4 .. 0x81350eda
813506f4  push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
813506f8  vpush    {s16, s17, s18, s19, s20, s21}  
813506fc  sub      sp, #0x1dc                      
813506fe  movw     r2, #0x2514                     
81350702  movt     r2, #0x813e                       ; = 0x813e2514
81350706  ldr      r2, [r2]                        
81350708  str      r2, [sp, #0x1d8]                
8135070a  movw     r2, #0x34d7                     
8135070e  movt     r2, #0x8151                       ; = 0x815134d7
81350712  ldrb     r2, [r2]                        
81350714  mov      sl, r1                          
81350716  mov      sb, r0                          
81350718  cbnz     r2, #0x81350734                 
8135071a  movw     r0, #0x3768                     
8135071e  movt     r0, #0x814c                       ; = 0x814c3768
81350722  ldr      r0, [r0]                        
81350724  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81350728  movw     r0, #0x34d7                     
8135072c  movt     r0, #0x8151                       ; = 0x815134d7
81350730  movs     r1, #1                          
81350732  strb     r1, [r0]                        
81350734  ldr.w    r0, [sb, #0x18]                   ; this.state
81350738  cmp      r0, #1                          
8135073a  beq.w    #0x81350c42                     
8135073e  ldr.w    r0, [sb, #0x90]                   ; this.thisAttack
81350742  cmp      r0, #0                          
81350744  beq.w    #0x81350c42                     
81350748  movw     r0, #0x461c                     
8135074c  ldr.w    r4, [sb, #0x30]                   ; this.target
81350750  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81350754  ldr      r4, [r4, #0x34]                 
81350756  movs     r2, #0                          
81350758  ldr      r0, [r0]                        
8135075a  movs     r3, #0                          
8135075c  strd     r2, r3, [sp, #0x1d0]            
81350760  strd     r2, r3, [sp, #0x1c8]            
81350764  strd     r2, r3, [sp, #0x1c0]            
81350768  strd     r2, r3, [sp, #0x1b8]            
8135076c  ldrsb.w  r1, [r0, #0xc2]                 
81350770  ands     r1, r1, #1                      
81350774  beq      #0x8135077e                     
81350776  ldr      r1, [r0, #0x70]                 
81350778  cbnz     r1, #0x8135077e                 
8135077a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135077e  movs     r0, #0                          
81350780  adds     r1, r4, #0                      
81350782  movs     r2, #0                          
81350784  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81350788  cmp      r0, #0                          
8135078a  beq.w    #0x81350d72                     
8135078e  ldr.w    r4, [sb, #0x2c]                   ; this.character
81350792  movs     r1, #0                          
81350794  ldr      r4, [r4, #0x10]                 
81350796  adds     r0, r4, #0                      
81350798  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135079c  movs     r1, #0                          
8135079e  vmov.f32 s16, s0                         
813507a2  vmov.f32 s18, s2                         
813507a6  vmov.f32 s17, s1                         
813507aa  vstr     s16, [sp, #8]                   
813507ae  vstr     s18, [sp, #0x10]                
813507b2  vstr     s17, [sp, #0xc]                 
813507b6  ldr.w    r0, [sb, #0x30]                   ; this.target
813507ba  ldr      r0, [r0, #0x34]                 
813507bc  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813507c0  movw     r0, #0x45fc                     
813507c4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813507c8  vmov.f32 s19, s0                         
813507cc  vmov.f32 s21, s2                         
813507d0  vmov.f32 s20, s1                         
813507d4  ldr      r0, [r0]                        
813507d6  vstr     s19, [sp, #0x14]                
813507da  vstr     s21, [sp, #0x1c]                
813507de  vstr     s20, [sp, #0x18]                
813507e2  ldrsb.w  r1, [r0, #0xc2]                 
813507e6  ands     r1, r1, #1                      
813507ea  beq      #0x813507f4                     
813507ec  ldr      r1, [r0, #0x70]                 
813507ee  cbnz     r1, #0x813507f4                 
813507f0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813507f4  vmov.f32 s0, s16                         
813507f8  vmov.f32 s1, s17                         
813507fc  vmov.f32 s2, s18                         
81350800  vmov.f32 s3, s19                         
81350804  vmov.f32 s4, s20                         
81350808  vmov.f32 s5, s21                         
8135080c  movs     r0, #0                          
8135080e  movs     r1, #0                          
81350810  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81350814  movs     r0, #0                          
81350816  movs     r1, #0                          
81350818  vstr     s0, [sp, #0x20]                 
8135081c  vstr     s2, [sp, #0x28]                 
81350820  vstr     s1, [sp, #0x24]                 
81350824  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81350828  movw     r0, #0x4710                     
8135082c  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81350830  vmov.f32 s16, s0                         
81350834  vmov.f32 s18, s2                         
81350838  vmov.f32 s17, s1                         
8135083c  ldr      r0, [r0]                        
8135083e  vstr     s16, [sp, #0x2c]                
81350842  vstr     s18, [sp, #0x34]                
81350846  vstr     s17, [sp, #0x30]                
8135084a  ldrsb.w  r1, [r0, #0xc2]                 
8135084e  ands     r1, r1, #1                      
81350852  beq      #0x8135085c                     
81350854  ldr      r1, [r0, #0x70]                 
81350856  cbnz     r1, #0x8135085c                 
81350858  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135085c  vmov.f32 s0, s16                         
81350860  vmov.f32 s1, s17                         
81350864  vmov.f32 s2, s18                         
81350868  movs     r0, #0                          
8135086a  movs     r1, #0                          
8135086c  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81350870  add      r0, sp, #0x1b8                  
81350872  movs     r1, #0                          
81350874  vstr     s0, [sp, #0x38]                 
81350878  vstr     s3, [sp, #0x44]                 
8135087c  vstr     s1, [sp, #0x3c]                 
81350880  vstr     s2, [sp, #0x40]                 
81350884  vstr     s0, [sp, #0x1b8]                
81350888  vstr     s1, [sp, #0x1bc]                
8135088c  vstr     s2, [sp, #0x1c0]                
81350890  vstr     s3, [sp, #0x1c4]                
81350894  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81350898  movs     r0, #0                          
8135089a  movs     r2, #0                          
8135089c  vstr     s0, [sp, #0x48]                 
813508a0  vmov     s0, r0                          
813508a4  vstr     s1, [sp, #0x4c]                 
813508a8  vstr     s2, [sp, #0x50]                 
813508ac  strd     r2, r2, [sp, #0x19c]            
813508b0  add      r0, sp, #0x19c                  
813508b2  str      r2, [sp, #0x1a4]                
813508b4  movs     r1, #0                          
813508b6  vmov.f32 s2, s0                          
813508ba  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813508be  vldr     s0, [sp, #0x19c]                
813508c2  vldr     s1, [sp, #0x1a0]                
813508c6  vldr     s2, [sp, #0x1a4]                
813508ca  adds     r0, r4, #0                      
813508cc  movs     r1, #0                          
813508ce  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813508d2  ldr.w    r0, [sb, #0x2c]                   ; this.character
813508d6  movs     r1, #0                          
813508d8  ldr      r0, [r0, #0x10]                 
813508da  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813508de  movw     r0, #0x45fc                     
813508e2  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813508e6  vmov.f32 s16, s0                         
813508ea  vmov.f32 s18, s2                         
813508ee  vmov.f32 s17, s1                         
813508f2  ldr      r0, [r0]                        
813508f4  vstr     s16, [sp, #0xa0]                
813508f8  vstr     s18, [sp, #0xa8]                
813508fc  vstr     s17, [sp, #0xa4]                
81350900  ldrsb.w  r1, [r0, #0xc2]                 
81350904  ands     r1, r1, #1                      
81350908  beq      #0x81350912                     
8135090a  ldr      r1, [r0, #0x70]                 
8135090c  cbnz     r1, #0x81350912                 
8135090e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350912  movs     r0, #0                          
81350914  movs     r1, #0                          
81350916  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
8135091a  movw     r0, #0xcccd                     
8135091e  movt     r0, #0x3ecc                       ; = 0x3ecccccd
81350922  vmov     s3, r0                          
81350926  movs     r0, #0                          
81350928  vstr     s0, [sp, #0xac]                 
8135092c  vstr     s2, [sp, #0xb4]                 
81350930  vstr     s1, [sp, #0xb0]                 
81350934  movs     r1, #0                          
81350936  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8135093a  movs     r0, #0                          
8135093c  movs     r1, #0                          
8135093e  vmov.f32 s3, s0                          
81350942  vmov.f32 s5, s2                          
81350946  vmov.f32 s4, s1                          
8135094a  vmov.f32 s0, s16                         
8135094e  vmov.f32 s1, s17                         
81350952  vmov.f32 s2, s18                         
81350956  vstr     s3, [sp, #0xb8]                 
8135095a  vstr     s5, [sp, #0xc0]                 
8135095e  vstr     s4, [sp, #0xbc]                 
81350962  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81350966  movs     r1, #0                          
81350968  vmov.f32 s16, s0                         
8135096c  vmov.f32 s17, s2                         
81350970  vmov.f32 s18, s1                         
81350974  vstr     s16, [sp, #0xc4]                
81350978  vstr     s17, [sp, #0xcc]                
8135097c  vstr     s18, [sp, #0xc8]                
81350980  ldr.w    r0, [sb, #0x2c]                   ; this.character
81350984  ldr      r0, [r0, #0x10]                 
81350986  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
8135098a  movw     r0, #0x999a                     
8135098e  movt     r0, #0x3e99                       ; = 0x3e99999a
81350992  vmov     s3, r0                          
81350996  movs     r0, #0                          
81350998  vstr     s0, [sp, #0xd0]                 
8135099c  vstr     s2, [sp, #0xd8]                 
813509a0  vstr     s1, [sp, #0xd4]                 
813509a4  movs     r1, #0                          
813509a6  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813509aa  movs     r0, #0                          
813509ac  movs     r1, #0                          
813509ae  vmov.f32 s3, s0                          
813509b2  vmov.f32 s5, s2                          
813509b6  vmov.f32 s4, s1                          
813509ba  vmov.f32 s0, s16                         
813509be  vmov.f32 s1, s18                         
813509c2  vmov.f32 s2, s17                         
813509c6  vstr     s3, [sp, #0xdc]                 
813509ca  vstr     s5, [sp, #0xe4]                 
813509ce  vstr     s4, [sp, #0xe0]                 
813509d2  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813509d6  movw     r0, #0x3333                     
813509da  movt     r0, #0x3f33                       ; = 0x3f333333
813509de  vmov     s3, r0                          
813509e2  movs     r0, #0                          
813509e4  vstr     s0, [sp, #0xe8]                 
813509e8  vstr     s2, [sp, #0xf0]                 
813509ec  vstr     s1, [sp, #0xec]                 
813509f0  movs     r1, #0                          
813509f2  bl       #0x81270fb2                       ; -> UnityEngine.Physics$$OverlapSphere
813509f6  adds     r6, r0, #0                      
813509f8  movs     r0, #0                          
813509fa  movs     r1, #0                          
813509fc  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81350a00  movs     r5, #0                          
81350a02  mov      fp, r6                          
81350a04  vstr     s0, [sp, #0xf4]                 
81350a08  vstr     s2, [sp, #0xfc]                 
81350a0c  vstr     s1, [sp, #0xf8]                 
81350a10  vstr     s0, [sb, #0x48]                   ; this.moveSpeed
81350a14  vstr     s1, [sb, #0x4c]                   ; this.moveSpeed+4
81350a18  vstr     s2, [sb, #0x50]                   ; this.moveSpeed+8
81350a1c  ldr      r0, [r6, #0xc]                  
81350a1e  cmp      r5, r0                          
81350a20  bge.w    #0x81350c44                     
81350a24  movw     r0, #0x461c                     
81350a28  ldr.w    r4, [sb, #0x30]                   ; this.target
81350a2c  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81350a30  ldr      r4, [r4, #0x34]                 
81350a32  ldr      r0, [r0]                        
81350a34  ldrsb.w  r1, [r0, #0xc2]                 
81350a38  ands     r1, r1, #1                      
81350a3c  beq      #0x81350a46                     
81350a3e  ldr      r1, [r0, #0x70]                 
81350a40  cbnz     r1, #0x81350a46                 
81350a42  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350a46  movs     r0, #0                          
81350a48  adds     r1, r4, #0                      
81350a4a  movs     r2, #0                          
81350a4c  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81350a50  cmp      r0, #0                          
81350a52  beq      #0x81350a9c                     
81350a54  ldr.w    r7, [sb, #0x30]                   ; this.target
81350a58  movs     r1, #0                          
81350a5a  ldr.w    r0, [fp, #0x10]                 
81350a5e  ldr      r7, [r7, #0x34]                 
81350a60  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81350a64  movw     r1, #0x461c                     
81350a68  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81350a6c  mov      r8, r0                          
81350a6e  ldr      r0, [r1]                        
81350a70  ldrsb.w  r1, [r0, #0xc2]                 
81350a74  ands     r1, r1, #1                      
81350a78  beq      #0x81350a82                     
81350a7a  ldr      r1, [r0, #0x70]                 
81350a7c  cbnz     r1, #0x81350a82                 
81350a7e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350a82  movs     r0, #0                          
81350a84  adds     r1, r7, #0                      
81350a86  mov      r2, r8                          
81350a88  movs     r3, #0                          
81350a8a  bl       #0x812e65d2                       ; -> UnityEngine.Object$$op_Equality
81350a8e  cmp      r0, #0                          
81350a90  bne.w    #0x81350c68                     
81350a94  add.w    fp, fp, #4                      
81350a98  adds     r5, #1                          
81350a9a  b        #0x81350a1c                     
81350a9c  ldr.w    r0, [fp, #0x10]                 
81350aa0  movs     r1, #0                          
81350aa2  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81350aa6  ldr.w    r1, [sb, #0x30]                   ; this.target
81350aaa  movw     r2, #0x461c                     
81350aae  ldr.w    r8, [r1, #0x2c]                 
81350ab2  movt     r2, #0x8151                       ; UnityEngine.Object_TypeInfo
81350ab6  ldr.w    r8, [r8, #0x10]                 
81350aba  adds     r7, r0, #0                      
81350abc  ldr      r0, [r2]                        
81350abe  ldrsb.w  r1, [r0, #0xc2]                 
81350ac2  ands     r1, r1, #1                      
81350ac6  beq      #0x81350ad0                     
81350ac8  ldr      r1, [r0, #0x70]                 
81350aca  cbnz     r1, #0x81350ad0                 
81350acc  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350ad0  movs     r0, #0                          
81350ad2  adds     r1, r7, #0                      
81350ad4  mov      r2, r8                          
81350ad6  movs     r3, #0                          
81350ad8  bl       #0x812e65d2                       ; -> UnityEngine.Object$$op_Equality
81350adc  cmp      r0, #0                          
81350ade  beq      #0x81350a94                     
81350ae0  ldr.w    r2, [sb, #0x90]                   ; this.thisAttack
81350ae4  movs     r0, #0                          
81350ae6  ldr.w    r3, [sb, #0x30]                   ; this.target
81350aea  mov      r1, sb                          
81350aec  str      r0, [sp]                        
81350aee  adds     r0, r3, #0                      
81350af0  mov      r3, sl                          
81350af2  bl       #0x81341a5c                       ; -> controller$$dmg
81350af6  cmp      r0, #1                          
81350af8  bne.w    #0x81350c42                     
81350afc  ldr.w    r0, [sb, #0x80]                   ; this._particles
81350b00  movs     r1, #0                          
81350b02  ldr      r0, [r0, #8]                    
81350b04  ldr      r0, [r0, #0x10]                 
81350b06  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81350b0a  ldr.w    r1, [sb, #0x2c]                   ; this.character
81350b0e  adds     r4, r0, #0                      
81350b10  ldr      r0, [r1, #0x10]                 
81350b12  movs     r1, #0                          
81350b14  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81350b18  movs     r1, #0                          
81350b1a  vmov.f32 s16, s0                         
81350b1e  vmov.f32 s18, s2                         
81350b22  vmov.f32 s17, s1                         
81350b26  vstr     s16, [sp, #0x148]               
81350b2a  vstr     s18, [sp, #0x150]               
81350b2e  vstr     s17, [sp, #0x14c]               
81350b32  ldr.w    r0, [sb, #0x2c]                   ; this.character
81350b36  ldr      r0, [r0, #0x10]                 
81350b38  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81350b3c  movw     r0, #0x45fc                     
81350b40  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81350b44  vmov.f32 s19, s0                         
81350b48  vmov.f32 s21, s2                         
81350b4c  vmov.f32 s20, s1                         
81350b50  ldr      r0, [r0]                        
81350b52  vstr     s19, [sp, #0x154]               
81350b56  vstr     s21, [sp, #0x15c]               
81350b5a  vstr     s20, [sp, #0x158]               
81350b5e  ldrsb.w  r1, [r0, #0xc2]                 
81350b62  ands     r1, r1, #1                      
81350b66  beq      #0x81350b70                     
81350b68  ldr      r1, [r0, #0x70]                 
81350b6a  cbnz     r1, #0x81350b70                 
81350b6c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350b70  vmov.f32 s0, s19                         
81350b74  vmov.f32 s1, s20                         
81350b78  vmov.f32 s2, s21                         
81350b7c  vmov.f32 s3, #1.000000e+00               
81350b80  movs     r0, #0                          
81350b82  movs     r1, #0                          
81350b84  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81350b88  movs     r0, #0                          
81350b8a  movs     r1, #0                          
81350b8c  vmov.f32 s3, s0                          
81350b90  vmov.f32 s5, s2                          
81350b94  vmov.f32 s4, s1                          
81350b98  vmov.f32 s0, s16                         
81350b9c  vmov.f32 s1, s17                         
81350ba0  vmov.f32 s2, s18                         
81350ba4  vstr     s3, [sp, #0x160]                
81350ba8  vstr     s5, [sp, #0x168]                
81350bac  vstr     s4, [sp, #0x164]                
81350bb0  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81350bb4  movs     r0, #0                          
81350bb6  movs     r1, #0                          
81350bb8  vmov.f32 s16, s0                         
81350bbc  vmov.f32 s17, s2                         
81350bc0  vmov.f32 s18, s1                         
81350bc4  vstr     s16, [sp, #0x16c]               
81350bc8  vstr     s17, [sp, #0x174]               
81350bcc  vstr     s18, [sp, #0x170]               
81350bd0  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81350bd4  movw     r0, #0xcccd                     
81350bd8  movt     r0, #0x3f4c                       ; = 0x3f4ccccd
81350bdc  vmov     s3, r0                          
81350be0  movs     r0, #0                          
81350be2  vstr     s0, [sp, #0x178]                
81350be6  vstr     s2, [sp, #0x180]                
81350bea  vstr     s1, [sp, #0x17c]                
81350bee  movs     r1, #0                          
81350bf0  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81350bf4  movs     r0, #0                          
81350bf6  movs     r1, #0                          
81350bf8  vmov.f32 s3, s0                          
81350bfc  vmov.f32 s5, s2                          
81350c00  vmov.f32 s4, s1                          
81350c04  vmov.f32 s0, s16                         
81350c08  vmov.f32 s1, s18                         
81350c0c  vmov.f32 s2, s17                         
81350c10  vstr     s3, [sp, #0x184]                
81350c14  vstr     s5, [sp, #0x18c]                
81350c18  vstr     s4, [sp, #0x188]                
81350c1c  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81350c20  adds     r0, r4, #0                      
81350c22  movs     r1, #0                          
81350c24  vstr     s0, [sp, #0x190]                
81350c28  vstr     s2, [sp, #0x198]                
81350c2c  vstr     s1, [sp, #0x194]                
81350c30  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
81350c34  ldr.w    r0, [sb, #0x80]                   ; this._particles
81350c38  movs     r1, #0                          
81350c3a  ldr      r0, [r0, #8]                    
81350c3c  ldr      r0, [r0, #0x10]                 
81350c3e  bl       #0x8127d684                       ; -> UnityEngine.ParticleSystem$$Play
81350c42  b        #0x81350eba                     
81350c44  ldr.w    r2, [sb, #0x7c]                   ; this.components
81350c48  movs     r0, #0                          
81350c4a  ldr      r4, [r2, #0x20]                 
81350c4c  movs     r1, #0                          
81350c4e  ldr      r5, [r2, #0x30]                 
81350c50  movs     r2, #2                          
81350c52  movs     r3, #0                          
81350c54  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81350c58  add.w    r0, r5, r0, lsl #2              
81350c5c  ldr      r1, [r0, #0x10]                 
81350c5e  adds     r0, r4, #0                      
81350c60  movs     r2, #0                          
81350c62  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81350c66  b        #0x81350c42                     
81350c68  movw     r2, #0x4c40                     
81350c6c  ldr.w    r1, [sb, #0x30]                   ; this.target
81350c70  movt     r2, #0x8151                       ; Method$UnityEngine.Component.GetComponent<Rigidbody>()
81350c74  ldr      r0, [r1, #0x34]                 
81350c76  ldr      r1, [r2]                        
81350c78  bl       #0x8125faae                       ; -> UnityEngine.Component$$GetComponent<ShadowTextureRenderer>
81350c7c  movw     r1, #0x45fc                     
81350c80  movt     r1, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81350c84  adds     r4, r0, #0                      
81350c86  ldr      r0, [r1]                        
81350c88  ldrsb.w  r1, [r0, #0xc2]                 
81350c8c  ands     r1, r1, #1                      
81350c90  beq      #0x81350c9a                     
81350c92  ldr      r1, [r0, #0x70]                 
81350c94  cbnz     r1, #0x81350c9a                 
81350c96  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350c9a  movs     r0, #0                          
81350c9c  movs     r1, #0                          
81350c9e  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81350ca2  vmov.f32 s3, #2.000000e+00               
81350ca6  movs     r0, #0                          
81350ca8  movs     r1, #0                          
81350caa  vstr     s0, [sp, #0x100]                
81350cae  vstr     s2, [sp, #0x108]                
81350cb2  vstr     s1, [sp, #0x104]                
81350cb6  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81350cba  adds     r0, r4, #0                      
81350cbc  movs     r1, #0                          
81350cbe  vstr     s0, [sp, #0x10c]                
81350cc2  vstr     s2, [sp, #0x114]                
81350cc6  vstr     s1, [sp, #0x110]                
81350cca  bl       #0x81271438                       ; -> UnityEngine.Rigidbody$$set_velocity
81350cce  ldr.w    r0, [sb, #0x90]                   ; this.thisAttack
81350cd2  rsb      r1, sl, sl, lsl #2              
81350cd6  ldr      r0, [r0, #0x18]                 
81350cd8  add.w    r0, r0, r1, lsl #2              
81350cdc  ldr.w    r1, [sb, #0x2c]                   ; this.character
81350ce0  vldr     s0, [r0, #0x10]                 
81350ce4  vldr     s1, [r0, #0x14]                 
81350ce8  vldr     s2, [r0, #0x18]                 
81350cec  ldr      r0, [r1, #0x10]                 
81350cee  movs     r1, #0                          
81350cf0  bl       #0x813a1a6e                       ; -> UnityEngine.Transform$$TransformDirection
81350cf4  movs     r0, #0                          
81350cf6  movt     r0, #0x447a                     
81350cfa  vmov     s3, r0                          
81350cfe  movs     r0, #0                          
81350d00  vstr     s0, [sp, #0x118]                
81350d04  vstr     s2, [sp, #0x120]                
81350d08  vstr     s1, [sp, #0x11c]                
81350d0c  movs     r1, #0                          
81350d0e  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81350d12  adds     r0, r4, #0                      
81350d14  movs     r1, #0                          
81350d16  vstr     s0, [sp, #0x124]                
81350d1a  vstr     s2, [sp, #0x12c]                
81350d1e  vstr     s1, [sp, #0x128]                
81350d22  bl       #0x812716e4                       ; -> UnityEngine.Rigidbody$$AddForce
81350d26  movs     r0, #0                          
81350d28  movs     r1, #0                          
81350d2a  bl       #0x812f407c                       ; -> UnityEngine.Random$$get_insideUnitSphere
81350d2e  movs     r0, #0                          
81350d30  movt     r0, #0x43fa                     
81350d34  vmov     s3, r0                          
81350d38  movs     r0, #0                          
81350d3a  vstr     s0, [sp, #0x130]                
81350d3e  vstr     s2, [sp, #0x138]                
81350d42  vstr     s1, [sp, #0x134]                
81350d46  movs     r1, #0                          
81350d48  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81350d4c  adds     r0, r4, #0                      
81350d4e  movs     r1, #0                          
81350d50  vstr     s0, [sp, #0x13c]                
81350d54  vstr     s2, [sp, #0x144]                
81350d58  vstr     s1, [sp, #0x140]                
81350d5c  bl       #0x8127181a                       ; -> UnityEngine.Rigidbody$$AddTorque
81350d60  ldr.w    r0, [sb, #0x7c]                   ; this.components
81350d64  movs     r2, #0                          
81350d66  ldr      r3, [r0, #0x38]                 
81350d68  adds     r1, r3, #0                      
81350d6a  ldr      r0, [r0, #0x20]                 
81350d6c  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81350d70  b        #0x81350eba                     
81350d72  ldr.w    r4, [sb, #0x2c]                   ; this.character
81350d76  movs     r1, #0                          
81350d78  ldr      r4, [r4, #0x10]                 
81350d7a  adds     r0, r4, #0                      
81350d7c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81350d80  movs     r1, #0                          
81350d82  vmov.f32 s16, s0                         
81350d86  vmov.f32 s18, s2                         
81350d8a  vmov.f32 s17, s1                         
81350d8e  vstr     s16, [sp, #0x54]                
81350d92  vstr     s18, [sp, #0x5c]                
81350d96  vstr     s17, [sp, #0x58]                
81350d9a  ldr.w    r0, [sb, #0x30]                   ; this.target
81350d9e  ldr      r2, [r0, #0x2c]                 
81350da0  ldr      r0, [r2, #0x10]                 
81350da2  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81350da6  movw     r0, #0x45fc                     
81350daa  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81350dae  vmov.f32 s19, s0                         
81350db2  vmov.f32 s21, s2                         
81350db6  vmov.f32 s20, s1                         
81350dba  ldr      r0, [r0]                        
81350dbc  vstr     s19, [sp, #0x60]                
81350dc0  vstr     s21, [sp, #0x68]                
81350dc4  vstr     s20, [sp, #0x64]                
81350dc8  ldrsb.w  r1, [r0, #0xc2]                 
81350dcc  ands     r1, r1, #1                      
81350dd0  beq      #0x81350dda                     
81350dd2  ldr      r1, [r0, #0x70]                 
81350dd4  cbnz     r1, #0x81350dda                 
81350dd6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350dda  vmov.f32 s0, s16                         
81350dde  vmov.f32 s1, s17                         
81350de2  vmov.f32 s2, s18                         
81350de6  vmov.f32 s3, s19                         
81350dea  vmov.f32 s4, s20                         
81350dee  vmov.f32 s5, s21                         
81350df2  movs     r0, #0                          
81350df4  movs     r1, #0                          
81350df6  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81350dfa  movs     r0, #0                          
81350dfc  movs     r1, #0                          
81350dfe  vstr     s0, [sp, #0x6c]                 
81350e02  vstr     s2, [sp, #0x74]                 
81350e06  vstr     s1, [sp, #0x70]                 
81350e0a  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81350e0e  movw     r0, #0x4710                     
81350e12  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81350e16  vmov.f32 s16, s0                         
81350e1a  vmov.f32 s18, s2                         
81350e1e  vmov.f32 s17, s1                         
81350e22  ldr      r0, [r0]                        
81350e24  vstr     s16, [sp, #0x78]                
81350e28  vstr     s18, [sp, #0x80]                
81350e2c  vstr     s17, [sp, #0x7c]                
81350e30  ldrsb.w  r1, [r0, #0xc2]                 
81350e34  ands     r1, r1, #1                      
81350e38  beq      #0x81350e42                     
81350e3a  ldr      r1, [r0, #0x70]                 
81350e3c  cbnz     r1, #0x81350e42                 
81350e3e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350e42  vmov.f32 s0, s16                         
81350e46  vmov.f32 s1, s17                         
81350e4a  vmov.f32 s2, s18                         
81350e4e  movs     r0, #0                          
81350e50  movs     r1, #0                          
81350e52  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81350e56  add      r0, sp, #0x1c8                  
81350e58  movs     r1, #0                          
81350e5a  vstr     s0, [sp, #0x84]                 
81350e5e  vstr     s3, [sp, #0x90]                 
81350e62  vstr     s1, [sp, #0x88]                 
81350e66  vstr     s2, [sp, #0x8c]                 
81350e6a  vstr     s0, [sp, #0x1c8]                
81350e6e  vstr     s1, [sp, #0x1cc]                
81350e72  vstr     s2, [sp, #0x1d0]                
81350e76  vstr     s3, [sp, #0x1d4]                
81350e7a  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81350e7e  movs     r0, #0                          
81350e80  movs     r2, #0                          
81350e82  vstr     s0, [sp, #0x94]                 
81350e86  vmov     s0, r0                          
81350e8a  vstr     s1, [sp, #0x98]                 
81350e8e  vstr     s2, [sp, #0x9c]                 
81350e92  strd     r2, r2, [sp, #0x1a8]            
81350e96  add      r0, sp, #0x1a8                  
81350e98  str      r2, [sp, #0x1b0]                
81350e9a  movs     r1, #0                          
81350e9c  vmov.f32 s2, s0                          
81350ea0  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81350ea4  vldr     s0, [sp, #0x1a8]                
81350ea8  vldr     s1, [sp, #0x1ac]                
81350eac  vldr     s2, [sp, #0x1b0]                
81350eb0  adds     r0, r4, #0                      
81350eb2  movs     r1, #0                          
81350eb4  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81350eb8  b        #0x813508d2                     
81350eba  ldr      r1, [sp, #0x1d8]                
81350ebc  movw     r0, #0x2514                     
81350ec0  movt     r0, #0x813e                       ; = 0x813e2514
81350ec4  ldr      r0, [r0]                        
81350ec6  cmp      r0, r1                          
81350ec8  bne      #0x81350ed4                     
81350eca  add      sp, #0x1dc                      
81350ecc  vpop     {s16, s17, s18, s19, s20, s21}  
81350ed0  pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
81350ed4  blx      #0x813e1118                       ; -> __stack_chk_fail
81350ed8  nop                                      

; ==== controller$$collided  @ 0x8134240c .. 0x81342542
8134240c  push     {r4, r5, r6, r7, lr}            
8134240e  sub      sp, #0x24                       
81342410  movw     r7, #0x2514                     
81342414  movt     r7, #0x813e                       ; = 0x813e2514
81342418  ldr      r2, [r7]                        
8134241a  str      r2, [sp, #0x20]                 
8134241c  movw     r2, #0x348e                     
81342420  movt     r2, #0x8151                       ; = 0x8151348e
81342424  ldrb     r2, [r2]                        
81342426  adds     r5, r1, #0                      
81342428  adds     r4, r0, #0                      
8134242a  cbnz     r2, #0x81342446                 
8134242c  movw     r0, #0x3754                     
81342430  movt     r0, #0x814c                       ; = 0x814c3754
81342434  ldr      r0, [r0]                        
81342436  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134243a  movw     r0, #0x348e                     
8134243e  movt     r0, #0x8151                       ; = 0x8151348e
81342442  movs     r1, #1                          
81342444  strb     r1, [r0]                        
81342446  ldr      r0, [r4, #0x18]                   ; this.state
81342448  cmp      r0, #1                          
8134244a  beq      #0x81342530                     
8134244c  movs     r1, #0                          
8134244e  adds     r0, r5, #0                      
81342450  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81342454  ldr      r1, [r4, #0x30]                   ; this.target
81342456  movw     r2, #0x461c                     
8134245a  ldr      r5, [r1, #0x2c]                 
8134245c  movt     r2, #0x8151                       ; UnityEngine.Object_TypeInfo
81342460  ldr      r5, [r5, #0x10]                 
81342462  adds     r6, r0, #0                      
81342464  ldr      r0, [r2]                        
81342466  ldrsb.w  r1, [r0, #0xc2]                 
8134246a  ands     r1, r1, #1                      
8134246e  beq      #0x81342478                     
81342470  ldr      r1, [r0, #0x70]                 
81342472  cbnz     r1, #0x81342478                 
81342474  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81342478  movs     r0, #0                          
8134247a  adds     r1, r6, #0                      
8134247c  adds     r2, r5, #0                      
8134247e  movs     r3, #0                          
81342480  bl       #0x812e65d2                       ; -> UnityEngine.Object$$op_Equality
81342484  cmp      r0, #0                          
81342486  beq      #0x81342530                     
81342488  movs     r1, #0                          
8134248a  ldr      r0, [r4, #0x2c]                   ; this.character
8134248c  vmov     s0, r1                          
81342490  vldr     s1, [r0, #0x34]                 
81342494  movs     r5, #0                          
81342496  vcmp.f32 s1, s0                          
8134249a  vmrs     apsr_nzcv, fpscr                
8134249e  bgt      #0x813424a2                     
813424a0  b        #0x81342530                     
813424a2  movw     r1, #0x45fc                     
813424a6  str      r5, [r0, #0x30]                 
813424a8  movt     r1, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813424ac  str      r5, [r0, #0x34]                 
813424ae  ldr      r0, [r1]                        
813424b0  ldrsb.w  r1, [r0, #0xc2]                 
813424b4  ands     r1, r1, #1                      
813424b8  beq      #0x813424c2                     
813424ba  ldr      r1, [r0, #0x70]                 
813424bc  cbnz     r1, #0x813424c2                 
813424be  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813424c2  movs     r0, #0                          
813424c4  movs     r1, #0                          
813424c6  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813424ca  movs     r0, #0                          
813424cc  movs     r1, #0                          
813424ce  vstr     s0, [sp, #8]                    
813424d2  vstr     s2, [sp, #0x10]                 
813424d6  vstr     s1, [sp, #0xc]                  
813424da  vstr     s0, [r4, #0x48]                   ; this.moveSpeed
813424de  vstr     s1, [r4, #0x4c]                   ; this.moveSpeed+4
813424e2  vstr     s2, [r4, #0x50]                   ; this.moveSpeed+8
813424e6  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813424ea  movw     r0, #0xb3a8                     
813424ee  movt     r0, #0x8151                       ; str "Dash"
813424f2  vstr     s0, [sp, #0x14]                 
813424f6  vstr     s2, [sp, #0x1c]                 
813424fa  vstr     s1, [sp, #0x18]                 
813424fe  vstr     s0, [r4, #0x54]                   ; this.moveFight
81342502  vstr     s1, [r4, #0x58]                   ; this.moveFight+4
81342506  vstr     s2, [r4, #0x5c]                   ; this.moveFight+8
8134250a  movw     r2, #0x4ddc                     
8134250e  ldr      r3, [r0]                        
81342510  movt     r2, #0x8151                       ; Method$System.Collections.Generic.Dictionary<string, controller.Attacks>.get_Item()
81342514  ldr.w    r0, [r4, #0x88]                   ; this.AttacksList
81342518  adds     r1, r3, #0                      
8134251a  ldr      r6, [r4, #0x30]                   ; this.target
8134251c  ldr      r2, [r2]                        
8134251e  bl       #0x811c5f1a                       ; -> System.Collections.Generic.Dictionary<string, controller.Attacks>$$get_Item
81342522  str      r5, [sp]                        
81342524  adds     r2, r0, #0                      
81342526  adds     r0, r6, #0                      
81342528  adds     r1, r4, #0                      
8134252a  movs     r3, #0                          
8134252c  bl       #0x81341a5c                       ; -> controller$$dmg
81342530  ldr      r1, [sp, #0x20]                 
81342532  ldr      r0, [r7]                        
81342534  cmp      r0, r1                          
81342536  bne      #0x8134253c                     
81342538  add      sp, #0x24                       
8134253a  pop      {r4, r5, r6, r7, pc}            
8134253c  blx      #0x813e1118                       ; -> __stack_chk_fail
81342540  nop                                      

; ==== controller$$fine  @ 0x81350eda .. 0x81351052
81350eda  push     {r4, r5, r6, lr}                
81350edc  vpush    {s16, s17, s18, s19}            
81350ee0  sub      sp, #0x20                       
81350ee2  movw     r6, #0x2514                     
81350ee6  movt     r6, #0x813e                       ; = 0x813e2514
81350eea  ldr      r1, [r6]                        
81350eec  str      r1, [sp, #0x18]                 
81350eee  movw     r1, #0x34d8                     
81350ef2  movt     r1, #0x8151                       ; = 0x815134d8
81350ef6  ldrb     r1, [r1]                        
81350ef8  adds     r4, r0, #0                      
81350efa  cbnz     r1, #0x81350f16                 
81350efc  movw     r0, #0x3760                     
81350f00  movt     r0, #0x814c                       ; = 0x814c3760
81350f04  ldr      r0, [r0]                        
81350f06  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81350f0a  movw     r0, #0x34d8                     
81350f0e  movt     r0, #0x8151                       ; = 0x815134d8
81350f12  movs     r1, #1                          
81350f14  strb     r1, [r0]                        
81350f16  movw     r1, #0xb2fc                     
81350f1a  ldr      r0, [r4, #0x7c]                   ; this.components
81350f1c  movt     r1, #0x8151                       ; str "hited"
81350f20  ldr      r0, [r0, #0x14]                 
81350f22  movs     r2, #0                          
81350f24  ldr      r1, [r1]                        
81350f26  movs     r3, #0                          
81350f28  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81350f2c  ldr      r0, [r4, #0x7c]                   ; this.components
81350f2e  movw     r1, #0xb39c                     
81350f32  ldr      r0, [r0, #0x14]                 
81350f34  movt     r1, #0x8151                       ; str "guardBreak"
81350f38  ldr      r1, [r1]                        
81350f3a  movs     r2, #0                          
81350f3c  movs     r3, #0                          
81350f3e  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81350f42  ldr      r0, [r4, #0x7c]                   ; this.components
81350f44  movw     r1, #0xb2f8                     
81350f48  ldr      r0, [r0, #0x14]                 
81350f4a  movt     r1, #0x8151                       ; str "fallToWall"
81350f4e  ldr      r1, [r1]                        
81350f50  movs     r2, #0                          
81350f52  movs     r3, #0                          
81350f54  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81350f58  ldr.w    r5, [r4, #0x90]                   ; this.thisAttack
81350f5c  cbz      r5, #0x81350f98                 
81350f5e  movw     r0, #0x461c                     
81350f62  ldr      r5, [r5, #0x20]                 
81350f64  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81350f68  ldr      r0, [r0]                        
81350f6a  ldrsb.w  r1, [r0, #0xc2]                 
81350f6e  ands     r1, r1, #1                      
81350f72  beq      #0x81350f7c                     
81350f74  ldr      r1, [r0, #0x70]                 
81350f76  cbnz     r1, #0x81350f7c                 
81350f78  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350f7c  movs     r0, #0                          
81350f7e  adds     r1, r5, #0                      
81350f80  movs     r2, #0                          
81350f82  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81350f86  cmp      r0, #0                          
81350f88  beq      #0x81350f98                     
81350f8a  ldr.w    r0, [r4, #0x90]                   ; this.thisAttack
81350f8e  movs     r1, #0                          
81350f90  ldr      r0, [r0, #0x20]                 
81350f92  movs     r2, #0                          
81350f94  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81350f98  movs     r0, #0                          
81350f9a  ldr      r1, [r4, #0x6c]                   ; this._jump
81350f9c  cmp      r1, #0                          
81350f9e  str.w    r0, [r4, #0x90]                   ; this.thisAttack
81350fa2  str      r0, [r4, #0x18]                   ; this.state
81350fa4  str      r0, [r4, #0x1c]                   ; this.action
81350fa6  ble      #0x81351038                     
81350fa8  movw     r0, #0x45fc                     
81350fac  vldr     s18, [r4, #0x48]                  ; this.moveSpeed
81350fb0  vldr     s17, [r4, #0x4c]                  ; this.moveSpeed+4
81350fb4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81350fb8  ldr      r0, [r0]                        
81350fba  vldr     s16, [r4, #0x50]                  ; this.moveSpeed+8
81350fbe  ldrsb.w  r1, [r0, #0xc2]                 
81350fc2  ands     r1, r1, #1                      
81350fc6  beq      #0x81350fd0                     
81350fc8  ldr      r1, [r0, #0x70]                 
81350fca  cbnz     r1, #0x81350fd0                 
81350fcc  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81350fd0  movs     r0, #0                          
81350fd2  movs     r1, #0                          
81350fd4  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81350fd8  movs     r0, #0                          
81350fda  movs     r1, #0                          
81350fdc  vmov.f32 s3, s0                          
81350fe0  vmov.f32 s5, s2                          
81350fe4  vmov.f32 s4, s1                          
81350fe8  vmov.f32 s0, s18                         
81350fec  vmov.f32 s1, s17                         
81350ff0  vmov.f32 s2, s16                         
81350ff4  vstr     s3, [sp]                        
81350ff8  vstr     s5, [sp, #8]                    
81350ffc  vstr     s4, [sp, #4]                    
81351000  bl       #0x8139b05e                       ; -> UnityEngine.Vector3$$op_Inequality
81351004  cmp      r0, #0                          
81351006  beq      #0x81351038                     
81351008  movw     r0, #0x45fc                     
8135100c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351010  ldr      r0, [r0]                        
81351012  ldrsb.w  r1, [r0, #0xc2]                 
81351016  ands     r1, r1, #1                      
8135101a  beq      #0x81351024                     
8135101c  ldr      r1, [r0, #0x70]                 
8135101e  cbnz     r1, #0x81351024                 
81351020  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351024  movs     r0, #0                          
81351026  movs     r1, #0                          
81351028  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8135102c  vstr     s0, [r4, #0x54]                   ; this.moveFight
81351030  vstr     s2, [r4, #0x5c]                   ; this.moveFight+8
81351034  vstr     s1, [r4, #0x58]                   ; this.moveFight+4
81351038  movs     r0, #0                          
8135103a  str      r0, [r4, #0x6c]                   ; this._jump
8135103c  ldr      r1, [sp, #0x18]                 
8135103e  ldr      r0, [r6]                        
81351040  cmp      r0, r1                          
81351042  bne      #0x8135104c                     
81351044  add      sp, #0x20                       
81351046  vpop     {s16, s17, s18, s19}            
8135104a  pop      {r4, r5, r6, pc}                
8135104c  blx      #0x813e1118                       ; -> __stack_chk_fail
81351050  nop                                      

; ==== controller$$dodge  @ 0x81351052 .. 0x8135177e
81351052  push.w   {r4, r5, r6, r7, r8, lr}        
81351056  vpush    {s16, s17, s18, s19}            
8135105a  sub      sp, #0x118                      
8135105c  movw     r8, #0x2514                     
81351060  movt     r8, #0x813e                       ; = 0x813e2514
81351064  ldr.w    r2, [r8]                        
81351068  str      r2, [sp, #0x114]                
8135106a  movw     r2, #0x34d9                     
8135106e  movt     r2, #0x8151                       ; = 0x815134d9
81351072  ldrb     r2, [r2]                        
81351074  adds     r6, r1, #0                      
81351076  adds     r5, r0, #0                      
81351078  cbnz     r2, #0x81351094                 
8135107a  movw     r0, #0x375c                     
8135107e  movt     r0, #0x814c                       ; = 0x814c375c
81351082  ldr      r0, [r0]                        
81351084  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81351088  movw     r0, #0x34d9                     
8135108c  movt     r0, #0x8151                       ; = 0x815134d9
81351090  movs     r1, #1                          
81351092  strb     r1, [r0]                        
81351094  ldr      r0, [r5, #0x18]                   ; this.state
81351096  cmp      r0, #1                          
81351098  beq.w    #0x813512d6                     
8135109c  ldrb.w   r0, [r5, #0x9a]                   ; this.guard
813510a0  cbz      r0, #0x813510e4                 
813510a2  movs     r0, #0                          
813510a4  strb.w   r0, [r5, #0x9a]                   ; this.guard
813510a8  movw     r1, #0x461c                     
813510ac  str      r0, [r5, #0x1c]                   ; this.action
813510ae  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
813510b2  ldr      r0, [r1]                        
813510b4  ldr      r4, [r5, #0x7c]                   ; this.components
813510b6  ldrsb.w  r1, [r0, #0xc2]                 
813510ba  ands     r1, r1, #1                      
813510be  ldr      r4, [r4, #0x54]                 
813510c0  beq      #0x813510ca                     
813510c2  ldr      r1, [r0, #0x70]                 
813510c4  cbnz     r1, #0x813510ca                 
813510c6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813510ca  movs     r0, #0                          
813510cc  adds     r1, r4, #0                      
813510ce  movs     r2, #0                          
813510d0  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813510d4  cmp      r0, #0                          
813510d6  beq      #0x813510e4                     
813510d8  ldr      r0, [r5, #0x7c]                   ; this.components
813510da  movs     r1, #0                          
813510dc  ldr      r0, [r0, #0x54]                 
813510de  movs     r2, #0                          
813510e0  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
813510e4  movs     r0, #0                          
813510e6  ldr      r1, [r5, #0x7c]                   ; this.components
813510e8  movs     r2, #2                          
813510ea  strb.w   r0, [r5, #0xa0]                   ; this.jumpBool
813510ee  str      r2, [r5, #0x6c]                   ; this._jump
813510f0  movw     r2, #0xb3ac                     
813510f4  ldr      r0, [r1, #0x14]                 
813510f6  movt     r2, #0x8151                       ; str "jump"
813510fa  ldr      r1, [r2]                        
813510fc  movs     r2, #0                          
813510fe  movs     r3, #0                          
81351100  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81351104  movw     r0, #0x45fc                     
81351108  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8135110c  ldr      r0, [r0]                        
8135110e  ldrsb.w  r1, [r0, #0xc2]                 
81351112  ands     r1, r1, #1                      
81351116  beq      #0x81351120                     
81351118  ldr      r1, [r0, #0x70]                 
8135111a  cbnz     r1, #0x81351120                 
8135111c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351120  movs     r0, #0                          
81351122  movs     r1, #0                          
81351124  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81351128  movs     r0, #0                          
8135112a  vmov     s3, r0                          
8135112e  vstr     s0, [sp]                        
81351132  vstr     s2, [sp, #8]                    
81351136  vstr     s1, [sp, #4]                    
8135113a  vstr     s0, [r5, #0x48]                   ; this.moveSpeed
8135113e  vstr     s1, [r5, #0x4c]                   ; this.moveSpeed+4
81351142  ldr      r2, [r5, #0x2c]                   ; this.character
81351144  vstr     s2, [r5, #0x50]                   ; this.moveSpeed+8
81351148  vldr     s0, [r2, #0x30]                 
8135114c  vcmp.f32 s0, s3                          
81351150  vmrs     apsr_nzcv, fpscr                
81351154  bmi      #0x81351158                     
81351156  b        #0x8135115e                     
81351158  movs     r0, #0                          
8135115a  str      r0, [r2, #0x30]                 
8135115c  str      r0, [r2, #0x34]                 
8135115e  movw     r0, #0x3878                     
81351162  movt     r0, #0x8151                       ; string_TypeInfo
81351166  ldr      r2, [r0]                        
81351168  ldrsb.w  r0, [r2, #0xc2]                 
8135116c  ands     r0, r0, #1                      
81351170  beq      #0x81351186                     
81351172  ldr      r0, [r2, #0x70]                 
81351174  cbnz     r0, #0x81351186                 
81351176  adds     r0, r2, #0                      
81351178  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135117c  movw     r0, #0x3878                     
81351180  movt     r0, #0x8151                       ; string_TypeInfo
81351184  ldr      r2, [r0]                        
81351186  ldr      r0, [r2, #0x5c]                 
81351188  adds     r1, r6, #0                      
8135118a  ldr      r2, [r0]                        
8135118c  movs     r0, #0                          
8135118e  movs     r3, #0                          
81351190  bl       #0x8118add4                       ; -> System.String$$op_Inequality
81351194  cmp      r0, #0                          
81351196  beq.w    #0x81351748                     
8135119a  ldr      r2, [r5, #0xc]                    ; this.sounds
8135119c  movs     r0, #0                          
8135119e  ldr      r4, [r2, #0x20]                 
813511a0  movs     r1, #0                          
813511a2  ldr      r7, [r2, #8]                    
813511a4  movs     r3, #0                          
813511a6  ldr      r2, [r4, #0xc]                  
813511a8  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
813511ac  add.w    r0, r4, r0, lsl #2              
813511b0  ldr      r1, [r0, #0x10]                 
813511b2  adds     r0, r7, #0                      
813511b4  movs     r2, #0                          
813511b6  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813511ba  ldr      r0, [r5, #0x7c]                   ; this.components
813511bc  movs     r2, #0                          
813511be  ldr      r3, [r0, #0x28]                 
813511c0  adds     r1, r3, #0                      
813511c2  ldr      r0, [r0, #0x20]                 
813511c4  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813511c8  ldrb.w   r0, [r5, #0x38]                   ; this.move
813511cc  cbnz     r0, #0x813511e8                 
813511ce  ldr      r0, [r5, #0x7c]                   ; this.components
813511d0  movs     r1, #0                          
813511d2  ldr      r0, [r0, #0x1c]                 
813511d4  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
813511d8  vstr     s0, [sp, #0xc]                  
813511dc  vstr     s2, [sp, #0x14]                 
813511e0  vstr     s1, [sp, #0x10]                 
813511e4  vstr     s1, [r5, #0x64]                   ; this.rot+4
813511e8  movw     r0, #0x3878                     
813511ec  movt     r0, #0x8151                       ; string_TypeInfo
813511f0  ldr      r0, [r0]                        
813511f2  ldrsb.w  r1, [r0, #0xc2]                 
813511f6  ands     r1, r1, #1                      
813511fa  beq      #0x81351204                     
813511fc  ldr      r1, [r0, #0x70]                 
813511fe  cbnz     r1, #0x81351204                 
81351200  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351204  movw     r0, #0xb3b0                     
81351208  movt     r0, #0x8151                       ; str "L"
8135120c  ldr      r2, [r0]                        
8135120e  adds     r1, r6, #0                      
81351210  movs     r0, #0                          
81351212  movs     r3, #0                          
81351214  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81351218  cmp      r0, #0                          
8135121a  beq      #0x813512d8                     
8135121c  movs     r0, #0                          
8135121e  vldr     s1, [r5, #0x64]                   ; this.rot+4
81351222  movt     r0, #0x42b4                     
81351226  vmov     s2, r0                          
8135122a  movs     r0, #0                          
8135122c  ldr      r1, [r5, #0x2c]                   ; this.character
8135122e  vmov     s0, r0                          
81351232  ldr      r4, [r1, #0x10]                 
81351234  movs     r1, #0                          
81351236  strd     r1, r1, [sp, #0xcc]             
8135123a  add      r0, sp, #0xcc                   
8135123c  vadd.f32 s1, s1, s2                      
81351240  str      r1, [sp, #0xd4]                 
81351242  movs     r1, #0                          
81351244  vmov.f32 s2, s0                          
81351248  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135124c  vldr     s0, [sp, #0xcc]                 
81351250  vldr     s1, [sp, #0xd0]                 
81351254  vldr     s2, [sp, #0xd4]                 
81351258  adds     r0, r4, #0                      
8135125a  movs     r1, #0                          
8135125c  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81351260  ldr      r0, [r5, #0x2c]                   ; this.character
81351262  movs     r1, #0                          
81351264  ldr      r0, [r0, #0x10]                 
81351266  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
8135126a  movw     r0, #0x45fc                     
8135126e  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351272  vmov.f32 s16, s0                         
81351276  vmov.f32 s18, s2                         
8135127a  vmov.f32 s17, s1                         
8135127e  ldr      r0, [r0]                        
81351280  vstr     s16, [sp, #0x18]                
81351284  vstr     s18, [sp, #0x20]                
81351288  vstr     s17, [sp, #0x1c]                
8135128c  ldrsb.w  r1, [r0, #0xc2]                 
81351290  ands     r1, r1, #1                      
81351294  beq      #0x8135129e                     
81351296  ldr      r1, [r0, #0x70]                 
81351298  cbnz     r1, #0x8135129e                 
8135129a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135129e  vmov.f32 s0, s16                         
813512a2  vmov.f32 s1, s17                         
813512a6  vmov.f32 s2, s18                         
813512aa  movs     r0, #0                          
813512ac  movs     r1, #0                          
813512ae  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
813512b2  vmov.f32 s3, #1.100000e+01               
813512b6  movs     r0, #0                          
813512b8  movs     r1, #0                          
813512ba  vstr     s0, [sp, #0x24]                 
813512be  vstr     s2, [sp, #0x2c]                 
813512c2  vstr     s1, [sp, #0x28]                 
813512c6  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813512ca  vstr     s0, [r5, #0x54]                   ; this.moveFight
813512ce  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
813512d2  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
813512d6  b        #0x81351764                     
813512d8  movw     r0, #0x3878                     
813512dc  movt     r0, #0x8151                       ; string_TypeInfo
813512e0  ldr      r0, [r0]                        
813512e2  ldrsb.w  r1, [r0, #0xc2]                 
813512e6  ands     r1, r1, #1                      
813512ea  beq      #0x813512f4                     
813512ec  ldr      r1, [r0, #0x70]                 
813512ee  cbnz     r1, #0x813512f4                 
813512f0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813512f4  movw     r0, #0xb3b4                     
813512f8  movt     r0, #0x8151                       ; str "R"
813512fc  ldr      r2, [r0]                        
813512fe  adds     r1, r6, #0                      
81351300  movs     r0, #0                          
81351302  movs     r3, #0                          
81351304  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81351308  cmp      r0, #0                          
8135130a  beq      #0x813513b4                     
8135130c  movs     r0, #0                          
8135130e  vldr     s1, [r5, #0x64]                   ; this.rot+4
81351312  movt     r0, #0x42b4                     
81351316  vmov     s2, r0                          
8135131a  movs     r0, #0                          
8135131c  ldr      r1, [r5, #0x2c]                   ; this.character
8135131e  vmov     s0, r0                          
81351322  ldr      r4, [r1, #0x10]                 
81351324  movs     r1, #0                          
81351326  strd     r1, r1, [sp, #0xd8]             
8135132a  add      r0, sp, #0xd8                   
8135132c  vsub.f32 s1, s1, s2                      
81351330  str      r1, [sp, #0xe0]                 
81351332  movs     r1, #0                          
81351334  vmov.f32 s2, s0                          
81351338  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135133c  vldr     s0, [sp, #0xd8]                 
81351340  vldr     s1, [sp, #0xdc]                 
81351344  vldr     s2, [sp, #0xe0]                 
81351348  adds     r0, r4, #0                      
8135134a  movs     r1, #0                          
8135134c  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81351350  ldr      r0, [r5, #0x2c]                   ; this.character
81351352  movs     r1, #0                          
81351354  ldr      r0, [r0, #0x10]                 
81351356  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
8135135a  movw     r0, #0x45fc                     
8135135e  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351362  vmov.f32 s16, s0                         
81351366  vmov.f32 s18, s2                         
8135136a  vmov.f32 s17, s1                         
8135136e  ldr      r0, [r0]                        
81351370  vstr     s16, [sp, #0x3c]                
81351374  vstr     s18, [sp, #0x44]                
81351378  vstr     s17, [sp, #0x40]                
8135137c  ldrsb.w  r1, [r0, #0xc2]                 
81351380  ands     r1, r1, #1                      
81351384  beq      #0x8135138e                     
81351386  ldr      r1, [r0, #0x70]                 
81351388  cbnz     r1, #0x8135138e                 
8135138a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135138e  vmov.f32 s0, s16                         
81351392  vmov.f32 s1, s17                         
81351396  vmov.f32 s2, s18                         
8135139a  vmov.f32 s3, #1.100000e+01               
8135139e  movs     r0, #0                          
813513a0  movs     r1, #0                          
813513a2  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813513a6  vstr     s0, [r5, #0x54]                   ; this.moveFight
813513aa  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
813513ae  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
813513b2  b        #0x813512d6                     
813513b4  movw     r0, #0x3878                     
813513b8  movt     r0, #0x8151                       ; string_TypeInfo
813513bc  ldr      r0, [r0]                        
813513be  ldrsb.w  r1, [r0, #0xc2]                 
813513c2  ands     r1, r1, #1                      
813513c6  beq      #0x813513d0                     
813513c8  ldr      r1, [r0, #0x70]                 
813513ca  cbnz     r1, #0x813513d0                 
813513cc  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813513d0  movw     r0, #0xb3b8                     
813513d4  movt     r0, #0x8151                       ; str "F"
813513d8  ldr      r2, [r0]                        
813513da  adds     r1, r6, #0                      
813513dc  movs     r0, #0                          
813513de  movs     r3, #0                          
813513e0  bl       #0x81188b1c                       ; -> System.String$$op_Equality
813513e4  cmp      r0, #0                          
813513e6  beq      #0x81351482                     
813513e8  movs     r1, #0                          
813513ea  vmov     s0, r1                          
813513ee  vldr     s1, [r5, #0x64]                   ; this.rot+4
813513f2  ldr      r0, [r5, #0x2c]                   ; this.character
813513f4  movs     r2, #0                          
813513f6  ldr      r4, [r0, #0x10]                 
813513f8  add      r0, sp, #0xe4                   
813513fa  strd     r2, r2, [sp, #0xe4]             
813513fe  movs     r1, #0                          
81351400  vmov.f32 s2, s0                          
81351404  str      r2, [sp, #0xec]                 
81351406  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135140a  vldr     s0, [sp, #0xe4]                 
8135140e  vldr     s1, [sp, #0xe8]                 
81351412  vldr     s2, [sp, #0xec]                 
81351416  adds     r0, r4, #0                      
81351418  movs     r1, #0                          
8135141a  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8135141e  ldr      r0, [r5, #0x2c]                   ; this.character
81351420  movs     r1, #0                          
81351422  ldr      r0, [r0, #0x10]                 
81351424  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81351428  movw     r0, #0x45fc                     
8135142c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351430  vmov.f32 s16, s0                         
81351434  vmov.f32 s18, s2                         
81351438  vmov.f32 s17, s1                         
8135143c  ldr      r0, [r0]                        
8135143e  vstr     s16, [sp, #0x54]                
81351442  vstr     s18, [sp, #0x5c]                
81351446  vstr     s17, [sp, #0x58]                
8135144a  ldrsb.w  r1, [r0, #0xc2]                 
8135144e  ands     r1, r1, #1                      
81351452  beq      #0x8135145c                     
81351454  ldr      r1, [r0, #0x70]                 
81351456  cbnz     r1, #0x8135145c                 
81351458  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135145c  vmov.f32 s0, s16                         
81351460  vmov.f32 s1, s17                         
81351464  vmov.f32 s2, s18                         
81351468  vmov.f32 s3, #1.100000e+01               
8135146c  movs     r0, #0                          
8135146e  movs     r1, #0                          
81351470  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81351474  vstr     s0, [r5, #0x54]                   ; this.moveFight
81351478  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
8135147c  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81351480  b        #0x813512d6                     
81351482  movw     r0, #0x3878                     
81351486  movt     r0, #0x8151                       ; string_TypeInfo
8135148a  ldr      r0, [r0]                        
8135148c  ldrsb.w  r1, [r0, #0xc2]                 
81351490  ands     r1, r1, #1                      
81351494  beq      #0x8135149e                     
81351496  ldr      r1, [r0, #0x70]                 
81351498  cbnz     r1, #0x8135149e                 
8135149a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135149e  movw     r0, #0xb3bc                     
813514a2  movt     r0, #0x8151                       ; str "B"
813514a6  ldr      r2, [r0]                        
813514a8  adds     r1, r6, #0                      
813514aa  movs     r0, #0                          
813514ac  movs     r3, #0                          
813514ae  bl       #0x81188b1c                       ; -> System.String$$op_Equality
813514b2  cmp      r0, #0                          
813514b4  beq      #0x81351572                     
813514b6  movs     r0, #0                          
813514b8  vldr     s1, [r5, #0x64]                   ; this.rot+4
813514bc  movt     r0, #0x4334                     
813514c0  vmov     s2, r0                          
813514c4  movs     r0, #0                          
813514c6  ldr      r1, [r5, #0x2c]                   ; this.character
813514c8  vmov     s0, r0                          
813514cc  ldr      r4, [r1, #0x10]                 
813514ce  movs     r1, #0                          
813514d0  strd     r1, r1, [sp, #0xf0]             
813514d4  add      r0, sp, #0xf0                   
813514d6  vadd.f32 s1, s1, s2                      
813514da  str      r1, [sp, #0xf8]                 
813514dc  movs     r1, #0                          
813514de  vmov.f32 s2, s0                          
813514e2  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813514e6  vldr     s0, [sp, #0xf0]                 
813514ea  vldr     s1, [sp, #0xf4]                 
813514ee  vldr     s2, [sp, #0xf8]                 
813514f2  adds     r0, r4, #0                      
813514f4  movs     r1, #0                          
813514f6  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813514fa  ldr      r0, [r5, #0x2c]                   ; this.character
813514fc  movs     r1, #0                          
813514fe  ldr      r0, [r0, #0x10]                 
81351500  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81351504  movw     r0, #0x45fc                     
81351508  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8135150c  vmov.f32 s16, s0                         
81351510  vmov.f32 s18, s2                         
81351514  vmov.f32 s17, s1                         
81351518  ldr      r0, [r0]                        
8135151a  vstr     s16, [sp, #0x6c]                
8135151e  vstr     s18, [sp, #0x74]                
81351522  vstr     s17, [sp, #0x70]                
81351526  ldrsb.w  r1, [r0, #0xc2]                 
8135152a  ands     r1, r1, #1                      
8135152e  beq      #0x81351538                     
81351530  ldr      r1, [r0, #0x70]                 
81351532  cbnz     r1, #0x81351538                 
81351534  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351538  vmov.f32 s0, s16                         
8135153c  vmov.f32 s1, s17                         
81351540  vmov.f32 s2, s18                         
81351544  movs     r0, #0                          
81351546  movs     r1, #0                          
81351548  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
8135154c  vmov.f32 s3, #1.100000e+01               
81351550  movs     r0, #0                          
81351552  movs     r1, #0                          
81351554  vstr     s0, [sp, #0x78]                 
81351558  vstr     s2, [sp, #0x80]                 
8135155c  vstr     s1, [sp, #0x7c]                 
81351560  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81351564  vstr     s0, [r5, #0x54]                   ; this.moveFight
81351568  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
8135156c  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81351570  b        #0x813512d6                     
81351572  movw     r0, #0x3878                     
81351576  movt     r0, #0x8151                       ; string_TypeInfo
8135157a  ldr      r0, [r0]                        
8135157c  ldrsb.w  r1, [r0, #0xc2]                 
81351580  ands     r1, r1, #1                      
81351584  beq      #0x8135158e                     
81351586  ldr      r1, [r0, #0x70]                 
81351588  cbnz     r1, #0x8135158e                 
8135158a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135158e  movw     r0, #0xb3c0                     
81351592  movt     r0, #0x8151                       ; str "RThrow"
81351596  ldr      r2, [r0]                        
81351598  adds     r1, r6, #0                      
8135159a  movs     r0, #0                          
8135159c  movs     r3, #0                          
8135159e  bl       #0x81188b1c                       ; -> System.String$$op_Equality
813515a2  cmp      r0, #0                          
813515a4  beq      #0x81351652                     
813515a6  movs     r0, #1                          
813515a8  vldr     s1, [r5, #0x64]                   ; this.rot+4
813515ac  ldr      r1, [r5, #0x2c]                   ; this.character
813515ae  movs     r2, #0                          
813515b0  str      r0, [r5, #0x1c]                   ; this.action
813515b2  movt     r2, #0x42b4                     
813515b6  vmov     s2, r2                          
813515ba  movs     r0, #0                          
813515bc  vmov     s0, r0                          
813515c0  ldr      r4, [r1, #0x10]                 
813515c2  movs     r1, #0                          
813515c4  strd     r1, r1, [sp, #0xfc]             
813515c8  add      r0, sp, #0xfc                   
813515ca  vsub.f32 s1, s1, s2                      
813515ce  str      r1, [sp, #0x104]                
813515d0  movs     r1, #0                          
813515d2  vmov.f32 s2, s0                          
813515d6  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813515da  vldr     s0, [sp, #0xfc]                 
813515de  vldr     s1, [sp, #0x100]                
813515e2  vldr     s2, [sp, #0x104]                
813515e6  adds     r0, r4, #0                      
813515e8  movs     r1, #0                          
813515ea  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813515ee  ldr      r0, [r5, #0x2c]                   ; this.character
813515f0  movs     r1, #0                          
813515f2  ldr      r0, [r0, #0x10]                 
813515f4  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
813515f8  movw     r0, #0x45fc                     
813515fc  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351600  vmov.f32 s16, s0                         
81351604  vmov.f32 s18, s2                         
81351608  vmov.f32 s17, s1                         
8135160c  ldr      r0, [r0]                        
8135160e  vstr     s16, [sp, #0x90]                
81351612  vstr     s18, [sp, #0x98]                
81351616  vstr     s17, [sp, #0x94]                
8135161a  ldrsb.w  r1, [r0, #0xc2]                 
8135161e  ands     r1, r1, #1                      
81351622  beq      #0x8135162c                     
81351624  ldr      r1, [r0, #0x70]                 
81351626  cbnz     r1, #0x8135162c                 
81351628  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135162c  vmov.f32 s0, s16                         
81351630  vmov.f32 s1, s17                         
81351634  vmov.f32 s2, s18                         
81351638  vmov.f32 s3, #1.100000e+01               
8135163c  movs     r0, #0                          
8135163e  movs     r1, #0                          
81351640  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81351644  vstr     s0, [r5, #0x54]                   ; this.moveFight
81351648  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
8135164c  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81351650  b        #0x813512d6                     
81351652  movw     r0, #0x3878                     
81351656  movt     r0, #0x8151                       ; string_TypeInfo
8135165a  ldr      r0, [r0]                        
8135165c  ldrsb.w  r1, [r0, #0xc2]                 
81351660  ands     r1, r1, #1                      
81351664  beq      #0x8135166e                     
81351666  ldr      r1, [r0, #0x70]                 
81351668  cbnz     r1, #0x8135166e                 
8135166a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135166e  movw     r0, #0xb3c4                     
81351672  movt     r0, #0x8151                       ; str "LThrow"
81351676  ldr      r2, [r0]                        
81351678  adds     r1, r6, #0                      
8135167a  movs     r0, #0                          
8135167c  movs     r3, #0                          
8135167e  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81351682  cmp      r0, #0                          
81351684  beq.w    #0x813512d6                     
81351688  movs     r0, #1                          
8135168a  vldr     s1, [r5, #0x64]                   ; this.rot+4
8135168e  ldr      r1, [r5, #0x2c]                   ; this.character
81351690  movs     r2, #0                          
81351692  str      r0, [r5, #0x1c]                   ; this.action
81351694  movt     r2, #0x42b4                     
81351698  vmov     s2, r2                          
8135169c  movs     r0, #0                          
8135169e  vmov     s0, r0                          
813516a2  ldr      r4, [r1, #0x10]                 
813516a4  movs     r1, #0                          
813516a6  strd     r1, r1, [sp, #0x108]            
813516aa  add      r0, sp, #0x108                  
813516ac  vadd.f32 s1, s1, s2                      
813516b0  str      r1, [sp, #0x110]                
813516b2  movs     r1, #0                          
813516b4  vmov.f32 s2, s0                          
813516b8  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813516bc  vldr     s0, [sp, #0x108]                
813516c0  vldr     s1, [sp, #0x10c]                
813516c4  vldr     s2, [sp, #0x110]                
813516c8  adds     r0, r4, #0                      
813516ca  movs     r1, #0                          
813516cc  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813516d0  ldr      r0, [r5, #0x2c]                   ; this.character
813516d2  movs     r1, #0                          
813516d4  ldr      r0, [r0, #0x10]                 
813516d6  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
813516da  movw     r0, #0x45fc                     
813516de  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813516e2  vmov.f32 s16, s0                         
813516e6  vmov.f32 s18, s2                         
813516ea  vmov.f32 s17, s1                         
813516ee  ldr      r0, [r0]                        
813516f0  vstr     s16, [sp, #0xa8]                
813516f4  vstr     s18, [sp, #0xb0]                
813516f8  vstr     s17, [sp, #0xac]                
813516fc  ldrsb.w  r1, [r0, #0xc2]                 
81351700  ands     r1, r1, #1                      
81351704  beq      #0x8135170e                     
81351706  ldr      r1, [r0, #0x70]                 
81351708  cbnz     r1, #0x8135170e                 
8135170a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135170e  vmov.f32 s0, s16                         
81351712  vmov.f32 s1, s17                         
81351716  vmov.f32 s2, s18                         
8135171a  movs     r0, #0                          
8135171c  movs     r1, #0                          
8135171e  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81351722  vmov.f32 s3, #1.100000e+01               
81351726  movs     r0, #0                          
81351728  movs     r1, #0                          
8135172a  vstr     s0, [sp, #0xb4]                 
8135172e  vstr     s2, [sp, #0xbc]                 
81351732  vstr     s1, [sp, #0xb8]                 
81351736  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8135173a  vstr     s0, [r5, #0x54]                   ; this.moveFight
8135173e  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
81351742  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81351746  b        #0x813512d6                     
81351748  movs     r0, #0                          
8135174a  ldr      r1, [r5, #0x7c]                   ; this.components
8135174c  movw     r2, #0xb3ac                     
81351750  str      r0, [r5, #0x6c]                   ; this._jump
81351752  movt     r2, #0x8151                       ; str "jump"
81351756  ldr      r0, [r1, #0x14]                 
81351758  movs     r3, #0                          
8135175a  ldr      r1, [r2]                        
8135175c  movs     r2, #0                          
8135175e  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81351762  b        #0x813512d6                     
81351764  ldr      r1, [sp, #0x114]                
81351766  ldr.w    r0, [r8]                        
8135176a  cmp      r0, r1                          
8135176c  bne      #0x81351778                     
8135176e  add      sp, #0x118                      
81351770  vpop     {s16, s17, s18, s19}            
81351774  pop.w    {r4, r5, r6, r7, r8, pc}        
81351778  blx      #0x813e1118                       ; -> __stack_chk_fail
8135177c  nop                                      

; ==== controller$$Jump  @ 0x8135177e .. 0x813519f8
8135177e  push     {r4, r5, r6, r7, lr}            
81351780  vpush    {s16, s17, s18, s19}            
81351784  sub      sp, #0x4c                       
81351786  movw     r7, #0x2514                     
8135178a  movt     r7, #0x813e                       ; = 0x813e2514
8135178e  ldr      r2, [r7]                        
81351790  str      r2, [sp, #0x48]                 
81351792  movw     r2, #0x34da                     
81351796  movt     r2, #0x8151                       ; = 0x815134da
8135179a  ldrb     r2, [r2]                        
8135179c  adds     r5, r1, #0                      
8135179e  adds     r4, r0, #0                      
813517a0  cbnz     r2, #0x813517bc                 
813517a2  movw     r0, #0x3738                     
813517a6  movt     r0, #0x814c                       ; = 0x814c3738
813517aa  ldr      r0, [r0]                        
813517ac  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813517b0  movw     r0, #0x34da                     
813517b4  movt     r0, #0x8151                       ; = 0x815134da
813517b8  movs     r1, #1                          
813517ba  strb     r1, [r0]                        
813517bc  ldr      r0, [r4, #0x18]                   ; this.state
813517be  cmp      r0, #1                          
813517c0  beq.w    #0x81351948                     
813517c4  movs     r0, #0                          
813517c6  ldr      r1, [r4, #0x7c]                   ; this.components
813517c8  strb.w   r0, [r4, #0xa0]                   ; this.jumpBool
813517cc  movw     r0, #0xb3ac                     
813517d0  ldr      r1, [r1, #0x14]                 
813517d2  movt     r0, #0x8151                       ; str "jump"
813517d6  ldr      r2, [r0]                        
813517d8  adds     r0, r1, #0                      
813517da  adds     r1, r2, #0                      
813517dc  movs     r2, #0                          
813517de  movs     r3, #0                          
813517e0  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813517e4  movs     r0, #1                          
813517e6  str      r0, [r4, #0x6c]                   ; this._jump
813517e8  cmp      r5, #0                          
813517ea  bne.w    #0x81351988                     
813517ee  movw     r0, #0x45fc                     
813517f2  vldr     s18, [r4, #0x48]                  ; this.moveSpeed
813517f6  vldr     s17, [r4, #0x4c]                  ; this.moveSpeed+4
813517fa  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813517fe  ldr      r0, [r0]                        
81351800  vldr     s16, [r4, #0x50]                  ; this.moveSpeed+8
81351804  ldrsb.w  r1, [r0, #0xc2]                 
81351808  ands     r1, r1, #1                      
8135180c  beq      #0x81351816                     
8135180e  ldr      r1, [r0, #0x70]                 
81351810  cbnz     r1, #0x81351816                 
81351812  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351816  movs     r0, #0                          
81351818  movs     r1, #0                          
8135181a  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8135181e  movs     r0, #0                          
81351820  movs     r1, #0                          
81351822  vmov.f32 s3, s0                          
81351826  vmov.f32 s5, s2                          
8135182a  vmov.f32 s4, s1                          
8135182e  vmov.f32 s0, s18                         
81351832  vmov.f32 s1, s17                         
81351836  vmov.f32 s2, s16                         
8135183a  vstr     s3, [sp]                        
8135183e  vstr     s5, [sp, #8]                    
81351842  vstr     s4, [sp, #4]                    
81351846  bl       #0x8139b05e                       ; -> UnityEngine.Vector3$$op_Inequality
8135184a  cmp      r0, #0                          
8135184c  beq      #0x8135194a                     
8135184e  ldr      r0, [r4, #0x2c]                   ; this.character
81351850  movs     r1, #0                          
81351852  ldr      r0, [r0, #0x10]                 
81351854  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81351858  movw     r0, #0x45fc                     
8135185c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351860  vmov.f32 s19, s0                         
81351864  vmov.f32 s17, s2                         
81351868  vmov.f32 s18, s1                         
8135186c  ldr      r0, [r0]                        
8135186e  vstr     s19, [sp, #0xc]                 
81351872  vstr     s17, [sp, #0x14]                
81351876  vstr     s18, [sp, #0x10]                
8135187a  ldr      r1, [r4, #0x24]                   ; this.stats
8135187c  vldr     s16, [r1, #0x24]                
81351880  ldrsb.w  r1, [r0, #0xc2]                 
81351884  ands     r1, r1, #1                      
81351888  beq      #0x81351892                     
8135188a  ldr      r1, [r0, #0x70]                 
8135188c  cbnz     r1, #0x81351892                 
8135188e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351892  vmov.f32 s0, s19                         
81351896  vmov.f32 s1, s18                         
8135189a  vmov.f32 s2, s17                         
8135189e  vmov.f32 s3, s16                         
813518a2  movs     r0, #0                          
813518a4  movs     r1, #0                          
813518a6  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813518aa  vmov.f32 s19, s0                         
813518ae  vmov.f32 s5, s2                          
813518b2  vmov.f32 s4, s1                          
813518b6  vstr     s19, [sp, #0x18]                
813518ba  vstr     s5, [sp, #0x20]                 
813518be  vstr     s4, [sp, #0x1c]                 
813518c2  movw     r0, #0x45fc                     
813518c6  vstr     s19, [r4, #0x54]                  ; this.moveFight
813518ca  vstr     s4, [r4, #0x58]                   ; this.moveFight+4
813518ce  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813518d2  vstr     s5, [r4, #0x5c]                   ; this.moveFight+8
813518d6  ldr      r0, [r0]                        
813518d8  ldrsb.w  r1, [r0, #0xc2]                 
813518dc  ands     r1, r1, #1                      
813518e0  beq      #0x813518ea                     
813518e2  ldr      r1, [r0, #0x70]                 
813518e4  cbnz     r1, #0x813518ea                 
813518e6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813518ea  movs     r0, #0                          
813518ec  movs     r1, #0                          
813518ee  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813518f2  movs     r0, #0                          
813518f4  vstr     s0, [sp, #0x30]                 
813518f8  vstr     s2, [sp, #0x38]                 
813518fc  vstr     s1, [sp, #0x34]                 
81351900  vstr     s0, [r4, #0x48]                   ; this.moveSpeed
81351904  vstr     s1, [r4, #0x4c]                   ; this.moveSpeed+4
81351908  vstr     s2, [r4, #0x50]                   ; this.moveSpeed+8
8135190c  ldr      r1, [r4, #0x24]                   ; this.stats
8135190e  vldr     s0, [r1, #0x28]                 
81351912  ldr      r1, [r4, #0x2c]                   ; this.character
81351914  movs     r3, #0                          
81351916  str      r0, [r1, #0x34]                 
81351918  movs     r0, #0                          
8135191a  vstr     s0, [r1, #0x30]                 
8135191e  ldr      r2, [r4, #0xc]                    ; this.sounds
81351920  movs     r1, #0                          
81351922  ldr      r5, [r2, #0x1c]                 
81351924  ldr      r6, [r2, #8]                    
81351926  ldr      r2, [r5, #0xc]                  
81351928  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
8135192c  add.w    r0, r5, r0, lsl #2              
81351930  ldr      r1, [r0, #0x10]                 
81351932  adds     r0, r6, #0                      
81351934  movs     r2, #0                          
81351936  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
8135193a  ldr      r0, [r4, #0x7c]                   ; this.components
8135193c  movs     r2, #0                          
8135193e  ldr      r3, [r0, #0x28]                 
81351940  adds     r1, r3, #0                      
81351942  ldr      r0, [r0, #0x20]                 
81351944  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81351948  b        #0x813519e2                     
8135194a  movw     r0, #0x45fc                     
8135194e  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351952  ldr      r0, [r0]                        
81351954  ldrsb.w  r1, [r0, #0xc2]                 
81351958  ands     r1, r1, #1                      
8135195c  beq      #0x81351966                     
8135195e  ldr      r1, [r0, #0x70]                 
81351960  cbnz     r1, #0x81351966                 
81351962  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351966  movs     r0, #0                          
81351968  movs     r1, #0                          
8135196a  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8135196e  vmov.f32 s19, s0                         
81351972  vmov.f32 s5, s2                          
81351976  vmov.f32 s4, s1                          
8135197a  vstr     s19, [sp, #0x24]                
8135197e  vstr     s5, [sp, #0x2c]                 
81351982  vstr     s4, [sp, #0x28]                 
81351986  b        #0x813518c2                     
81351988  cmp      r5, #1                          
8135198a  bne      #0x81351948                     
8135198c  movw     r0, #0x45fc                     
81351990  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351994  ldr      r0, [r0]                        
81351996  ldrsb.w  r1, [r0, #0xc2]                 
8135199a  ands     r1, r1, #1                      
8135199e  beq      #0x813519a8                     
813519a0  ldr      r1, [r0, #0x70]                 
813519a2  cbnz     r1, #0x813519a8                 
813519a4  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813519a8  movs     r0, #0                          
813519aa  movs     r1, #0                          
813519ac  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813519b0  vmov.f32 s3, #5.000000e-01               
813519b4  movs     r0, #0                          
813519b6  vstr     s0, [sp, #0x3c]                 
813519ba  vstr     s2, [sp, #0x44]                 
813519be  vstr     s1, [sp, #0x40]                 
813519c2  vstr     s0, [r4, #0x48]                   ; this.moveSpeed
813519c6  vstr     s1, [r4, #0x4c]                   ; this.moveSpeed+4
813519ca  vstr     s2, [r4, #0x50]                   ; this.moveSpeed+8
813519ce  ldr      r1, [r4, #0x24]                   ; this.stats
813519d0  vldr     s0, [r1, #0x28]                 
813519d4  ldr      r1, [r4, #0x2c]                   ; this.character
813519d6  str      r0, [r1, #0x34]                 
813519d8  vmul.f32 s0, s0, s3                      
813519dc  vstr     s0, [r1, #0x30]                 
813519e0  b        #0x81351948                     
813519e2  ldr      r1, [sp, #0x48]                 
813519e4  ldr      r0, [r7]                        
813519e6  cmp      r0, r1                          
813519e8  bne      #0x813519f2                     
813519ea  add      sp, #0x4c                       
813519ec  vpop     {s16, s17, s18, s19}            
813519f0  pop      {r4, r5, r6, r7, pc}            
813519f2  blx      #0x813e1118                       ; -> __stack_chk_fail
813519f6  nop                                      

; ==== controller$$Dash  @ 0x813519f8 .. 0x81351e2c
813519f8  push     {r4, r5, r6, lr}                
813519fa  vpush    {s16, s17, s18, s19, s20, s21}  
813519fe  sub      sp, #0xf0                       
81351a00  movw     r6, #0x2514                     
81351a04  movt     r6, #0x813e                       ; = 0x813e2514
81351a08  ldr      r1, [r6]                        
81351a0a  str      r1, [sp, #0xe8]                 
81351a0c  movw     r1, #0x34db                     
81351a10  movt     r1, #0x8151                       ; = 0x815134db
81351a14  ldrb     r1, [r1]                        
81351a16  adds     r5, r0, #0                      
81351a18  cbnz     r1, #0x81351a34                 
81351a1a  movw     r0, #0x372c                     
81351a1e  movt     r0, #0x814c                       ; = 0x814c372c
81351a22  ldr      r0, [r0]                        
81351a24  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81351a28  movw     r0, #0x34db                     
81351a2c  movt     r0, #0x8151                       ; = 0x815134db
81351a30  movs     r1, #1                          
81351a32  strb     r1, [r0]                        
81351a34  ldr      r0, [r5, #0x18]                   ; this.state
81351a36  cmp      r0, #1                          
81351a38  beq.w    #0x81351cbe                     
81351a3c  movw     r0, #0x45fc                     
81351a40  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351a44  ldr      r0, [r0]                        
81351a46  movs     r2, #0                          
81351a48  movs     r3, #0                          
81351a4a  strd     r2, r3, [sp, #0xe0]             
81351a4e  strd     r2, r3, [sp, #0xd8]             
81351a52  strd     r2, r3, [sp, #0xd0]             
81351a56  strd     r2, r3, [sp, #0xc8]             
81351a5a  ldrsb.w  r1, [r0, #0xc2]                 
81351a5e  ands     r1, r1, #1                      
81351a62  beq      #0x81351a6c                     
81351a64  ldr      r1, [r0, #0x70]                 
81351a66  cbnz     r1, #0x81351a6c                 
81351a68  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351a6c  movs     r4, #0                          
81351a6e  movs     r0, #0                          
81351a70  movs     r1, #0                          
81351a72  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81351a76  movs     r0, #1                          
81351a78  movw     r1, #0xb3ac                     
81351a7c  vstr     s0, [sp]                        
81351a80  vstr     s2, [sp, #8]                    
81351a84  vstr     s1, [sp, #4]                    
81351a88  vstr     s0, [r5, #0x54]                   ; this.moveFight
81351a8c  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81351a90  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
81351a94  str      r0, [r5, #0x6c]                   ; this._jump
81351a96  movt     r1, #0x8151                       ; str "jump"
81351a9a  ldr      r0, [r5, #0x7c]                   ; this.components
81351a9c  movs     r2, #0                          
81351a9e  strb.w   r4, [r5, #0xa0]                   ; this.jumpBool
81351aa2  movs     r3, #0                          
81351aa4  ldr      r0, [r0, #0x14]                 
81351aa6  ldr      r1, [r1]                        
81351aa8  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81351aac  ldr      r0, [r5, #0x7c]                   ; this.components
81351aae  movw     r1, #0xb394                     
81351ab2  str      r4, [r5, #0x1c]                   ; this.action
81351ab4  movt     r1, #0x8151                       ; str "hit"
81351ab8  ldr      r0, [r0, #0x14]                 
81351aba  movs     r2, #0                          
81351abc  ldr      r1, [r1]                        
81351abe  movs     r3, #0                          
81351ac0  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81351ac4  ldr      r0, [r5, #0x7c]                   ; this.components
81351ac6  movw     r1, #0x9848                     
81351aca  ldr      r0, [r0, #0x14]                 
81351acc  movt     r1, #0x8151                       ; str "throw"
81351ad0  ldr      r1, [r1]                        
81351ad2  movs     r2, #0                          
81351ad4  movs     r3, #0                          
81351ad6  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81351ada  ldrb.w   r0, [r5, #0x38]                   ; this.move
81351ade  cmp      r0, #0                          
81351ae0  bne.w    #0x81351cc0                     
81351ae4  movw     r0, #0x461c                     
81351ae8  ldr      r4, [r5, #0x30]                   ; this.target
81351aea  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81351aee  ldr      r4, [r4, #0x34]                 
81351af0  ldr      r0, [r0]                        
81351af2  ldrsb.w  r1, [r0, #0xc2]                 
81351af6  ands     r1, r1, #1                      
81351afa  beq      #0x81351b04                     
81351afc  ldr      r1, [r0, #0x70]                 
81351afe  cbnz     r1, #0x81351b04                 
81351b00  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351b04  movs     r0, #0                          
81351b06  adds     r1, r4, #0                      
81351b08  movs     r2, #0                          
81351b0a  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81351b0e  cmp      r0, #0                          
81351b10  beq.w    #0x81351cf8                     
81351b14  ldr      r4, [r5, #0x2c]                   ; this.character
81351b16  movs     r1, #0                          
81351b18  ldr      r4, [r4, #0x10]                 
81351b1a  adds     r0, r4, #0                      
81351b1c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81351b20  movs     r1, #0                          
81351b22  vmov.f32 s16, s0                         
81351b26  vmov.f32 s18, s2                         
81351b2a  vmov.f32 s17, s1                         
81351b2e  vstr     s16, [sp, #0xc]                 
81351b32  vstr     s18, [sp, #0x14]                
81351b36  vstr     s17, [sp, #0x10]                
81351b3a  ldr      r0, [r5, #0x30]                   ; this.target
81351b3c  ldr      r0, [r0, #0x34]                 
81351b3e  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81351b42  movw     r0, #0x45fc                     
81351b46  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351b4a  vmov.f32 s19, s0                         
81351b4e  vmov.f32 s21, s2                         
81351b52  vmov.f32 s20, s1                         
81351b56  ldr      r0, [r0]                        
81351b58  vstr     s19, [sp, #0x18]                
81351b5c  vstr     s21, [sp, #0x20]                
81351b60  vstr     s20, [sp, #0x1c]                
81351b64  ldrsb.w  r1, [r0, #0xc2]                 
81351b68  ands     r1, r1, #1                      
81351b6c  beq      #0x81351b76                     
81351b6e  ldr      r1, [r0, #0x70]                 
81351b70  cbnz     r1, #0x81351b76                 
81351b72  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351b76  vmov.f32 s0, s16                         
81351b7a  vmov.f32 s1, s17                         
81351b7e  vmov.f32 s2, s18                         
81351b82  vmov.f32 s3, s19                         
81351b86  vmov.f32 s4, s20                         
81351b8a  vmov.f32 s5, s21                         
81351b8e  movs     r0, #0                          
81351b90  movs     r1, #0                          
81351b92  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81351b96  movs     r0, #0                          
81351b98  movs     r1, #0                          
81351b9a  vstr     s0, [sp, #0x24]                 
81351b9e  vstr     s2, [sp, #0x2c]                 
81351ba2  vstr     s1, [sp, #0x28]                 
81351ba6  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81351baa  movw     r0, #0x4710                     
81351bae  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81351bb2  vmov.f32 s16, s0                         
81351bb6  vmov.f32 s18, s2                         
81351bba  vmov.f32 s17, s1                         
81351bbe  ldr      r0, [r0]                        
81351bc0  vstr     s16, [sp, #0x30]                
81351bc4  vstr     s18, [sp, #0x38]                
81351bc8  vstr     s17, [sp, #0x34]                
81351bcc  ldrsb.w  r1, [r0, #0xc2]                 
81351bd0  ands     r1, r1, #1                      
81351bd4  beq      #0x81351bde                     
81351bd6  ldr      r1, [r0, #0x70]                 
81351bd8  cbnz     r1, #0x81351bde                 
81351bda  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351bde  vmov.f32 s0, s16                         
81351be2  vmov.f32 s1, s17                         
81351be6  vmov.f32 s2, s18                         
81351bea  movs     r0, #0                          
81351bec  movs     r1, #0                          
81351bee  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81351bf2  add      r0, sp, #0xc8                   
81351bf4  movs     r1, #0                          
81351bf6  vstr     s0, [sp, #0x3c]                 
81351bfa  vstr     s3, [sp, #0x48]                 
81351bfe  vstr     s1, [sp, #0x40]                 
81351c02  vstr     s2, [sp, #0x44]                 
81351c06  vstr     s0, [sp, #0xc8]                 
81351c0a  vstr     s1, [sp, #0xcc]                 
81351c0e  vstr     s2, [sp, #0xd0]                 
81351c12  vstr     s3, [sp, #0xd4]                 
81351c16  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81351c1a  adds     r0, r4, #0                      
81351c1c  movs     r1, #0                          
81351c1e  vstr     s0, [sp, #0x4c]                 
81351c22  vstr     s2, [sp, #0x54]                 
81351c26  vstr     s1, [sp, #0x50]                 
81351c2a  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81351c2e  movw     r0, #0x3333                     
81351c32  ldr      r1, [r5, #0x2c]                   ; this.character
81351c34  movt     r0, #0x3eb3                       ; = 0x3eb33333
81351c38  str      r0, [r1, #0x34]                 
81351c3a  movs     r0, #0                          
81351c3c  str      r0, [r1, #0x30]                 
81351c3e  movs     r1, #0                          
81351c40  ldr      r0, [r5, #0x2c]                   ; this.character
81351c42  ldr      r0, [r0, #0x10]                 
81351c44  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81351c48  movw     r0, #0x45fc                     
81351c4c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351c50  vmov.f32 s16, s0                         
81351c54  vmov.f32 s18, s2                         
81351c58  vmov.f32 s17, s1                         
81351c5c  ldr      r0, [r0]                        
81351c5e  vstr     s16, [sp, #0xa4]                
81351c62  vstr     s18, [sp, #0xac]                
81351c66  vstr     s17, [sp, #0xa8]                
81351c6a  ldr      r1, [r5, #0x24]                   ; this.stats
81351c6c  vldr     s19, [r1, #0x2c]                
81351c70  ldrsb.w  r1, [r0, #0xc2]                 
81351c74  ands     r1, r1, #1                      
81351c78  beq      #0x81351c82                     
81351c7a  ldr      r1, [r0, #0x70]                 
81351c7c  cbnz     r1, #0x81351c82                 
81351c7e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351c82  vmov.f32 s0, s16                         
81351c86  vmov.f32 s1, s17                         
81351c8a  vmov.f32 s2, s18                         
81351c8e  vmov.f32 s3, s19                         
81351c92  movs     r0, #0                          
81351c94  movs     r1, #0                          
81351c96  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81351c9a  movs     r2, #0                          
81351c9c  vstr     s0, [sp, #0xb0]                 
81351ca0  vstr     s2, [sp, #0xb8]                 
81351ca4  vstr     s1, [sp, #0xb4]                 
81351ca8  vstr     s0, [r5, #0x48]                   ; this.moveSpeed
81351cac  vstr     s1, [r5, #0x4c]                   ; this.moveSpeed+4
81351cb0  ldr      r1, [r5, #0x7c]                   ; this.components
81351cb2  vstr     s2, [r5, #0x50]                   ; this.moveSpeed+8
81351cb6  ldr      r0, [r1, #0x20]                 
81351cb8  ldr      r1, [r1, #0x28]                 
81351cba  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81351cbe  b        #0x81351e16                     
81351cc0  movs     r1, #0                          
81351cc2  vmov     s0, r1                          
81351cc6  vldr     s1, [r5, #0x64]                   ; this.rot+4
81351cca  ldr      r0, [r5, #0x2c]                   ; this.character
81351ccc  movs     r2, #0                          
81351cce  ldr      r4, [r0, #0x10]                 
81351cd0  add      r0, sp, #0xbc                   
81351cd2  strd     r2, r2, [sp, #0xbc]             
81351cd6  movs     r1, #0                          
81351cd8  vmov.f32 s2, s0                          
81351cdc  str      r2, [sp, #0xc4]                 
81351cde  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81351ce2  vldr     s0, [sp, #0xbc]                 
81351ce6  vldr     s1, [sp, #0xc0]                 
81351cea  vldr     s2, [sp, #0xc4]                 
81351cee  adds     r0, r4, #0                      
81351cf0  movs     r1, #0                          
81351cf2  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81351cf6  b        #0x81351c2e                     
81351cf8  ldr      r4, [r5, #0x2c]                   ; this.character
81351cfa  movs     r1, #0                          
81351cfc  ldr      r4, [r4, #0x10]                 
81351cfe  adds     r0, r4, #0                      
81351d00  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81351d04  movs     r1, #0                          
81351d06  vmov.f32 s16, s0                         
81351d0a  vmov.f32 s18, s2                         
81351d0e  vmov.f32 s17, s1                         
81351d12  vstr     s16, [sp, #0x58]                
81351d16  vstr     s18, [sp, #0x60]                
81351d1a  vstr     s17, [sp, #0x5c]                
81351d1e  ldr      r0, [r5, #0x30]                   ; this.target
81351d20  ldr      r2, [r0, #0x2c]                 
81351d22  ldr      r0, [r2, #0x10]                 
81351d24  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81351d28  movw     r0, #0x45fc                     
81351d2c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351d30  vmov.f32 s19, s0                         
81351d34  vmov.f32 s21, s2                         
81351d38  vmov.f32 s20, s1                         
81351d3c  ldr      r0, [r0]                        
81351d3e  vstr     s19, [sp, #0x64]                
81351d42  vstr     s21, [sp, #0x6c]                
81351d46  vstr     s20, [sp, #0x68]                
81351d4a  ldrsb.w  r1, [r0, #0xc2]                 
81351d4e  ands     r1, r1, #1                      
81351d52  beq      #0x81351d5c                     
81351d54  ldr      r1, [r0, #0x70]                 
81351d56  cbnz     r1, #0x81351d5c                 
81351d58  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351d5c  vmov.f32 s0, s16                         
81351d60  vmov.f32 s1, s17                         
81351d64  vmov.f32 s2, s18                         
81351d68  vmov.f32 s3, s19                         
81351d6c  vmov.f32 s4, s20                         
81351d70  vmov.f32 s5, s21                         
81351d74  movs     r0, #0                          
81351d76  movs     r1, #0                          
81351d78  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81351d7c  movs     r0, #0                          
81351d7e  movs     r1, #0                          
81351d80  vstr     s0, [sp, #0x70]                 
81351d84  vstr     s2, [sp, #0x78]                 
81351d88  vstr     s1, [sp, #0x74]                 
81351d8c  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81351d90  movw     r0, #0x4710                     
81351d94  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81351d98  vmov.f32 s16, s0                         
81351d9c  vmov.f32 s18, s2                         
81351da0  vmov.f32 s17, s1                         
81351da4  ldr      r0, [r0]                        
81351da6  vstr     s16, [sp, #0x7c]                
81351daa  vstr     s18, [sp, #0x84]                
81351dae  vstr     s17, [sp, #0x80]                
81351db2  ldrsb.w  r1, [r0, #0xc2]                 
81351db6  ands     r1, r1, #1                      
81351dba  beq      #0x81351dc4                     
81351dbc  ldr      r1, [r0, #0x70]                 
81351dbe  cbnz     r1, #0x81351dc4                 
81351dc0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351dc4  vmov.f32 s0, s16                         
81351dc8  vmov.f32 s1, s17                         
81351dcc  vmov.f32 s2, s18                         
81351dd0  movs     r0, #0                          
81351dd2  movs     r1, #0                          
81351dd4  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81351dd8  add      r0, sp, #0xd8                   
81351dda  movs     r1, #0                          
81351ddc  vstr     s0, [sp, #0x88]                 
81351de0  vstr     s3, [sp, #0x94]                 
81351de4  vstr     s1, [sp, #0x8c]                 
81351de8  vstr     s2, [sp, #0x90]                 
81351dec  vstr     s0, [sp, #0xd8]                 
81351df0  vstr     s1, [sp, #0xdc]                 
81351df4  vstr     s2, [sp, #0xe0]                 
81351df8  vstr     s3, [sp, #0xe4]                 
81351dfc  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81351e00  adds     r0, r4, #0                      
81351e02  movs     r1, #0                          
81351e04  vstr     s0, [sp, #0x98]                 
81351e08  vstr     s2, [sp, #0xa0]                 
81351e0c  vstr     s1, [sp, #0x9c]                 
81351e10  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81351e14  b        #0x81351c2e                     
81351e16  ldr      r1, [sp, #0xe8]                 
81351e18  ldr      r0, [r6]                        
81351e1a  cmp      r0, r1                          
81351e1c  bne      #0x81351e26                     
81351e1e  add      sp, #0xf0                       
81351e20  vpop     {s16, s17, s18, s19, s20, s21}  
81351e24  pop      {r4, r5, r6, pc}                
81351e26  blx      #0x813e1118                       ; -> __stack_chk_fail
81351e2a  nop                                      

; ==== controller$$Throw  @ 0x81351e2c .. 0x813524ee
81351e2c  push     {r4, r5, r6, r7, lr}            
81351e2e  vpush    {s16, s17, s18, s19, s20, s21, s22, s23}
81351e32  sub      sp, #0x14c                      
81351e34  movw     r7, #0x2514                     
81351e38  movt     r7, #0x813e                       ; = 0x813e2514
81351e3c  ldr      r2, [r7]                        
81351e3e  str      r2, [sp, #0x148]                
81351e40  movw     r2, #0x34dc                     
81351e44  movt     r2, #0x8151                       ; = 0x815134dc
81351e48  ldrb     r2, [r2]                        
81351e4a  adds     r6, r1, #0                      
81351e4c  adds     r5, r0, #0                      
81351e4e  cbnz     r2, #0x81351e6a                 
81351e50  movw     r0, #0x3748                     
81351e54  movt     r0, #0x814c                       ; = 0x814c3748
81351e58  ldr      r0, [r0]                        
81351e5a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81351e5e  movw     r0, #0x34dc                     
81351e62  movt     r0, #0x8151                       ; = 0x815134dc
81351e66  movs     r1, #1                          
81351e68  strb     r1, [r0]                        
81351e6a  movs     r0, #0                          
81351e6c  movs     r1, #0                          
81351e6e  strd     r0, r1, [sp, #0x128]            
81351e72  strd     r0, r1, [sp, #0x130]            
81351e76  strd     r0, r1, [sp, #0x138]            
81351e7a  strd     r0, r1, [sp, #0x140]            
81351e7e  ldr      r0, [r5, #0x18]                   ; this.state
81351e80  cmp      r0, #1                          
81351e82  beq.w    #0x81352370                     
81351e86  movs     r0, #1                          
81351e88  ldr.w    r4, [r5, #0x90]                   ; this.thisAttack
81351e8c  str      r0, [r5, #0x1c]                   ; this.action
81351e8e  cbz      r4, #0x81351eca                 
81351e90  movw     r0, #0x461c                     
81351e94  ldr      r4, [r4, #0x20]                 
81351e96  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81351e9a  ldr      r0, [r0]                        
81351e9c  ldrsb.w  r1, [r0, #0xc2]                 
81351ea0  ands     r1, r1, #1                      
81351ea4  beq      #0x81351eae                     
81351ea6  ldr      r1, [r0, #0x70]                 
81351ea8  cbnz     r1, #0x81351eae                 
81351eaa  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351eae  movs     r0, #0                          
81351eb0  adds     r1, r4, #0                      
81351eb2  movs     r2, #0                          
81351eb4  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81351eb8  cmp      r0, #0                          
81351eba  beq      #0x81351eca                     
81351ebc  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
81351ec0  movs     r1, #0                          
81351ec2  ldr      r0, [r0, #0x20]                 
81351ec4  movs     r2, #0                          
81351ec6  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81351eca  movw     r0, #0x461c                     
81351ece  ldr      r4, [r5, #0x30]                   ; this.target
81351ed0  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81351ed4  ldr      r4, [r4, #0x34]                 
81351ed6  ldr      r0, [r0]                        
81351ed8  ldrsb.w  r1, [r0, #0xc2]                 
81351edc  ands     r1, r1, #1                      
81351ee0  beq      #0x81351eea                     
81351ee2  ldr      r1, [r0, #0x70]                 
81351ee4  cbnz     r1, #0x81351eea                 
81351ee6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351eea  movs     r0, #0                          
81351eec  adds     r1, r4, #0                      
81351eee  movs     r2, #0                          
81351ef0  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81351ef4  cmp      r0, #0                          
81351ef6  beq.w    #0x81352394                     
81351efa  ldr      r4, [r5, #0x2c]                   ; this.character
81351efc  movs     r1, #0                          
81351efe  ldr      r4, [r4, #0x10]                 
81351f00  adds     r0, r4, #0                      
81351f02  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81351f06  movs     r1, #0                          
81351f08  vmov.f32 s16, s0                         
81351f0c  vmov.f32 s18, s2                         
81351f10  vmov.f32 s17, s1                         
81351f14  vstr     s16, [sp]                       
81351f18  vstr     s18, [sp, #8]                   
81351f1c  vstr     s17, [sp, #4]                   
81351f20  ldr      r0, [r5, #0x30]                   ; this.target
81351f22  ldr      r0, [r0, #0x34]                 
81351f24  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81351f28  movw     r0, #0x45fc                     
81351f2c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81351f30  vmov.f32 s19, s0                         
81351f34  vmov.f32 s21, s2                         
81351f38  vmov.f32 s20, s1                         
81351f3c  ldr      r0, [r0]                        
81351f3e  vstr     s19, [sp, #0xc]                 
81351f42  vstr     s21, [sp, #0x14]                
81351f46  vstr     s20, [sp, #0x10]                
81351f4a  ldrsb.w  r1, [r0, #0xc2]                 
81351f4e  ands     r1, r1, #1                      
81351f52  beq      #0x81351f5c                     
81351f54  ldr      r1, [r0, #0x70]                 
81351f56  cbnz     r1, #0x81351f5c                 
81351f58  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351f5c  vmov.f32 s0, s16                         
81351f60  vmov.f32 s1, s17                         
81351f64  vmov.f32 s2, s18                         
81351f68  vmov.f32 s3, s19                         
81351f6c  vmov.f32 s4, s20                         
81351f70  vmov.f32 s5, s21                         
81351f74  movs     r0, #0                          
81351f76  movs     r1, #0                          
81351f78  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81351f7c  movs     r0, #0                          
81351f7e  movs     r1, #0                          
81351f80  vstr     s0, [sp, #0x18]                 
81351f84  vstr     s2, [sp, #0x20]                 
81351f88  vstr     s1, [sp, #0x1c]                 
81351f8c  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81351f90  movw     r0, #0x4710                     
81351f94  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81351f98  vmov.f32 s16, s0                         
81351f9c  vmov.f32 s18, s2                         
81351fa0  vmov.f32 s17, s1                         
81351fa4  ldr      r0, [r0]                        
81351fa6  vstr     s16, [sp, #0x24]                
81351faa  vstr     s18, [sp, #0x2c]                
81351fae  vstr     s17, [sp, #0x28]                
81351fb2  ldrsb.w  r1, [r0, #0xc2]                 
81351fb6  ands     r1, r1, #1                      
81351fba  beq      #0x81351fc4                     
81351fbc  ldr      r1, [r0, #0x70]                 
81351fbe  cbnz     r1, #0x81351fc4                 
81351fc0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81351fc4  vmov.f32 s0, s16                         
81351fc8  vmov.f32 s1, s17                         
81351fcc  vmov.f32 s2, s18                         
81351fd0  movs     r0, #0                          
81351fd2  movs     r1, #0                          
81351fd4  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81351fd8  add      r0, sp, #0x128                  
81351fda  movs     r1, #0                          
81351fdc  vstr     s0, [sp, #0x30]                 
81351fe0  vstr     s3, [sp, #0x3c]                 
81351fe4  vstr     s1, [sp, #0x34]                 
81351fe8  vstr     s2, [sp, #0x38]                 
81351fec  vstr     s0, [sp, #0x128]                
81351ff0  vstr     s1, [sp, #0x12c]                
81351ff4  vstr     s2, [sp, #0x130]                
81351ff8  vstr     s3, [sp, #0x134]                
81351ffc  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81352000  movs     r0, #0                          
81352002  movs     r2, #0                          
81352004  vstr     s0, [sp, #0x40]                 
81352008  vmov     s0, r0                          
8135200c  vstr     s1, [sp, #0x44]                 
81352010  vstr     s2, [sp, #0x48]                 
81352014  strd     r2, r2, [sp, #0x10c]            
81352018  add      r0, sp, #0x10c                  
8135201a  str      r2, [sp, #0x114]                
8135201c  movs     r1, #0                          
8135201e  vmov.f32 s2, s0                          
81352022  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81352026  vldr     s0, [sp, #0x10c]                
8135202a  vldr     s1, [sp, #0x110]                
8135202e  vldr     s2, [sp, #0x114]                
81352032  adds     r0, r4, #0                      
81352034  movs     r1, #0                          
81352036  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8135203a  cmp      r6, #0                          
8135203c  beq.w    #0x81352372                     
81352040  ldr      r1, [r5, #0x7c]                   ; this.components
81352042  movs     r2, #0                          
81352044  ldr      r0, [r1, #0x20]                 
81352046  ldr      r1, [r1, #0x44]                 
81352048  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
8135204c  ldr      r0, [r5, #0x7c]                   ; this.components
8135204e  ldr      r4, [r0, #0x50]                 
81352050  ldr.w    r6, [r5, #0x90]                   ; this.thisAttack
81352054  cbz      r6, #0x81352088                 
81352056  movw     r0, #0x461c                     
8135205a  ldr      r6, [r6, #0x24]                 
8135205c  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81352060  ldr      r0, [r0]                        
81352062  ldrsb.w  r1, [r0, #0xc2]                 
81352066  ands     r1, r1, #1                      
8135206a  beq      #0x81352074                     
8135206c  ldr      r1, [r0, #0x70]                 
8135206e  cbnz     r1, #0x81352074                 
81352070  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352074  movs     r0, #0                          
81352076  adds     r1, r6, #0                      
81352078  movs     r2, #0                          
8135207a  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
8135207e  cmp      r0, #0                          
81352080  beq      #0x81352088                     
81352082  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
81352086  ldr      r4, [r0, #0x24]                 
81352088  ldr      r0, [r5, #0x10]                   ; this.bones
8135208a  movs     r1, #0                          
8135208c  ldr      r0, [r0, #0xc]                  
8135208e  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81352092  adds     r0, r5, #0                      
81352094  movs     r1, #0                          
81352096  vmov.f32 s16, s0                         
8135209a  vmov.f32 s18, s2                         
8135209e  vmov.f32 s17, s1                         
813520a2  vstr     s16, [sp, #0x98]                
813520a6  vstr     s18, [sp, #0xa0]                
813520aa  vstr     s17, [sp, #0x9c]                
813520ae  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
813520b2  movs     r1, #0                          
813520b4  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
813520b8  movw     r0, #0x45fc                     
813520bc  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813520c0  vmov.f32 s19, s0                         
813520c4  vmov.f32 s21, s2                         
813520c8  vmov.f32 s20, s1                         
813520cc  ldr      r0, [r0]                        
813520ce  vstr     s19, [sp, #0xa4]                
813520d2  vstr     s21, [sp, #0xac]                
813520d6  vstr     s20, [sp, #0xa8]                
813520da  ldrsb.w  r1, [r0, #0xc2]                 
813520de  ands     r1, r1, #1                      
813520e2  beq      #0x813520ec                     
813520e4  ldr      r1, [r0, #0x70]                 
813520e6  cbnz     r1, #0x813520ec                 
813520e8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813520ec  movw     r0, #0xcccd                     
813520f0  vmov.f32 s0, s19                         
813520f4  vmov.f32 s1, s20                         
813520f8  movt     r0, #0x3f0c                       ; = 0x3f0ccccd
813520fc  vmov.f32 s2, s21                         
81352100  vmov     s3, r0                          
81352104  movs     r0, #0                          
81352106  movs     r1, #0                          
81352108  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8135210c  movs     r0, #0                          
8135210e  movs     r1, #0                          
81352110  vmov.f32 s3, s0                          
81352114  vmov.f32 s5, s2                          
81352118  vmov.f32 s4, s1                          
8135211c  vmov.f32 s0, s16                         
81352120  vmov.f32 s1, s17                         
81352124  vmov.f32 s2, s18                         
81352128  vstr     s3, [sp, #0xb0]                 
8135212c  vstr     s5, [sp, #0xb8]                 
81352130  vstr     s4, [sp, #0xb4]                 
81352134  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81352138  movw     r0, #0x4710                     
8135213c  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81352140  vmov.f32 s16, s0                         
81352144  vmov.f32 s18, s2                         
81352148  vmov.f32 s17, s1                         
8135214c  ldr      r0, [r0]                        
8135214e  vstr     s16, [sp, #0xbc]                
81352152  vstr     s18, [sp, #0xc4]                
81352156  vstr     s17, [sp, #0xc0]                
8135215a  ldrsb.w  r1, [r0, #0xc2]                 
8135215e  ands     r1, r1, #1                      
81352162  beq      #0x8135216c                     
81352164  ldr      r1, [r0, #0x70]                 
81352166  cbnz     r1, #0x8135216c                 
81352168  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135216c  movs     r0, #0                          
8135216e  movs     r1, #0                          
81352170  bl       #0x812f33f8                       ; -> UnityEngine.Quaternion$$get_identity
81352174  movw     r0, #0x461c                     
81352178  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
8135217c  vmov.f32 s19, s0                         
81352180  vmov.f32 s22, s3                         
81352184  vmov.f32 s20, s1                         
81352188  vmov.f32 s21, s2                         
8135218c  ldr      r0, [r0]                        
8135218e  vstr     s19, [sp, #0xc8]                
81352192  vstr     s22, [sp, #0xd4]                
81352196  vstr     s20, [sp, #0xcc]                
8135219a  vstr     s21, [sp, #0xd0]                
8135219e  ldrsb.w  r1, [r0, #0xc2]                 
813521a2  ands     r1, r1, #1                      
813521a6  beq      #0x813521b0                     
813521a8  ldr      r1, [r0, #0x70]                 
813521aa  cbnz     r1, #0x813521b0                 
813521ac  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813521b0  movw     r0, #0x4cf8                     
813521b4  vmov.f32 s0, s16                         
813521b8  vmov.f32 s1, s17                         
813521bc  movt     r0, #0x8151                       ; Method$UnityEngine.Object.Instantiate<GameObject>()
813521c0  vmov.f32 s2, s18                         
813521c4  ldr      r2, [r0]                        
813521c6  adds     r1, r4, #0                      
813521c8  vmov.f32 s3, s19                         
813521cc  vmov.f32 s4, s20                         
813521d0  vmov.f32 s5, s21                         
813521d4  vmov.f32 s6, s22                         
813521d8  movs     r0, #0                          
813521da  bl       #0x81260366                       ; -> UnityEngine.Object$$Instantiate<GameObject>
813521de  movw     r1, #0x4cec                     
813521e2  movt     r1, #0x8151                       ; Method$UnityEngine.GameObject.GetComponent<throwingObject>()
813521e6  ldr      r1, [r1]                        
813521e8  bl       #0x8126005c                       ; -> UnityEngine.GameObject$$GetComponent<Camera>
813521ec  ldr      r1, [r5, #0x30]                   ; this.target
813521ee  adds     r6, r0, #0                      
813521f0  ldr      r1, [r1, #0x34]                 
813521f2  movs     r0, #0                          
813521f4  movs     r2, #0                          
813521f6  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813521fa  cmp      r0, #0                          
813521fc  bne      #0x81352206                     
813521fe  ldr      r0, [r5, #0x30]                   ; this.target
81352200  ldr      r1, [r0, #0x2c]                 
81352202  ldr      r0, [r1, #0x10]                 
81352204  b        #0x8135220a                     
81352206  ldr      r0, [r5, #0x30]                   ; this.target
81352208  ldr      r0, [r0, #0x34]                 
8135220a  str      r0, [r6, #0x2c]                 
8135220c  movs     r1, #0                          
8135220e  str      r5, [r6, #0x14]                 
81352210  ldr      r0, [r5, #0x30]                   ; this.target
81352212  str      r0, [r6, #0x30]                 
81352214  ldr      r0, [r5, #0x10]                   ; this.bones
81352216  ldr      r0, [r0, #0xc]                  
81352218  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135221c  adds     r0, r5, #0                      
8135221e  movs     r1, #0                          
81352220  vmov.f32 s16, s0                         
81352224  vmov.f32 s18, s2                         
81352228  vmov.f32 s17, s1                         
8135222c  vstr     s16, [sp, #0xd8]                
81352230  vstr     s18, [sp, #0xe0]                
81352234  vstr     s17, [sp, #0xdc]                
81352238  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8135223c  movs     r1, #0                          
8135223e  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81352242  movw     r0, #0x45fc                     
81352246  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8135224a  vmov.f32 s19, s0                         
8135224e  vmov.f32 s21, s2                         
81352252  vmov.f32 s20, s1                         
81352256  ldr      r0, [r0]                        
81352258  vstr     s19, [sp, #0xe4]                
8135225c  vstr     s21, [sp, #0xec]                
81352260  vstr     s20, [sp, #0xe8]                
81352264  ldrsb.w  r1, [r0, #0xc2]                 
81352268  ands     r1, r1, #1                      
8135226c  beq      #0x81352276                     
8135226e  ldr      r1, [r0, #0x70]                 
81352270  cbnz     r1, #0x81352276                 
81352272  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352276  vmov.f32 s0, s16                         
8135227a  vmov.f32 s1, s17                         
8135227e  vmov.f32 s2, s18                         
81352282  vmov.f32 s3, s19                         
81352286  vmov.f32 s4, s20                         
8135228a  vmov.f32 s5, s21                         
8135228e  movs     r0, #0                          
81352290  movs     r1, #0                          
81352292  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81352296  movw     r0, #0x4710                     
8135229a  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
8135229e  vmov.f32 s16, s0                         
813522a2  vmov.f32 s18, s2                         
813522a6  vmov.f32 s17, s1                         
813522aa  ldr      r0, [r0]                        
813522ac  vstr     s16, [sp, #0xf0]                
813522b0  vstr     s18, [sp, #0xf8]                
813522b4  vstr     s17, [sp, #0xf4]                
813522b8  ldrsb.w  r1, [r0, #0xc2]                 
813522bc  ands     r1, r1, #1                      
813522c0  beq      #0x813522ca                     
813522c2  ldr      r1, [r0, #0x70]                 
813522c4  cbnz     r1, #0x813522ca                 
813522c6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813522ca  movs     r0, #0                          
813522cc  movs     r1, #0                          
813522ce  bl       #0x812f33f8                       ; -> UnityEngine.Quaternion$$get_identity
813522d2  movw     r0, #0x461c                     
813522d6  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
813522da  vmov.f32 s19, s0                         
813522de  vmov.f32 s22, s3                         
813522e2  vmov.f32 s20, s1                         
813522e6  vmov.f32 s21, s2                         
813522ea  ldr      r0, [r0]                        
813522ec  vstr     s19, [sp, #0xfc]                
813522f0  vstr     s22, [sp, #0x108]               
813522f4  vstr     s20, [sp, #0x100]               
813522f8  vstr     s21, [sp, #0x104]               
813522fc  ldrsb.w  r1, [r0, #0xc2]                 
81352300  ands     r1, r1, #1                      
81352304  beq      #0x8135230e                     
81352306  ldr      r1, [r0, #0x70]                 
81352308  cbnz     r1, #0x8135230e                 
8135230a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135230e  movw     r0, #0x4cf8                     
81352312  vmov.f32 s0, s16                         
81352316  vmov.f32 s1, s17                         
8135231a  movt     r0, #0x8151                       ; Method$UnityEngine.Object.Instantiate<GameObject>()
8135231e  vmov.f32 s2, s18                         
81352322  ldr      r2, [r0]                        
81352324  adds     r1, r4, #0                      
81352326  vmov.f32 s3, s19                         
8135232a  vmov.f32 s4, s20                         
8135232e  vmov.f32 s5, s21                         
81352332  vmov.f32 s6, s22                         
81352336  movs     r0, #0                          
81352338  bl       #0x81260366                       ; -> UnityEngine.Object$$Instantiate<GameObject>
8135233c  movw     r1, #0x4cec                     
81352340  movt     r1, #0x8151                       ; Method$UnityEngine.GameObject.GetComponent<throwingObject>()
81352344  ldr      r1, [r1]                        
81352346  bl       #0x8126005c                       ; -> UnityEngine.GameObject$$GetComponent<Camera>
8135234a  ldr      r1, [r5, #0x30]                   ; this.target
8135234c  adds     r4, r0, #0                      
8135234e  ldr      r1, [r1, #0x34]                 
81352350  movs     r0, #0                          
81352352  movs     r2, #0                          
81352354  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81352358  cmp      r0, #0                          
8135235a  bne      #0x81352364                     
8135235c  ldr      r0, [r5, #0x30]                   ; this.target
8135235e  ldr      r1, [r0, #0x2c]                 
81352360  ldr      r1, [r1, #0x10]                 
81352362  b        #0x81352368                     
81352364  ldr      r0, [r5, #0x30]                   ; this.target
81352366  ldr      r1, [r0, #0x34]                 
81352368  str      r1, [r4, #0x2c]                 
8135236a  str      r5, [r4, #0x14]                 
8135236c  ldr      r0, [r5, #0x30]                   ; this.target
8135236e  str      r0, [r4, #0x30]                 
81352370  b        #0x813524d8                     
81352372  ldr      r2, [r5, #0xc]                    ; this.sounds
81352374  movs     r0, #0                          
81352376  ldr      r4, [r2, #0x18]                 
81352378  movs     r1, #0                          
8135237a  ldr      r6, [r2, #8]                    
8135237c  movs     r3, #0                          
8135237e  ldr      r2, [r4, #0xc]                  
81352380  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81352384  add.w    r0, r4, r0, lsl #2              
81352388  ldr      r1, [r0, #0x10]                 
8135238a  adds     r0, r6, #0                      
8135238c  movs     r2, #0                          
8135238e  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81352392  b        #0x81352370                     
81352394  ldr      r4, [r5, #0x2c]                   ; this.character
81352396  movs     r1, #0                          
81352398  ldr      r4, [r4, #0x10]                 
8135239a  adds     r0, r4, #0                      
8135239c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813523a0  movs     r1, #0                          
813523a2  vmov.f32 s16, s0                         
813523a6  vmov.f32 s18, s2                         
813523aa  vmov.f32 s17, s1                         
813523ae  vstr     s16, [sp, #0x4c]                
813523b2  vstr     s18, [sp, #0x54]                
813523b6  vstr     s17, [sp, #0x50]                
813523ba  ldr      r0, [r5, #0x30]                   ; this.target
813523bc  ldr      r2, [r0, #0x2c]                 
813523be  ldr      r0, [r2, #0x10]                 
813523c0  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813523c4  movw     r0, #0x45fc                     
813523c8  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813523cc  vmov.f32 s19, s0                         
813523d0  vmov.f32 s21, s2                         
813523d4  vmov.f32 s20, s1                         
813523d8  ldr      r0, [r0]                        
813523da  vstr     s19, [sp, #0x58]                
813523de  vstr     s21, [sp, #0x60]                
813523e2  vstr     s20, [sp, #0x5c]                
813523e6  ldrsb.w  r1, [r0, #0xc2]                 
813523ea  ands     r1, r1, #1                      
813523ee  beq      #0x813523f8                     
813523f0  ldr      r1, [r0, #0x70]                 
813523f2  cbnz     r1, #0x813523f8                 
813523f4  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813523f8  vmov.f32 s0, s16                         
813523fc  vmov.f32 s1, s17                         
81352400  vmov.f32 s2, s18                         
81352404  vmov.f32 s3, s19                         
81352408  vmov.f32 s4, s20                         
8135240c  vmov.f32 s5, s21                         
81352410  movs     r0, #0                          
81352412  movs     r1, #0                          
81352414  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81352418  movs     r0, #0                          
8135241a  movs     r1, #0                          
8135241c  vstr     s0, [sp, #0x64]                 
81352420  vstr     s2, [sp, #0x6c]                 
81352424  vstr     s1, [sp, #0x68]                 
81352428  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
8135242c  movw     r0, #0x4710                     
81352430  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81352434  vmov.f32 s16, s0                         
81352438  vmov.f32 s18, s2                         
8135243c  vmov.f32 s17, s1                         
81352440  ldr      r0, [r0]                        
81352442  vstr     s16, [sp, #0x70]                
81352446  vstr     s18, [sp, #0x78]                
8135244a  vstr     s17, [sp, #0x74]                
8135244e  ldrsb.w  r1, [r0, #0xc2]                 
81352452  ands     r1, r1, #1                      
81352456  beq      #0x81352460                     
81352458  ldr      r1, [r0, #0x70]                 
8135245a  cbnz     r1, #0x81352460                 
8135245c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352460  vmov.f32 s0, s16                         
81352464  vmov.f32 s1, s17                         
81352468  vmov.f32 s2, s18                         
8135246c  movs     r0, #0                          
8135246e  movs     r1, #0                          
81352470  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81352474  add      r0, sp, #0x138                  
81352476  movs     r1, #0                          
81352478  vstr     s0, [sp, #0x7c]                 
8135247c  vstr     s3, [sp, #0x88]                 
81352480  vstr     s1, [sp, #0x80]                 
81352484  vstr     s2, [sp, #0x84]                 
81352488  vstr     s0, [sp, #0x138]                
8135248c  vstr     s1, [sp, #0x13c]                
81352490  vstr     s2, [sp, #0x140]                
81352494  vstr     s3, [sp, #0x144]                
81352498  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
8135249c  movs     r0, #0                          
8135249e  movs     r2, #0                          
813524a0  vstr     s0, [sp, #0x8c]                 
813524a4  vmov     s0, r0                          
813524a8  vstr     s1, [sp, #0x90]                 
813524ac  vstr     s2, [sp, #0x94]                 
813524b0  strd     r2, r2, [sp, #0x118]            
813524b4  add      r0, sp, #0x118                  
813524b6  str      r2, [sp, #0x120]                
813524b8  movs     r1, #0                          
813524ba  vmov.f32 s2, s0                          
813524be  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813524c2  vldr     s0, [sp, #0x118]                
813524c6  vldr     s1, [sp, #0x11c]                
813524ca  vldr     s2, [sp, #0x120]                
813524ce  adds     r0, r4, #0                      
813524d0  movs     r1, #0                          
813524d2  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813524d6  b        #0x8135203a                     
813524d8  ldr      r1, [sp, #0x148]                
813524da  ldr      r0, [r7]                        
813524dc  cmp      r0, r1                          
813524de  bne      #0x813524e8                     
813524e0  add      sp, #0x14c                      
813524e2  vpop     {s16, s17, s18, s19, s20, s21, s22, s23}
813524e6  pop      {r4, r5, r6, r7, pc}            
813524e8  blx      #0x813e1118                       ; -> __stack_chk_fail
813524ec  nop                                      

; ==== controller$$Combo  @ 0x813524ee .. 0x813526e6
813524ee  push.w   {r4, r5, r6, r7, r8, lr}        
813524f2  movw     r2, #0x34dd                     
813524f6  movt     r2, #0x8151                       ; = 0x815134dd
813524fa  ldrb     r2, [r2]                        
813524fc  adds     r6, r1, #0                      
813524fe  adds     r5, r0, #0                      
81352500  cbnz     r2, #0x8135251c                 
81352502  movw     r0, #0x3728                     
81352506  movt     r0, #0x814c                       ; = 0x814c3728
8135250a  ldr      r0, [r0]                        
8135250c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81352510  movw     r0, #0x34dd                     
81352514  movt     r0, #0x8151                       ; = 0x815134dd
81352518  movs     r1, #1                          
8135251a  strb     r1, [r0]                        
8135251c  ldr      r0, [r5, #0x18]                   ; this.state
8135251e  cmp      r0, #1                          
81352520  beq      #0x813525a6                     
81352522  movw     r0, #0x3878                     
81352526  movt     r0, #0x8151                       ; string_TypeInfo
8135252a  ldr      r2, [r0]                        
8135252c  ldrsb.w  r0, [r2, #0xc2]                 
81352530  ands     r0, r0, #1                      
81352534  beq      #0x8135254a                     
81352536  ldr      r0, [r2, #0x70]                 
81352538  cbnz     r0, #0x8135254a                 
8135253a  adds     r0, r2, #0                      
8135253c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352540  movw     r0, #0x3878                     
81352544  movt     r0, #0x8151                       ; string_TypeInfo
81352548  ldr      r2, [r0]                        
8135254a  ldr      r0, [r2, #0x5c]                 
8135254c  adds     r1, r6, #0                      
8135254e  ldr      r2, [r0]                        
81352550  movs     r0, #0                          
81352552  movs     r3, #0                          
81352554  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81352558  cmp      r0, #0                          
8135255a  beq      #0x813525a8                     
8135255c  movs     r0, #0                          
8135255e  ldr.w    r4, [r5, #0x90]                   ; this.thisAttack
81352562  str      r0, [r5, #0x1c]                   ; this.action
81352564  cbz      r4, #0x813525a0                 
81352566  movw     r0, #0x461c                     
8135256a  ldr      r4, [r4, #0x20]                 
8135256c  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81352570  ldr      r0, [r0]                        
81352572  ldrsb.w  r1, [r0, #0xc2]                 
81352576  ands     r1, r1, #1                      
8135257a  beq      #0x81352584                     
8135257c  ldr      r1, [r0, #0x70]                 
8135257e  cbnz     r1, #0x81352584                 
81352580  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352584  movs     r0, #0                          
81352586  adds     r1, r4, #0                      
81352588  movs     r2, #0                          
8135258a  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
8135258e  cmp      r0, #0                          
81352590  beq      #0x813525a0                     
81352592  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
81352596  movs     r1, #0                          
81352598  ldr      r0, [r0, #0x20]                 
8135259a  movs     r2, #0                          
8135259c  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
813525a0  movs     r0, #0                          
813525a2  str.w    r0, [r5, #0x90]                   ; this.thisAttack
813525a6  b        #0x813526e2                     
813525a8  ldr      r2, [r5, #0xc]                    ; this.sounds
813525aa  movs     r0, #0                          
813525ac  ldr      r4, [r2, #0x18]                 
813525ae  movs     r1, #0                          
813525b0  ldr      r7, [r2, #8]                    
813525b2  movs     r3, #0                          
813525b4  ldr      r2, [r4, #0xc]                  
813525b6  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
813525ba  add.w    r0, r4, r0, lsl #2              
813525be  ldr      r1, [r0, #0x10]                 
813525c0  adds     r0, r7, #0                      
813525c2  movs     r2, #0                          
813525c4  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813525c8  ldr      r0, [r5, #0x1c]                   ; this.action
813525ca  cmp      r0, #3                          
813525cc  bne      #0x8135261e                     
813525ce  movw     r0, #0x348c                     
813525d2  movt     r0, #0x8151                       ; = 0x8151348c
813525d6  ldrb     r0, [r0]                        
813525d8  cbnz     r0, #0x813525f4                 
813525da  movw     r0, #0x373c                     
813525de  movt     r0, #0x814c                       ; = 0x814c373c
813525e2  ldr      r0, [r0]                        
813525e4  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813525e8  movw     r0, #0x348c                     
813525ec  movt     r0, #0x8151                       ; = 0x8151348c
813525f0  movs     r1, #1                          
813525f2  strb     r1, [r0]                        
813525f4  ldr      r0, [r5, #0x7c]                   ; this.components
813525f6  movs     r1, #0                          
813525f8  ldr      r0, [r0, #0x48]                 
813525fa  bl       #0x8127d71a                       ; -> UnityEngine.ParticleSystem$$Stop
813525fe  ldr      r0, [r5, #0x7c]                   ; this.components
81352600  movw     r1, #0xb398                     
81352604  ldr      r0, [r0, #0x14]                 
81352606  movt     r1, #0x8151                       ; str "recoverChakra"
8135260a  ldr      r1, [r1]                        
8135260c  movs     r2, #0                          
8135260e  movs     r3, #0                          
81352610  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81352614  ldr      r0, [r5, #0x1c]                   ; this.action
81352616  cmp      r0, #3                          
81352618  bne      #0x8135261e                     
8135261a  movs     r0, #0                          
8135261c  str      r0, [r5, #0x1c]                   ; this.action
8135261e  ldr.w    r4, [r5, #0x90]                   ; this.thisAttack
81352622  cbz      r4, #0x8135265e                 
81352624  movw     r0, #0x461c                     
81352628  ldr      r4, [r4, #0x20]                 
8135262a  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
8135262e  ldr      r0, [r0]                        
81352630  ldrsb.w  r1, [r0, #0xc2]                 
81352634  ands     r1, r1, #1                      
81352638  beq      #0x81352642                     
8135263a  ldr      r1, [r0, #0x70]                 
8135263c  cbnz     r1, #0x81352642                 
8135263e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352642  movs     r0, #0                          
81352644  adds     r1, r4, #0                      
81352646  movs     r2, #0                          
81352648  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
8135264c  cmp      r0, #0                          
8135264e  beq      #0x8135265e                     
81352650  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
81352654  movs     r1, #0                          
81352656  ldr      r0, [r0, #0x20]                 
81352658  movs     r2, #0                          
8135265a  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8135265e  movs     r0, #1                          
81352660  ldr.w    r1, [r5, #0x88]                   ; this.AttacksList
81352664  movw     r2, #0x4ddc                     
81352668  str      r0, [r5, #0x1c]                   ; this.action
8135266a  movt     r2, #0x8151                       ; Method$System.Collections.Generic.Dictionary<string, controller.Attacks>.get_Item()
8135266e  ldr      r2, [r2]                        
81352670  adds     r0, r1, #0                      
81352672  adds     r1, r6, #0                      
81352674  bl       #0x811c5f1a                       ; -> System.Collections.Generic.Dictionary<string, controller.Attacks>$$get_Item
81352678  str.w    r0, [r5, #0x90]                   ; this.thisAttack
8135267c  movw     r1, #0x461c                     
81352680  ldr      r6, [r0, #0x20]                 
81352682  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81352686  ldr      r0, [r1]                        
81352688  ldrsb.w  r1, [r0, #0xc2]                 
8135268c  ands     r1, r1, #1                      
81352690  beq      #0x8135269a                     
81352692  ldr      r1, [r0, #0x70]                 
81352694  cbnz     r1, #0x8135269a                 
81352696  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135269a  movs     r0, #0                          
8135269c  adds     r1, r6, #0                      
8135269e  movs     r2, #0                          
813526a0  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813526a4  cmp      r0, #0                          
813526a6  beq      #0x813526b6                     
813526a8  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
813526ac  movs     r1, #1                          
813526ae  ldr      r0, [r0, #0x20]                 
813526b0  movs     r2, #0                          
813526b2  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
813526b6  movw     r1, #0xb394                     
813526ba  ldr      r0, [r5, #0x7c]                   ; this.components
813526bc  movt     r1, #0x8151                       ; str "hit"
813526c0  ldr      r0, [r0, #0x14]                 
813526c2  movs     r2, #0                          
813526c4  ldr      r1, [r1]                        
813526c6  movs     r3, #0                          
813526c8  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813526cc  ldr      r0, [r5, #0x7c]                   ; this.components
813526ce  movw     r1, #0x9848                     
813526d2  ldr      r0, [r0, #0x14]                 
813526d4  movt     r1, #0x8151                       ; str "throw"
813526d8  ldr      r1, [r1]                        
813526da  movs     r2, #0                          
813526dc  movs     r3, #0                          
813526de  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813526e2  pop.w    {r4, r5, r6, r7, r8, pc}        

; ==== controller$$AddMove  @ 0x813526e6 .. 0x81352b2e
813526e6  push     {r4, r5, r6, r7, lr}            
813526e8  vpush    {s16, s17, s18, s19, s20, s21}  
813526ec  sub      sp, #0x114                      
813526ee  movw     r7, #0x2514                     
813526f2  movt     r7, #0x813e                       ; = 0x813e2514
813526f6  ldr      r2, [r7]                        
813526f8  str      r2, [sp, #0x110]                
813526fa  movw     r2, #0x34de                     
813526fe  movt     r2, #0x8151                       ; = 0x815134de
81352702  ldrb     r2, [r2]                        
81352704  adds     r6, r1, #0                      
81352706  adds     r5, r0, #0                      
81352708  cbnz     r2, #0x81352724                 
8135270a  movw     r0, #0x3724                     
8135270e  movt     r0, #0x814c                       ; = 0x814c3724
81352712  ldr      r0, [r0]                        
81352714  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81352718  movw     r0, #0x34de                     
8135271c  movt     r0, #0x8151                       ; = 0x815134de
81352720  movs     r1, #1                          
81352722  strb     r1, [r0]                        
81352724  ldr      r0, [r5, #0x18]                   ; this.state
81352726  cmp      r0, #1                          
81352728  beq.w    #0x813529d2                     
8135272c  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
81352730  cmp      r0, #0                          
81352732  beq.w    #0x813529d2                     
81352736  movw     r0, #0x461c                     
8135273a  ldr      r4, [r5, #0x30]                   ; this.target
8135273c  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81352740  ldr      r4, [r4, #0x34]                 
81352742  movs     r2, #0                          
81352744  ldr      r0, [r0]                        
81352746  movs     r3, #0                          
81352748  strd     r2, r3, [sp, #0x108]            
8135274c  strd     r2, r3, [sp, #0x100]            
81352750  strd     r2, r3, [sp, #0xf8]             
81352754  strd     r2, r3, [sp, #0xf0]             
81352758  ldrsb.w  r1, [r0, #0xc2]                 
8135275c  ands     r1, r1, #1                      
81352760  beq      #0x8135276a                     
81352762  ldr      r1, [r0, #0x70]                 
81352764  cbnz     r1, #0x8135276a                 
81352766  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135276a  movs     r0, #0                          
8135276c  adds     r1, r4, #0                      
8135276e  movs     r2, #0                          
81352770  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81352774  cmp      r0, #0                          
81352776  beq.w    #0x813529d4                     
8135277a  ldr      r4, [r5, #0x2c]                   ; this.character
8135277c  movs     r1, #0                          
8135277e  ldr      r4, [r4, #0x10]                 
81352780  adds     r0, r4, #0                      
81352782  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81352786  movs     r1, #0                          
81352788  vmov.f32 s16, s0                         
8135278c  vmov.f32 s18, s2                         
81352790  vmov.f32 s17, s1                         
81352794  vstr     s16, [sp]                       
81352798  vstr     s18, [sp, #8]                   
8135279c  vstr     s17, [sp, #4]                   
813527a0  ldr      r0, [r5, #0x30]                   ; this.target
813527a2  ldr      r0, [r0, #0x34]                 
813527a4  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813527a8  movw     r0, #0x45fc                     
813527ac  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813527b0  vmov.f32 s19, s0                         
813527b4  vmov.f32 s21, s2                         
813527b8  vmov.f32 s20, s1                         
813527bc  ldr      r0, [r0]                        
813527be  vstr     s19, [sp, #0xc]                 
813527c2  vstr     s21, [sp, #0x14]                
813527c6  vstr     s20, [sp, #0x10]                
813527ca  ldrsb.w  r1, [r0, #0xc2]                 
813527ce  ands     r1, r1, #1                      
813527d2  beq      #0x813527dc                     
813527d4  ldr      r1, [r0, #0x70]                 
813527d6  cbnz     r1, #0x813527dc                 
813527d8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813527dc  vmov.f32 s0, s16                         
813527e0  vmov.f32 s1, s17                         
813527e4  vmov.f32 s2, s18                         
813527e8  vmov.f32 s3, s19                         
813527ec  vmov.f32 s4, s20                         
813527f0  vmov.f32 s5, s21                         
813527f4  movs     r0, #0                          
813527f6  movs     r1, #0                          
813527f8  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
813527fc  movs     r0, #0                          
813527fe  movs     r1, #0                          
81352800  vstr     s0, [sp, #0x18]                 
81352804  vstr     s2, [sp, #0x20]                 
81352808  vstr     s1, [sp, #0x1c]                 
8135280c  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81352810  movw     r0, #0x4710                     
81352814  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81352818  vmov.f32 s16, s0                         
8135281c  vmov.f32 s18, s2                         
81352820  vmov.f32 s17, s1                         
81352824  ldr      r0, [r0]                        
81352826  vstr     s16, [sp, #0x24]                
8135282a  vstr     s18, [sp, #0x2c]                
8135282e  vstr     s17, [sp, #0x28]                
81352832  ldrsb.w  r1, [r0, #0xc2]                 
81352836  ands     r1, r1, #1                      
8135283a  beq      #0x81352844                     
8135283c  ldr      r1, [r0, #0x70]                 
8135283e  cbnz     r1, #0x81352844                 
81352840  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352844  vmov.f32 s0, s16                         
81352848  vmov.f32 s1, s17                         
8135284c  vmov.f32 s2, s18                         
81352850  movs     r0, #0                          
81352852  movs     r1, #0                          
81352854  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81352858  add      r0, sp, #0xf0                   
8135285a  movs     r1, #0                          
8135285c  vstr     s0, [sp, #0x30]                 
81352860  vstr     s3, [sp, #0x3c]                 
81352864  vstr     s1, [sp, #0x34]                 
81352868  vstr     s2, [sp, #0x38]                 
8135286c  vstr     s0, [sp, #0xf0]                 
81352870  vstr     s1, [sp, #0xf4]                 
81352874  vstr     s2, [sp, #0xf8]                 
81352878  vstr     s3, [sp, #0xfc]                 
8135287c  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81352880  movs     r0, #0                          
81352882  movs     r2, #0                          
81352884  vstr     s0, [sp, #0x40]                 
81352888  vmov     s0, r0                          
8135288c  vstr     s1, [sp, #0x44]                 
81352890  vstr     s2, [sp, #0x48]                 
81352894  strd     r2, r2, [sp, #0xd4]             
81352898  add      r0, sp, #0xd4                   
8135289a  str      r2, [sp, #0xdc]                 
8135289c  movs     r1, #0                          
8135289e  vmov.f32 s2, s0                          
813528a2  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813528a6  vldr     s0, [sp, #0xd4]                 
813528aa  vldr     s1, [sp, #0xd8]                 
813528ae  vldr     s2, [sp, #0xdc]                 
813528b2  adds     r0, r4, #0                      
813528b4  movs     r1, #0                          
813528b6  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813528ba  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
813528be  rsb      r6, r6, r6, lsl #2              
813528c2  vmov.f32 s0, #2.000000e+00               
813528c6  ldr      r0, [r0, #0xc]                  
813528c8  lsls     r6, r6, #2                      
813528ca  adds     r0, r0, r6                      
813528cc  vldr     s1, [r0, #0x18]                 
813528d0  movw     r0, #0x45fc                     
813528d4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813528d8  vmul.f32 s0, s1, s0                      
813528dc  vstr     s0, [r5, #0x78]                   ; this.hitForce
813528e0  ldr      r0, [r0]                        
813528e2  ldrsb.w  r1, [r0, #0xc2]                 
813528e6  ands     r1, r1, #1                      
813528ea  beq      #0x813528f4                     
813528ec  ldr      r1, [r0, #0x70]                 
813528ee  cbnz     r1, #0x813528f4                 
813528f0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813528f4  movs     r0, #0                          
813528f6  movs     r1, #0                          
813528f8  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813528fc  movs     r1, #0                          
813528fe  vstr     s0, [sp, #0x98]                 
81352902  vstr     s2, [sp, #0xa0]                 
81352906  vstr     s1, [sp, #0x9c]                 
8135290a  vstr     s0, [r5, #0x48]                   ; this.moveSpeed
8135290e  vstr     s1, [r5, #0x4c]                   ; this.moveSpeed+4
81352912  ldr      r0, [r5, #0x2c]                   ; this.character
81352914  vstr     s2, [r5, #0x50]                   ; this.moveSpeed+8
81352918  ldr      r0, [r0, #0x10]                 
8135291a  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
8135291e  movs     r0, #0                          
81352920  movs     r1, #0                          
81352922  vstr     s0, [sp, #0xa4]                 
81352926  vstr     s2, [sp, #0xac]                 
8135292a  vstr     s1, [sp, #0xa8]                 
8135292e  vldr     s3, [r5, #0x78]                   ; this.hitForce
81352932  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81352936  movs     r0, #0                          
81352938  movs     r1, #0                          
8135293a  vmov.f32 s16, s0                         
8135293e  vmov.f32 s17, s2                         
81352942  vmov.f32 s18, s1                         
81352946  vstr     s16, [sp, #0xb0]                
8135294a  vstr     s17, [sp, #0xb8]                
8135294e  vstr     s18, [sp, #0xb4]                
81352952  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81352956  movs     r0, #0                          
81352958  movs     r1, #0                          
8135295a  vmov.f32 s3, s0                          
8135295e  vmov.f32 s5, s2                          
81352962  vmov.f32 s4, s1                          
81352966  vmov.f32 s0, s16                         
8135296a  vmov.f32 s1, s18                         
8135296e  vmov.f32 s2, s17                         
81352972  vstr     s3, [sp, #0xbc]                 
81352976  vstr     s5, [sp, #0xc4]                 
8135297a  vstr     s4, [sp, #0xc0]                 
8135297e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81352982  movs     r0, #0                          
81352984  vstr     s0, [sp, #0xc8]                 
81352988  vstr     s2, [sp, #0xd0]                 
8135298c  vstr     s1, [sp, #0xcc]                 
81352990  vstr     s0, [r5, #0x54]                   ; this.moveFight
81352994  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81352998  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
8135299c  ldr.w    r1, [r5, #0x90]                   ; this.thisAttack
813529a0  ldr      r2, [r1, #0xc]                  
813529a2  adds     r1, r2, r6                      
813529a4  ldr      r2, [r5, #0x2c]                   ; this.character
813529a6  vldr     s0, [r1, #0x14]                 
813529aa  movs     r1, #0                          
813529ac  vmov     s1, r0                          
813529b0  str      r1, [r2, #0x34]                 
813529b2  vstr     s0, [r2, #0x30]                 
813529b6  ldr.w    r0, [r5, #0x90]                   ; this.thisAttack
813529ba  ldr      r1, [r0, #0xc]                  
813529bc  adds     r0, r1, r6                      
813529be  vldr     s0, [r0, #0x14]                 
813529c2  vcmp.f32 s0, s1                          
813529c6  vmrs     apsr_nzcv, fpscr                
813529ca  bgt      #0x813529ce                     
813529cc  b        #0x813529d2                     
813529ce  movs     r0, #1                          
813529d0  str      r0, [r5, #0x6c]                   ; this._jump
813529d2  b        #0x81352b18                     
813529d4  ldr      r4, [r5, #0x2c]                   ; this.character
813529d6  movs     r1, #0                          
813529d8  ldr      r4, [r4, #0x10]                 
813529da  adds     r0, r4, #0                      
813529dc  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813529e0  movs     r1, #0                          
813529e2  vmov.f32 s16, s0                         
813529e6  vmov.f32 s18, s2                         
813529ea  vmov.f32 s17, s1                         
813529ee  vstr     s16, [sp, #0x4c]                
813529f2  vstr     s18, [sp, #0x54]                
813529f6  vstr     s17, [sp, #0x50]                
813529fa  ldr      r0, [r5, #0x30]                   ; this.target
813529fc  ldr      r2, [r0, #0x2c]                 
813529fe  ldr      r0, [r2, #0x10]                 
81352a00  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81352a04  movw     r0, #0x45fc                     
81352a08  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81352a0c  vmov.f32 s19, s0                         
81352a10  vmov.f32 s21, s2                         
81352a14  vmov.f32 s20, s1                         
81352a18  ldr      r0, [r0]                        
81352a1a  vstr     s19, [sp, #0x58]                
81352a1e  vstr     s21, [sp, #0x60]                
81352a22  vstr     s20, [sp, #0x5c]                
81352a26  ldrsb.w  r1, [r0, #0xc2]                 
81352a2a  ands     r1, r1, #1                      
81352a2e  beq      #0x81352a38                     
81352a30  ldr      r1, [r0, #0x70]                 
81352a32  cbnz     r1, #0x81352a38                 
81352a34  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352a38  vmov.f32 s0, s16                         
81352a3c  vmov.f32 s1, s17                         
81352a40  vmov.f32 s2, s18                         
81352a44  vmov.f32 s3, s19                         
81352a48  vmov.f32 s4, s20                         
81352a4c  vmov.f32 s5, s21                         
81352a50  movs     r0, #0                          
81352a52  movs     r1, #0                          
81352a54  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81352a58  movs     r0, #0                          
81352a5a  movs     r1, #0                          
81352a5c  vstr     s0, [sp, #0x64]                 
81352a60  vstr     s2, [sp, #0x6c]                 
81352a64  vstr     s1, [sp, #0x68]                 
81352a68  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81352a6c  movw     r0, #0x4710                     
81352a70  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81352a74  vmov.f32 s16, s0                         
81352a78  vmov.f32 s18, s2                         
81352a7c  vmov.f32 s17, s1                         
81352a80  ldr      r0, [r0]                        
81352a82  vstr     s16, [sp, #0x70]                
81352a86  vstr     s18, [sp, #0x78]                
81352a8a  vstr     s17, [sp, #0x74]                
81352a8e  ldrsb.w  r1, [r0, #0xc2]                 
81352a92  ands     r1, r1, #1                      
81352a96  beq      #0x81352aa0                     
81352a98  ldr      r1, [r0, #0x70]                 
81352a9a  cbnz     r1, #0x81352aa0                 
81352a9c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352aa0  vmov.f32 s0, s16                         
81352aa4  vmov.f32 s1, s17                         
81352aa8  vmov.f32 s2, s18                         
81352aac  movs     r0, #0                          
81352aae  movs     r1, #0                          
81352ab0  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81352ab4  add      r0, sp, #0x100                  
81352ab6  movs     r1, #0                          
81352ab8  vstr     s0, [sp, #0x7c]                 
81352abc  vstr     s3, [sp, #0x88]                 
81352ac0  vstr     s1, [sp, #0x80]                 
81352ac4  vstr     s2, [sp, #0x84]                 
81352ac8  vstr     s0, [sp, #0x100]                
81352acc  vstr     s1, [sp, #0x104]                
81352ad0  vstr     s2, [sp, #0x108]                
81352ad4  vstr     s3, [sp, #0x10c]                
81352ad8  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81352adc  movs     r0, #0                          
81352ade  movs     r2, #0                          
81352ae0  vstr     s0, [sp, #0x8c]                 
81352ae4  vmov     s0, r0                          
81352ae8  vstr     s1, [sp, #0x90]                 
81352aec  vstr     s2, [sp, #0x94]                 
81352af0  strd     r2, r2, [sp, #0xe0]             
81352af4  add      r0, sp, #0xe0                   
81352af6  str      r2, [sp, #0xe8]                 
81352af8  movs     r1, #0                          
81352afa  vmov.f32 s2, s0                          
81352afe  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81352b02  vldr     s0, [sp, #0xe0]                 
81352b06  vldr     s1, [sp, #0xe4]                 
81352b0a  vldr     s2, [sp, #0xe8]                 
81352b0e  adds     r0, r4, #0                      
81352b10  movs     r1, #0                          
81352b12  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81352b16  b        #0x813528ba                     
81352b18  ldr      r1, [sp, #0x110]                
81352b1a  ldr      r0, [r7]                        
81352b1c  cmp      r0, r1                          
81352b1e  bne      #0x81352b28                     
81352b20  add      sp, #0x114                      
81352b22  vpop     {s16, s17, s18, s19, s20, s21}  
81352b26  pop      {r4, r5, r6, r7, pc}            
81352b28  blx      #0x813e1118                       ; -> __stack_chk_fail
81352b2c  nop                                      

; ==== controller$$GuardBreak  @ 0x81352b2e .. 0x81352c62
81352b2e  push     {r4, r5, r6, r7, lr}            
81352b30  vpush    {s16, s17, s18, s19}            
81352b34  sub      sp, #0x2c                       
81352b36  movw     r7, #0x2514                     
81352b3a  movt     r7, #0x813e                       ; = 0x813e2514
81352b3e  ldr      r2, [r7]                        
81352b40  str      r2, [sp, #0x24]                 
81352b42  movw     r2, #0x34df                     
81352b46  movt     r2, #0x8151                       ; = 0x815134df
81352b4a  ldrb     r2, [r2]                        
81352b4c  adds     r4, r1, #0                      
81352b4e  adds     r5, r0, #0                      
81352b50  cbnz     r2, #0x81352b6c                 
81352b52  movw     r0, #0x3734                     
81352b56  movt     r0, #0x814c                       ; = 0x814c3734
81352b5a  ldr      r0, [r0]                        
81352b5c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81352b60  movw     r0, #0x34df                     
81352b64  movt     r0, #0x8151                       ; = 0x815134df
81352b68  movs     r1, #1                          
81352b6a  strb     r1, [r0]                        
81352b6c  movw     r1, #0xb39c                     
81352b70  ldr      r0, [r5, #0x7c]                   ; this.components
81352b72  movt     r1, #0x8151                       ; str "guardBreak"
81352b76  ldr      r0, [r0, #0x14]                 
81352b78  movs     r2, #0                          
81352b7a  ldr      r1, [r1]                        
81352b7c  movs     r3, #0                          
81352b7e  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81352b82  ldr      r6, [r5, #0x7c]                   ; this.components
81352b84  movw     r0, #0x461c                     
81352b88  ldr      r6, [r6, #0x54]                 
81352b8a  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81352b8e  ldr      r0, [r0]                        
81352b90  ldrsb.w  r1, [r0, #0xc2]                 
81352b94  ands     r1, r1, #1                      
81352b98  beq      #0x81352ba2                     
81352b9a  ldr      r1, [r0, #0x70]                 
81352b9c  cbnz     r1, #0x81352ba2                 
81352b9e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352ba2  movs     r0, #0                          
81352ba4  adds     r1, r6, #0                      
81352ba6  movs     r2, #0                          
81352ba8  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81352bac  cmp      r0, #0                          
81352bae  beq      #0x81352bbc                     
81352bb0  ldr      r0, [r5, #0x7c]                   ; this.components
81352bb2  movs     r1, #0                          
81352bb4  ldr      r0, [r0, #0x54]                 
81352bb6  movs     r2, #0                          
81352bb8  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
81352bbc  movs     r0, #0                          
81352bbe  ldr      r1, [r5, #0x2c]                   ; this.character
81352bc0  movs     r2, #4                          
81352bc2  strb.w   r0, [r5, #0x9a]                   ; this.guard
81352bc6  str      r2, [r5, #0x18]                   ; this.state
81352bc8  str      r0, [r5, #0x1c]                   ; this.action
81352bca  ldr      r0, [r1, #0x10]                 
81352bcc  movs     r1, #0                          
81352bce  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81352bd2  movw     r0, #0x45fc                     
81352bd6  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81352bda  vmov.f32 s18, s0                         
81352bde  vmov.f32 s16, s2                         
81352be2  vmov.f32 s17, s1                         
81352be6  ldr      r0, [r0]                        
81352be8  vstr     s18, [sp]                       
81352bec  vstr     s16, [sp, #8]                   
81352bf0  vstr     s17, [sp, #4]                   
81352bf4  ldrsb.w  r1, [r0, #0xc2]                 
81352bf8  ands     r1, r1, #1                      
81352bfc  beq      #0x81352c06                     
81352bfe  ldr      r1, [r0, #0x70]                 
81352c00  cbnz     r1, #0x81352c06                 
81352c02  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352c06  vmov.f32 s0, s18                         
81352c0a  vmov.f32 s1, s17                         
81352c0e  vmov.f32 s2, s16                         
81352c12  movs     r0, #0                          
81352c14  movs     r1, #0                          
81352c16  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81352c1a  rsb      r0, r4, r4, lsl #2              
81352c1e  vstr     s0, [sp, #0xc]                  
81352c22  vstr     s2, [sp, #0x14]                 
81352c26  vstr     s1, [sp, #0x10]                 
81352c2a  ldr.w    r1, [r5, #0x8c]                   ; this.breakedGuard
81352c2e  ldr      r2, [r1, #8]                    
81352c30  movs     r1, #0                          
81352c32  add.w    r0, r2, r0, lsl #2              
81352c36  vldr     s3, [r0, #0x18]                 
81352c3a  movs     r0, #0                          
81352c3c  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81352c40  vstr     s0, [r5, #0x54]                   ; this.moveFight
81352c44  vstr     s2, [r5, #0x5c]                   ; this.moveFight+8
81352c48  vstr     s1, [r5, #0x58]                   ; this.moveFight+4
81352c4c  ldr      r1, [sp, #0x24]                 
81352c4e  ldr      r0, [r7]                        
81352c50  cmp      r0, r1                          
81352c52  bne      #0x81352c5c                     
81352c54  add      sp, #0x2c                       
81352c56  vpop     {s16, s17, s18, s19}            
81352c5a  pop      {r4, r5, r6, r7, pc}            
81352c5c  blx      #0x813e1118                       ; -> __stack_chk_fail
81352c60  nop                                      

; ==== controller$$guardRecovering  @ 0x8135040e .. 0x81350454
8135040e  push     {r4, r5, r6, lr}                
81350410  movw     r1, #0x34d4                     
81350414  movt     r1, #0x8151                       ; = 0x815134d4
81350418  ldrb     r1, [r1]                        
8135041a  adds     r4, r0, #0                      
8135041c  cbnz     r1, #0x81350438                 
8135041e  movw     r0, #0x3764                     
81350422  movt     r0, #0x814c                       ; = 0x814c3764
81350426  ldr      r0, [r0]                        
81350428  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8135042c  movw     r0, #0x34d4                     
81350430  movt     r0, #0x8151                       ; = 0x815134d4
81350434  movs     r1, #1                          
81350436  strb     r1, [r0]                        
81350438  movw     r0, #0x4bc4                     
8135043c  movt     r0, #0x8151                       ; controller.<guardRecovering>c__Iterator2_TypeInfo
81350440  ldr      r0, [r0]                        
81350442  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81350446  adds     r5, r0, #0                      
81350448  movs     r1, #0                          
8135044a  bl       #0x81000d00                       ; -> System.Object$$.ctor
8135044e  str      r4, [r5, #8]                    
81350450  adds     r0, r5, #0                      
81350452  pop      {r4, r5, r6, pc}                

; ==== controller$$Update  @ 0x81352c62 .. 0x81354390
81352c62  push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
81352c66  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25}
81352c6a  sub.w    sp, sp, #0x27c                  
81352c6e  movw     r1, #0x2514                     
81352c72  movt     r1, #0x813e                       ; = 0x813e2514
81352c76  ldr      r1, [r1]                        
81352c78  str      r1, [sp, #0x278]                
81352c7a  movw     r1, #0x34e0                     
81352c7e  movt     r1, #0x8151                       ; = 0x815134e0
81352c82  ldrb     r1, [r1]                        
81352c84  mov      fp, r0                          
81352c86  cbnz     r1, #0x81352ca2                 
81352c88  movw     r0, #0x374c                     
81352c8c  movt     r0, #0x814c                       ; = 0x814c374c
81352c90  ldr      r0, [r0]                        
81352c92  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81352c96  movw     r0, #0x34e0                     
81352c9a  movt     r0, #0x8151                       ; = 0x815134e0
81352c9e  movs     r1, #1                          
81352ca0  strb     r1, [r0]                        
81352ca2  movs     r1, #0                          
81352ca4  strd     r1, r1, [sp, #0x224]            
81352ca8  movs     r2, #0                          
81352caa  str      r1, [sp, #0x22c]                
81352cac  movs     r3, #0                          
81352cae  strd     r2, r3, [sp, #0x258]            
81352cb2  movs     r0, #0                          
81352cb4  strd     r2, r3, [sp, #0x260]            
81352cb8  movs     r1, #0                          
81352cba  strd     r2, r3, [sp, #0x268]            
81352cbe  strd     r2, r3, [sp, #0x270]            
81352cc2  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81352cc6  vmov.f32 s16, s0                         
81352cca  movs     r0, #0                          
81352ccc  movs     r1, #0                          
81352cce  bl       #0x813a034e                       ; -> UnityEngine.Time$$get_timeScale
81352cd2  vcmp.f32 s0, #0                          
81352cd6  vmrs     apsr_nzcv, fpscr                
81352cda  beq.w    #0x81353716                     
81352cde  vldr     s0, [fp, #0xa4]                   ; this.hitedTime
81352ce2  vldr     s1, [fp, #0x94]                   ; this.blockTime
81352ce6  vldr     s2, [fp, #0x9c]                   ; this.jumpTime
81352cea  vldr     s3, [fp, #0xac]                   ; this.SQUAREtime
81352cee  vldr     s4, [fp, #0xb4]                   ; this.THROWtime
81352cf2  ldrb.w   r0, [fp, #0xa0]                   ; this.jumpBool
81352cf6  vsub.f32 s5, s0, s16                     
81352cfa  vadd.f32 s6, s1, s16                     
81352cfe  vsub.f32 s0, s2, s16                     
81352d02  vsub.f32 s1, s3, s16                     
81352d06  vsub.f32 s2, s4, s16                     
81352d0a  vstr     s5, [fp, #0xa4]                   ; this.hitedTime
81352d0e  vstr     s6, [fp, #0x94]                   ; this.blockTime
81352d12  vstr     s0, [fp, #0x9c]                   ; this.jumpTime
81352d16  vstr     s1, [fp, #0xac]                   ; this.SQUAREtime
81352d1a  vstr     s2, [fp, #0xb4]                   ; this.THROWtime
81352d1e  cbz      r0, #0x81352d58                 
81352d20  movs     r0, #0                          
81352d22  vmov     s2, r0                          
81352d26  vcmp.f32 s0, s2                          
81352d2a  vmrs     apsr_nzcv, fpscr                
81352d2e  bls      #0x81352d32                     
81352d30  b        #0x81352d58                     
81352d32  movs     r0, #0                          
81352d34  ldr.w    r1, [fp, #0x7c]                   ; this.components
81352d38  strb.w   r0, [fp, #0xa0]                   ; this.jumpBool
81352d3c  movw     r0, #0xb3ac                     
81352d40  ldr      r1, [r1, #0x14]                 
81352d42  movt     r0, #0x8151                       ; str "jump"
81352d46  ldr      r2, [r0]                        
81352d48  adds     r0, r1, #0                      
81352d4a  adds     r1, r2, #0                      
81352d4c  movs     r2, #0                          
81352d4e  movs     r3, #0                          
81352d50  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81352d54  vldr     s1, [fp, #0xac]                   ; this.SQUAREtime
81352d58  ldrb.w   r0, [fp, #0xb0]                   ; this.SQUAREbool
81352d5c  cbz      r0, #0x81352d8e                 
81352d5e  movs     r0, #0                          
81352d60  vmov     s0, r0                          
81352d64  vcmp.f32 s1, s0                          
81352d68  vmrs     apsr_nzcv, fpscr                
81352d6c  bls      #0x81352d70                     
81352d6e  b        #0x81352d8e                     
81352d70  movs     r0, #0                          
81352d72  ldr.w    r1, [fp, #0x7c]                   ; this.components
81352d76  movw     r2, #0xb394                     
81352d7a  strb.w   r0, [fp, #0xb0]                   ; this.SQUAREbool
81352d7e  movt     r2, #0x8151                       ; str "hit"
81352d82  ldr      r0, [r1, #0x14]                 
81352d84  movs     r3, #0                          
81352d86  ldr      r1, [r2]                        
81352d88  movs     r2, #0                          
81352d8a  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81352d8e  ldrb.w   r0, [fp, #0xb8]                   ; this.THROWbool
81352d92  cbz      r0, #0x81352dc8                 
81352d94  movs     r0, #0                          
81352d96  vldr     s0, [fp, #0xb4]                   ; this.THROWtime
81352d9a  vmov     s1, r0                          
81352d9e  vcmp.f32 s0, s1                          
81352da2  vmrs     apsr_nzcv, fpscr                
81352da6  bls      #0x81352daa                     
81352da8  b        #0x81352dc8                     
81352daa  movs     r0, #0                          
81352dac  ldr.w    r1, [fp, #0x7c]                   ; this.components
81352db0  movw     r2, #0x9848                     
81352db4  strb.w   r0, [fp, #0xb8]                   ; this.THROWbool
81352db8  movt     r2, #0x8151                       ; str "throw"
81352dbc  ldr      r0, [r1, #0x14]                 
81352dbe  movs     r3, #0                          
81352dc0  ldr      r1, [r2]                        
81352dc2  movs     r2, #0                          
81352dc4  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81352dc8  ldr.w    r0, [fp, #0x2c]                   ; this.character
81352dcc  movs     r1, #0                          
81352dce  bl       #0x813431c2                       ; -> MyController$$GoUpdate
81352dd2  ldrb.w   r0, [fp, #0x99]                   ; this.disabled
81352dd6  movs     r4, #0                          
81352dd8  adds     r5, r4, #0                      
81352dda  adds     r6, r5, #0                      
81352ddc  adds     r7, r6, #0                      
81352dde  mov      r8, r7                          
81352de0  cmp      r0, #0                          
81352de2  bne.w    #0x81352fc0                     
81352de6  ldrb.w   r0, [fp, #0x28]                   ; this.isPlayer
81352dea  cmp      r0, #0                          
81352dec  beq.w    #0x813538b2                     
81352df0  movw     r0, #0x468c                     
81352df4  movt     r0, #0x8151                       ; UnityEngine.Input_TypeInfo
81352df8  ldr      r0, [r0]                        
81352dfa  ldrsb.w  r1, [r0, #0xc2]                 
81352dfe  ands     r1, r1, #1                      
81352e02  beq      #0x81352e0c                     
81352e04  ldr      r1, [r0, #0x70]                 
81352e06  cbnz     r1, #0x81352e0c                 
81352e08  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352e0c  movw     r0, #0xb3c8                     
81352e10  movt     r0, #0x8151                       ; str "Jump"
81352e14  ldr      r1, [r0]                        
81352e16  movs     r0, #0                          
81352e18  movs     r2, #0                          
81352e1a  bl       #0x812e7686                       ; -> UnityEngine.Input$$GetButtonDown
81352e1e  adds     r4, r0, #0                      
81352e20  movw     r0, #0xb3cc                     
81352e24  movt     r0, #0x8151                       ; str "Ltrigger"
81352e28  ldr      r1, [r0]                        
81352e2a  movs     r0, #0                          
81352e2c  movs     r2, #0                          
81352e2e  bl       #0x812e7642                       ; -> UnityEngine.Input$$GetButton
81352e32  adds     r6, r0, #0                      
81352e34  movw     r0, #0xb3d0                     
81352e38  movt     r0, #0x8151                       ; str "Square"
81352e3c  ldr      r1, [r0]                        
81352e3e  movs     r0, #0                          
81352e40  movs     r2, #0                          
81352e42  bl       #0x812e7686                       ; -> UnityEngine.Input$$GetButtonDown
81352e46  adds     r5, r0, #0                      
81352e48  movw     r0, #0xb3d4                     
81352e4c  movt     r0, #0x8151                       ; str "Rtrigger"
81352e50  ldr      r1, [r0]                        
81352e52  movs     r0, #0                          
81352e54  movs     r2, #0                          
81352e56  bl       #0x812e7642                       ; -> UnityEngine.Input$$GetButton
81352e5a  adds     r7, r0, #0                      
81352e5c  movw     r0, #0xb3d8                     
81352e60  movt     r0, #0x8151                       ; str "Circle"
81352e64  ldr      r1, [r0]                        
81352e66  movs     r0, #0                          
81352e68  movs     r2, #0                          
81352e6a  bl       #0x812e7686                       ; -> UnityEngine.Input$$GetButtonDown
81352e6e  mov      r8, r0                          
81352e70  movw     r0, #0xb0b0                     
81352e74  movt     r0, #0x8151                       ; str "Horizontal"
81352e78  ldr      r1, [r0]                        
81352e7a  movs     r0, #0                          
81352e7c  movs     r2, #0                          
81352e7e  bl       #0x812e75ba                       ; -> UnityEngine.Input$$GetAxis
81352e82  vmov.f32 s17, s0                         
81352e86  movw     r0, #0xb0b4                     
81352e8a  movt     r0, #0x8151                       ; str "Vertical"
81352e8e  ldr      r1, [r0]                        
81352e90  movs     r0, #0                          
81352e92  movs     r2, #0                          
81352e94  bl       #0x812e75ba                       ; -> UnityEngine.Input$$GetAxis
81352e98  vstr     s17, [fp, #0x3c]                  ; this.dir
81352e9c  vstr     s0, [fp, #0x44]                   ; this.dir+8
81352ea0  add.w    r0, fp, #0x3c                   
81352ea4  movs     r1, #0                          
81352ea6  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
81352eaa  movw     r0, #0x999a                     
81352eae  movt     r0, #0x3e99                       ; = 0x3e99999a
81352eb2  vmov     s1, r0                          
81352eb6  vldr     s17, [fp, #0x3c]                  ; this.dir
81352eba  vldr     s18, [fp, #0x40]                  ; this.dir+4
81352ebe  vldr     s19, [fp, #0x44]                  ; this.dir+8
81352ec2  vcmp.f32 s0, s1                          
81352ec6  vmrs     apsr_nzcv, fpscr                
81352eca  bgt      #0x81352ece                     
81352ecc  b        #0x81352ed6                     
81352ece  ldr.w    r0, [fp, #0x1c]                   ; this.action
81352ed2  cmp      r0, #1                          
81352ed4  bne      #0x81352ede                     
81352ed6  movs     r0, #0                          
81352ed8  strb.w   r0, [fp, #0x38]                   ; this.move
81352edc  b        #0x81352ee4                     
81352ede  movs     r0, #1                          
81352ee0  strb.w   r0, [fp, #0x38]                   ; this.move
81352ee4  movw     r0, #0x4710                     
81352ee8  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81352eec  ldr      r0, [r0]                        
81352eee  ldrsb.w  r1, [r0, #0xc2]                 
81352ef2  ands     r1, r1, #1                      
81352ef6  beq      #0x81352f00                     
81352ef8  ldr      r1, [r0, #0x70]                 
81352efa  cbnz     r1, #0x81352f00                 
81352efc  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81352f00  vmov.f32 s0, s17                         
81352f04  vmov.f32 s1, s18                         
81352f08  vmov.f32 s2, s19                         
81352f0c  movs     r0, #0                          
81352f0e  movs     r1, #0                          
81352f10  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81352f14  add      r0, sp, #0x258                  
81352f16  movs     r1, #0                          
81352f18  vstr     s0, [sp, #0xd8]                 
81352f1c  vstr     s3, [sp, #0xe4]                 
81352f20  vstr     s1, [sp, #0xdc]                 
81352f24  vstr     s2, [sp, #0xe0]                 
81352f28  vstr     s0, [sp, #0x258]                
81352f2c  vstr     s1, [sp, #0x25c]                
81352f30  vstr     s2, [sp, #0x260]                
81352f34  vstr     s3, [sp, #0x264]                
81352f38  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81352f3c  vmov.f32 s17, s1                         
81352f40  vstr     s0, [sp, #0xe8]                 
81352f44  vstr     s2, [sp, #0xf0]                 
81352f48  vstr     s17, [sp, #0xec]                
81352f4c  vstr     s0, [fp, #0x60]                   ; this.rot
81352f50  ldrb.w   r0, [fp, #0x28]                   ; this.isPlayer
81352f54  vstr     s17, [fp, #0x64]                  ; this.rot+4
81352f58  vstr     s2, [fp, #0x68]                   ; this.rot+8
81352f5c  cmp      r0, #0                          
81352f5e  beq      #0x81352fc0                     
81352f60  ldr.w    r0, [fp, #0x7c]                   ; this.components
81352f64  ldr      r1, [r0, #0x18]                 
81352f66  ldr      r0, [r1, #0x20]                 
81352f68  movs     r1, #0                          
81352f6a  bl       #0x813a15da                       ; -> UnityEngine.Transform$$get_parent
81352f6e  movs     r1, #0                          
81352f70  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81352f74  movw     r1, #0x9c6c                     
81352f78  movt     r1, #0x8151                       ; str "H"
81352f7c  vstr     s0, [sp, #0xf4]                 
81352f80  vstr     s2, [sp, #0xfc]                 
81352f84  vadd.f32 s0, s17, s1                     
81352f88  vstr     s1, [sp, #0xf8]                 
81352f8c  vldr     s1, [fp, #0x3c]                   ; this.dir
81352f90  ldr.w    r0, [fp, #0x7c]                   ; this.components
81352f94  movs     r2, #0                          
81352f96  vstr     s0, [fp, #0x64]                   ; this.rot+4
81352f9a  ldr      r0, [r0, #0x14]                 
81352f9c  vmov.f32 s0, s1                          
81352fa0  ldr      r1, [r1]                        
81352fa2  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
81352fa6  vldr     s0, [fp, #0x44]                   ; this.dir+8
81352faa  ldr.w    r0, [fp, #0x7c]                   ; this.components
81352fae  movw     r1, #0xb3e4                     
81352fb2  ldr      r0, [r0, #0x14]                 
81352fb4  movt     r1, #0x8151                       ; str "V"
81352fb8  ldr      r1, [r1]                        
81352fba  movs     r2, #0                          
81352fbc  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
81352fc0  ldr.w    r0, [fp, #0x2c]                   ; this.character
81352fc4  ldrb     r0, [r0, #0x1c]                 
81352fc6  cmp      r0, #0                          
81352fc8  beq.w    #0x813530ec                     
81352fcc  ldrb.w   r0, [fp, #0x74]                   ; this.oldGrounded
81352fd0  cmp      r0, #0                          
81352fd2  bne      #0x81353042                     
81352fd4  ldr.w    r0, [fp, #0x18]                   ; this.state
81352fd8  cmp      r0, #2                          
81352fda  bne      #0x81353042                     
81352fdc  ldr.w    r0, [fp, #0x7c]                   ; this.components
81352fe0  movs     r2, #0                          
81352fe2  ldr      r1, [r0, #0x34]                 
81352fe4  ldr      r0, [r0, #0x20]                 
81352fe6  ldr      r1, [r1, #0x10]                 
81352fe8  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81352fec  ldr.w    r0, [fp, #0x24]                   ; this.stats
81352ff0  ldr      r1, [r0, #0xc]                  
81352ff2  subs     r1, #0xa                        
81352ff4  str      r1, [r0, #0xc]                  
81352ff6  ldr.w    r1, [fp, #0x24]                   ; this.stats
81352ffa  ldr      r2, [r1, #0xc]                  
81352ffc  cmp      r2, #0                          
81352ffe  bgt      #0x81353004                     
81353000  ldr      r0, [r1, #0x10]                 
81353002  str      r0, [r1, #0xc]                  
81353004  ldr.w    r0, [fp, #0x7c]                   ; this.components
81353008  ldr      r1, [r0, #0x18]                 
8135300a  ldr.w    r2, [fp, #0x14]                   ; this._player
8135300e  ldr      r3, [r1, #0x1c]                 
81353010  add.w    r0, r3, r2, lsl #2              
81353014  ldr      r0, [r0, #0x10]                 
81353016  ldr      r1, [r0, #8]                    
81353018  ldr      r2, [r1, #0x24]                 
8135301a  ldr      r3, [r2, #0x10]                 
8135301c  vmov     s0, r3                          
81353020  ldr      r1, [r2, #0xc]                  
81353022  vmov.f32 s1, #1.000000e+00               
81353026  vmov     s2, r1                          
8135302a  ldr      r0, [r0, #0x10]                 
8135302c  vcvt.f32.s32 s0, s0                          
81353030  vcvt.f32.s32 s2, s2                          
81353034  movs     r1, #0                          
81353036  vdiv.f32 s0, s1, s0                      
8135303a  vmul.f32 s0, s0, s2                      
8135303e  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81353042  ldr.w    r1, [fp, #0x6c]                   ; this._jump
81353046  cmp      r1, #1                          
81353048  bne      #0x813530b6                     
8135304a  ldr.w    r0, [fp, #0x1c]                   ; this.action
8135304e  cmp      r0, #1                          
81353050  beq      #0x813530b6                     
81353052  movs     r0, #0                          
81353054  ldrb.w   r1, [fp, #0x38]                   ; this.move
81353058  str.w    r0, [fp, #0x6c]                   ; this._jump
8135305c  cbz      r1, #0x8135309a                 
8135305e  movw     r0, #0x45fc                     
81353062  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353066  ldr      r0, [r0]                        
81353068  ldrsb.w  r1, [r0, #0xc2]                 
8135306c  ands     r1, r1, #1                      
81353070  beq      #0x8135307a                     
81353072  ldr      r1, [r0, #0x70]                 
81353074  cbnz     r1, #0x8135307a                 
81353076  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135307a  movs     r0, #0                          
8135307c  movs     r1, #0                          
8135307e  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81353082  vstr     s0, [sp, #0x100]                
81353086  vstr     s2, [sp, #0x108]                
8135308a  vstr     s1, [sp, #0x104]                
8135308e  vstr     s0, [fp, #0x54]                   ; this.moveFight
81353092  vstr     s1, [fp, #0x58]                   ; this.moveFight+4
81353096  vstr     s2, [fp, #0x5c]                   ; this.moveFight+8
8135309a  movw     r1, #0xb3ac                     
8135309e  ldr.w    r0, [fp, #0x7c]                   ; this.components
813530a2  movt     r1, #0x8151                       ; str "jump"
813530a6  ldr      r0, [r0, #0x14]                 
813530a8  movs     r2, #0                          
813530aa  ldr      r1, [r1]                        
813530ac  movs     r3, #0                          
813530ae  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813530b2  ldr.w    r1, [fp, #0x6c]                   ; this._jump
813530b6  ldr.w    r0, [fp, #0x18]                   ; this.state
813530ba  cbnz     r0, #0x813530ec                 
813530bc  cmp      r1, #0                          
813530be  bne.w    #0x81353740                     
813530c2  cmp      r6, #0                          
813530c4  beq.w    #0x81353740                     
813530c8  ldr.w    r1, [fp, #0x1c]                   ; this.action
813530cc  cbz      r1, #0x813530d4                 
813530ce  cmp      r1, #3                          
813530d0  bne.w    #0x81353740                     
813530d4  movw     r2, #0xb398                     
813530d8  ldr.w    r1, [fp, #0x7c]                   ; this.components
813530dc  movt     r2, #0x8151                       ; str "recoverChakra"
813530e0  ldr      r0, [r1, #0x14]                 
813530e2  movs     r3, #0                          
813530e4  ldr      r1, [r2]                        
813530e6  movs     r2, #1                          
813530e8  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813530ec  cmp      r7, #0                          
813530ee  beq.w    #0x81353764                     
813530f2  ldrb.w   r0, [fp, #0x9a]                   ; this.guard
813530f6  cbnz     r0, #0x81353104                 
813530f8  ldrb.w   r0, [fp, #0xa8]                   ; this.oldGUARDbutton
813530fc  cbnz     r0, #0x81353104                 
813530fe  movs     r0, #0                          
81353100  str.w    r0, [fp, #0x94]                   ; this.blockTime
81353104  ldr.w    r0, [fp, #0x24]                   ; this.stats
81353108  ldr      r1, [r0, #0x1c]                 
8135310a  cmp      r1, #0                          
8135310c  ble.w    #0x813532c0                     
81353110  ldr.w    r0, [fp, #0x6c]                   ; this._jump
81353114  cmp      r0, #0                          
81353116  bne.w    #0x813532c0                     
8135311a  ldr.w    r1, [fp, #0x1c]                   ; this.action
8135311e  cbz      r1, #0x81353126                 
81353120  cmp      r1, #2                          
81353122  bne.w    #0x813532c0                     
81353126  ldr.w    r0, [fp, #0x18]                   ; this.state
8135312a  cmp      r0, #0                          
8135312c  bne.w    #0x813532c0                     
81353130  movs     r0, #2                          
81353132  ldr.w    r6, [fp, #0x2c]                   ; this.character
81353136  movs     r1, #1                          
81353138  str.w    r0, [fp, #0x1c]                   ; this.action
8135313c  strb.w   r1, [fp, #0x9a]                   ; this.guard
81353140  movs     r1, #0                          
81353142  ldr      r6, [r6, #0x10]                 
81353144  adds     r0, r6, #0                      
81353146  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135314a  movs     r1, #0                          
8135314c  vmov.f32 s17, s0                         
81353150  vmov.f32 s19, s2                         
81353154  vmov.f32 s18, s1                         
81353158  vstr     s17, [sp, #0x10c]               
8135315c  vstr     s19, [sp, #0x114]               
81353160  vstr     s18, [sp, #0x110]               
81353164  ldr.w    r0, [fp, #0x30]                   ; this.target
81353168  ldr      r2, [r0, #0x2c]                 
8135316a  ldr      r0, [r2, #0x10]                 
8135316c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81353170  movw     r0, #0x45fc                     
81353174  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353178  vmov.f32 s20, s0                         
8135317c  vmov.f32 s22, s2                         
81353180  vmov.f32 s21, s1                         
81353184  ldr      r0, [r0]                        
81353186  vstr     s20, [sp, #0x118]               
8135318a  vstr     s22, [sp, #0x120]               
8135318e  vstr     s21, [sp, #0x11c]               
81353192  ldrsb.w  r1, [r0, #0xc2]                 
81353196  ands     r1, r1, #1                      
8135319a  beq      #0x813531a4                     
8135319c  ldr      r1, [r0, #0x70]                 
8135319e  cbnz     r1, #0x813531a4                 
813531a0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813531a4  vmov.f32 s0, s17                         
813531a8  vmov.f32 s1, s18                         
813531ac  vmov.f32 s2, s19                         
813531b0  vmov.f32 s3, s20                         
813531b4  vmov.f32 s4, s21                         
813531b8  vmov.f32 s5, s22                         
813531bc  movs     r0, #0                          
813531be  movs     r1, #0                          
813531c0  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
813531c4  movs     r0, #0                          
813531c6  movs     r1, #0                          
813531c8  vstr     s0, [sp, #0x124]                
813531cc  vstr     s2, [sp, #0x12c]                
813531d0  vstr     s1, [sp, #0x128]                
813531d4  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
813531d8  movw     r0, #0x4710                     
813531dc  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
813531e0  vmov.f32 s17, s0                         
813531e4  vmov.f32 s19, s2                         
813531e8  vmov.f32 s18, s1                         
813531ec  ldr      r0, [r0]                        
813531ee  vstr     s17, [sp, #0x130]               
813531f2  vstr     s19, [sp, #0x138]               
813531f6  vstr     s18, [sp, #0x134]               
813531fa  ldrsb.w  r1, [r0, #0xc2]                 
813531fe  ands     r1, r1, #1                      
81353202  beq      #0x8135320c                     
81353204  ldr      r1, [r0, #0x70]                 
81353206  cbnz     r1, #0x8135320c                 
81353208  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135320c  vmov.f32 s0, s17                         
81353210  vmov.f32 s1, s18                         
81353214  vmov.f32 s2, s19                         
81353218  movs     r0, #0                          
8135321a  movs     r1, #0                          
8135321c  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81353220  add      r0, sp, #0x268                  
81353222  movs     r1, #0                          
81353224  vstr     s0, [sp, #0x13c]                
81353228  vstr     s3, [sp, #0x148]                
8135322c  vstr     s1, [sp, #0x140]                
81353230  vstr     s2, [sp, #0x144]                
81353234  vstr     s0, [sp, #0x268]                
81353238  vstr     s1, [sp, #0x26c]                
8135323c  vstr     s2, [sp, #0x270]                
81353240  vstr     s3, [sp, #0x274]                
81353244  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81353248  movs     r0, #0                          
8135324a  movs     r2, #0                          
8135324c  vstr     s0, [sp, #0x14c]                
81353250  vmov     s0, r0                          
81353254  vstr     s1, [sp, #0x150]                
81353258  vstr     s2, [sp, #0x154]                
8135325c  strd     r2, r2, [sp, #0x230]            
81353260  add      r0, sp, #0x230                  
81353262  str      r2, [sp, #0x238]                
81353264  movs     r1, #0                          
81353266  vmov.f32 s2, s0                          
8135326a  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135326e  vldr     s0, [sp, #0x230]                
81353272  vldr     s1, [sp, #0x234]                
81353276  vldr     s2, [sp, #0x238]                
8135327a  adds     r0, r6, #0                      
8135327c  movs     r1, #0                          
8135327e  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81353282  ldr.w    r6, [fp, #0x7c]                   ; this.components
81353286  movw     r0, #0x461c                     
8135328a  ldr      r6, [r6, #0x54]                 
8135328c  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81353290  ldr      r0, [r0]                        
81353292  ldrsb.w  r1, [r0, #0xc2]                 
81353296  ands     r1, r1, #1                      
8135329a  beq      #0x813532a4                     
8135329c  ldr      r1, [r0, #0x70]                 
8135329e  cbnz     r1, #0x813532a4                 
813532a0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813532a4  movs     r0, #0                          
813532a6  adds     r1, r6, #0                      
813532a8  movs     r2, #0                          
813532aa  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813532ae  cmp      r0, #0                          
813532b0  beq      #0x813532c0                     
813532b2  ldr.w    r0, [fp, #0x7c]                   ; this.components
813532b6  movs     r1, #1                          
813532b8  ldr      r0, [r0, #0x54]                 
813532ba  movs     r2, #0                          
813532bc  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
813532c0  ldrb.w   r0, [fp, #0x9a]                   ; this.guard
813532c4  cbz      r0, #0x813532d4                 
813532c6  ldrb.w   r0, [fp, #0x38]                   ; this.move
813532ca  cbz      r0, #0x813532d4                 
813532cc  ldr.w    r0, [fp, #0x6c]                   ; this._jump
813532d0  cbnz     r0, #0x813532d4                 
813532d2  movs     r4, #1                          
813532d4  cmp      r5, #0                          
813532d6  beq.w    #0x813539dc                     
813532da  movs     r0, #1                          
813532dc  ldr.w    r1, [fp, #0x7c]                   ; this.components
813532e0  strb.w   r0, [fp, #0xb0]                   ; this.SQUAREbool
813532e4  movw     r0, #0xb394                     
813532e8  ldr      r1, [r1, #0x14]                 
813532ea  movt     r0, #0x8151                       ; str "hit"
813532ee  ldr      r2, [r0]                        
813532f0  adds     r0, r1, #0                      
813532f2  adds     r1, r2, #0                      
813532f4  movs     r2, #1                          
813532f6  movs     r3, #0                          
813532f8  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
813532fc  movw     r0, #0x999a                     
81353300  movt     r0, #0x3e99                       ; = 0x3e99999a
81353304  str.w    r0, [fp, #0xac]                   ; this.SQUAREtime
81353308  ldr.w    r0, [fp, #0x2c]                   ; this.character
8135330c  movs     r1, #0                          
8135330e  ldr.w    r2, [fp, #0x7c]                   ; this.components
81353312  ldr      r0, [r0, #0x10]                 
81353314  ldr      r5, [r2, #0x1c]                 
81353316  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135331a  adds     r0, r5, #0                      
8135331c  movs     r1, #0                          
8135331e  vstr     s0, [sp, #0x158]                
81353322  vstr     s2, [sp, #0x160]                
81353326  vstr     s1, [sp, #0x15c]                
8135332a  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8135332e  cmp      r4, #0                          
81353330  beq      #0x813533f4                     
81353332  movs     r0, #1                          
81353334  ldr.w    r1, [fp, #0x7c]                   ; this.components
81353338  strb.w   r0, [fp, #0xa0]                   ; this.jumpBool
8135333c  movw     r0, #0xb3ac                     
81353340  ldr      r1, [r1, #0x14]                 
81353342  movt     r0, #0x8151                       ; str "jump"
81353346  ldr      r2, [r0]                        
81353348  adds     r0, r1, #0                      
8135334a  adds     r1, r2, #0                      
8135334c  movs     r2, #1                          
8135334e  movs     r3, #0                          
81353350  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353354  ldr.w    r0, [fp, #0x30]                   ; this.target
81353358  movw     r1, #0x999a                     
8135335c  ldr.w    r2, [fp, #0x7c]                   ; this.components
81353360  movt     r1, #0x3e99                       ; = 0x3e99999a
81353364  str.w    r1, [fp, #0x9c]                   ; this.jumpTime
81353368  movs     r1, #0                          
8135336a  ldr      r0, [r0, #0x2c]                 
8135336c  ldr      r4, [r2, #0x1c]                 
8135336e  ldr      r0, [r0, #0x10]                 
81353370  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81353374  adds     r0, r4, #0                      
81353376  movs     r1, #0                          
81353378  vstr     s0, [sp, #0x164]                
8135337c  vstr     s2, [sp, #0x16c]                
81353380  vstr     s1, [sp, #0x168]                
81353384  bl       #0x813a2224                       ; -> UnityEngine.Transform$$LookAt
81353388  ldrb.w   r0, [fp, #0x38]                   ; this.move
8135338c  cmp      r0, #0                          
8135338e  beq.w    #0x81353a9a                     
81353392  ldr.w    r0, [fp, #0x7c]                   ; this.components
81353396  vldr     s17, [fp, #0x64]                  ; this.rot+4
8135339a  movs     r1, #0                          
8135339c  ldr      r0, [r0, #0x1c]                 
8135339e  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
813533a2  movw     r0, #0x4618                     
813533a6  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
813533aa  ldr      r0, [r0]                        
813533ac  vmov.f32 s18, s1                         
813533b0  vstr     s0, [sp, #0x170]                
813533b4  vstr     s2, [sp, #0x178]                
813533b8  vstr     s18, [sp, #0x174]               
813533bc  ldrsb.w  r1, [r0, #0xc2]                 
813533c0  ands     r1, r1, #1                      
813533c4  beq      #0x813533ce                     
813533c6  ldr      r1, [r0, #0x70]                 
813533c8  cbnz     r1, #0x813533ce                 
813533ca  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813533ce  vmov.f32 s0, s17                         
813533d2  vmov.f32 s1, s18                         
813533d6  movs     r0, #0                          
813533d8  movs     r1, #0                          
813533da  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
813533de  movw     r2, #0xb3e8                     
813533e2  ldr.w    r1, [fp, #0x7c]                   ; this.components
813533e6  movt     r2, #0x8151                       ; str "Yrot"
813533ea  ldr      r0, [r1, #0x14]                 
813533ec  ldr      r1, [r2]                        
813533ee  movs     r2, #0                          
813533f0  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
813533f4  ldr.w    r4, [fp, #0x2c]                   ; this.character
813533f8  ldrb     r0, [r4, #0x1c]                 
813533fa  cmp      r0, #0                          
813533fc  beq.w    #0x81353534                     
81353400  ldr.w    r0, [fp, #0x18]                   ; this.state
81353404  cmp      r0, #0                          
81353406  bne.w    #0x81353a18                     
8135340a  ldr.w    r0, [fp, #0x1c]                   ; this.action
8135340e  cmp      r0, #0                          
81353410  bne.w    #0x81353a18                     
81353414  ldrb.w   r0, [fp, #0x38]                   ; this.move
81353418  cmp      r0, #0                          
8135341a  beq.w    #0x81353a18                     
8135341e  ldr.w    r0, [fp, #0x6c]                   ; this._jump
81353422  cmp      r0, #0                          
81353424  bne.w    #0x81353a18                     
81353428  ldr      r4, [r4, #0x10]                 
8135342a  movs     r1, #0                          
8135342c  adds     r0, r4, #0                      
8135342e  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81353432  movs     r0, #0                          
81353434  movs     r1, #0                          
81353436  vmov.f32 s17, s1                         
8135343a  vstr     s0, [sp, #0x194]                
8135343e  vstr     s2, [sp, #0x19c]                
81353442  vstr     s17, [sp, #0x198]               
81353446  vldr     s18, [fp, #0x64]                  ; this.rot+4
8135344a  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8135344e  movw     r0, #0x4618                     
81353452  vmov.f32 s19, s0                         
81353456  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8135345a  ldr      r0, [r0]                        
8135345c  ldrsb.w  r1, [r0, #0xc2]                 
81353460  ands     r1, r1, #1                      
81353464  beq      #0x8135346e                     
81353466  ldr      r1, [r0, #0x70]                 
81353468  cbnz     r1, #0x8135346e                 
8135346a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135346e  movs.w   r0, #0x42000000                 
81353472  vmov.f32 s0, s17                         
81353476  vmov     s2, r0                          
8135347a  vmov.f32 s1, s18                         
8135347e  movs     r0, #0                          
81353480  movs     r1, #0                          
81353482  vmul.f32 s2, s19, s2                     
81353486  bl       #0x812ea05a                       ; -> UnityEngine.Mathf$$LerpAngle
8135348a  vmov.f32 s1, s0                          
8135348e  movs     r0, #0                          
81353490  vmov     s0, r0                          
81353494  movs     r2, #0                          
81353496  strd     r2, r2, [sp, #0x23c]            
8135349a  add      r0, sp, #0x23c                  
8135349c  str      r2, [sp, #0x244]                
8135349e  movs     r1, #0                          
813534a0  vmov.f32 s2, s0                          
813534a4  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813534a8  vldr     s0, [sp, #0x23c]                
813534ac  vldr     s1, [sp, #0x240]                
813534b0  vldr     s2, [sp, #0x244]                
813534b4  adds     r0, r4, #0                      
813534b6  movs     r1, #0                          
813534b8  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
813534bc  ldr.w    r0, [fp, #0x2c]                   ; this.character
813534c0  movs     r1, #0                          
813534c2  ldr      r0, [r0, #0x10]                 
813534c4  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
813534c8  movw     r0, #0x45fc                     
813534cc  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813534d0  vmov.f32 s17, s0                         
813534d4  vmov.f32 s19, s2                         
813534d8  vmov.f32 s18, s1                         
813534dc  ldr      r0, [r0]                        
813534de  vstr     s17, [sp, #0x1a0]               
813534e2  vstr     s19, [sp, #0x1a8]               
813534e6  vstr     s18, [sp, #0x1a4]               
813534ea  ldr.w    r1, [fp, #0x24]                   ; this.stats
813534ee  vldr     s20, [r1, #0x24]                
813534f2  ldrsb.w  r1, [r0, #0xc2]                 
813534f6  ands     r1, r1, #1                      
813534fa  beq      #0x81353504                     
813534fc  ldr      r1, [r0, #0x70]                 
813534fe  cbnz     r1, #0x81353504                 
81353500  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353504  vmov.f32 s0, s17                         
81353508  vmov.f32 s1, s18                         
8135350c  vmov.f32 s2, s19                         
81353510  vmov.f32 s3, s20                         
81353514  movs     r0, #0                          
81353516  movs     r1, #0                          
81353518  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8135351c  vstr     s0, [sp, #0x1ac]                
81353520  vstr     s2, [sp, #0x1b4]                
81353524  vstr     s1, [sp, #0x1b0]                
81353528  vstr     s0, [fp, #0x48]                   ; this.moveSpeed
8135352c  vstr     s1, [fp, #0x4c]                   ; this.moveSpeed+4
81353530  vstr     s2, [fp, #0x50]                   ; this.moveSpeed+8
81353534  movw     r0, #0x45fc                     
81353538  ldr.w    r4, [fp, #0x2c]                   ; this.character
8135353c  vldr     s17, [fp, #0x48]                  ; this.moveSpeed
81353540  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353544  vldr     s18, [fp, #0x4c]                  ; this.moveSpeed+4
81353548  ldr      r0, [r0]                        
8135354a  vldr     s19, [fp, #0x50]                  ; this.moveSpeed+8
8135354e  vldr     s20, [fp, #0x54]                  ; this.moveFight
81353552  ldrsb.w  r1, [r0, #0xc2]                 
81353556  vldr     s21, [fp, #0x58]                  ; this.moveFight+4
8135355a  ands     r1, r1, #1                      
8135355e  vldr     s22, [fp, #0x5c]                  ; this.moveFight+8
81353562  beq      #0x8135356c                     
81353564  ldr      r1, [r0, #0x70]                 
81353566  cbnz     r1, #0x8135356c                 
81353568  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135356c  vmov.f32 s0, s17                         
81353570  vmov.f32 s1, s18                         
81353574  vmov.f32 s2, s19                         
81353578  vmov.f32 s3, s20                         
8135357c  vmov.f32 s4, s21                         
81353580  vmov.f32 s5, s22                         
81353584  movs     r0, #0                          
81353586  movs     r1, #0                          
81353588  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8135358c  movw     r0, #0xb3ec                     
81353590  movt     r0, #0x8151                       ; str "dashTime"
81353594  vstr     s0, [sp, #0x1d0]                
81353598  vstr     s2, [sp, #0x1d8]                
8135359c  vstr     s1, [sp, #0x1d4]                
813535a0  vstr     s0, [r4, #0x24]                 
813535a4  vstr     s1, [r4, #0x28]                 
813535a8  vstr     s2, [r4, #0x2c]                 
813535ac  ldr.w    r1, [fp, #0x2c]                   ; this.character
813535b0  vldr     s0, [r1, #0x34]                 
813535b4  ldr.w    r1, [fp, #0x7c]                   ; this.components
813535b8  movs     r2, #0                          
813535ba  ldr      r3, [r1, #0x14]                 
813535bc  ldr      r1, [r0]                        
813535be  adds     r0, r3, #0                      
813535c0  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
813535c4  ldr.w    r0, [fp, #0x7c]                   ; this.components
813535c8  movw     r1, #0xb3f0                     
813535cc  ldr      r0, [r0, #0x14]                 
813535ce  movt     r1, #0x8151                       ; str "jumpCount"
813535d2  ldr.w    r2, [fp, #0x6c]                   ; this._jump
813535d6  movs     r3, #0                          
813535d8  ldr      r1, [r1]                        
813535da  bl       #0x8126a1f0                       ; -> UnityEngine.Animator$$SetInteger
813535de  ldrb.w   r2, [fp, #0x9a]                   ; this.guard
813535e2  mov      r0, r2                          
813535e4  ldrb.w   r1, [fp, #0x98]                   ; this.oldRtrigger
813535e8  cmp      r1, r0                          
813535ea  beq      #0x8135360a                     
813535ec  movw     r1, #0xb3f4                     
813535f0  ldr.w    r0, [fp, #0x7c]                   ; this.components
813535f4  movt     r1, #0x8151                       ; str "guard"
813535f8  ldr      r0, [r0, #0x14]                 
813535fa  movs     r3, #0                          
813535fc  ldr      r1, [r1]                        
813535fe  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353602  ldrb.w   r0, [fp, #0x9a]                   ; this.guard
81353606  strb.w   r0, [fp, #0x98]                   ; this.oldRtrigger
8135360a  ldrb.w   r2, [fp, #0x38]                   ; this.move
8135360e  mov      r0, r2                          
81353610  ldrb.w   r1, [fp, #0x39]                   ; this.oldMove
81353614  cmp      r1, r0                          
81353616  beq      #0x81353634                     
81353618  movw     r0, #0xb3f8                     
8135361c  ldr.w    r1, [fp, #0x7c]                   ; this.components
81353620  movt     r0, #0x8151                       ; str "move"
81353624  strb.w   r2, [fp, #0x39]                   ; this.oldMove
81353628  ldr      r3, [r0]                        
8135362a  ldr      r0, [r1, #0x14]                 
8135362c  adds     r1, r3, #0                      
8135362e  movs     r3, #0                          
81353630  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353634  ldr.w    r2, [fp, #0x2c]                   ; this.character
81353638  ldrb     r1, [r2, #0x1c]                 
8135363a  mov      r0, r1                          
8135363c  ldrb.w   r3, [fp, #0x74]                   ; this.oldGrounded
81353640  cmp      r3, r0                          
81353642  beq      #0x81353660                     
81353644  movw     r4, #0xb3fc                     
81353648  ldr.w    r3, [fp, #0x7c]                   ; this.components
8135364c  movt     r4, #0x8151                       ; str "grounded"
81353650  strb.w   r1, [fp, #0x74]                   ; this.oldGrounded
81353654  ldr      r0, [r3, #0x14]                 
81353656  movs     r3, #0                          
81353658  ldrb     r2, [r2, #0x1c]                 
8135365a  ldr      r1, [r4]                        
8135365c  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353660  ldr.w    r1, [fp, #0x20]                   ; this.oldAction
81353664  cmp      r1, #1                          
81353666  bne      #0x8135371a                     
81353668  ldr.w    r0, [fp, #0x1c]                   ; this.action
8135366c  cmp      r0, r1                          
8135366e  beq      #0x8135371a                     
81353670  movw     r2, #0xb400                     
81353674  ldr.w    r1, [fp, #0x7c]                   ; this.components
81353678  movt     r2, #0x8151                       ; str "attack"
8135367c  ldr      r0, [r1, #0x14]                 
8135367e  movs     r3, #0                          
81353680  ldr      r1, [r2]                        
81353682  movs     r2, #0                          
81353684  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353688  ldr.w    r1, [fp, #0x18]                   ; this.state
8135368c  cbnz     r1, #0x81353694                 
8135368e  ldr.w    r0, [fp, #0x6c]                   ; this._jump
81353692  cbz      r0, #0x8135369a                 
81353694  cmp      r1, #1                          
81353696  bne.w    #0x813537ba                     
8135369a  movw     r0, #0x45fc                     
8135369e  vldr     s17, [fp, #0x54]                  ; this.moveFight
813536a2  vldr     s18, [fp, #0x58]                  ; this.moveFight+4
813536a6  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813536aa  ldr      r0, [r0]                        
813536ac  vldr     s19, [fp, #0x5c]                  ; this.moveFight+8
813536b0  ldrsb.w  r1, [r0, #0xc2]                 
813536b4  ands     r1, r1, #1                      
813536b8  beq      #0x813536c2                     
813536ba  ldr      r1, [r0, #0x70]                 
813536bc  cbnz     r1, #0x813536c2                 
813536be  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813536c2  movs     r0, #0                          
813536c4  movs     r1, #0                          
813536c6  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813536ca  vmov.f32 s6, #3.000000e+01               
813536ce  movs     r0, #0                          
813536d0  vmov.f32 s3, s0                          
813536d4  vmov.f32 s5, s2                          
813536d8  vmov.f32 s4, s1                          
813536dc  vmul.f32 s6, s16, s6                     
813536e0  vmov.f32 s0, s17                         
813536e4  vmov.f32 s1, s18                         
813536e8  vmov.f32 s2, s19                         
813536ec  movs     r1, #0                          
813536ee  vstr     s3, [sp, #0x1dc]                
813536f2  vstr     s5, [sp, #0x1e4]                
813536f6  vstr     s4, [sp, #0x1e0]                
813536fa  bl       #0x813a3994                       ; -> UnityEngine.Vector3$$MoveTowards
813536fe  vstr     s0, [fp, #0x54]                   ; this.moveFight
81353702  vstr     s2, [fp, #0x5c]                   ; this.moveFight+8
81353706  vstr     s1, [fp, #0x58]                   ; this.moveFight+4
8135370a  ldr.w    r0, [fp, #0x1c]                   ; this.action
8135370e  strb.w   r7, [fp, #0xa8]                   ; this.oldGUARDbutton
81353712  str.w    r0, [fp, #0x20]                   ; this.oldAction
81353716  b.w      #0x8135436c                     
8135371a  ldr.w    r2, [fp, #0x1c]                   ; this.action
8135371e  cmp      r2, #1                          
81353720  bne      #0x81353688                     
81353722  cmp      r2, r1                          
81353724  beq      #0x81353688                     
81353726  movw     r2, #0xb400                     
8135372a  ldr.w    r1, [fp, #0x7c]                   ; this.components
8135372e  movt     r2, #0x8151                       ; str "attack"
81353732  ldr      r0, [r1, #0x14]                 
81353734  movs     r3, #0                          
81353736  ldr      r1, [r2]                        
81353738  movs     r2, #1                          
8135373a  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
8135373e  b        #0x81353688                     
81353740  ldr.w    r0, [fp, #0x1c]                   ; this.action
81353744  cmp      r0, #3                          
81353746  bne.w    #0x813530ec                     
8135374a  movw     r2, #0xb398                     
8135374e  ldr.w    r1, [fp, #0x7c]                   ; this.components
81353752  movt     r2, #0x8151                       ; str "recoverChakra"
81353756  ldr      r0, [r1, #0x14]                 
81353758  movs     r3, #0                          
8135375a  ldr      r1, [r2]                        
8135375c  movs     r2, #0                          
8135375e  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353762  b        #0x813530ec                     
81353764  ldrb.w   r0, [fp, #0x9a]                   ; this.guard
81353768  cmp      r0, #0                          
8135376a  beq.w    #0x813532c0                     
8135376e  movs     r0, #0                          
81353770  strb.w   r0, [fp, #0x9a]                   ; this.guard
81353774  movw     r1, #0x461c                     
81353778  str.w    r0, [fp, #0x1c]                   ; this.action
8135377c  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81353780  ldr      r0, [r1]                        
81353782  ldr.w    r6, [fp, #0x7c]                   ; this.components
81353786  ldrsb.w  r1, [r0, #0xc2]                 
8135378a  ands     r1, r1, #1                      
8135378e  ldr      r6, [r6, #0x54]                 
81353790  beq      #0x8135379a                     
81353792  ldr      r1, [r0, #0x70]                 
81353794  cbnz     r1, #0x8135379a                 
81353796  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135379a  movs     r0, #0                          
8135379c  adds     r1, r6, #0                      
8135379e  movs     r2, #0                          
813537a0  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813537a4  cmp      r0, #0                          
813537a6  beq.w    #0x813532c0                     
813537aa  ldr.w    r0, [fp, #0x7c]                   ; this.components
813537ae  movs     r1, #0                          
813537b0  ldr      r0, [r0, #0x54]                 
813537b2  movs     r2, #0                          
813537b4  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
813537b8  b        #0x813532c0                     
813537ba  ldr.w    r0, [fp, #0x6c]                   ; this._jump
813537be  cmp      r0, #1                          
813537c0  bne      #0x81353840                     
813537c2  cmp      r1, #0                          
813537c4  bne      #0x81353840                     
813537c6  ldr.w    r0, [fp, #0x1c]                   ; this.action
813537ca  cmp      r0, #1                          
813537cc  bne      #0x8135370a                     
813537ce  movw     r0, #0x45fc                     
813537d2  vldr     s17, [fp, #0x54]                  ; this.moveFight
813537d6  vldr     s18, [fp, #0x58]                  ; this.moveFight+4
813537da  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813537de  ldr      r0, [r0]                        
813537e0  vldr     s19, [fp, #0x5c]                  ; this.moveFight+8
813537e4  ldrsb.w  r1, [r0, #0xc2]                 
813537e8  ands     r1, r1, #1                      
813537ec  beq      #0x813537f6                     
813537ee  ldr      r1, [r0, #0x70]                 
813537f0  cbnz     r1, #0x813537f6                 
813537f2  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813537f6  movs     r0, #0                          
813537f8  movs     r1, #0                          
813537fa  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813537fe  vmov.f32 s6, #5.000000e+00               
81353802  movs     r0, #0                          
81353804  vmov.f32 s3, s0                          
81353808  vmov.f32 s5, s2                          
8135380c  vmov.f32 s4, s1                          
81353810  vmul.f32 s6, s16, s6                     
81353814  vmov.f32 s0, s17                         
81353818  vmov.f32 s1, s18                         
8135381c  vmov.f32 s2, s19                         
81353820  movs     r1, #0                          
81353822  vstr     s3, [sp, #0x1f4]                
81353826  vstr     s5, [sp, #0x1fc]                
8135382a  vstr     s4, [sp, #0x1f8]                
8135382e  bl       #0x813a3994                       ; -> UnityEngine.Vector3$$MoveTowards
81353832  vstr     s0, [fp, #0x54]                   ; this.moveFight
81353836  vstr     s2, [fp, #0x5c]                   ; this.moveFight+8
8135383a  vstr     s1, [fp, #0x58]                   ; this.moveFight+4
8135383e  b        #0x8135370a                     
81353840  movw     r0, #0x45fc                     
81353844  vldr     s17, [fp, #0x54]                  ; this.moveFight
81353848  vldr     s18, [fp, #0x58]                  ; this.moveFight+4
8135384c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353850  ldr      r0, [r0]                        
81353852  vldr     s19, [fp, #0x5c]                  ; this.moveFight+8
81353856  ldrsb.w  r1, [r0, #0xc2]                 
8135385a  ands     r1, r1, #1                      
8135385e  beq      #0x81353868                     
81353860  ldr      r1, [r0, #0x70]                 
81353862  cbnz     r1, #0x81353868                 
81353864  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353868  movs     r0, #0                          
8135386a  movs     r1, #0                          
8135386c  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81353870  vmov.f32 s6, #1.000000e+01               
81353874  movs     r0, #0                          
81353876  vmov.f32 s3, s0                          
8135387a  vmov.f32 s5, s2                          
8135387e  vmov.f32 s4, s1                          
81353882  vmul.f32 s6, s16, s6                     
81353886  vmov.f32 s0, s17                         
8135388a  vmov.f32 s1, s18                         
8135388e  vmov.f32 s2, s19                         
81353892  movs     r1, #0                          
81353894  vstr     s3, [sp, #0x20c]                
81353898  vstr     s5, [sp, #0x214]                
8135389c  vstr     s4, [sp, #0x210]                
813538a0  bl       #0x813a3994                       ; -> UnityEngine.Vector3$$MoveTowards
813538a4  vstr     s0, [fp, #0x54]                   ; this.moveFight
813538a8  vstr     s2, [fp, #0x5c]                   ; this.moveFight+8
813538ac  vstr     s1, [fp, #0x58]                   ; this.moveFight+4
813538b0  b        #0x8135370a                     
813538b2  ldrb.w   r0, [fp, #0x9a]                   ; this.guard
813538b6  cbz      r0, #0x813538d6                 
813538b8  movw     r0, #0x999a                     
813538bc  vldr     s0, [fp, #0xa4]                   ; this.hitedTime
813538c0  movt     r0, #0xbf19                       ; = 0xbf19999a
813538c4  vmov     s1, r0                          
813538c8  vcmp.f32 s0, s1                          
813538cc  vmrs     apsr_nzcv, fpscr                
813538d0  bmi      #0x813538d4                     
813538d2  b        #0x81353a14                     
813538d4  movs     r7, #0                          
813538d6  ldr.w    r0, [fp, #0x2c]                   ; this.character
813538da  movs     r1, #0                          
813538dc  ldr      r0, [r0, #0x10]                 
813538de  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813538e2  movs     r1, #0                          
813538e4  vmov.f32 s17, s0                         
813538e8  vmov.f32 s19, s2                         
813538ec  vmov.f32 s18, s1                         
813538f0  vstr     s17, [sp]                       
813538f4  vstr     s19, [sp, #8]                   
813538f8  vstr     s18, [sp, #4]                   
813538fc  ldr.w    r0, [fp, #0x30]                   ; this.target
81353900  ldr      r2, [r0, #0x2c]                 
81353902  ldr      r0, [r2, #0x10]                 
81353904  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81353908  movw     r0, #0x45fc                     
8135390c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353910  vmov.f32 s20, s0                         
81353914  vmov.f32 s22, s2                         
81353918  vmov.f32 s21, s1                         
8135391c  ldr      r0, [r0]                        
8135391e  vstr     s20, [sp, #0xc]                 
81353922  vstr     s22, [sp, #0x14]                
81353926  vstr     s21, [sp, #0x10]                
8135392a  ldrsb.w  r1, [r0, #0xc2]                 
8135392e  ands     r1, r1, #1                      
81353932  beq      #0x8135393c                     
81353934  ldr      r1, [r0, #0x70]                 
81353936  cbnz     r1, #0x8135393c                 
81353938  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135393c  vmov.f32 s0, s17                         
81353940  vmov.f32 s1, s18                         
81353944  vmov.f32 s2, s19                         
81353948  vmov.f32 s3, s20                         
8135394c  vmov.f32 s4, s21                         
81353950  vmov.f32 s5, s22                         
81353954  movs     r0, #0                          
81353956  movs     r1, #0                          
81353958  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8135395c  movs     r0, #0                          
8135395e  movs     r1, #0                          
81353960  vstr     s0, [sp, #0x18]                 
81353964  vstr     s2, [sp, #0x20]                 
81353968  vstr     s1, [sp, #0x1c]                 
8135396c  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81353970  movs     r1, #0                          
81353972  add.w    sb, sp, #0x224                  
81353976  vmov.f32 s17, s0                         
8135397a  vmov.f32 s19, s2                         
8135397e  vmov.f32 s18, s1                         
81353982  vmov     s1, r1                          
81353986  mov      r0, sb                          
81353988  movs     r1, #0                          
8135398a  vstr     s17, [sp, #0x24]                
8135398e  vstr     s19, [sp, #0x2c]                
81353992  vstr     s18, [sp, #0x28]                
81353996  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135399a  mov      r0, sb                          
8135399c  movs     r1, #0                          
8135399e  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
813539a2  ldr.w    r0, [fp, #0x24]                   ; this.stats
813539a6  vmov.f32 s20, s0                         
813539aa  ldr.w    lr, [r0, #0x14]                 
813539ae  ldr      r0, [r0, #0x18]                 
813539b0  cmp      lr, r0                          
813539b2  bge      #0x813539be                     
813539b4  ldr.w    r0, [fp, #0x30]                   ; this.target
813539b8  ldr      r1, [r0, #0x18]                 
813539ba  cmp      r1, #2                          
813539bc  beq      #0x813539d6                     
813539be  cmp.w    lr, #0x96                       
813539c2  bge.w    #0x81353b00                     
813539c6  vmov.f32 s0, #2.000000e+00               
813539ca  vcmp.f32 s20, s0                         
813539ce  vmrs     apsr_nzcv, fpscr                
813539d2  bgt      #0x813539d6                     
813539d4  b        #0x81353b00                     
813539d6  movs     r6, #1                          
813539d8  b.w      #0x81352ea0                     
813539dc  cmp.w    r8, #0                          
813539e0  beq.w    #0x81353308                     
813539e4  movs     r0, #1                          
813539e6  ldr.w    r1, [fp, #0x7c]                   ; this.components
813539ea  strb.w   r0, [fp, #0xb8]                   ; this.THROWbool
813539ee  movw     r0, #0x9848                     
813539f2  ldr      r1, [r1, #0x14]                 
813539f4  movt     r0, #0x8151                       ; str "throw"
813539f8  ldr      r2, [r0]                        
813539fa  adds     r0, r1, #0                      
813539fc  adds     r1, r2, #0                      
813539fe  movs     r2, #1                          
81353a00  movs     r3, #0                          
81353a02  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81353a06  movw     r0, #0x999a                     
81353a0a  movt     r0, #0x3e99                       ; = 0x3e99999a
81353a0e  str.w    r0, [fp, #0xb4]                   ; this.THROWtime
81353a12  b        #0x81353308                     
81353a14  movs     r7, #1                          
81353a16  b        #0x813538d6                     
81353a18  ldr      r4, [r4, #0x10]                 
81353a1a  movs     r1, #0                          
81353a1c  adds     r0, r4, #0                      
81353a1e  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81353a22  movs     r0, #0                          
81353a24  movs     r2, #0                          
81353a26  vstr     s0, [sp, #0x1b8]                
81353a2a  vmov     s0, r0                          
81353a2e  vstr     s1, [sp, #0x1bc]                
81353a32  vstr     s2, [sp, #0x1c0]                
81353a36  strd     r2, r2, [sp, #0x248]            
81353a3a  add      r0, sp, #0x248                  
81353a3c  str      r2, [sp, #0x250]                
81353a3e  movs     r1, #0                          
81353a40  vmov.f32 s2, s0                          
81353a44  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81353a48  vldr     s0, [sp, #0x248]                
81353a4c  vldr     s1, [sp, #0x24c]                
81353a50  vldr     s2, [sp, #0x250]                
81353a54  adds     r0, r4, #0                      
81353a56  movs     r1, #0                          
81353a58  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81353a5c  movw     r0, #0x45fc                     
81353a60  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353a64  ldr      r0, [r0]                        
81353a66  ldrsb.w  r1, [r0, #0xc2]                 
81353a6a  ands     r1, r1, #1                      
81353a6e  beq      #0x81353a78                     
81353a70  ldr      r1, [r0, #0x70]                 
81353a72  cbnz     r1, #0x81353a78                 
81353a74  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353a78  movs     r0, #0                          
81353a7a  movs     r1, #0                          
81353a7c  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81353a80  vstr     s0, [sp, #0x1c4]                
81353a84  vstr     s2, [sp, #0x1cc]                
81353a88  vstr     s1, [sp, #0x1c8]                
81353a8c  vstr     s0, [fp, #0x48]                   ; this.moveSpeed
81353a90  vstr     s1, [fp, #0x4c]                   ; this.moveSpeed+4
81353a94  vstr     s2, [fp, #0x50]                   ; this.moveSpeed+8
81353a98  b        #0x81353534                     
81353a9a  ldr.w    r0, [fp, #0x7c]                   ; this.components
81353a9e  movs     r1, #0                          
81353aa0  ldr      r0, [r0, #0x1c]                 
81353aa2  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81353aa6  movs     r1, #0                          
81353aa8  vmov.f32 s17, s1                         
81353aac  vstr     s0, [sp, #0x17c]                
81353ab0  vstr     s2, [sp, #0x184]                
81353ab4  vstr     s17, [sp, #0x180]               
81353ab8  ldr.w    r0, [fp, #0x7c]                   ; this.components
81353abc  ldr      r0, [r0, #0x1c]                 
81353abe  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81353ac2  movw     r0, #0x4618                     
81353ac6  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
81353aca  ldr      r0, [r0]                        
81353acc  vmov.f32 s18, s1                         
81353ad0  vstr     s0, [sp, #0x188]                
81353ad4  vstr     s2, [sp, #0x190]                
81353ad8  vstr     s18, [sp, #0x18c]               
81353adc  ldrsb.w  r1, [r0, #0xc2]                 
81353ae0  ands     r1, r1, #1                      
81353ae4  beq      #0x81353aee                     
81353ae6  ldr      r1, [r0, #0x70]                 
81353ae8  cbnz     r1, #0x81353aee                 
81353aea  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353aee  vmov.f32 s0, s17                         
81353af2  vmov.f32 s1, s18                         
81353af6  movs     r0, #0                          
81353af8  movs     r1, #0                          
81353afa  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
81353afe  b        #0x813533de                     
81353b00  movs     r0, #0                          
81353b02  movs     r1, #0                          
81353b04  movs     r2, #0x32                       
81353b06  movs     r3, #0                          
81353b08  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353b0c  cmp      r0, #0                          
81353b0e  bne      #0x81353b94                     
81353b10  ldr.w    r0, [fp, #0x7c]                   ; this.components
81353b14  movs     r1, #0                          
81353b16  ldr      r0, [r0, #0x1c]                 
81353b18  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
81353b1c  movs     r0, #0                          
81353b1e  movs     r1, #0                          
81353b20  vmov.f32 s21, s0                         
81353b24  vmov.f32 s23, s2                         
81353b28  vmov.f32 s22, s1                         
81353b2c  vmov.f32 s0, #-3.000000e+00              
81353b30  vmov.f32 s1, #3.000000e+00               
81353b34  vstr     s21, [sp, #0x30]                
81353b38  vstr     s23, [sp, #0x38]                
81353b3c  vstr     s22, [sp, #0x34]                
81353b40  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
81353b44  movw     r0, #0x45fc                     
81353b48  vmov.f32 s24, s0                         
81353b4c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353b50  ldr      r0, [r0]                        
81353b52  ldrsb.w  r1, [r0, #0xc2]                 
81353b56  ands     r1, r1, #1                      
81353b5a  beq      #0x81353b64                     
81353b5c  ldr      r1, [r0, #0x70]                 
81353b5e  cbnz     r1, #0x81353b64                 
81353b60  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353b64  vmov.f32 s0, s21                         
81353b68  vmov.f32 s1, s22                         
81353b6c  vmov.f32 s2, s23                         
81353b70  vmov.f32 s3, s24                         
81353b74  movs     r0, #0                          
81353b76  movs     r1, #0                          
81353b78  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81353b7c  vstr     s0, [sp, #0x3c]                 
81353b80  vstr     s2, [sp, #0x44]                 
81353b84  vstr     s1, [sp, #0x40]                 
81353b88  vstr     s0, [fp, #0xbc]                   ; this.botDirRandom
81353b8c  vstr     s1, [fp, #0xc0]                   ; this.botDirRandom+4
81353b90  vstr     s2, [fp, #0xc4]                   ; this.botDirRandom+8
81353b94  ldr.w    r0, [fp, #0x2c]                   ; this.character
81353b98  ldrb     r0, [r0, #0x1c]                 
81353b9a  cbz      r0, #0x81353bde                 
81353b9c  ldrb.w   r0, [fp, #0xa0]                   ; this.jumpBool
81353ba0  cbnz     r0, #0x81353bde                 
81353ba2  movw     r0, #0x45fc                     
81353ba6  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353baa  ldr      r0, [r0]                        
81353bac  ldrsb.w  r1, [r0, #0xc2]                 
81353bb0  ands     r1, r1, #1                      
81353bb4  beq      #0x81353bbe                     
81353bb6  ldr      r1, [r0, #0x70]                 
81353bb8  cbnz     r1, #0x81353bbe                 
81353bba  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353bbe  movs     r0, #0                          
81353bc0  movs     r1, #0                          
81353bc2  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81353bc6  vstr     s0, [sp, #0x48]                 
81353bca  vstr     s2, [sp, #0x50]                 
81353bce  vstr     s1, [sp, #0x4c]                 
81353bd2  vstr     s0, [fp, #0x3c]                   ; this.dir
81353bd6  vstr     s1, [fp, #0x40]                   ; this.dir+4
81353bda  vstr     s2, [fp, #0x44]                   ; this.dir+8
81353bde  movs     r0, #0                          
81353be0  movs     r1, #0                          
81353be2  movs     r2, #0x32                       
81353be4  movs     r3, #0                          
81353be6  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353bea  vldr     s0, [fp, #0xc8]                   ; this.startAttackDist
81353bee  cmp      r0, #0                          
81353bf0  bne      #0x81353c16                     
81353bf2  movw     r0, #0xcccd                     
81353bf6  movt     r0, #0x3fac                       ; = 0x3faccccd
81353bfa  vmov     s0, r0                          
81353bfe  movw     r0, #0x6666                     
81353c02  movt     r0, #0x3fc6                       ; = 0x3fc66666
81353c06  vmov     s1, r0                          
81353c0a  movs     r0, #0                          
81353c0c  movs     r1, #0                          
81353c0e  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
81353c12  vstr     s0, [fp, #0xc8]                   ; this.startAttackDist
81353c16  vcmp.f32 s20, s0                         
81353c1a  vmrs     apsr_nzcv, fpscr                
81353c1e  bgt      #0x81353c22                     
81353c20  b        #0x81353cf4                     
81353c22  ldr.w    r0, [fp, #0x2c]                   ; this.character
81353c26  ldrb     r0, [r0, #0x1c]                 
81353c28  cmp      r0, #0                          
81353c2a  beq      #0x81353ca0                     
81353c2c  ldrb.w   r0, [fp, #0xa0]                   ; this.jumpBool
81353c30  cmp      r0, #0                          
81353c32  bne      #0x81353ca0                     
81353c34  ldr.w    r0, [fp, #0x30]                   ; this.target
81353c38  ldr      r1, [r0, #0x18]                 
81353c3a  cmp      r1, #2                          
81353c3c  beq.w    #0x813541d0                     
81353c40  movw     r0, #0x45fc                     
81353c44  vldr     s20, [fp, #0xbc]                  ; this.botDirRandom
81353c48  vldr     s21, [fp, #0xc0]                  ; this.botDirRandom+4
81353c4c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353c50  ldr      r0, [r0]                        
81353c52  vldr     s22, [fp, #0xc4]                  ; this.botDirRandom+8
81353c56  ldrsb.w  r1, [r0, #0xc2]                 
81353c5a  ands     r1, r1, #1                      
81353c5e  beq      #0x81353c68                     
81353c60  ldr      r1, [r0, #0x70]                 
81353c62  cbnz     r1, #0x81353c68                 
81353c64  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353c68  vmov.f32 s0, s17                         
81353c6c  vmov.f32 s1, s18                         
81353c70  vmov.f32 s2, s19                         
81353c74  vmov.f32 s3, s20                         
81353c78  vmov.f32 s4, s21                         
81353c7c  vmov.f32 s5, s22                         
81353c80  movs     r0, #0                          
81353c82  movs     r1, #0                          
81353c84  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81353c88  vstr     s0, [sp, #0x54]                 
81353c8c  vstr     s2, [sp, #0x5c]                 
81353c90  vstr     s1, [sp, #0x58]                 
81353c94  vstr     s0, [fp, #0x3c]                   ; this.dir
81353c98  vstr     s1, [fp, #0x40]                   ; this.dir+4
81353c9c  vstr     s2, [fp, #0x44]                   ; this.dir+8
81353ca0  movs     r0, #0                          
81353ca2  movs     r1, #0                          
81353ca4  movs     r2, #0xc8                       
81353ca6  movs     r3, #0                          
81353ca8  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353cac  cmp      r0, #0                          
81353cae  bne      #0x81353cbe                     
81353cb0  ldr.w    r0, [fp, #0x30]                   ; this.target
81353cb4  ldr      r1, [r0, #0x18]                 
81353cb6  cmp      r1, #2                          
81353cb8  beq      #0x81353cbe                     
81353cba  movs.w   r8, #1                          
81353cbe  movs     r0, #0                          
81353cc0  movs     r1, #0                          
81353cc2  movs     r2, #0x50                       
81353cc4  movs     r3, #0                          
81353cc6  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353cca  ldr.w    lr, [fp, #0x30]                   ; this.target
81353cce  cmp      r0, #0                          
81353cd0  ldrb.w   sb, [fp, #0xa0]                   ; this.jumpBool
81353cd4  bne.w    #0x81354054                     
81353cd8  ldr.w    r0, [lr, #0x18]                 
81353cdc  cmp      r0, #2                          
81353cde  beq.w    #0x81354054                     
81353ce2  ldr.w    r0, [fp, #0x6c]                   ; this._jump
81353ce6  cmp      r0, #1                          
81353ce8  ble.w    #0x81354054                     
81353cec  movs.w   r8, #1                          
81353cf0  b.w      #0x81352ea0                     
81353cf4  ldr.w    r0, [fp, #0x18]                   ; this.state
81353cf8  cmp      r0, #0                          
81353cfa  bne.w    #0x81353fca                     
81353cfe  ldr.w    lr, [fp, #0x30]                   ; this.target
81353d02  ldr.w    lr, [lr, #0x18]                 
81353d06  cmp.w    lr, #2                          
81353d0a  beq.w    #0x81353fca                     
81353d0e  cmp.w    lr, #1                          
81353d12  bne.w    #0x81353e7a                     
81353d16  movs     r0, #0                          
81353d18  movs     r1, #0                          
81353d1a  movs     r2, #2                          
81353d1c  movs     r3, #0                          
81353d1e  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353d22  ldr.w    sl, [fp, #0x90]                   ; this.thisAttack
81353d26  mov      sb, r0                          
81353d28  cmp.w    sl, #0                          
81353d2c  beq      #0x81353e1e                     
81353d2e  movw     r0, #0x3878                     
81353d32  ldr.w    sl, [sl, #8]                    
81353d36  movt     r0, #0x8151                       ; string_TypeInfo
81353d3a  ldr      r0, [r0]                        
81353d3c  ldrsb.w  r1, [r0, #0xc2]                 
81353d40  ands     r1, r1, #1                      
81353d44  beq      #0x81353d4e                     
81353d46  ldr      r1, [r0, #0x70]                 
81353d48  cbnz     r1, #0x81353d4e                 
81353d4a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353d4e  movw     r0, #0xb3dc                     
81353d52  movt     r0, #0x8151                       ; str "PunchR"
81353d56  ldr      r2, [r0]                        
81353d58  mov      r1, sl                          
81353d5a  movs     r0, #0                          
81353d5c  movs     r3, #0                          
81353d5e  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81353d62  cmp      r0, #0                          
81353d64  beq      #0x81353e1e                     
81353d66  movs     r0, #0                          
81353d68  movs     r1, #0                          
81353d6a  movs     r2, #0x64                       
81353d6c  movs     r3, #0                          
81353d6e  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353d72  cmp      r0, #0                          
81353d74  bne      #0x81353e1e                     
81353d76  movs     r4, #1                          
81353d78  cmp.w    sb, #0                          
81353d7c  bne.w    #0x8135434e                     
81353d80  movw     r0, #0xb3e4                     
81353d84  ldr.w    r1, [fp, #0x7c]                   ; this.components
81353d88  movt     r0, #0x8151                       ; str "V"
81353d8c  vmov.f32 s0, #1.000000e+00               
81353d90  ldr      r2, [r0]                        
81353d92  ldr      r0, [r1, #0x14]                 
81353d94  adds     r1, r2, #0                      
81353d96  movs     r2, #0                          
81353d98  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
81353d9c  ldr.w    r0, [fp, #0x1c]                   ; this.action
81353da0  cmp      r0, #1                          
81353da2  beq.w    #0x8135424a                     
81353da6  ldr.w    r0, [fp, #0x30]                   ; this.target
81353daa  ldr      r1, [r0, #0x1c]                 
81353dac  cmp      r1, #1                          
81353dae  bne.w    #0x8135424a                     
81353db2  movs     r0, #0                          
81353db4  movs     r1, #0                          
81353db6  movs     r2, #5                          
81353db8  movs     r3, #0                          
81353dba  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353dbe  cmp      r0, #0                          
81353dc0  bne.w    #0x8135424a                     
81353dc4  movw     r0, #0x461c                     
81353dc8  ldr.w    sb, [fp, #0x34]                   ; this.substitution
81353dcc  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81353dd0  ldr      r0, [r0]                        
81353dd2  ldrsb.w  r1, [r0, #0xc2]                 
81353dd6  ands     r1, r1, #1                      
81353dda  beq      #0x81353de4                     
81353ddc  ldr      r1, [r0, #0x70]                 
81353dde  cbnz     r1, #0x81353de4                 
81353de0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353de4  movs     r0, #0                          
81353de6  mov      r1, sb                          
81353de8  movs     r2, #0                          
81353dea  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81353dee  cmp      r0, #0                          
81353df0  bne.w    #0x8135424a                     
81353df4  movw     r0, #0xcccd                     
81353df8  movt     r0, #0xbe4c                       ; = 0xbe4ccccd
81353dfc  vmov     s0, r0                          
81353e00  movw     r0, #0xcccd                     
81353e04  movt     r0, #0x3e4c                       ; = 0x3e4ccccd
81353e08  vmov     s1, r0                          
81353e0c  movs     r7, #1                          
81353e0e  movs     r0, #0                          
81353e10  movs     r1, #0                          
81353e12  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
81353e16  vstr     s0, [fp, #0xa4]                   ; this.hitedTime
81353e1a  b.w      #0x81352ea0                     
81353e1e  ldr.w    sl, [fp, #0x90]                   ; this.thisAttack
81353e22  cmp.w    sl, #0                          
81353e26  beq      #0x81353e70                     
81353e28  movw     r0, #0x3878                     
81353e2c  ldr.w    sl, [sl, #8]                    
81353e30  movt     r0, #0x8151                       ; string_TypeInfo
81353e34  ldr      r0, [r0]                        
81353e36  ldrsb.w  r1, [r0, #0xc2]                 
81353e3a  ands     r1, r1, #1                      
81353e3e  beq      #0x81353e48                     
81353e40  ldr      r1, [r0, #0x70]                 
81353e42  cbnz     r1, #0x81353e48                 
81353e44  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353e48  movw     r0, #0xb3e0                     
81353e4c  movt     r0, #0x8151                       ; str "SideDoubleSlashing"
81353e50  ldr      r2, [r0]                        
81353e52  mov      r1, sl                          
81353e54  movs     r0, #0                          
81353e56  movs     r3, #0                          
81353e58  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81353e5c  cmp      r0, #0                          
81353e5e  beq      #0x81353e70                     
81353e60  movs     r0, #0                          
81353e62  movs     r1, #0                          
81353e64  movs     r2, #6                          
81353e66  movs     r3, #0                          
81353e68  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353e6c  cmp      r0, #0                          
81353e6e  beq      #0x81353e74                     
81353e70  movs     r5, #1                          
81353e72  b        #0x81353d78                     
81353e74  movs.w   r8, #1                          
81353e78  b        #0x81353d78                     
81353e7a  ldrb.w   r0, [fp, #0xa0]                   ; this.jumpBool
81353e7e  cmp      r0, #0                          
81353e80  bne      #0x81353d9c                     
81353e82  ldr.w    lr, [fp, #0x2c]                   ; this.character
81353e86  vldr     s0, [lr, #0x34]                 
81353e8a  movs.w   r0, #0x66666666                 
81353e8e  movw     r1, #0x9999                     
81353e92  rsbs     r0, r0, #0                      
81353e94  vcvt.f64.f32 d16, s0                         
81353e98  movt     r1, #0xbfc9                       ; = 0xbfc99999
81353e9c  vmov     d17, r0, r1                     
81353ea0  vcmp.f64 d16, d17                        
81353ea4  vmrs     apsr_nzcv, fpscr                
81353ea8  bgt      #0x81353eac                     
81353eaa  b        #0x81353f00                     
81353eac  movs     r0, #0                          
81353eae  movs     r1, #0                          
81353eb0  movs     r2, #0x32                       
81353eb2  movs     r3, #0                          
81353eb4  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353eb8  ldr.w    lr, [fp, #0x2c]                   ; this.character
81353ebc  cmp      r0, #0                          
81353ebe  bne      #0x81353f00                     
81353ec0  movw     r0, #0x45fc                     
81353ec4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353ec8  ldr      r0, [r0]                        
81353eca  ldrsb.w  r1, [r0, #0xc2]                 
81353ece  ands     r1, r1, #1                      
81353ed2  beq      #0x81353edc                     
81353ed4  ldr      r1, [r0, #0x70]                 
81353ed6  cbnz     r1, #0x81353edc                 
81353ed8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353edc  movs     r0, #0                          
81353ede  movs     r1, #0                          
81353ee0  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81353ee4  movs     r4, #1                          
81353ee6  vstr     s0, [sp, #0x9c]                 
81353eea  vstr     s2, [sp, #0xa4]                 
81353eee  vstr     s1, [sp, #0xa0]                 
81353ef2  vstr     s0, [fp, #0x3c]                   ; this.dir
81353ef6  vstr     s1, [fp, #0x40]                   ; this.dir+4
81353efa  vstr     s2, [fp, #0x44]                   ; this.dir+8
81353efe  b        #0x81353d9c                     
81353f00  ldr.w    r0, [fp, #0x6c]                   ; this._jump
81353f04  cmp      r0, #0                          
81353f06  ble.w    #0x81353d9c                     
81353f0a  vldr     s0, [lr, #0x34]                 
81353f0e  movs.w   r0, #0x66666666                 
81353f12  movw     r1, #0x9999                     
81353f16  rsbs     r0, r0, #0                      
81353f18  vcvt.f64.f32 d16, s0                         
81353f1c  movt     r1, #0xbfc9                       ; = 0xbfc99999
81353f20  vmov     d17, r0, r1                     
81353f24  vcmp.f64 d16, d17                        
81353f28  vmrs     apsr_nzcv, fpscr                
81353f2c  bmi      #0x81353f30                     
81353f2e  b        #0x81353d9c                     
81353f30  movs     r0, #0                          
81353f32  movs     r1, #0                          
81353f34  movs     r2, #0xa                        
81353f36  movs     r3, #0                          
81353f38  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81353f3c  cmp      r0, #0                          
81353f3e  bne.w    #0x81353d9c                     
81353f42  ldr.w    r0, [fp, #0x7c]                   ; this.components
81353f46  movs     r4, #1                          
81353f48  ldr      r0, [r0, #0x1c]                 
81353f4a  movs     r1, #0                          
81353f4c  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
81353f50  movs     r0, #0                          
81353f52  movs     r1, #0                          
81353f54  vmov.f32 s17, s0                         
81353f58  vmov.f32 s19, s2                         
81353f5c  vmov.f32 s18, s1                         
81353f60  vmov.f32 s0, #-3.000000e+00              
81353f64  vmov.f32 s1, #3.000000e+00               
81353f68  vstr     s17, [sp, #0xa8]                
81353f6c  vstr     s19, [sp, #0xb0]                
81353f70  vstr     s18, [sp, #0xac]                
81353f74  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
81353f78  movw     r0, #0x45fc                     
81353f7c  vmov.f32 s20, s0                         
81353f80  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353f84  ldr      r0, [r0]                        
81353f86  ldrsb.w  r1, [r0, #0xc2]                 
81353f8a  ands     r1, r1, #1                      
81353f8e  beq      #0x81353f98                     
81353f90  ldr      r1, [r0, #0x70]                 
81353f92  cbnz     r1, #0x81353f98                 
81353f94  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81353f98  vmov.f32 s0, s17                         
81353f9c  vmov.f32 s1, s18                         
81353fa0  vmov.f32 s2, s19                         
81353fa4  vmov.f32 s3, s20                         
81353fa8  movs     r0, #0                          
81353faa  movs     r1, #0                          
81353fac  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81353fb0  vstr     s0, [sp, #0xb4]                 
81353fb4  vstr     s2, [sp, #0xbc]                 
81353fb8  vstr     s1, [sp, #0xb8]                 
81353fbc  vstr     s0, [fp, #0x3c]                   ; this.dir
81353fc0  vstr     s1, [fp, #0x40]                   ; this.dir+4
81353fc4  vstr     s2, [fp, #0x44]                   ; this.dir+8
81353fc8  b        #0x81353d9c                     
81353fca  ldr.w    r0, [fp, #0x30]                   ; this.target
81353fce  ldr      r1, [r0, #0x18]                 
81353fd0  cmp      r1, #2                          
81353fd2  bne.w    #0x81352ea0                     
81353fd6  vmov.f32 s0, #6.000000e+00               
81353fda  vcmp.f32 s20, s0                         
81353fde  vmrs     apsr_nzcv, fpscr                
81353fe2  bmi      #0x81353fe8                     
81353fe4  b.w      #0x81352ea0                     
81353fe8  movw     r0, #0x45fc                     
81353fec  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81353ff0  ldr      r0, [r0]                        
81353ff2  ldrsb.w  r1, [r0, #0xc2]                 
81353ff6  ands     r1, r1, #1                      
81353ffa  beq      #0x81354004                     
81353ffc  ldr      r1, [r0, #0x70]                 
81353ffe  cbnz     r1, #0x81354004                 
81354000  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354004  vmov.f32 s0, s17                         
81354008  vmov.f32 s1, s18                         
8135400c  vmov.f32 s2, s19                         
81354010  movs     r0, #0                          
81354012  movs     r1, #0                          
81354014  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81354018  movs     r0, #0                          
8135401a  movs     r1, #0                          
8135401c  vstr     s0, [sp, #0xc0]                 
81354020  vstr     s2, [sp, #0xc8]                 
81354024  vstr     s1, [sp, #0xc4]                 
81354028  vldr     s3, [fp, #0xbc]                   ; this.botDirRandom
8135402c  vldr     s4, [fp, #0xc0]                   ; this.botDirRandom+4
81354030  vldr     s5, [fp, #0xc4]                   ; this.botDirRandom+8
81354034  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81354038  vstr     s0, [sp, #0xcc]                 
8135403c  vstr     s2, [sp, #0xd4]                 
81354040  vstr     s1, [sp, #0xd0]                 
81354044  vstr     s0, [fp, #0x3c]                   ; this.dir
81354048  vstr     s1, [fp, #0x40]                   ; this.dir+4
8135404c  vstr     s2, [fp, #0x44]                   ; this.dir+8
81354050  b.w      #0x81352ea0                     
81354054  ldr.w    r0, [lr, #0x18]                 
81354058  cmp      r0, #2                          
8135405a  beq.w    #0x81352ea0                     
8135405e  cmp.w    sb, #0                          
81354062  bne.w    #0x81352ea0                     
81354066  ldr.w    r0, [fp, #0x6c]                   ; this._jump
8135406a  cbnz     r0, #0x81354082                 
8135406c  movs     r0, #0                          
8135406e  movs     r1, #0                          
81354070  movs     r2, #0x64                       
81354072  movs     r3, #0                          
81354074  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81354078  cmp      r0, #0                          
8135407a  bne      #0x81354082                     
8135407c  movs     r4, #1                          
8135407e  b.w      #0x81352ea0                     
81354082  ldr.w    lr, [fp, #0x2c]                   ; this.character
81354086  vldr     s0, [lr, #0x34]                 
8135408a  movs.w   r0, #0x66666666                 
8135408e  movw     r1, #0x9999                     
81354092  rsbs     r0, r0, #0                      
81354094  vcvt.f64.f32 d16, s0                         
81354098  movt     r1, #0xbfc9                       ; = 0xbfc99999
8135409c  vmov     d17, r0, r1                     
813540a0  vcmp.f64 d16, d17                        
813540a4  vmrs     apsr_nzcv, fpscr                
813540a8  bgt      #0x813540ac                     
813540aa  b        #0x81354102                     
813540ac  movs     r0, #0                          
813540ae  movs     r1, #0                          
813540b0  movs     r2, #0x46                       
813540b2  movs     r3, #0                          
813540b4  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
813540b8  ldr.w    lr, [fp, #0x2c]                   ; this.character
813540bc  cmp      r0, #0                          
813540be  bne      #0x81354102                     
813540c0  movw     r0, #0x45fc                     
813540c4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813540c8  ldr      r0, [r0]                        
813540ca  ldrsb.w  r1, [r0, #0xc2]                 
813540ce  ands     r1, r1, #1                      
813540d2  beq      #0x813540dc                     
813540d4  ldr      r1, [r0, #0x70]                 
813540d6  cbnz     r1, #0x813540dc                 
813540d8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813540dc  movs     r0, #0                          
813540de  movs     r1, #0                          
813540e0  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813540e4  movs     r4, #1                          
813540e6  vstr     s0, [sp, #0x78]                 
813540ea  vstr     s2, [sp, #0x80]                 
813540ee  vstr     s1, [sp, #0x7c]                 
813540f2  vstr     s0, [fp, #0x3c]                   ; this.dir
813540f6  vstr     s1, [fp, #0x40]                   ; this.dir+4
813540fa  vstr     s2, [fp, #0x44]                   ; this.dir+8
813540fe  b.w      #0x81352ea0                     
81354102  ldr.w    r0, [fp, #0x6c]                   ; this._jump
81354106  cmp      r0, #0                          
81354108  ble.w    #0x81352ea0                     
8135410c  vldr     s0, [lr, #0x34]                 
81354110  movs.w   r0, #0x66666666                 
81354114  movw     r1, #0x9999                     
81354118  rsbs     r0, r0, #0                      
8135411a  vcvt.f64.f32 d16, s0                         
8135411e  movt     r1, #0xbfc9                       ; = 0xbfc99999
81354122  vmov     d17, r0, r1                     
81354126  vcmp.f64 d16, d17                        
8135412a  vmrs     apsr_nzcv, fpscr                
8135412e  bmi      #0x81354134                     
81354130  b.w      #0x81352ea0                     
81354134  movs     r0, #0                          
81354136  movs     r1, #0                          
81354138  movs     r2, #0xa                        
8135413a  movs     r3, #0                          
8135413c  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81354140  cmp      r0, #0                          
81354142  bne.w    #0x81352ea0                     
81354146  ldr.w    r0, [fp, #0x7c]                   ; this.components
8135414a  movs     r4, #1                          
8135414c  ldr      r0, [r0, #0x1c]                 
8135414e  movs     r1, #0                          
81354150  bl       #0x813a0f74                       ; -> UnityEngine.Transform$$get_right
81354154  movs     r0, #0                          
81354156  movs     r1, #0                          
81354158  vmov.f32 s17, s0                         
8135415c  vmov.f32 s19, s2                         
81354160  vmov.f32 s18, s1                         
81354164  vmov.f32 s0, #-3.000000e+00              
81354168  vmov.f32 s1, #3.000000e+00               
8135416c  vstr     s17, [sp, #0x84]                
81354170  vstr     s19, [sp, #0x8c]                
81354174  vstr     s18, [sp, #0x88]                
81354178  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
8135417c  movw     r0, #0x45fc                     
81354180  vmov.f32 s20, s0                         
81354184  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81354188  ldr      r0, [r0]                        
8135418a  ldrsb.w  r1, [r0, #0xc2]                 
8135418e  ands     r1, r1, #1                      
81354192  beq      #0x8135419c                     
81354194  ldr      r1, [r0, #0x70]                 
81354196  cbnz     r1, #0x8135419c                 
81354198  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135419c  vmov.f32 s0, s17                         
813541a0  vmov.f32 s1, s18                         
813541a4  vmov.f32 s2, s19                         
813541a8  vmov.f32 s3, s20                         
813541ac  movs     r0, #0                          
813541ae  movs     r1, #0                          
813541b0  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813541b4  vstr     s0, [sp, #0x90]                 
813541b8  vstr     s2, [sp, #0x98]                 
813541bc  vstr     s1, [sp, #0x94]                 
813541c0  vstr     s0, [fp, #0x3c]                   ; this.dir
813541c4  vstr     s1, [fp, #0x40]                   ; this.dir+4
813541c8  vstr     s2, [fp, #0x44]                   ; this.dir+8
813541cc  b.w      #0x81352ea0                     
813541d0  vmov.f32 s0, #6.000000e+00               
813541d4  vcmp.f32 s20, s0                         
813541d8  vmrs     apsr_nzcv, fpscr                
813541dc  bmi      #0x813541e0                     
813541de  b        #0x81353ca0                     
813541e0  movw     r0, #0x45fc                     
813541e4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813541e8  ldr      r0, [r0]                        
813541ea  ldrsb.w  r1, [r0, #0xc2]                 
813541ee  ands     r1, r1, #1                      
813541f2  beq      #0x813541fc                     
813541f4  ldr      r1, [r0, #0x70]                 
813541f6  cbnz     r1, #0x813541fc                 
813541f8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813541fc  vmov.f32 s0, s17                         
81354200  vmov.f32 s1, s18                         
81354204  vmov.f32 s2, s19                         
81354208  movs     r0, #0                          
8135420a  movs     r1, #0                          
8135420c  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81354210  movs     r0, #0                          
81354212  movs     r1, #0                          
81354214  vstr     s0, [sp, #0x60]                 
81354218  vstr     s2, [sp, #0x68]                 
8135421c  vstr     s1, [sp, #0x64]                 
81354220  vldr     s3, [fp, #0xbc]                   ; this.botDirRandom
81354224  vldr     s4, [fp, #0xc0]                   ; this.botDirRandom+4
81354228  vldr     s5, [fp, #0xc4]                   ; this.botDirRandom+8
8135422c  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81354230  vstr     s0, [sp, #0x6c]                 
81354234  vstr     s2, [sp, #0x74]                 
81354238  vstr     s1, [sp, #0x70]                 
8135423c  vstr     s0, [fp, #0x3c]                   ; this.dir
81354240  vstr     s1, [fp, #0x40]                   ; this.dir+4
81354244  vstr     s2, [fp, #0x44]                   ; this.dir+8
81354248  b        #0x81353ca0                     
8135424a  movs     r0, #0                          
8135424c  movs     r1, #0                          
8135424e  movs     r2, #2                          
81354250  movs     r3, #0                          
81354252  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81354256  ldr.w    sl, [fp, #0x90]                   ; this.thisAttack
8135425a  mov      sb, r0                          
8135425c  cmp.w    sl, #0                          
81354260  beq      #0x813542d2                     
81354262  movw     r0, #0x3878                     
81354266  ldr.w    sl, [sl, #8]                    
8135426a  movt     r0, #0x8151                       ; string_TypeInfo
8135426e  ldr      r0, [r0]                        
81354270  ldrsb.w  r1, [r0, #0xc2]                 
81354274  ands     r1, r1, #1                      
81354278  beq      #0x81354282                     
8135427a  ldr      r1, [r0, #0x70]                 
8135427c  cbnz     r1, #0x81354282                 
8135427e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354282  movw     r0, #0xb3dc                     
81354286  movt     r0, #0x8151                       ; str "PunchR"
8135428a  ldr      r2, [r0]                        
8135428c  mov      r1, sl                          
8135428e  movs     r0, #0                          
81354290  movs     r3, #0                          
81354292  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81354296  cmp      r0, #0                          
81354298  beq      #0x813542d2                     
8135429a  movs     r0, #0                          
8135429c  movs     r1, #0                          
8135429e  movs     r2, #0x64                       
813542a0  movs     r3, #0                          
813542a2  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
813542a6  cmp      r0, #0                          
813542a8  bne      #0x813542d2                     
813542aa  movs     r4, #1                          
813542ac  cmp.w    sb, #0                          
813542b0  bne      #0x8135432e                     
813542b2  movw     r0, #0xb3e4                     
813542b6  ldr.w    r1, [fp, #0x7c]                   ; this.components
813542ba  movt     r0, #0x8151                       ; str "V"
813542be  vmov.f32 s0, #1.000000e+00               
813542c2  ldr      r2, [r0]                        
813542c4  ldr      r0, [r1, #0x14]                 
813542c6  adds     r1, r2, #0                      
813542c8  movs     r2, #0                          
813542ca  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
813542ce  b.w      #0x81352ea0                     
813542d2  ldr.w    sl, [fp, #0x90]                   ; this.thisAttack
813542d6  cmp.w    sl, #0                          
813542da  beq      #0x81354324                     
813542dc  movw     r0, #0x3878                     
813542e0  ldr.w    sl, [sl, #8]                    
813542e4  movt     r0, #0x8151                       ; string_TypeInfo
813542e8  ldr      r0, [r0]                        
813542ea  ldrsb.w  r1, [r0, #0xc2]                 
813542ee  ands     r1, r1, #1                      
813542f2  beq      #0x813542fc                     
813542f4  ldr      r1, [r0, #0x70]                 
813542f6  cbnz     r1, #0x813542fc                 
813542f8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813542fc  movw     r0, #0xb3e0                     
81354300  movt     r0, #0x8151                       ; str "SideDoubleSlashing"
81354304  ldr      r2, [r0]                        
81354306  mov      r1, sl                          
81354308  movs     r0, #0                          
8135430a  movs     r3, #0                          
8135430c  bl       #0x81188b1c                       ; -> System.String$$op_Equality
81354310  cmp      r0, #0                          
81354312  beq      #0x81354324                     
81354314  movs     r0, #0                          
81354316  movs     r1, #0                          
81354318  movs     r2, #6                          
8135431a  movs     r3, #0                          
8135431c  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
81354320  cmp      r0, #0                          
81354322  beq      #0x81354328                     
81354324  movs     r5, #1                          
81354326  b        #0x813542ac                     
81354328  movs.w   r8, #1                          
8135432c  b        #0x813542ac                     
8135432e  movw     r0, #0xb3e4                     
81354332  ldr.w    r1, [fp, #0x7c]                   ; this.components
81354336  movt     r0, #0x8151                       ; str "V"
8135433a  vmov.f32 s0, #-1.000000e+00              
8135433e  ldr      r2, [r0]                        
81354340  ldr      r0, [r1, #0x14]                 
81354342  adds     r1, r2, #0                      
81354344  movs     r2, #0                          
81354346  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
8135434a  b.w      #0x81352ea0                     
8135434e  movw     r0, #0xb3e4                     
81354352  ldr.w    r1, [fp, #0x7c]                   ; this.components
81354356  movt     r0, #0x8151                       ; str "V"
8135435a  vmov.f32 s0, #-1.000000e+00              
8135435e  ldr      r2, [r0]                        
81354360  ldr      r0, [r1, #0x14]                 
81354362  adds     r1, r2, #0                      
81354364  movs     r2, #0                          
81354366  bl       #0x8126a148                       ; -> UnityEngine.Animator$$SetFloat
8135436a  b        #0x81353d9c                     
8135436c  ldr      r1, [sp, #0x278]                
8135436e  movw     r0, #0x2514                     
81354372  movt     r0, #0x813e                       ; = 0x813e2514
81354376  ldr      r0, [r0]                        
81354378  cmp      r0, r1                          
8135437a  bne      #0x81354388                     
8135437c  add.w    sp, sp, #0x27c                  
81354380  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25}
81354384  pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
81354388  blx      #0x813e1118                       ; -> __stack_chk_fail
8135438c  nop                                      
8135438e  bx       lr                              

; ==== controller$$OnGUI  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== controller.Bones$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.Sounds$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.Attacks$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.BreakedGuard$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.CharStats$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.Components$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller._Particles$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.<recoverChakra>c__Iterator0$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.<recoverChakra>c__Iterator0$$MoveNext  @ 0x81354c72 .. 0x81354d86
81354c72  push     {r4, r5, r6, lr}                
81354c74  movw     r1, #0x34e5                     
81354c78  movt     r1, #0x8151                       ; = 0x815134e5
81354c7c  ldrb     r1, [r1]                        
81354c7e  adds     r4, r0, #0                      
81354c80  cbnz     r1, #0x81354c9c                 
81354c82  movw     r0, #0x2c5c                     
81354c86  movt     r0, #0x814c                       ; = 0x814c2c5c
81354c8a  ldr      r0, [r0]                        
81354c8c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81354c90  movw     r0, #0x34e5                     
81354c94  movt     r0, #0x8151                       ; = 0x815134e5
81354c98  movs     r1, #1                          
81354c9a  strb     r1, [r0]                        
81354c9c  movs.w   r0, #-1                         
81354ca0  ldr      r1, [r4, #0x14]                   ; this._PC
81354ca2  cmp      r1, #1                          
81354ca4  str      r0, [r4, #0x14]                   ; this._PC
81354ca6  bls      #0x81354cb0                     
81354ca8  cmp      r1, #2                          
81354caa  bls      #0x81354cb0                     
81354cac  movs     r0, #0                          
81354cae  b        #0x81354d84                     
81354cb0  ldr      r2, [r4, #8]                      ; this._this
81354cb2  ldr      r0, [r2, #0x18]                 
81354cb4  cmp      r0, #0                          
81354cb6  bne      #0x81354d1a                     
81354cb8  ldr      r1, [r2, #0x24]                 
81354cba  ldr      r3, [r1, #0x14]                 
81354cbc  ldr      r5, [r1, #0x18]                 
81354cbe  cmp      r3, r5                          
81354cc0  bge      #0x81354d1a                     
81354cc2  ldr      r0, [r2, #0x1c]                 
81354cc4  adds     r2, r3, #5                      
81354cc6  cmp      r0, #3                          
81354cc8  beq      #0x81354ccc                     
81354cca  adds     r2, r3, #1                      
81354ccc  ldr      r3, [r4, #8]                      ; this._this
81354cce  str      r2, [r1, #0x14]                 
81354cd0  ldr      r1, [r3, #0x24]                 
81354cd2  ldr      r5, [r1, #0x14]                 
81354cd4  ldr      r2, [r1, #0x18]                 
81354cd6  cmp      r5, r2                          
81354cd8  blt      #0x81354cde                     
81354cda  str      r2, [r1, #0x14]                 
81354cdc  ldr      r3, [r4, #8]                      ; this._this
81354cde  ldr      r0, [r3, #0x7c]                 
81354ce0  ldr      r1, [r0, #0x18]                 
81354ce2  ldr      r2, [r3, #0x14]                 
81354ce4  ldr      r3, [r1, #0x1c]                 
81354ce6  add.w    r0, r3, r2, lsl #2              
81354cea  ldr      r0, [r0, #0x10]                 
81354cec  ldr      r1, [r0, #8]                    
81354cee  ldr      r2, [r1, #0x24]                 
81354cf0  ldr      r3, [r2, #0x18]                 
81354cf2  vmov     s0, r3                          
81354cf6  ldr      r1, [r2, #0x14]                 
81354cf8  vmov.f32 s2, #1.000000e+00               
81354cfc  vmov     s1, r1                          
81354d00  ldr      r0, [r0, #0x14]                 
81354d02  vcvt.f32.s32 s0, s0                          
81354d06  vcvt.f32.s32 s1, s1                          
81354d0a  movs     r1, #0                          
81354d0c  vdiv.f32 s0, s2, s0                      
81354d10  vmul.f32 s0, s0, s1                      
81354d14  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81354d18  ldr      r2, [r4, #8]                      ; this._this
81354d1a  ldr      r0, [r2, #0x1c]                 
81354d1c  cmp      r0, #3                          
81354d1e  bne      #0x81354d52                     
81354d20  movw     r0, #0x4bc8                     
81354d24  movt     r0, #0x8151                       ; UnityEngine.WaitForSeconds_TypeInfo
81354d28  ldr      r0, [r0]                        
81354d2a  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354d2e  adds     r5, r0, #0                      
81354d30  movw     r0, #0x5c29                     
81354d34  movt     r0, #0x3d8f                       ; = 0x3d8f5c29
81354d38  vmov     s0, r0                          
81354d3c  adds     r0, r5, #0                      
81354d3e  movs     r1, #0                          
81354d40  bl       #0x813a5648                       ; -> UnityEngine.WaitForSeconds$$.ctor
81354d44  ldrb     r0, [r4, #0x10]                   ; this._disposing
81354d46  str      r5, [r4, #0xc]                    ; this._current
81354d48  cbnz     r0, #0x81354d4e                 
81354d4a  movs     r0, #1                          
81354d4c  str      r0, [r4, #0x14]                   ; this._PC
81354d4e  movs     r0, #1                          
81354d50  b        #0x81354d84                     
81354d52  movw     r0, #0x4bc8                     
81354d56  movt     r0, #0x8151                       ; UnityEngine.WaitForSeconds_TypeInfo
81354d5a  ldr      r0, [r0]                        
81354d5c  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354d60  adds     r5, r0, #0                      
81354d62  movw     r0, #0xcccd                     
81354d66  movt     r0, #0x3e4c                       ; = 0x3e4ccccd
81354d6a  vmov     s0, r0                          
81354d6e  adds     r0, r5, #0                      
81354d70  movs     r1, #0                          
81354d72  bl       #0x813a5648                       ; -> UnityEngine.WaitForSeconds$$.ctor
81354d76  ldrb     r0, [r4, #0x10]                   ; this._disposing
81354d78  cmp      r0, #0                          
81354d7a  str      r5, [r4, #0xc]                    ; this._current
81354d7c  bne      #0x81354d4e                     
81354d7e  movs     r0, #2                          
81354d80  str      r0, [r4, #0x14]                   ; this._PC
81354d82  b        #0x81354d4e                     
81354d84  pop      {r4, r5, r6, pc}                

; ==== controller.<recoverChakra>c__Iterator0$$System.Collections.Generic.IEnumerator<object>.get_Current  @ 0x81006cd0 .. 0x81006cd4
81006cd0  ldr      r0, [r0, #0xc]                    ; this._current
81006cd2  bx       lr                              

; ==== controller.<recoverChakra>c__Iterator0$$System.Collections.IEnumerator.get_Current  @ 0x81006cd0 .. 0x81006cd4
81006cd0  ldr      r0, [r0, #0xc]                    ; this._current
81006cd2  bx       lr                              

; ==== controller.<recoverChakra>c__Iterator0$$Dispose  @ 0x810bc7bc .. 0x810bc7c8
810bc7bc  movs     r1, #1                          
810bc7be  strb     r1, [r0, #0x10]                   ; this._disposing
810bc7c0  movs.w   r1, #-1                         
810bc7c4  str      r1, [r0, #0x14]                   ; this._PC
810bc7c6  bx       lr                              

; ==== controller.<recoverChakra>c__Iterator0$$Reset  @ 0x81354d86 .. 0x81354ddc
81354d86  push     {r4, lr}                        
81354d88  movw     r0, #0x34e6                     
81354d8c  movt     r0, #0x8151                       ; = 0x815134e6
81354d90  ldrb     r0, [r0]                        
81354d92  cbnz     r0, #0x81354dae                 
81354d94  movw     r0, #0x2c60                     
81354d98  movt     r0, #0x814c                       ; = 0x814c2c60
81354d9c  ldr      r0, [r0]                        
81354d9e  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81354da2  movw     r0, #0x34e6                     
81354da6  movt     r0, #0x8151                       ; = 0x815134e6
81354daa  movs     r1, #1                          
81354dac  strb     r1, [r0]                        
81354dae  movw     r0, #0x3928                     
81354db2  movt     r0, #0x8151                       ; System.NotSupportedException_TypeInfo
81354db6  ldr      r0, [r0]                        
81354db8  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354dbc  adds     r4, r0, #0                      
81354dbe  movs     r1, #0                          
81354dc0  bl       #0x81136302                       ; -> System.NotSupportedException$$.ctor
81354dc4  movw     r0, #0x8024                     
81354dc8  movt     r0, #0x8151                       ; Method$controller.<recoverChakra>c__Iterator0.Reset()
81354dcc  ldr      r2, [r0]                        
81354dce  adds     r0, r4, #0                      
81354dd0  movs     r1, #0                          
81354dd2  bl       #0x8129f0aa                       ; -> il2cpp_throw_NotSupportedException(iterator Reset)
81354dd6  bl       #0x81000d00                       ; -> System.Object$$.ctor
81354dda  pop      {r4, pc}                        

; ==== controller.<Substitution>c__Iterator1$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.<Substitution>c__Iterator1$$MoveNext  @ 0x81354390 .. 0x81354af2
81354390  push     {r4, r5, r6, r7, lr}            
81354392  vpush    {s16, s17, s18, s19, s20, s21, s22, s23}
81354396  sub      sp, #0x154                      
81354398  movw     r7, #0x2514                     
8135439c  movt     r7, #0x813e                       ; = 0x813e2514
813543a0  ldr      r1, [r7]                        
813543a2  str      r1, [sp, #0x150]                
813543a4  movw     r1, #0x34e1                     
813543a8  movt     r1, #0x8151                       ; = 0x815134e1
813543ac  ldrb     r1, [r1]                        
813543ae  adds     r6, r0, #0                      
813543b0  cbnz     r1, #0x813543cc                 
813543b2  movw     r0, #0x2c44                     
813543b6  movt     r0, #0x814c                       ; = 0x814c2c44
813543ba  ldr      r0, [r0]                        
813543bc  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813543c0  movw     r0, #0x34e1                     
813543c4  movt     r0, #0x8151                       ; = 0x815134e1
813543c8  movs     r1, #1                          
813543ca  strb     r1, [r0]                        
813543cc  movs     r0, #0                          
813543ce  movs     r1, #0                          
813543d0  strd     r0, r1, [sp, #0x140]            
813543d4  movs.w   r2, #-1                         
813543d8  strd     r0, r1, [sp, #0x148]            
813543dc  ldr      r1, [r6, #0x2c]                   ; this._PC
813543de  cmp      r1, #0                          
813543e0  str      r2, [r6, #0x2c]                   ; this._PC
813543e2  beq.w    #0x81354758                     
813543e6  cmp      r1, #1                          
813543e8  bhi.w    #0x81354a4a                     
813543ec  movs     r0, #0                          
813543ee  vldr     s0, [r6, #0x1c]                   ; this._time___0
813543f2  vmov     s1, r0                          
813543f6  vcmp.f32 s0, s1                          
813543fa  vmrs     apsr_nzcv, fpscr                
813543fe  bgt      #0x81354402                     
81354400  b        #0x81354a22                     
81354402  movw     r0, #0x3333                     
81354406  movt     r0, #0x3fb3                       ; = 0x3fb33333
8135440a  vmov     s1, r0                          
8135440e  vcmp.f32 s0, s1                          
81354412  vmrs     apsr_nzcv, fpscr                
81354416  bmi      #0x8135441a                     
81354418  b        #0x813546ca                     
8135441a  ldr      r0, [r6, #0x20]                   ; this._this
8135441c  movs     r1, #0                          
8135441e  ldr      r0, [r0, #0x7c]                 
81354420  ldr      r0, [r0, #8]                    
81354422  bl       #0x812f8e0a                       ; -> UnityEngine.Renderer$$get_enabled
81354426  cmp      r0, #0                          
81354428  bne.w    #0x813546ca                     
8135442c  movw     r0, #0x3878                     
81354430  ldr      r4, [r6, #0x14]                   ; this.attack
81354432  movt     r0, #0x8151                       ; string_TypeInfo
81354436  ldr      r4, [r4, #8]                    
81354438  ldr      r0, [r0]                        
8135443a  ldrsb.w  r1, [r0, #0xc2]                 
8135443e  ands     r1, r1, #1                      
81354442  beq      #0x8135444c                     
81354444  ldr      r1, [r0, #0x70]                 
81354446  cbnz     r1, #0x8135444c                 
81354448  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135444c  movw     r0, #0xb404                     
81354450  movt     r0, #0x8151                       ; str "Throw"
81354454  ldr      r2, [r0]                        
81354456  adds     r1, r4, #0                      
81354458  movs     r0, #0                          
8135445a  movs     r3, #0                          
8135445c  bl       #0x8118add4                       ; -> System.String$$op_Inequality
81354460  cmp      r0, #0                          
81354462  beq.w    #0x81354a4e                     
81354466  ldr      r0, [r6, #0x20]                   ; this._this
81354468  ldr      r1, [r6, #0x10]                   ; this.from
8135446a  ldr      r4, [r0, #0x2c]                 
8135446c  ldr      r5, [r1, #0x2c]                 
8135446e  movs     r1, #0                          
81354470  ldr      r4, [r4, #0x10]                 
81354472  ldr      r0, [r5, #0x10]                 
81354474  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81354478  movw     r0, #0x45fc                     
8135447c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81354480  vmov.f32 s16, s0                         
81354484  vmov.f32 s18, s2                         
81354488  vmov.f32 s17, s1                         
8135448c  ldr      r0, [r0]                        
8135448e  vstr     s16, [sp, #0x88]                
81354492  vstr     s18, [sp, #0x90]                
81354496  vstr     s17, [sp, #0x8c]                
8135449a  ldr      r1, [r6, #0x10]                   ; this.from
8135449c  ldr      r5, [r1, #0x2c]                 
8135449e  ldrsb.w  r1, [r0, #0xc2]                 
813544a2  ands     r1, r1, #1                      
813544a6  ldr      r5, [r5, #0x10]                 
813544a8  beq      #0x813544b2                     
813544aa  ldr      r1, [r0, #0x70]                 
813544ac  cbnz     r1, #0x813544b2                 
813544ae  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813544b2  movs     r0, #0                          
813544b4  movs     r1, #0                          
813544b6  bl       #0x813a472a                       ; -> UnityEngine.Vector3$$get_back
813544ba  adds     r0, r5, #0                      
813544bc  movs     r1, #0                          
813544be  vstr     s0, [sp, #0x94]                 
813544c2  vstr     s2, [sp, #0x9c]                 
813544c6  vstr     s1, [sp, #0x98]                 
813544ca  bl       #0x813a1a6e                       ; -> UnityEngine.Transform$$TransformDirection
813544ce  movw     r0, #0x6666                     
813544d2  movt     r0, #0x3fa6                       ; = 0x3fa66666
813544d6  vmov     s3, r0                          
813544da  movs     r0, #0                          
813544dc  vstr     s0, [sp, #0xa0]                 
813544e0  vstr     s2, [sp, #0xa8]                 
813544e4  vstr     s1, [sp, #0xa4]                 
813544e8  movs     r1, #0                          
813544ea  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813544ee  movs     r0, #0                          
813544f0  movs     r1, #0                          
813544f2  vmov.f32 s3, s0                          
813544f6  vmov.f32 s5, s2                          
813544fa  vmov.f32 s4, s1                          
813544fe  vmov.f32 s0, s16                         
81354502  vmov.f32 s1, s17                         
81354506  vmov.f32 s2, s18                         
8135450a  vstr     s3, [sp, #0xac]                 
8135450e  vstr     s5, [sp, #0xb4]                 
81354512  vstr     s4, [sp, #0xb0]                 
81354516  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8135451a  adds     r0, r4, #0                      
8135451c  movs     r1, #0                          
8135451e  vstr     s0, [sp, #0xb8]                 
81354522  vstr     s2, [sp, #0xc0]                 
81354526  vstr     s1, [sp, #0xbc]                 
8135452a  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8135452e  ldr      r0, [r6, #0x20]                   ; this._this
81354530  movs     r1, #0                          
81354532  ldr      r4, [r0, #0x2c]                 
81354534  ldr      r4, [r4, #0x10]                 
81354536  adds     r0, r4, #0                      
81354538  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135453c  movs     r1, #0                          
8135453e  vmov.f32 s16, s0                         
81354542  vmov.f32 s18, s2                         
81354546  vmov.f32 s17, s1                         
8135454a  vstr     s16, [sp, #0xe8]                
8135454e  vstr     s18, [sp, #0xf0]                
81354552  vstr     s17, [sp, #0xec]                
81354556  ldr      r0, [r6, #0x10]                   ; this.from
81354558  ldr      r2, [r0, #0x2c]                 
8135455a  ldr      r0, [r2, #0x10]                 
8135455c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81354560  movw     r0, #0x45fc                     
81354564  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81354568  vmov.f32 s19, s0                         
8135456c  vmov.f32 s21, s2                         
81354570  vmov.f32 s20, s1                         
81354574  ldr      r0, [r0]                        
81354576  vstr     s19, [sp, #0xf4]                
8135457a  vstr     s21, [sp, #0xfc]                
8135457e  vstr     s20, [sp, #0xf8]                
81354582  ldrsb.w  r1, [r0, #0xc2]                 
81354586  ands     r1, r1, #1                      
8135458a  beq      #0x81354594                     
8135458c  ldr      r1, [r0, #0x70]                 
8135458e  cbnz     r1, #0x81354594                 
81354590  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354594  vmov.f32 s0, s16                         
81354598  vmov.f32 s1, s17                         
8135459c  vmov.f32 s2, s18                         
813545a0  vmov.f32 s3, s19                         
813545a4  vmov.f32 s4, s20                         
813545a8  vmov.f32 s5, s21                         
813545ac  movs     r0, #0                          
813545ae  movs     r1, #0                          
813545b0  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
813545b4  movs     r0, #0                          
813545b6  movs     r1, #0                          
813545b8  vstr     s0, [sp, #0x100]                
813545bc  vstr     s2, [sp, #0x108]                
813545c0  vstr     s1, [sp, #0x104]                
813545c4  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
813545c8  movw     r0, #0x4710                     
813545cc  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
813545d0  vmov.f32 s16, s0                         
813545d4  vmov.f32 s18, s2                         
813545d8  vmov.f32 s17, s1                         
813545dc  ldr      r0, [r0]                        
813545de  vstr     s16, [sp, #0x10c]               
813545e2  vstr     s18, [sp, #0x114]               
813545e6  vstr     s17, [sp, #0x110]               
813545ea  ldrsb.w  r1, [r0, #0xc2]                 
813545ee  ands     r1, r1, #1                      
813545f2  beq      #0x813545fc                     
813545f4  ldr      r1, [r0, #0x70]                 
813545f6  cbnz     r1, #0x813545fc                 
813545f8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813545fc  vmov.f32 s0, s16                         
81354600  vmov.f32 s1, s17                         
81354604  vmov.f32 s2, s18                         
81354608  movs     r0, #0                          
8135460a  movs     r1, #0                          
8135460c  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81354610  add      r0, sp, #0x140                  
81354612  movs     r1, #0                          
81354614  vstr     s0, [sp, #0x118]                
81354618  vstr     s3, [sp, #0x124]                
8135461c  vstr     s1, [sp, #0x11c]                
81354620  vstr     s2, [sp, #0x120]                
81354624  vstr     s0, [sp, #0x140]                
81354628  vstr     s1, [sp, #0x144]                
8135462c  vstr     s2, [sp, #0x148]                
81354630  vstr     s3, [sp, #0x14c]                
81354634  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81354638  movs     r0, #0                          
8135463a  movs     r2, #0                          
8135463c  vstr     s0, [sp, #0x128]                
81354640  vmov     s0, r0                          
81354644  vstr     s1, [sp, #0x12c]                
81354648  vstr     s2, [sp, #0x130]                
8135464c  strd     r2, r2, [sp, #0x134]            
81354650  add      r0, sp, #0x134                  
81354652  str      r2, [sp, #0x13c]                
81354654  movs     r1, #0                          
81354656  vmov.f32 s2, s0                          
8135465a  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135465e  vldr     s0, [sp, #0x134]                
81354662  vldr     s1, [sp, #0x138]                
81354666  vldr     s2, [sp, #0x13c]                
8135466a  adds     r0, r4, #0                      
8135466c  movs     r1, #0                          
8135466e  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81354672  ldr      r0, [r6, #0x20]                   ; this._this
81354674  movs     r1, #1                          
81354676  ldr      r0, [r0, #0x7c]                 
81354678  movs     r2, #0                          
8135467a  ldr      r0, [r0, #8]                    
8135467c  bl       #0x812f8e4e                       ; -> UnityEngine.Renderer$$set_enabled
81354680  ldr      r0, [r6, #0x20]                   ; this._this
81354682  movs     r1, #1                          
81354684  ldr      r0, [r0, #0x7c]                 
81354686  movs     r2, #0                          
81354688  ldr      r0, [r0, #0x14]                 
8135468a  bl       #0x812db312                       ; -> UnityEngine.Behaviour$$set_enabled
8135468e  ldr      r0, [r6, #0x20]                   ; this._this
81354690  movs     r1, #1                          
81354692  ldr      r0, [r0, #0x7c]                 
81354694  movs     r2, #0                          
81354696  ldr      r0, [r0, #0xc]                  
81354698  bl       #0x812f8e4e                       ; -> UnityEngine.Renderer$$set_enabled
8135469c  ldr      r0, [r6, #0x20]                   ; this._this
8135469e  movs     r1, #1                          
813546a0  ldr      r0, [r0, #0x7c]                 
813546a2  movs     r2, #0                          
813546a4  ldr      r0, [r0, #0x10]                 
813546a6  bl       #0x8126d996                       ; -> UnityEngine.Collider$$set_enabled
813546aa  ldr      r0, [r6, #0x20]                   ; this._this
813546ac  movs     r1, #0                          
813546ae  bl       #0x81350eda                       ; -> controller$$fine
813546b2  ldr      r0, [r6, #0x20]                   ; this._this
813546b4  movw     r1, #0xb408                     
813546b8  ldr      r0, [r0, #0x7c]                 
813546ba  movt     r1, #0x8151                       ; str "idle"
813546be  ldr      r0, [r0, #0x14]                 
813546c0  movs     r2, #0                          
813546c2  ldr      r1, [r1]                        
813546c4  movs     r3, #0                          
813546c6  bl       #0x8126a414                       ; -> UnityEngine.Animator$$Play
813546ca  vmov.f32 s0, #1.000000e+00               
813546ce  vldr     s1, [r6, #0x1c]                   ; this._time___0
813546d2  vcmp.f32 s1, s0                          
813546d6  vmrs     apsr_nzcv, fpscr                
813546da  bmi      #0x813546de                     
813546dc  b        #0x8135471e                     
813546de  ldr      r4, [r6, #0x20]                   ; this._this
813546e0  movs     r1, #0                          
813546e2  ldr      r0, [r6, #8]                      ; this._substObj___0
813546e4  ldr      r4, [r4, #0x34]                 
813546e6  bl       #0x812e5584                       ; -> UnityEngine.GameObject$$get_transform
813546ea  movw     r1, #0x461c                     
813546ee  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
813546f2  adds     r5, r0, #0                      
813546f4  ldr      r0, [r1]                        
813546f6  ldrsb.w  r1, [r0, #0xc2]                 
813546fa  ands     r1, r1, #1                      
813546fe  beq      #0x81354708                     
81354700  ldr      r1, [r0, #0x70]                 
81354702  cbnz     r1, #0x81354708                 
81354704  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354708  movs     r0, #0                          
8135470a  adds     r1, r4, #0                      
8135470c  adds     r2, r5, #0                      
8135470e  movs     r3, #0                          
81354710  bl       #0x812e65d2                       ; -> UnityEngine.Object$$op_Equality
81354714  cmp      r0, #0                          
81354716  beq      #0x8135471e                     
81354718  movs     r0, #0                          
8135471a  ldr      r1, [r6, #0x20]                   ; this._this
8135471c  str      r0, [r1, #0x34]                 
8135471e  vldr     s16, [r6, #0x1c]                  ; this._time___0
81354722  movs     r0, #0                          
81354724  movs     r1, #0                          
81354726  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8135472a  vsub.f32 s0, s16, s0                     
8135472e  movw     r0, #0x4ae4                     
81354732  movt     r0, #0x8151                       ; UnityEngine.WaitForEndOfFrame_TypeInfo
81354736  vstr     s0, [r6, #0x1c]                   ; this._time___0
8135473a  ldr      r0, [r0]                        
8135473c  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354740  adds     r4, r0, #0                      
81354742  movs     r1, #0                          
81354744  bl       #0x81000000                       ; -> System.ValueType$$.ctor
81354748  ldrb.w   r0, [r6, #0x28]                   ; this._disposing
8135474c  str      r4, [r6, #0x24]                   ; this._current
8135474e  cbnz     r0, #0x81354754                 
81354750  movs     r0, #1                          
81354752  str      r0, [r6, #0x2c]                   ; this._PC
81354754  movs     r0, #1                          
81354756  b        #0x81354ada                     
81354758  movs     r0, #3                          
8135475a  ldr      r1, [r6, #0x20]                   ; this._this
8135475c  str      r0, [r1, #0x18]                 
8135475e  ldr      r0, [r6, #0x20]                   ; this._this
81354760  ldr      r1, [r0, #0x24]                 
81354762  ldr      r2, [r1, #0x14]                 
81354764  subs.w   r0, r2, #0x50                   
81354768  str      r0, [r1, #0x14]                 
8135476a  ldr      r0, [r6, #0x20]                   ; this._this
8135476c  ldr      r1, [r0, #0x7c]                 
8135476e  ldr      r2, [r1, #0x18]                 
81354770  ldr      r3, [r0, #0x14]                 
81354772  ldr      r4, [r2, #0x1c]                 
81354774  add.w    r0, r4, r3, lsl #2              
81354778  ldr      r0, [r0, #0x10]                 
8135477a  ldr      r1, [r0, #8]                    
8135477c  ldr      r2, [r1, #0x24]                 
8135477e  ldr      r3, [r2, #0x18]                 
81354780  vmov     s0, r3                          
81354784  ldr      r1, [r2, #0x14]                 
81354786  vmov.f32 s2, #1.000000e+00               
8135478a  vmov     s1, r1                          
8135478e  ldr      r0, [r0, #0x14]                 
81354790  vcvt.f32.s32 s0, s0                          
81354794  vcvt.f32.s32 s1, s1                          
81354798  movs     r1, #0                          
8135479a  vdiv.f32 s0, s2, s0                      
8135479e  vmul.f32 s0, s0, s1                      
813547a2  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
813547a6  ldr      r0, [r6, #0x20]                   ; this._this
813547a8  ldr      r1, [r0, #0x2c]                 
813547aa  ldr      r4, [r0, #0x7c]                 
813547ac  ldr      r0, [r1, #0x10]                 
813547ae  movs     r1, #0                          
813547b0  ldr      r4, [r4, #0x4c]                 
813547b2  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813547b6  movw     r0, #0x45fc                     
813547ba  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813547be  vmov.f32 s16, s0                         
813547c2  vmov.f32 s18, s2                         
813547c6  vmov.f32 s17, s1                         
813547ca  ldr      r0, [r0]                        
813547cc  vstr     s16, [sp]                       
813547d0  vstr     s18, [sp, #8]                   
813547d4  vstr     s17, [sp, #4]                   
813547d8  ldrsb.w  r1, [r0, #0xc2]                 
813547dc  ands     r1, r1, #1                      
813547e0  beq      #0x813547ea                     
813547e2  ldr      r1, [r0, #0x70]                 
813547e4  cbnz     r1, #0x813547ea                 
813547e6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813547ea  movs     r0, #0                          
813547ec  movs     r1, #0                          
813547ee  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
813547f2  movw     r0, #0x999a                     
813547f6  movt     r0, #0x3f19                       ; = 0x3f19999a
813547fa  vmov     s3, r0                          
813547fe  movs     r0, #0                          
81354800  vstr     s0, [sp, #0xc]                  
81354804  vstr     s2, [sp, #0x14]                 
81354808  vstr     s1, [sp, #0x10]                 
8135480c  movs     r1, #0                          
8135480e  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81354812  movs     r0, #0                          
81354814  movs     r1, #0                          
81354816  vmov.f32 s3, s0                          
8135481a  vmov.f32 s5, s2                          
8135481e  vmov.f32 s4, s1                          
81354822  vmov.f32 s0, s16                         
81354826  vmov.f32 s1, s17                         
8135482a  vmov.f32 s2, s18                         
8135482e  vstr     s3, [sp, #0x18]                 
81354832  vstr     s5, [sp, #0x20]                 
81354836  vstr     s4, [sp, #0x1c]                 
8135483a  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8135483e  movs     r1, #0                          
81354840  vmov.f32 s16, s0                         
81354844  vmov.f32 s18, s2                         
81354848  vmov.f32 s17, s1                         
8135484c  vstr     s16, [sp, #0x24]                
81354850  vstr     s18, [sp, #0x2c]                
81354854  vstr     s17, [sp, #0x28]                
81354858  ldr      r0, [r6, #0x20]                   ; this._this
8135485a  ldr      r2, [r0, #0x2c]                 
8135485c  ldr      r0, [r2, #0x10]                 
8135485e  bl       #0x813a093a                       ; -> UnityEngine.Transform$$get_rotation
81354862  movw     r0, #0x461c                     
81354866  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
8135486a  vmov.f32 s19, s0                         
8135486e  vmov.f32 s22, s3                         
81354872  vmov.f32 s20, s1                         
81354876  vmov.f32 s21, s2                         
8135487a  ldr      r0, [r0]                        
8135487c  vstr     s19, [sp, #0x30]                
81354880  vstr     s22, [sp, #0x3c]                
81354884  vstr     s20, [sp, #0x34]                
81354888  vstr     s21, [sp, #0x38]                
8135488c  ldrsb.w  r1, [r0, #0xc2]                 
81354890  ands     r1, r1, #1                      
81354894  beq      #0x8135489e                     
81354896  ldr      r1, [r0, #0x70]                 
81354898  cbnz     r1, #0x8135489e                 
8135489a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135489e  movw     r0, #0x4cf8                     
813548a2  vmov.f32 s0, s16                         
813548a6  vmov.f32 s1, s17                         
813548aa  movt     r0, #0x8151                       ; Method$UnityEngine.Object.Instantiate<GameObject>()
813548ae  vmov.f32 s2, s18                         
813548b2  ldr      r2, [r0]                        
813548b4  adds     r1, r4, #0                      
813548b6  vmov.f32 s3, s19                         
813548ba  vmov.f32 s4, s20                         
813548be  vmov.f32 s5, s21                         
813548c2  vmov.f32 s6, s22                         
813548c6  movs     r0, #0                          
813548c8  bl       #0x81260366                       ; -> UnityEngine.Object$$Instantiate<GameObject>
813548cc  str      r0, [r6, #8]                      ; this._substObj___0
813548ce  movs     r1, #0                          
813548d0  ldr      r4, [r6, #0x20]                   ; this._this
813548d2  bl       #0x812e5584                       ; -> UnityEngine.GameObject$$get_transform
813548d6  str      r0, [r4, #0x34]                 
813548d8  movw     r0, #0x4cd4                     
813548dc  ldr      r1, [r6, #8]                      ; this._substObj___0
813548de  movt     r0, #0x8151                       ; Method$UnityEngine.GameObject.GetComponent<Rigidbody>()
813548e2  ldr      r2, [r0]                        
813548e4  adds     r0, r1, #0                      
813548e6  adds     r1, r2, #0                      
813548e8  bl       #0x8126005c                       ; -> UnityEngine.GameObject$$GetComponent<Camera>
813548ec  adds     r4, r0, #0                      
813548ee  str      r4, [r6, #0xc]                    ; this._rb___0
813548f0  movs     r0, #0                          
813548f2  movs     r1, #0                          
813548f4  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
813548f8  vmov.f32 s3, #2.000000e+00               
813548fc  movs     r0, #0                          
813548fe  movs     r1, #0                          
81354900  vstr     s0, [sp, #0x40]                 
81354904  vstr     s2, [sp, #0x48]                 
81354908  vstr     s1, [sp, #0x44]                 
8135490c  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81354910  adds     r0, r4, #0                      
81354912  movs     r1, #0                          
81354914  vstr     s0, [sp, #0x4c]                 
81354918  vstr     s2, [sp, #0x54]                 
8135491c  vstr     s1, [sp, #0x50]                 
81354920  bl       #0x81271438                       ; -> UnityEngine.Rigidbody$$set_velocity
81354924  ldr      r0, [r6, #0x14]                   ; this.attack
81354926  ldr      r1, [r6, #0x18]                   ; this.index
81354928  rsb      r1, r1, r1, lsl #2              
8135492c  ldr      r0, [r0, #0x18]                 
8135492e  add.w    r0, r0, r1, lsl #2              
81354932  ldr      r1, [r6, #0x10]                   ; this.from
81354934  vldr     s0, [r0, #0x10]                 
81354938  vldr     s1, [r0, #0x14]                 
8135493c  ldr      r1, [r1, #0x2c]                 
8135493e  vldr     s2, [r0, #0x18]                 
81354942  ldr      r4, [r6, #0xc]                    ; this._rb___0
81354944  ldr      r0, [r1, #0x10]                 
81354946  movs     r1, #0                          
81354948  bl       #0x813a1a6e                       ; -> UnityEngine.Transform$$TransformDirection
8135494c  movs     r0, #0                          
8135494e  movt     r0, #0x43fa                     
81354952  vmov     s3, r0                          
81354956  movs     r0, #0                          
81354958  vstr     s0, [sp, #0x58]                 
8135495c  vstr     s2, [sp, #0x60]                 
81354960  vstr     s1, [sp, #0x5c]                 
81354964  movs     r1, #0                          
81354966  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8135496a  adds     r0, r4, #0                      
8135496c  movs     r1, #0                          
8135496e  vstr     s0, [sp, #0x64]                 
81354972  vstr     s2, [sp, #0x6c]                 
81354976  vstr     s1, [sp, #0x68]                 
8135497a  bl       #0x812716e4                       ; -> UnityEngine.Rigidbody$$AddForce
8135497e  ldr      r0, [r6, #0x20]                   ; this._this
81354980  movs     r2, #0                          
81354982  ldr      r1, [r0, #0x7c]                 
81354984  ldr      r0, [r1, #0x20]                 
81354986  ldr      r1, [r1, #0x38]                 
81354988  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
8135498c  ldr      r0, [r6, #0x20]                   ; this._this
8135498e  movw     r1, #0x6666                     
81354992  movt     r1, #0x3fe6                       ; = 0x3fe66666
81354996  str      r1, [r6, #0x1c]                   ; this._time___0
81354998  movs     r1, #0                          
8135499a  ldr      r0, [r0, #0x7c]                 
8135499c  movs     r2, #0                          
8135499e  ldr      r0, [r0, #8]                    
813549a0  bl       #0x812f8e4e                       ; -> UnityEngine.Renderer$$set_enabled
813549a4  ldr      r0, [r6, #0x20]                   ; this._this
813549a6  movs     r1, #0                          
813549a8  ldr      r0, [r0, #0x7c]                 
813549aa  movs     r2, #0                          
813549ac  ldr      r0, [r0, #0x14]                 
813549ae  bl       #0x812db312                       ; -> UnityEngine.Behaviour$$set_enabled
813549b2  ldr      r0, [r6, #0x20]                   ; this._this
813549b4  movs     r1, #0                          
813549b6  ldr      r0, [r0, #0x7c]                 
813549b8  movs     r2, #0                          
813549ba  ldr      r0, [r0, #0xc]                  
813549bc  bl       #0x812f8e4e                       ; -> UnityEngine.Renderer$$set_enabled
813549c0  ldr      r0, [r6, #0x20]                   ; this._this
813549c2  movs     r1, #0                          
813549c4  ldr      r0, [r0, #0x7c]                 
813549c6  movs     r2, #0                          
813549c8  ldr      r0, [r0, #0x10]                 
813549ca  bl       #0x8126d996                       ; -> UnityEngine.Collider$$set_enabled
813549ce  ldr      r0, [r6, #0x20]                   ; this._this
813549d0  movs     r2, #0                          
813549d2  ldr      r1, [r0, #0x7c]                 
813549d4  ldr      r0, [r1, #0x20]                 
813549d6  ldr      r1, [r1, #0x40]                 
813549d8  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813549dc  ldr      r4, [r6, #0x20]                   ; this._this
813549de  movs     r0, #0                          
813549e0  movs     r1, #0                          
813549e2  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813549e6  movs     r0, #0                          
813549e8  movs     r1, #0                          
813549ea  vstr     s0, [sp, #0x70]                 
813549ee  vstr     s2, [sp, #0x78]                 
813549f2  vstr     s1, [sp, #0x74]                 
813549f6  vstr     s0, [r4, #0x48]                 
813549fa  vstr     s1, [r4, #0x4c]                 
813549fe  vstr     s2, [r4, #0x50]                 
81354a02  ldr      r4, [r6, #0x20]                   ; this._this
81354a04  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81354a08  vstr     s0, [sp, #0x7c]                 
81354a0c  vstr     s2, [sp, #0x84]                 
81354a10  vstr     s1, [sp, #0x80]                 
81354a14  vstr     s0, [r4, #0x54]                 
81354a18  vstr     s1, [r4, #0x58]                 
81354a1c  vstr     s2, [r4, #0x5c]                 
81354a20  b        #0x813543ec                     
81354a22  movw     r0, #0x461c                     
81354a26  ldr      r6, [r6, #8]                      ; this._substObj___0
81354a28  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81354a2c  ldr      r0, [r0]                        
81354a2e  ldrsb.w  r1, [r0, #0xc2]                 
81354a32  ands     r1, r1, #1                      
81354a36  beq      #0x81354a40                     
81354a38  ldr      r1, [r0, #0x70]                 
81354a3a  cbnz     r1, #0x81354a40                 
81354a3c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354a40  movs     r0, #0                          
81354a42  adds     r1, r6, #0                      
81354a44  movs     r2, #0                          
81354a46  bl       #0x812f0cd6                       ; -> UnityEngine.Object$$Destroy
81354a4a  movs     r0, #0                          
81354a4c  b        #0x81354ada                     
81354a4e  ldr      r0, [r6, #0x20]                 
81354a50  movs     r1, #0                          
81354a52  ldr      r4, [r0, #0x2c]                 
81354a54  ldr      r4, [r4, #0x10]                 
81354a56  adds     r0, r4, #0                      
81354a58  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81354a5c  movw     r0, #0x45fc                     
81354a60  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81354a64  vmov.f32 s16, s0                         
81354a68  vmov.f32 s18, s2                         
81354a6c  vmov.f32 s17, s1                         
81354a70  ldr      r0, [r0]                        
81354a72  vstr     s16, [sp, #0xc4]                
81354a76  vstr     s18, [sp, #0xcc]                
81354a7a  vstr     s17, [sp, #0xc8]                
81354a7e  ldrsb.w  r1, [r0, #0xc2]                 
81354a82  ands     r1, r1, #1                      
81354a86  beq      #0x81354a90                     
81354a88  ldr      r1, [r0, #0x70]                 
81354a8a  cbnz     r1, #0x81354a90                 
81354a8c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354a90  movs     r0, #0                          
81354a92  movs     r1, #0                          
81354a94  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81354a98  movs     r0, #0                          
81354a9a  movs     r1, #0                          
81354a9c  vmov.f32 s3, s0                          
81354aa0  vmov.f32 s5, s2                          
81354aa4  vmov.f32 s4, s1                          
81354aa8  vmov.f32 s0, s16                         
81354aac  vmov.f32 s1, s17                         
81354ab0  vmov.f32 s2, s18                         
81354ab4  vstr     s3, [sp, #0xd0]                 
81354ab8  vstr     s5, [sp, #0xd8]                 
81354abc  vstr     s4, [sp, #0xd4]                 
81354ac0  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81354ac4  adds     r0, r4, #0                      
81354ac6  movs     r1, #0                          
81354ac8  vstr     s0, [sp, #0xdc]                 
81354acc  vstr     s2, [sp, #0xe4]                 
81354ad0  vstr     s1, [sp, #0xe0]                 
81354ad4  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
81354ad8  b        #0x8135452e                     
81354ada  ldr      r2, [sp, #0x150]                
81354adc  ldr      r1, [r7]                        
81354ade  cmp      r1, r2                          
81354ae0  bne      #0x81354aea                     
81354ae2  add      sp, #0x154                      
81354ae4  vpop     {s16, s17, s18, s19, s20, s21, s22, s23}
81354ae8  pop      {r4, r5, r6, r7, pc}            
81354aea  blx      #0x813e1118                       ; -> __stack_chk_fail
81354aee  nop                                      
81354af0  bx       lr                              

; ==== controller.<Substitution>c__Iterator1$$System.Collections.Generic.IEnumerator<object>.get_Current  @ 0x810a3064 .. 0x810a3068
810a3064  ldr      r0, [r0, #0x24]                   ; this._current
810a3066  bx       lr                              

; ==== controller.<Substitution>c__Iterator1$$System.Collections.IEnumerator.get_Current  @ 0x810a3064 .. 0x810a3068
810a3064  ldr      r0, [r0, #0x24]                   ; this._current
810a3066  bx       lr                              

; ==== controller.<Substitution>c__Iterator1$$Dispose  @ 0x8124d740 .. 0x8124d74e
8124d740  movs     r1, #1                          
8124d742  strb.w   r1, [r0, #0x28]                   ; this._disposing
8124d746  movs.w   r1, #-1                         
8124d74a  str      r1, [r0, #0x2c]                   ; this._PC
8124d74c  bx       lr                              

; ==== controller.<Substitution>c__Iterator1$$Reset  @ 0x81354af2 .. 0x81354b48
81354af2  push     {r4, lr}                        
81354af4  movw     r0, #0x34e2                     
81354af8  movt     r0, #0x8151                       ; = 0x815134e2
81354afc  ldrb     r0, [r0]                        
81354afe  cbnz     r0, #0x81354b1a                 
81354b00  movw     r0, #0x2c48                     
81354b04  movt     r0, #0x814c                       ; = 0x814c2c48
81354b08  ldr      r0, [r0]                        
81354b0a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81354b0e  movw     r0, #0x34e2                     
81354b12  movt     r0, #0x8151                       ; = 0x815134e2
81354b16  movs     r1, #1                          
81354b18  strb     r1, [r0]                        
81354b1a  movw     r0, #0x3928                     
81354b1e  movt     r0, #0x8151                       ; System.NotSupportedException_TypeInfo
81354b22  ldr      r0, [r0]                        
81354b24  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354b28  adds     r4, r0, #0                      
81354b2a  movs     r1, #0                          
81354b2c  bl       #0x81136302                       ; -> System.NotSupportedException$$.ctor
81354b30  movw     r0, #0x801c                     
81354b34  movt     r0, #0x8151                       ; Method$controller.<Substitution>c__Iterator1.Reset()
81354b38  ldr      r2, [r0]                        
81354b3a  adds     r0, r4, #0                      
81354b3c  movs     r1, #0                          
81354b3e  bl       #0x8129f0aa                       ; -> il2cpp_throw_NotSupportedException(iterator Reset)
81354b42  bl       #0x81000d00                       ; -> System.Object$$.ctor
81354b46  pop      {r4, pc}                        

; ==== controller.<guardRecovering>c__Iterator2$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== controller.<guardRecovering>c__Iterator2$$MoveNext  @ 0x81354b48 .. 0x81354c1c
81354b48  push     {r4, r5, r6, lr}                
81354b4a  movw     r1, #0x34e3                     
81354b4e  movt     r1, #0x8151                       ; = 0x815134e3
81354b52  ldrb     r1, [r1]                        
81354b54  adds     r4, r0, #0                      
81354b56  cbnz     r1, #0x81354b72                 
81354b58  movw     r0, #0x2c54                     
81354b5c  movt     r0, #0x814c                       ; = 0x814c2c54
81354b60  ldr      r0, [r0]                        
81354b62  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81354b66  movw     r0, #0x34e3                     
81354b6a  movt     r0, #0x8151                       ; = 0x815134e3
81354b6e  movs     r1, #1                          
81354b70  strb     r1, [r0]                        
81354b72  movs.w   r0, #-1                         
81354b76  ldr      r1, [r4, #0x14]                   ; this._PC
81354b78  str      r0, [r4, #0x14]                   ; this._PC
81354b7a  cbz      r1, #0x81354b84                 
81354b7c  cmp      r1, #1                          
81354b7e  bls      #0x81354b84                     
81354b80  movs     r0, #0                          
81354b82  b        #0x81354c1a                     
81354b84  ldr      r1, [r4, #8]                      ; this._this
81354b86  ldr.w    lr, [r1, #0x24]                 
81354b8a  ldr.w    r3, [lr, #0x1c]                 
81354b8e  ldr.w    r2, [lr, #0x20]                 
81354b92  cmp      r3, r2                          
81354b94  blt      #0x81354bcc                     
81354b96  str.w    r2, [lr, #0x1c]                 
81354b9a  movw     r0, #0x4bc8                     
81354b9e  movt     r0, #0x8151                       ; UnityEngine.WaitForSeconds_TypeInfo
81354ba2  ldr      r0, [r0]                        
81354ba4  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354ba8  adds     r5, r0, #0                      
81354baa  movw     r0, #0xcccd                     
81354bae  movt     r0, #0x3dcc                       ; = 0x3dcccccd
81354bb2  vmov     s0, r0                          
81354bb6  adds     r0, r5, #0                      
81354bb8  movs     r1, #0                          
81354bba  bl       #0x813a5648                       ; -> UnityEngine.WaitForSeconds$$.ctor
81354bbe  ldrb     r0, [r4, #0x10]                   ; this._disposing
81354bc0  str      r5, [r4, #0xc]                    ; this._current
81354bc2  cbnz     r0, #0x81354bc8                 
81354bc4  movs     r0, #1                          
81354bc6  str      r0, [r4, #0x14]                   ; this._PC
81354bc8  movs     r0, #1                          
81354bca  b        #0x81354c1a                     
81354bcc  ldr      r0, [r1, #0x18]                 
81354bce  cmp      r0, #0                          
81354bd0  bne      #0x81354b9a                     
81354bd2  ldr      r0, [r1, #0x1c]                 
81354bd4  cmp      r0, #2                          
81354bd6  beq      #0x81354b9a                     
81354bd8  adds     r0, r3, #1                      
81354bda  ldr      r2, [r1, #0x7c]                 
81354bdc  str.w    r0, [lr, #0x1c]                 
81354be0  ldr      r0, [r2, #0x18]                 
81354be2  ldr      r1, [r1, #0x14]                 
81354be4  ldr      r2, [r0, #0x1c]                 
81354be6  add.w    r0, r2, r1, lsl #2              
81354bea  ldr      r0, [r0, #0x10]                 
81354bec  ldr      r1, [r0, #8]                    
81354bee  ldr      r2, [r1, #0x24]                 
81354bf0  ldr      r3, [r2, #0x20]                 
81354bf2  vmov     s0, r3                          
81354bf6  ldr      r1, [r2, #0x1c]                 
81354bf8  vmov.f32 s1, #1.000000e+00               
81354bfc  vmov     s2, r1                          
81354c00  ldr      r0, [r0, #0x18]                 
81354c02  vcvt.f32.s32 s0, s0                          
81354c06  vcvt.f32.s32 s2, s2                          
81354c0a  movs     r1, #0                          
81354c0c  vdiv.f32 s0, s1, s0                      
81354c10  vmul.f32 s0, s0, s2                      
81354c14  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81354c18  b        #0x81354b9a                     
81354c1a  pop      {r4, r5, r6, pc}                

; ==== controller.<guardRecovering>c__Iterator2$$System.Collections.Generic.IEnumerator<object>.get_Current  @ 0x81006cd0 .. 0x81006cd4
81006cd0  ldr      r0, [r0, #0xc]                    ; this._current
81006cd2  bx       lr                              

; ==== controller.<guardRecovering>c__Iterator2$$System.Collections.IEnumerator.get_Current  @ 0x81006cd0 .. 0x81006cd4
81006cd0  ldr      r0, [r0, #0xc]                    ; this._current
81006cd2  bx       lr                              

; ==== controller.<guardRecovering>c__Iterator2$$Dispose  @ 0x810bc7bc .. 0x810bc7c8
810bc7bc  movs     r1, #1                          
810bc7be  strb     r1, [r0, #0x10]                   ; this._disposing
810bc7c0  movs.w   r1, #-1                         
810bc7c4  str      r1, [r0, #0x14]                   ; this._PC
810bc7c6  bx       lr                              

; ==== controller.<guardRecovering>c__Iterator2$$Reset  @ 0x81354c1c .. 0x81354c72
81354c1c  push     {r4, lr}                        
81354c1e  movw     r0, #0x34e4                     
81354c22  movt     r0, #0x8151                       ; = 0x815134e4
81354c26  ldrb     r0, [r0]                        
81354c28  cbnz     r0, #0x81354c44                 
81354c2a  movw     r0, #0x2c58                     
81354c2e  movt     r0, #0x814c                       ; = 0x814c2c58
81354c32  ldr      r0, [r0]                        
81354c34  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81354c38  movw     r0, #0x34e4                     
81354c3c  movt     r0, #0x8151                       ; = 0x815134e4
81354c40  movs     r1, #1                          
81354c42  strb     r1, [r0]                        
81354c44  movw     r0, #0x3928                     
81354c48  movt     r0, #0x8151                       ; System.NotSupportedException_TypeInfo
81354c4c  ldr      r0, [r0]                        
81354c4e  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81354c52  adds     r4, r0, #0                      
81354c54  movs     r1, #0                          
81354c56  bl       #0x81136302                       ; -> System.NotSupportedException$$.ctor
81354c5a  movw     r0, #0x8020                     
81354c5e  movt     r0, #0x8151                       ; Method$controller.<guardRecovering>c__Iterator2.Reset()
81354c62  ldr      r2, [r0]                        
81354c64  adds     r0, r4, #0                      
81354c66  movs     r1, #0                          
81354c68  bl       #0x8129f0aa                       ; -> il2cpp_throw_NotSupportedException(iterator Reset)
81354c6c  bl       #0x81000d00                       ; -> System.Object$$.ctor
81354c70  pop      {r4, pc}                        
