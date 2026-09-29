; ==== cameraSC$$.ctor  @ 0x81000358 .. 0x81000364
81000358  push     {r4, lr}                        
8100035a  movs     r1, #0                          
8100035c  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
81000360  pop      {r4, pc}                        
81000362  pop      {r4, pc}                        

; ==== cameraSC$$Start  @ 0x8134c3e2 .. 0x8134c3f0
8134c3e2  push     {r4, lr}                        
8134c3e4  adds     r4, r0, #0                      
8134c3e6  movs     r1, #0                          
8134c3e8  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134c3ec  str      r0, [r4, #0x10]                   ; this.t
8134c3ee  pop      {r4, pc}                        

; ==== cameraSC$$hited  @ 0x81341a40 .. 0x81341a5c
81341a40  vmov.f32 s0, #4.000000e+00               
81341a44  vldr     s1, [r0, #0x74]                   ; this.playerDistance
81341a48  vcmp.f32 s1, s0                          
81341a4c  vmrs     apsr_nzcv, fpscr                
81341a50  bmi      #0x81341a54                     
81341a52  b        #0x81341a5a                     
81341a54  movs.w   r1, #0x3fc00000                 
81341a58  str      r1, [r0, #0x5c]                   ; this.inFight
81341a5a  bx       lr                              

; ==== cameraSC$$setPlayer  @ 0x8134c3f0 .. 0x8134c486
8134c3f0  push     {r4, r5, r6, lr}                
8134c3f2  movw     r2, #0x34c3                     
8134c3f6  movt     r2, #0x8151                       ; = 0x815134c3
8134c3fa  ldrb     r2, [r2]                        
8134c3fc  adds     r4, r1, #0                      
8134c3fe  adds     r5, r0, #0                      
8134c400  cbnz     r2, #0x8134c41c                 
8134c402  movw     r0, #0x3714                     
8134c406  movt     r0, #0x814c                       ; = 0x814c3714
8134c40a  ldr      r0, [r0]                        
8134c40c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134c410  movw     r0, #0x34c3                     
8134c414  movt     r0, #0x8151                       ; = 0x815134c3
8134c418  movs     r1, #1                          
8134c41a  strb     r1, [r0]                        
8134c41c  movw     r0, #0x461c                     
8134c420  ldr      r1, [r5, #0x1c]                   ; this.players
8134c422  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
8134c426  ldr      r6, [r1, #0x10]                 
8134c428  ldr      r0, [r0]                        
8134c42a  ldrsb.w  r1, [r0, #0xc2]                 
8134c42e  ands     r1, r1, #1                      
8134c432  ldr      r6, [r6, #8]                    
8134c434  beq      #0x8134c43e                     
8134c436  ldr      r1, [r0, #0x70]                 
8134c438  cbnz     r1, #0x8134c43e                 
8134c43a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c43e  movs     r0, #0                          
8134c440  adds     r1, r6, #0                      
8134c442  movs     r2, #0                          
8134c444  movs     r3, #0                          
8134c446  bl       #0x812e65d2                       ; -> UnityEngine.Object$$op_Equality
8134c44a  cmp      r0, #0                          
8134c44c  beq      #0x8134c46a                     
8134c44e  ldr      r0, [r5, #0x1c]                   ; this.players
8134c450  ldr      r1, [r0, #0x10]                 
8134c452  movs     r2, #0                          
8134c454  str      r4, [r1, #8]                    
8134c456  ldr      r0, [r5, #0x1c]                   ; this.players
8134c458  ldr      r0, [r0, #0x10]                 
8134c45a  ldr      r1, [r4, #0x24]                 
8134c45c  ldr      r0, [r0, #0xc]                  
8134c45e  ldr      r1, [r1, #8]                    
8134c460  bl       #0x8101211c                       ; -> UnityEngine.UI.Image$$set_sprite
8134c464  movs     r5, #0                          
8134c466  str      r5, [r4, #0x14]                 
8134c468  b        #0x8134c484                     
8134c46a  ldr      r0, [r5, #0x1c]                 
8134c46c  ldr      r1, [r0, #0x14]                 
8134c46e  movs     r2, #0                          
8134c470  str      r4, [r1, #8]                    
8134c472  ldr      r0, [r5, #0x1c]                 
8134c474  ldr      r0, [r0, #0x14]                 
8134c476  ldr      r1, [r4, #0x24]                 
8134c478  ldr      r0, [r0, #0xc]                  
8134c47a  ldr      r1, [r1, #8]                    
8134c47c  bl       #0x8101211c                       ; -> UnityEngine.UI.Image$$set_sprite
8134c480  movs     r5, #1                          
8134c482  b        #0x8134c466                     
8134c484  pop      {r4, r5, r6, pc}                

; ==== cameraSC$$setLifeUI  @ 0x813418a2 .. 0x813418da
813418a2  push     {r4, lr}                        
813418a4  ldr      r0, [r0, #0x1c]                   ; this.players
813418a6  add.w    r0, r0, r1, lsl #2              
813418aa  ldr      r0, [r0, #0x10]                 
813418ac  ldr      r1, [r0, #8]                    
813418ae  ldr      r2, [r1, #0x24]                 
813418b0  ldr      r3, [r2, #0x10]                 
813418b2  vmov     s0, r3                          
813418b6  ldr      r1, [r2, #0xc]                  
813418b8  vmov.f32 s1, #1.000000e+00               
813418bc  vmov     s2, r1                          
813418c0  ldr      r0, [r0, #0x10]                 
813418c2  vcvt.f32.s32 s0, s0                          
813418c6  vcvt.f32.s32 s2, s2                          
813418ca  movs     r1, #0                          
813418cc  vdiv.f32 s0, s1, s0                      
813418d0  vmul.f32 s0, s0, s2                      
813418d4  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
813418d8  pop      {r4, pc}                        

; ==== cameraSC$$setChakraUI  @ 0x8134c486 .. 0x8134c4be
8134c486  push     {r4, lr}                        
8134c488  ldr      r0, [r0, #0x1c]                   ; this.players
8134c48a  add.w    r0, r0, r1, lsl #2              
8134c48e  ldr      r0, [r0, #0x10]                 
8134c490  ldr      r1, [r0, #8]                    
8134c492  ldr      r2, [r1, #0x24]                 
8134c494  ldr      r3, [r2, #0x18]                 
8134c496  vmov     s0, r3                          
8134c49a  ldr      r1, [r2, #0x14]                 
8134c49c  vmov.f32 s1, #1.000000e+00               
8134c4a0  vmov     s2, r1                          
8134c4a4  ldr      r0, [r0, #0x14]                 
8134c4a6  vcvt.f32.s32 s0, s0                          
8134c4aa  vcvt.f32.s32 s2, s2                          
8134c4ae  movs     r1, #0                          
8134c4b0  vdiv.f32 s0, s1, s0                      
8134c4b4  vmul.f32 s0, s0, s2                      
8134c4b8  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
8134c4bc  pop      {r4, pc}                        

; ==== cameraSC$$setGuardUI  @ 0x813418da .. 0x81341914
813418da  push     {r4, lr}                        
813418dc  ldr      r0, [r0, #0x1c]                   ; this.players
813418de  add.w    r0, r0, r1, lsl #2              
813418e2  ldr      r0, [r0, #0x10]                 
813418e4  ldr      r1, [r0, #8]                    
813418e6  ldr      r2, [r1, #0x24]                 
813418e8  ldr      r3, [r2, #0x20]                 
813418ea  vmov     s0, r3                          
813418ee  ldr      r1, [r2, #0x1c]                 
813418f0  vmov.f32 s1, #1.000000e+00               
813418f4  vmov     s2, r1                          
813418f8  ldr      r0, [r0, #0x18]                 
813418fa  vcvt.f32.s32 s0, s0                          
813418fe  vcvt.f32.s32 s2, s2                          
81341902  movs     r1, #0                          
81341904  vdiv.f32 s0, s1, s0                      
81341908  vmul.f32 s0, s0, s2                      
8134190c  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81341910  pop      {r4, pc}                        
81341912  pop      {r4, pc}                        

; ==== cameraSC$$StartNinj  @ 0x8134c4be .. 0x8134c522
8134c4be  push     {r4, r5, r6, lr}                
8134c4c0  movw     r2, #0x34c4                     
8134c4c4  movt     r2, #0x8151                       ; = 0x815134c4
8134c4c8  ldrb     r2, [r2]                        
8134c4ca  adds     r4, r1, #0                      
8134c4cc  adds     r5, r0, #0                      
8134c4ce  cbnz     r2, #0x8134c4ea                 
8134c4d0  movw     r0, #0x3710                     
8134c4d4  movt     r0, #0x814c                       ; = 0x814c3710
8134c4d8  ldr      r0, [r0]                        
8134c4da  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134c4de  movw     r0, #0x34c4                     
8134c4e2  movt     r0, #0x8151                       ; = 0x815134c4
8134c4e6  movs     r1, #1                          
8134c4e8  strb     r1, [r0]                        
8134c4ea  ldr      r0, [r5, #0x44]                   ; this.NinjCamera
8134c4ec  movs     r1, #0                          
8134c4ee  str      r4, [r5, #0x4c]                   ; this.ninjActor
8134c4f0  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8134c4f4  movs     r1, #1                          
8134c4f6  movs     r2, #0                          
8134c4f8  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134c4fc  ldr      r0, [r5, #0x20]                   ; this.camT
8134c4fe  movs     r1, #0                          
8134c500  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8134c504  movs     r1, #0                          
8134c506  movs     r2, #0                          
8134c508  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134c50c  ldr      r0, [r5, #0x48]                   ; this.cameraAnim
8134c50e  movw     r1, #0xb380                     
8134c512  movt     r1, #0x8151                       ; str "ninj"
8134c516  ldr      r1, [r1]                        
8134c518  movs     r2, #0                          
8134c51a  movs     r3, #0                          
8134c51c  bl       #0x8126a414                       ; -> UnityEngine.Animator$$Play
8134c520  pop      {r4, r5, r6, pc}                

; ==== cameraSC$$EndCamera  @ 0x8134c522 .. 0x8134c548
8134c522  push     {r4, lr}                        
8134c524  adds     r4, r0, #0                      
8134c526  ldr      r0, [r4, #0x20]                   ; this.camT
8134c528  movs     r1, #0                          
8134c52a  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8134c52e  movs     r1, #1                          
8134c530  movs     r2, #0                          
8134c532  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134c536  ldr      r0, [r4, #0x44]                   ; this.NinjCamera
8134c538  movs     r1, #0                          
8134c53a  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8134c53e  movs     r1, #0                          
8134c540  movs     r2, #0                          
8134c542  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134c546  pop      {r4, pc}                        

; ==== cameraSC$$EndtNinj  @ 0x8134c548 .. 0x8134c550
8134c548  movs     r1, #0                          
8134c54a  str      r1, [r0, #0x4c]                   ; this.ninjActor
8134c54c  bx       lr                              
8134c54e  bx       lr                              

; ==== cameraSC$$OnDrawGizmos  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== cameraSC$$LateUpdate  @ 0x8134c550 .. 0x8134d318
8134c550  push.w   {r4, r5, r6, r7, r8, lr}        
8134c554  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25}
8134c558  sub.w    sp, sp, #0x300                  
8134c55c  movw     r8, #0x2514                     
8134c560  movt     r8, #0x813e                       ; = 0x813e2514
8134c564  ldr.w    r1, [r8]                        
8134c568  str      r1, [sp, #0x2f8]                
8134c56a  movw     r1, #0x34c5                     
8134c56e  movt     r1, #0x8151                       ; = 0x815134c5
8134c572  ldrb     r1, [r1]                        
8134c574  adds     r5, r0, #0                      
8134c576  cbnz     r1, #0x8134c592                 
8134c578  movw     r0, #0x370c                     
8134c57c  movt     r0, #0x814c                       ; = 0x814c370c
8134c580  ldr      r0, [r0]                        
8134c582  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134c586  movw     r0, #0x34c5                     
8134c58a  movt     r0, #0x8151                       ; = 0x815134c5
8134c58e  movs     r1, #1                          
8134c590  strb     r1, [r0]                        
8134c592  movs     r0, #0                          
8134c594  strd     r0, r0, [sp, #0x268]            
8134c598  movs     r2, #0                          
8134c59a  strd     r0, r0, [sp, #0x270]            
8134c59e  movs     r3, #0                          
8134c5a0  strd     r0, r0, [sp, #0x2e0]            
8134c5a4  movw     r1, #0x468c                     
8134c5a8  strd     r0, r0, [sp, #0x2e8]            
8134c5ac  movt     r1, #0x8151                       ; UnityEngine.Input_TypeInfo
8134c5b0  strd     r0, r0, [sp, #0x2f0]            
8134c5b4  strd     r0, r0, [sp, #0x278]            
8134c5b8  strd     r2, r3, [sp, #0x2b0]            
8134c5bc  strd     r2, r3, [sp, #0x2b8]            
8134c5c0  strd     r2, r3, [sp, #0x2c0]            
8134c5c4  strd     r2, r3, [sp, #0x2c8]            
8134c5c8  add      r6, sp, #0x2e0                  
8134c5ca  strd     r2, r3, [sp, #0x2d0]            
8134c5ce  strd     r2, r3, [sp, #0x2d8]            
8134c5d2  ldr      r0, [r1]                        
8134c5d4  ldrsb.w  r1, [r0, #0xc2]                 
8134c5d8  ands     r1, r1, #1                      
8134c5dc  beq      #0x8134c5e6                     
8134c5de  ldr      r1, [r0, #0x70]                 
8134c5e0  cbnz     r1, #0x8134c5e6                 
8134c5e2  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c5e6  movw     r0, #0xb384                     
8134c5ea  movt     r0, #0x8151                       ; str "Start"
8134c5ee  ldr      r1, [r0]                        
8134c5f0  movs     r0, #0                          
8134c5f2  movs     r2, #0                          
8134c5f4  bl       #0x812e7686                       ; -> UnityEngine.Input$$GetButtonDown
8134c5f8  cmp      r0, #0                          
8134c5fa  beq      #0x8134c63a                     
8134c5fc  ldr      r4, [r5, #0x18]                   ; this.gameOptions
8134c5fe  movs     r1, #0                          
8134c600  ldr      r7, [r4, #0xc]                  
8134c602  adds     r0, r7, #0                      
8134c604  bl       #0x812e569c                       ; -> UnityEngine.GameObject$$get_activeSelf
8134c608  cmp      r0, #0                          
8134c60a  mov.w    lr, #0                          
8134c60e  bne      #0x8134c614                     
8134c610  movs.w   lr, #1                          
8134c614  movs     r2, #0                          
8134c616  adds     r0, r7, #0                      
8134c618  mov      r1, lr                          
8134c61a  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134c61e  ldr      r0, [r4, #0xc]                  
8134c620  movs     r1, #0                          
8134c622  bl       #0x812e569c                       ; -> UnityEngine.GameObject$$get_activeSelf
8134c626  cmp      r0, #0                          
8134c628  beq.w    #0x8134d292                     
8134c62c  movs     r0, #0                          
8134c62e  vmov     s0, r0                          
8134c632  movs     r0, #0                          
8134c634  movs     r1, #0                          
8134c636  bl       #0x813a038e                       ; -> UnityEngine.Time$$set_timeScale
8134c63a  movs     r0, #0                          
8134c63c  movs     r1, #0                          
8134c63e  bl       #0x813a034e                       ; -> UnityEngine.Time$$get_timeScale
8134c642  vcmp.f32 s0, #0                          
8134c646  movw     r0, #0x468c                     
8134c64a  vmrs     apsr_nzcv, fpscr                
8134c64e  movt     r0, #0x8151                       ; UnityEngine.Input_TypeInfo
8134c652  ldr      r0, [r0]                        
8134c654  beq.w    #0x8134c84a                     
8134c658  ldrsb.w  r1, [r0, #0xc2]                 
8134c65c  ands     r1, r1, #1                      
8134c660  beq      #0x8134c66a                     
8134c662  ldr      r1, [r0, #0x70]                 
8134c664  cbnz     r1, #0x8134c66a                 
8134c666  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c66a  movw     r0, #0xb388                     
8134c66e  movt     r0, #0x8151                       ; str "Select"
8134c672  ldr      r1, [r0]                        
8134c674  movs     r0, #0                          
8134c676  movs     r2, #0                          
8134c678  bl       #0x812e7686                       ; -> UnityEngine.Input$$GetButtonDown
8134c67c  cmp      r0, #0                          
8134c67e  beq      #0x8134c694                     
8134c680  ldr      r0, [r5, #0x1c]                   ; this.players
8134c682  movs     r2, #0                          
8134c684  ldr      r1, [r0, #0x10]                 
8134c686  ldr      r1, [r1, #8]                    
8134c688  ldrb.w   r0, [r1, #0x28]                 
8134c68c  cbnz     r0, #0x8134c690                 
8134c68e  movs     r2, #1                          
8134c690  strb.w   r2, [r1, #0x28]                 
8134c694  movs     r0, #0                          
8134c696  movs     r1, #0                          
8134c698  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134c69c  vldr     s1, [r5, #0x5c]                   ; this.inFight
8134c6a0  movs     r0, #0                          
8134c6a2  vmov     s2, r0                          
8134c6a6  vmov.f32 s16, s0                         
8134c6aa  ldr      r0, [r5, #0x1c]                   ; this.players
8134c6ac  vcmp.f32 s1, s2                          
8134c6b0  vmrs     apsr_nzcv, fpscr                
8134c6b4  bgt      #0x8134c6b8                     
8134c6b6  b        #0x8134c6c0                     
8134c6b8  vsub.f32 s0, s1, s16                     
8134c6bc  vstr     s0, [r5, #0x5c]                   ; this.inFight
8134c6c0  ldr      r0, [r0, #0x10]                 
8134c6c2  ldr      r1, [r0, #8]                    
8134c6c4  ldr      r0, [r1, #0x2c]                 
8134c6c6  movs     r1, #0                          
8134c6c8  ldr      r0, [r0, #0x10]                 
8134c6ca  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c6ce  movs     r1, #0                          
8134c6d0  vmov.f32 s17, s0                         
8134c6d4  vmov.f32 s19, s2                         
8134c6d8  vmov.f32 s18, s1                         
8134c6dc  vstr     s17, [sp]                       
8134c6e0  vstr     s19, [sp, #8]                   
8134c6e4  vstr     s18, [sp, #4]                   
8134c6e8  ldr      r0, [r5, #0x1c]                   ; this.players
8134c6ea  ldr      r2, [r0, #0x10]                 
8134c6ec  ldr      r3, [r2, #8]                    
8134c6ee  ldr      r4, [r3, #0x30]                 
8134c6f0  ldr      r7, [r4, #0x2c]                 
8134c6f2  ldr      r0, [r7, #0x10]                 
8134c6f4  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c6f8  movw     r0, #0x45fc                     
8134c6fc  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134c700  vmov.f32 s20, s0                         
8134c704  vmov.f32 s22, s2                         
8134c708  vmov.f32 s21, s1                         
8134c70c  ldr      r0, [r0]                        
8134c70e  vstr     s20, [sp, #0xc]                 
8134c712  vstr     s22, [sp, #0x14]                
8134c716  vstr     s21, [sp, #0x10]                
8134c71a  ldrsb.w  r1, [r0, #0xc2]                 
8134c71e  ands     r1, r1, #1                      
8134c722  beq      #0x8134c72c                     
8134c724  ldr      r1, [r0, #0x70]                 
8134c726  cbnz     r1, #0x8134c72c                 
8134c728  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c72c  vmov.f32 s0, s17                         
8134c730  vmov.f32 s1, s18                         
8134c734  vmov.f32 s2, s19                         
8134c738  vmov.f32 s3, s20                         
8134c73c  vmov.f32 s4, s21                         
8134c740  vmov.f32 s5, s22                         
8134c744  movs     r0, #0                          
8134c746  movs     r1, #0                          
8134c748  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134c74c  movs     r0, #0                          
8134c74e  movs     r1, #0                          
8134c750  vstr     s0, [sp, #0x18]                 
8134c754  vstr     s2, [sp, #0x20]                 
8134c758  vstr     s1, [sp, #0x1c]                 
8134c75c  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
8134c760  movw     r0, #0x4618                     
8134c764  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134c768  ldr      r0, [r0]                        
8134c76a  vstr     s0, [sp, #0x24]                 
8134c76e  vmov.f32 s17, s1                         
8134c772  vstr     s2, [sp, #0x2c]                 
8134c776  vstr     s0, [sp, #0x268]                
8134c77a  vstr     s2, [sp, #0x270]                
8134c77e  vstr     s17, [sp, #0x28]                
8134c782  vstr     s17, [sp, #0x26c]               
8134c786  ldrsb.w  r1, [r0, #0xc2]                 
8134c78a  ands     r1, r1, #1                      
8134c78e  beq      #0x8134c798                     
8134c790  ldr      r1, [r0, #0x70]                 
8134c792  cbnz     r1, #0x8134c798                 
8134c794  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c798  vmov.f32 s0, s17                         
8134c79c  blx      #0x813e0e98                       ; -> fabsf
8134c7a0  movs     r4, #0                          
8134c7a2  str      r4, [sp, #0x26c]                
8134c7a4  add      r0, sp, #0x268                  
8134c7a6  vmov.f32 s17, s0                         
8134c7aa  movs     r1, #0                          
8134c7ac  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
8134c7b0  ldr      r0, [r5, #0x1c]                   ; this.players
8134c7b2  vstr     s0, [r5, #0x74]                   ; this.playerDistance
8134c7b6  ldr      r0, [r0, #0x10]                 
8134c7b8  ldr      r1, [r0, #8]                    
8134c7ba  ldr      r0, [r1, #0x2c]                 
8134c7bc  movs     r1, #0                          
8134c7be  ldr      r0, [r0, #0x10]                 
8134c7c0  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c7c4  movs     r0, #0                          
8134c7c6  movs     r1, #0                          
8134c7c8  vmov.f32 s18, s0                         
8134c7cc  vmov.f32 s19, s2                         
8134c7d0  vmov.f32 s20, s1                         
8134c7d4  vstr     s18, [sp, #0x30]                
8134c7d8  vstr     s19, [sp, #0x38]                
8134c7dc  vstr     s20, [sp, #0x34]                
8134c7e0  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134c7e4  adds     r0, r6, #0                      
8134c7e6  movs     r1, #0                          
8134c7e8  vmov.f32 s3, s0                          
8134c7ec  vmov.f32 s5, s2                          
8134c7f0  vmov.f32 s4, s1                          
8134c7f4  vmov.f32 s0, s18                         
8134c7f8  vmov.f32 s1, s20                         
8134c7fc  vmov.f32 s2, s19                         
8134c800  vstr     s3, [sp, #0x3c]                 
8134c804  vstr     s5, [sp, #0x44]                 
8134c808  vstr     s4, [sp, #0x40]                 
8134c80c  bl       #0x812db846                       ; -> sub_812db846
8134c810  adds     r7, r4, #0                      
8134c812  ldr.w    lr, [r5, #0x1c]                   ; this.players
8134c816  ldr.w    r0, [lr, #0xc]                  
8134c81a  cmp      r4, r0                          
8134c81c  bge      #0x8134c84e                     
8134c81e  add.w    r0, lr, r7                      
8134c822  ldr      r0, [r0, #0x10]                 
8134c824  ldr      r1, [r0, #8]                    
8134c826  ldr      r0, [r1, #0x2c]                 
8134c828  movs     r1, #0                          
8134c82a  ldr      r0, [r0, #0x10]                 
8134c82c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c830  adds     r0, r6, #0                      
8134c832  movs     r1, #0                          
8134c834  vstr     s0, [sp, #0x48]                 
8134c838  vstr     s2, [sp, #0x50]                 
8134c83c  vstr     s1, [sp, #0x4c]                 
8134c840  bl       #0x812dc40e                       ; -> sub_812dc40e
8134c844  adds     r7, #4                          
8134c846  adds     r4, #1                          
8134c848  b        #0x8134c812                     
8134c84a  b.w      #0x8134d2fc                     
8134c84e  adds     r0, r6, #0                      
8134c850  movs     r1, #0                          
8134c852  bl       #0x812713e0                       ; -> RaycastHit.get_point(ptr)
8134c856  movs     r1, #0                          
8134c858  vmov.f32 s18, s0                         
8134c85c  vmov.f32 s20, s2                         
8134c860  vmov.f32 s19, s1                         
8134c864  vstr     s18, [sp, #0x54]                
8134c868  vstr     s20, [sp, #0x5c]                
8134c86c  vstr     s19, [sp, #0x58]                
8134c870  ldr      r0, [r5, #0x10]                   ; this.t
8134c872  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c876  movw     r0, #0x45fc                     
8134c87a  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134c87e  vmov.f32 s21, s0                         
8134c882  vmov.f32 s23, s2                         
8134c886  vmov.f32 s22, s1                         
8134c88a  ldr      r0, [r0]                        
8134c88c  vstr     s21, [sp, #0x60]                
8134c890  vstr     s23, [sp, #0x68]                
8134c894  vstr     s22, [sp, #0x64]                
8134c898  ldrsb.w  r1, [r0, #0xc2]                 
8134c89c  ands     r1, r1, #1                      
8134c8a0  beq      #0x8134c8aa                     
8134c8a2  ldr      r1, [r0, #0x70]                 
8134c8a4  cbnz     r1, #0x8134c8aa                 
8134c8a6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c8aa  vmov.f32 s0, s18                         
8134c8ae  vmov.f32 s1, s19                         
8134c8b2  vmov.f32 s2, s20                         
8134c8b6  vmov.f32 s3, s21                         
8134c8ba  vmov.f32 s4, s22                         
8134c8be  vmov.f32 s5, s23                         
8134c8c2  movs     r0, #0                          
8134c8c4  movs     r1, #0                          
8134c8c6  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134c8ca  add      r0, sp, #0x274                  
8134c8cc  movs     r1, #0                          
8134c8ce  vstr     s0, [sp, #0x6c]                 
8134c8d2  vstr     s2, [sp, #0x74]                 
8134c8d6  vstr     s1, [sp, #0x70]                 
8134c8da  vstr     s0, [sp, #0x274]                
8134c8de  vstr     s1, [sp, #0x278]                
8134c8e2  vstr     s2, [sp, #0x27c]                
8134c8e6  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
8134c8ea  vstr     s0, [r5, #0x60]                   ; this.playerCamDistance
8134c8ee  ldr      r0, [r5, #0x1c]                   ; this.players
8134c8f0  ldr      r1, [r0, #0x10]                 
8134c8f2  ldr      r2, [r1, #8]                    
8134c8f4  movs     r1, #0                          
8134c8f6  ldr      r0, [r2, #0x2c]                 
8134c8f8  ldr      r4, [r5, #0x14]                   ; this.cam
8134c8fa  ldr      r0, [r0, #0x10]                 
8134c8fc  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c900  movs     r0, #0                          
8134c902  movs     r1, #0                          
8134c904  vmov.f32 s18, s0                         
8134c908  vmov.f32 s19, s2                         
8134c90c  vmov.f32 s20, s1                         
8134c910  vstr     s18, [sp, #0x78]                
8134c914  vstr     s19, [sp, #0x80]                
8134c918  vstr     s20, [sp, #0x7c]                
8134c91c  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
8134c920  movs     r0, #0                          
8134c922  vstr     s0, [sp, #0x84]                 
8134c926  vstr     s2, [sp, #0x8c]                 
8134c92a  vstr     s1, [sp, #0x88]                 
8134c92e  ldr      r1, [r5, #0xc]                    ; this.settings
8134c930  vldr     s3, [r5, #0x54]                   ; this.YCamAdditive
8134c934  vldr     s4, [r1, #0xc]                  
8134c938  movs     r1, #0                          
8134c93a  vadd.f32 s3, s4, s3                      
8134c93e  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134c942  movs     r0, #0                          
8134c944  movs     r1, #0                          
8134c946  vmov.f32 s3, s0                          
8134c94a  vmov.f32 s5, s2                          
8134c94e  vmov.f32 s4, s1                          
8134c952  vmov.f32 s0, s18                         
8134c956  vmov.f32 s1, s20                         
8134c95a  vmov.f32 s2, s19                         
8134c95e  vstr     s3, [sp, #0x90]                 
8134c962  vstr     s5, [sp, #0x98]                 
8134c966  vstr     s4, [sp, #0x94]                 
8134c96a  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134c96e  adds     r0, r4, #0                      
8134c970  movs     r1, #0                          
8134c972  vstr     s0, [sp, #0x9c]                 
8134c976  vstr     s2, [sp, #0xa4]                 
8134c97a  vstr     s1, [sp, #0xa0]                 
8134c97e  bl       #0x812dd86e                       ; -> UnityEngine.Camera$$WorldToScreenPoint
8134c982  movw     r0, #0x4604                     
8134c986  movt     r0, #0x8151                       ; UnityEngine.Vector2_TypeInfo
8134c98a  vmov.f32 s18, s0                         
8134c98e  vmov.f32 s20, s2                         
8134c992  vmov.f32 s19, s1                         
8134c996  ldr      r0, [r0]                        
8134c998  vstr     s18, [sp, #0xa8]                
8134c99c  vstr     s20, [sp, #0xb0]                
8134c9a0  vstr     s19, [sp, #0xac]                
8134c9a4  ldrsb.w  r1, [r0, #0xc2]                 
8134c9a8  ands     r1, r1, #1                      
8134c9ac  beq      #0x8134c9b6                     
8134c9ae  ldr      r1, [r0, #0x70]                 
8134c9b0  cbnz     r1, #0x8134c9b6                 
8134c9b2  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134c9b6  vmov.f32 s0, s18                         
8134c9ba  vmov.f32 s1, s19                         
8134c9be  vmov.f32 s2, s20                         
8134c9c2  movs     r0, #0                          
8134c9c4  movs     r1, #0                          
8134c9c6  bl       #0x81000d00                       ; -> System.Object$$.ctor
8134c9ca  movs     r1, #0                          
8134c9cc  vmov.f32 s18, s0                         
8134c9d0  vmov.f32 s19, s1                         
8134c9d4  vstr     s18, [sp, #0xb4]                
8134c9d8  vstr     s19, [sp, #0xb8]                
8134c9dc  ldr      r0, [r5, #0x1c]                   ; this.players
8134c9de  ldr      r2, [r0, #0x14]                 
8134c9e0  ldr      r3, [r2, #8]                    
8134c9e2  ldr      r4, [r3, #0x2c]                 
8134c9e4  ldr      r6, [r5, #0x14]                   ; this.cam
8134c9e6  ldr      r0, [r4, #0x10]                 
8134c9e8  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134c9ec  movs     r0, #0                          
8134c9ee  movs     r1, #0                          
8134c9f0  vmov.f32 s20, s0                         
8134c9f4  vmov.f32 s21, s2                         
8134c9f8  vmov.f32 s22, s1                         
8134c9fc  vstr     s20, [sp, #0xbc]                
8134ca00  vstr     s21, [sp, #0xc4]                
8134ca04  vstr     s22, [sp, #0xc0]                
8134ca08  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
8134ca0c  movs     r0, #0                          
8134ca0e  vstr     s0, [sp, #0xc8]                 
8134ca12  vstr     s2, [sp, #0xd0]                 
8134ca16  vstr     s1, [sp, #0xcc]                 
8134ca1a  ldr      r1, [r5, #0xc]                    ; this.settings
8134ca1c  vldr     s3, [r5, #0x54]                   ; this.YCamAdditive
8134ca20  vldr     s4, [r1, #0xc]                  
8134ca24  movs     r1, #0                          
8134ca26  vadd.f32 s3, s4, s3                      
8134ca2a  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134ca2e  movs     r0, #0                          
8134ca30  movs     r1, #0                          
8134ca32  vmov.f32 s3, s0                          
8134ca36  vmov.f32 s5, s2                          
8134ca3a  vmov.f32 s4, s1                          
8134ca3e  vmov.f32 s0, s20                         
8134ca42  vmov.f32 s1, s22                         
8134ca46  vmov.f32 s2, s21                         
8134ca4a  vstr     s3, [sp, #0xd4]                 
8134ca4e  vstr     s5, [sp, #0xdc]                 
8134ca52  vstr     s4, [sp, #0xd8]                 
8134ca56  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134ca5a  adds     r0, r6, #0                      
8134ca5c  movs     r1, #0                          
8134ca5e  vstr     s0, [sp, #0xe0]                 
8134ca62  vstr     s2, [sp, #0xe8]                 
8134ca66  vstr     s1, [sp, #0xe4]                 
8134ca6a  bl       #0x812dd86e                       ; -> UnityEngine.Camera$$WorldToScreenPoint
8134ca6e  movs     r0, #0                          
8134ca70  movs     r1, #0                          
8134ca72  vstr     s0, [sp, #0xec]                 
8134ca76  vstr     s2, [sp, #0xf4]                 
8134ca7a  vstr     s1, [sp, #0xf0]                 
8134ca7e  bl       #0x81000d00                       ; -> System.Object$$.ctor
8134ca82  vmov.f32 s3, #5.000000e-01               
8134ca86  movs     r2, #0                          
8134ca88  add      r0, sp, #0x280                  
8134ca8a  vstr     s0, [sp, #0xf8]                 
8134ca8e  vstr     s1, [sp, #0xfc]                 
8134ca92  vadd.f32 s0, s18, s0                     
8134ca96  vadd.f32 s1, s19, s1                     
8134ca9a  vldr     s2, [r5, #0x60]                   ; this.playerCamDistance
8134ca9e  ldr      r4, [r5, #0x14]                   ; this.cam
8134caa0  movs     r1, #0                          
8134caa2  strd     r2, r2, [sp, #0x280]            
8134caa6  str      r2, [sp, #0x288]                
8134caa8  vmul.f32 s0, s0, s3                      
8134caac  vmul.f32 s1, s1, s3                      
8134cab0  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134cab4  vldr     s0, [sp, #0x280]                
8134cab8  vldr     s1, [sp, #0x284]                
8134cabc  vldr     s2, [sp, #0x288]                
8134cac0  adds     r0, r4, #0                      
8134cac2  movs     r1, #0                          
8134cac4  bl       #0x812dda06                       ; -> UnityEngine.Camera$$ScreenToWorldPoint
8134cac8  movs     r0, #0                          
8134caca  movs     r1, #0                          
8134cacc  vstr     s0, [sp, #0x100]                
8134cad0  vstr     s2, [sp, #0x108]                
8134cad4  vstr     s1, [sp, #0x104]                
8134cad8  vldr     s3, [r5, #0x64]                   ; this.oldPos
8134cadc  vldr     s4, [r5, #0x68]                   ; this.oldPos+4
8134cae0  vldr     s5, [r5, #0x6c]                   ; this.oldPos+8
8134cae4  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134cae8  vmov.f32 s3, #2.000000e+00               
8134caec  movs     r0, #0                          
8134caee  movs     r1, #0                          
8134caf0  vstr     s0, [sp, #0x10c]                
8134caf4  vstr     s2, [sp, #0x114]                
8134caf8  vstr     s1, [sp, #0x110]                
8134cafc  bl       #0x813a3904                       ; -> UnityEngine.Vector3$$op_Division
8134cb00  movs     r1, #0                          
8134cb02  vmov.f32 s18, s0                         
8134cb06  vmov.f32 s20, s2                         
8134cb0a  vmov.f32 s19, s1                         
8134cb0e  vstr     s18, [sp, #0x118]               
8134cb12  vstr     s20, [sp, #0x120]               
8134cb16  vstr     s19, [sp, #0x11c]               
8134cb1a  ldr      r0, [r5, #0x10]                   ; this.t
8134cb1c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134cb20  movs     r0, #0                          
8134cb22  movs     r1, #0                          
8134cb24  vmov.f32 s3, s0                          
8134cb28  vmov.f32 s5, s2                          
8134cb2c  vmov.f32 s4, s1                          
8134cb30  vmov.f32 s0, s18                         
8134cb34  vmov.f32 s1, s19                         
8134cb38  vmov.f32 s2, s20                         
8134cb3c  vstr     s3, [sp, #0x124]                
8134cb40  vstr     s5, [sp, #0x12c]                
8134cb44  vstr     s4, [sp, #0x128]                
8134cb48  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134cb4c  movs     r1, #0                          
8134cb4e  vstr     s0, [sp, #0x130]                
8134cb52  vstr     s2, [sp, #0x138]                
8134cb56  vstr     s1, [sp, #0x134]                
8134cb5a  vstr     s0, [sp, #0x274]                
8134cb5e  vstr     s1, [sp, #0x278]                
8134cb62  vstr     s2, [sp, #0x27c]                
8134cb66  vstr     s18, [r5, #0x64]                  ; this.oldPos
8134cb6a  vstr     s19, [r5, #0x68]                  ; this.oldPos+4
8134cb6e  ldr      r0, [r5, #0x1c]                   ; this.players
8134cb70  vstr     s20, [r5, #0x6c]                  ; this.oldPos+8
8134cb74  ldr      r0, [r0, #0x10]                 
8134cb76  ldr      r2, [r0, #8]                    
8134cb78  ldr      r3, [r2, #0x2c]                 
8134cb7a  ldr      r0, [r3, #0x10]                 
8134cb7c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134cb80  movs     r1, #0                          
8134cb82  vmov.f32 s21, s0                         
8134cb86  vmov.f32 s22, s2                         
8134cb8a  vmov.f32 s23, s1                         
8134cb8e  vstr     s21, [sp, #0x13c]               
8134cb92  vstr     s22, [sp, #0x144]               
8134cb96  vstr     s23, [sp, #0x140]               
8134cb9a  ldr      r0, [r5, #0x1c]                   ; this.players
8134cb9c  ldr      r2, [r0, #0x14]                 
8134cb9e  ldr      r3, [r2, #8]                    
8134cba0  ldr      r4, [r3, #0x2c]                 
8134cba2  ldr      r0, [r4, #0x10]                 
8134cba4  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134cba8  movs     r0, #0                          
8134cbaa  movs     r1, #0                          
8134cbac  vmov.f32 s3, s0                          
8134cbb0  vmov.f32 s5, s2                          
8134cbb4  vmov.f32 s4, s1                          
8134cbb8  vmov.f32 s0, s21                         
8134cbbc  vmov.f32 s1, s23                         
8134cbc0  vmov.f32 s2, s22                         
8134cbc4  vstr     s3, [sp, #0x148]                
8134cbc8  vstr     s5, [sp, #0x150]                
8134cbcc  vstr     s4, [sp, #0x14c]                
8134cbd0  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134cbd4  movs     r0, #0                          
8134cbd6  movs     r1, #0                          
8134cbd8  vstr     s0, [sp, #0x154]                
8134cbdc  vstr     s2, [sp, #0x15c]                
8134cbe0  vstr     s1, [sp, #0x158]                
8134cbe4  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
8134cbe8  movw     r0, #0x4710                     
8134cbec  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
8134cbf0  vmov.f32 s21, s0                         
8134cbf4  vmov.f32 s23, s2                         
8134cbf8  vmov.f32 s22, s1                         
8134cbfc  ldr      r0, [r0]                        
8134cbfe  vstr     s21, [sp, #0x160]               
8134cc02  vstr     s23, [sp, #0x168]               
8134cc06  vstr     s22, [sp, #0x164]               
8134cc0a  ldrsb.w  r1, [r0, #0xc2]                 
8134cc0e  ands     r1, r1, #1                      
8134cc12  beq      #0x8134cc1c                     
8134cc14  ldr      r1, [r0, #0x70]                 
8134cc16  cbnz     r1, #0x8134cc1c                 
8134cc18  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134cc1c  vmov.f32 s0, s21                         
8134cc20  vmov.f32 s1, s22                         
8134cc24  vmov.f32 s2, s23                         
8134cc28  movs     r0, #0                          
8134cc2a  movs     r1, #0                          
8134cc2c  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
8134cc30  add      r0, sp, #0x2b0                  
8134cc32  movs     r1, #0                          
8134cc34  vstr     s0, [sp, #0x16c]                
8134cc38  vstr     s3, [sp, #0x178]                
8134cc3c  vstr     s1, [sp, #0x170]                
8134cc40  vstr     s2, [sp, #0x174]                
8134cc44  vstr     s0, [sp, #0x2b0]                
8134cc48  vstr     s1, [sp, #0x2b4]                
8134cc4c  vstr     s2, [sp, #0x2b8]                
8134cc50  vstr     s3, [sp, #0x2bc]                
8134cc54  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
8134cc58  movs     r1, #0                          
8134cc5a  vmov.f32 s21, s1                         
8134cc5e  vstr     s0, [sp, #0x17c]                
8134cc62  vstr     s2, [sp, #0x184]                
8134cc66  vstr     s21, [sp, #0x180]               
8134cc6a  ldr      r0, [r5, #0x1c]                   ; this.players
8134cc6c  ldr      r2, [r0, #0x14]                 
8134cc6e  ldr      r3, [r2, #8]                    
8134cc70  ldr      r4, [r3, #0x2c]                 
8134cc72  ldr      r0, [r4, #0x10]                 
8134cc74  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134cc78  movs     r1, #0                          
8134cc7a  vmov.f32 s22, s0                         
8134cc7e  vmov.f32 s23, s2                         
8134cc82  vmov.f32 s24, s1                         
8134cc86  vstr     s22, [sp, #0x188]               
8134cc8a  vstr     s23, [sp, #0x190]               
8134cc8e  vstr     s24, [sp, #0x18c]               
8134cc92  ldr      r0, [r5, #0x1c]                   ; this.players
8134cc94  ldr      r2, [r0, #0x10]                 
8134cc96  ldr      r3, [r2, #8]                    
8134cc98  ldr      r4, [r3, #0x2c]                 
8134cc9a  ldr      r0, [r4, #0x10]                 
8134cc9c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134cca0  movs     r0, #0                          
8134cca2  movs     r1, #0                          
8134cca4  vmov.f32 s3, s0                          
8134cca8  vmov.f32 s5, s2                          
8134ccac  vmov.f32 s4, s1                          
8134ccb0  vmov.f32 s0, s22                         
8134ccb4  vmov.f32 s1, s24                         
8134ccb8  vmov.f32 s2, s23                         
8134ccbc  vstr     s3, [sp, #0x194]                
8134ccc0  vstr     s5, [sp, #0x19c]                
8134ccc4  vstr     s4, [sp, #0x198]                
8134ccc8  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134cccc  movs     r0, #0                          
8134ccce  movs     r1, #0                          
8134ccd0  vstr     s0, [sp, #0x1a0]                
8134ccd4  vstr     s2, [sp, #0x1a8]                
8134ccd8  vstr     s1, [sp, #0x1a4]                
8134ccdc  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
8134cce0  movs     r0, #0                          
8134cce2  movs     r1, #0                          
8134cce4  vstr     s0, [sp, #0x1ac]                
8134cce8  vstr     s2, [sp, #0x1b4]                
8134ccec  vstr     s1, [sp, #0x1b0]                
8134ccf0  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
8134ccf4  add      r0, sp, #0x2c0                  
8134ccf6  movs     r1, #0                          
8134ccf8  vstr     s0, [sp, #0x1b8]                
8134ccfc  vstr     s3, [sp, #0x1c4]                
8134cd00  vstr     s1, [sp, #0x1bc]                
8134cd04  vstr     s2, [sp, #0x1c0]                
8134cd08  vstr     s0, [sp, #0x2c0]                
8134cd0c  vstr     s1, [sp, #0x2c4]                
8134cd10  vstr     s2, [sp, #0x2c8]                
8134cd14  vstr     s3, [sp, #0x2cc]                
8134cd18  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
8134cd1c  vldr     s3, [sp, #0x274]                
8134cd20  vldr     s4, [sp, #0x278]                
8134cd24  vldr     s5, [sp, #0x27c]                
8134cd28  movs     r0, #0                          
8134cd2a  movs     r1, #0                          
8134cd2c  vmov.f32 s22, s1                         
8134cd30  vstr     s0, [sp, #0x1c8]                
8134cd34  vstr     s2, [sp, #0x1d0]                
8134cd38  vmov.f32 s0, s3                          
8134cd3c  vmov.f32 s1, s4                          
8134cd40  vmov.f32 s2, s5                          
8134cd44  vstr     s22, [sp, #0x1cc]               
8134cd48  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
8134cd4c  add      r0, sp, #0x2d0                  
8134cd4e  movs     r1, #0                          
8134cd50  vstr     s0, [sp, #0x1d4]                
8134cd54  vstr     s3, [sp, #0x1e0]                
8134cd58  vstr     s1, [sp, #0x1d8]                
8134cd5c  vstr     s2, [sp, #0x1dc]                
8134cd60  vstr     s0, [sp, #0x2d0]                
8134cd64  vstr     s1, [sp, #0x2d4]                
8134cd68  vstr     s2, [sp, #0x2d8]                
8134cd6c  vstr     s3, [sp, #0x2dc]                
8134cd70  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
8134cd74  movs     r1, #0                          
8134cd76  vstr     s0, [sp, #0x1e4]                
8134cd7a  vstr     s2, [sp, #0x1ec]                
8134cd7e  vstr     s1, [sp, #0x1e8]                
8134cd82  ldr      r0, [r5, #0x10]                   ; this.t
8134cd84  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134cd88  movw     r0, #0x4618                     
8134cd8c  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134cd90  ldr      r0, [r0]                        
8134cd92  vmov.f32 s23, s1                         
8134cd96  vstr     s0, [sp, #0x1f0]                
8134cd9a  vstr     s2, [sp, #0x1f8]                
8134cd9e  vstr     s23, [sp, #0x1f4]               
8134cda2  ldrsb.w  r1, [r0, #0xc2]                 
8134cda6  ands     r1, r1, #1                      
8134cdaa  beq      #0x8134cdb4                     
8134cdac  ldr      r1, [r0, #0x70]                 
8134cdae  cbnz     r1, #0x8134cdb4                 
8134cdb0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134cdb4  vmov.f32 s0, s21                         
8134cdb8  vmov.f32 s1, s23                         
8134cdbc  movs     r0, #0                          
8134cdbe  movs     r1, #0                          
8134cdc0  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
8134cdc4  blx      #0x813e0e98                       ; -> fabsf
8134cdc8  ldr      r0, [r5, #0x10]                   ; this.t
8134cdca  vmov.f32 s23, s0                         
8134cdce  movs     r1, #0                          
8134cdd0  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134cdd4  movs     r0, #0                          
8134cdd6  movs     r1, #0                          
8134cdd8  vstr     s0, [sp, #0x1fc]                
8134cddc  vmov.f32 s0, s22                         
8134cde0  vstr     s1, [sp, #0x200]                
8134cde4  vstr     s2, [sp, #0x204]                
8134cde8  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
8134cdec  blx      #0x813e0e98                       ; -> fabsf
8134cdf0  ldr      r0, [r5, #0x10]                   ; this.t
8134cdf2  vcmp.f32 s23, s0                         
8134cdf6  vmrs     apsr_nzcv, fpscr                
8134cdfa  bmi      #0x8134cdfe                     
8134cdfc  b        #0x8134ce02                     
8134cdfe  vmov.f32 s22, s21                        
8134ce02  movs     r1, #0                          
8134ce04  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134ce08  movw     r0, #0x4618                     
8134ce0c  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134ce10  ldr      r0, [r0]                        
8134ce12  vmov.f32 s21, s1                         
8134ce16  vstr     s0, [sp, #0x208]                
8134ce1a  vstr     s2, [sp, #0x210]                
8134ce1e  vstr     s21, [sp, #0x20c]               
8134ce22  ldrsb.w  r1, [r0, #0xc2]                 
8134ce26  ands     r1, r1, #1                      
8134ce2a  beq      #0x8134ce34                     
8134ce2c  ldr      r1, [r0, #0x70]                 
8134ce2e  cbnz     r1, #0x8134ce34                 
8134ce30  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134ce34  movs     r0, #0                          
8134ce36  vmov.f32 s0, s21                         
8134ce3a  vmov.f32 s1, s22                         
8134ce3e  movs     r1, #0                          
8134ce40  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
8134ce44  vldr     s2, [r5, #0x5c]                   ; this.inFight
8134ce48  movs     r0, #0                          
8134ce4a  vmov     s3, r0                          
8134ce4e  ldr      r2, [r5, #0xc]                    ; this.settings
8134ce50  movw     r0, #0x4618                     
8134ce54  vldr     s21, [r2, #0x28]                
8134ce58  vldr     s1, [r5, #0x74]                   ; this.playerDistance
8134ce5c  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134ce60  vmov.f32 s23, s0                         
8134ce64  ldr      r0, [r0]                        
8134ce66  vcmp.f32 s2, s3                          
8134ce6a  vmrs     apsr_nzcv, fpscr                
8134ce6e  bgt      #0x8134ce72                     
8134ce70  b        #0x8134d138                     
8134ce72  vmov.f32 s0, #4.000000e+00               
8134ce76  vcmp.f32 s1, s0                          
8134ce7a  vmrs     apsr_nzcv, fpscr                
8134ce7e  bmi      #0x8134ce82                     
8134ce80  b        #0x8134d138                     
8134ce82  movs     r0, #0                          
8134ce84  vmov     s0, r0                          
8134ce88  movs     r1, #0                          
8134ce8a  vcmp.f32 s23, s0                         
8134ce8e  vmrs     apsr_nzcv, fpscr                
8134ce92  bmi      #0x8134ce96                     
8134ce94  b        #0x8134ce98                     
8134ce96  movs     r1, #1                          
8134ce98  movs     r0, #0                          
8134ce9a  movt     r0, #0x42aa                     
8134ce9e  vmov     s1, r0                          
8134cea2  vadd.f32 s1, s21, s1                     
8134cea6  cbnz     r1, #0x8134ceae                 
8134cea8  vsub.f32 s22, s22, s1                    
8134ceac  b        #0x8134ceb2                     
8134ceae  vadd.f32 s22, s22, s1                    
8134ceb2  vmov.f32 s0, #1.500000e+00               
8134ceb6  movw     r0, #0x4618                     
8134ceba  vldr     s25, [r5, #0x50]                  ; this.ZdistAdditive
8134cebe  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134cec2  vmul.f32 s0, s16, s0                     
8134cec6  vstr     s0, [r5, #0x58]                   ; this.speedRot
8134ceca  ldr      r0, [r0]                        
8134cecc  vldr     s23, [r2, #0x1c]                
8134ced0  vldr     s24, [r2, #0x20]                
8134ced4  ldrsb.w  r1, [r0, #0xc2]                 
8134ced8  ands     r1, r1, #1                      
8134cedc  beq      #0x8134cee6                     
8134cede  ldr      r1, [r0, #0x70]                 
8134cee0  cbnz     r1, #0x8134cee6                 
8134cee2  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134cee6  vmov.f32 s2, #3.000000e+00               
8134ceea  vmov.f32 s1, s23                         
8134ceee  vmov.f32 s0, s25                         
8134cef2  movs     r0, #0                          
8134cef4  movs     r1, #0                          
8134cef6  vmul.f32 s2, s16, s2                     
8134cefa  vmls.f32 s1, s17, s24                    
8134cefe  bl       #0x812ea1ca                       ; -> UnityEngine.Mathf$$MoveTowards
8134cf02  vstr     s0, [r5, #0x50]                   ; this.ZdistAdditive
8134cf06  ldr      r0, [r5, #0x10]                   ; this.t
8134cf08  vmov.f32 s0, s18                         
8134cf0c  vmov.f32 s1, s19                         
8134cf10  vmov.f32 s2, s20                         
8134cf14  movs     r1, #0                          
8134cf16  bl       #0x813a2224                       ; -> UnityEngine.Transform$$LookAt
8134cf1a  vldr     s16, [r5, #0x74]                  ; this.playerDistance
8134cf1e  movw     r0, #0x4618                     
8134cf22  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134cf26  ldr      r0, [r0]                        
8134cf28  ldrsb.w  r1, [r0, #0xc2]                 
8134cf2c  ands     r1, r1, #1                      
8134cf30  beq      #0x8134cf3a                     
8134cf32  ldr      r1, [r0, #0x70]                 
8134cf34  cbnz     r1, #0x8134cf3a                 
8134cf36  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134cf3a  movs     r0, #0                          
8134cf3c  vmov.f32 s17, #3.000000e+00              
8134cf40  vmov     s23, r0                         
8134cf44  vmov.f32 s24, #8.000000e+00              
8134cf48  movs     r0, #0                          
8134cf4a  movs     r1, #0                          
8134cf4c  vsub.f32 s0, s16, s17                    
8134cf50  vmov.f32 s1, s23                         
8134cf54  vmov.f32 s2, s24                         
8134cf58  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134cf5c  ldr      r2, [r5, #0xc]                    ; this.settings
8134cf5e  vldr     s3, [r2, #0x10]                 
8134cf62  vldr     s4, [r5, #0x74]                   ; this.playerDistance
8134cf66  vmov.f32 s1, s23                         
8134cf6a  vmov.f32 s2, s24                         
8134cf6e  movs     r0, #0                          
8134cf70  vmul.f32 s3, s0, s3                      
8134cf74  vsub.f32 s0, s4, s17                     
8134cf78  movs     r1, #0                          
8134cf7a  vstr     s3, [r5, #0x54]                   ; this.YCamAdditive
8134cf7e  vldr     s16, [r2, #8]                   
8134cf82  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134cf86  ldr      r0, [r5, #0xc]                    ; this.settings
8134cf88  vldr     s1, [r0, #0x14]                 
8134cf8c  ldr      r0, [r5, #0x10]                   ; this.t
8134cf8e  movs     r1, #0                          
8134cf90  vmla.f32 s16, s0, s1                     
8134cf94  vstr     s16, [r5, #0x70]                  ; this.Xrot
8134cf98  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134cf9c  movs     r0, #0                          
8134cf9e  movs     r1, #0                          
8134cfa0  vstr     s0, [sp, #0x214]                
8134cfa4  vmov.f32 s0, s1                          
8134cfa8  vstr     s1, [sp, #0x218]                
8134cfac  vstr     s2, [sp, #0x21c]                
8134cfb0  vmov.f32 s1, s22                         
8134cfb4  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
8134cfb8  vldr     s16, [r5, #0x70]                  ; this.Xrot
8134cfbc  ldr      r4, [r5, #0x10]                   ; this.t
8134cfbe  vmov.f32 s22, s0                         
8134cfc2  vcmp.f32 s22, s21                        
8134cfc6  vmrs     apsr_nzcv, fpscr                
8134cfca  bgt      #0x8134cfce                     
8134cfcc  b        #0x8134d026                     
8134cfce  adds     r0, r4, #0                      
8134cfd0  movs     r1, #0                          
8134cfd2  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134cfd6  vsub.f32 s3, s22, s21                    
8134cfda  movs     r1, #0                          
8134cfdc  vstr     s0, [sp, #0x220]                
8134cfe0  vstr     s2, [sp, #0x228]                
8134cfe4  vstr     s1, [sp, #0x224]                
8134cfe8  vldr     s2, [r5, #0x58]                   ; this.speedRot
8134cfec  strd     r1, r1, [sp, #0x28c]            
8134cff0  add      r0, sp, #0x28c                  
8134cff2  vmov.f32 s0, s16                         
8134cff6  vmul.f32 s3, s2, s3                      
8134cffa  str      r1, [sp, #0x294]                
8134cffc  movs     r1, #0                          
8134cffe  vmov     s2, r1                          
8134d002  movs     r1, #0                          
8134d004  vadd.f32 s1, s1, s3                      
8134d008  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134d00c  vldr     s0, [sp, #0x28c]                
8134d010  vldr     s1, [sp, #0x290]                
8134d014  vldr     s2, [sp, #0x294]                
8134d018  adds     r0, r4, #0                      
8134d01a  movs     r1, #0                          
8134d01c  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8134d020  ldr      r4, [r5, #0x10]                   ; this.t
8134d022  vldr     s16, [r5, #0x70]                  ; this.Xrot
8134d026  vneg.f32 s0, s21                         
8134d02a  vcmp.f32 s22, s0                         
8134d02e  vmrs     apsr_nzcv, fpscr                
8134d032  bmi      #0x8134d036                     
8134d034  b        #0x8134d24e                     
8134d036  adds     r0, r4, #0                      
8134d038  movs     r1, #0                          
8134d03a  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134d03e  vadd.f32 s3, s22, s21                    
8134d042  movs     r1, #0                          
8134d044  vstr     s0, [sp, #0x22c]                
8134d048  vstr     s2, [sp, #0x234]                
8134d04c  vstr     s1, [sp, #0x230]                
8134d050  vldr     s2, [r5, #0x58]                   ; this.speedRot
8134d054  strd     r1, r1, [sp, #0x298]            
8134d058  add      r0, sp, #0x298                  
8134d05a  vmov.f32 s0, s16                         
8134d05e  vmul.f32 s3, s2, s3                      
8134d062  str      r1, [sp, #0x2a0]                
8134d064  movs     r1, #0                          
8134d066  vmov     s2, r1                          
8134d06a  movs     r1, #0                          
8134d06c  vadd.f32 s1, s1, s3                      
8134d070  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134d074  vldr     s0, [sp, #0x298]                
8134d078  vldr     s1, [sp, #0x29c]                
8134d07c  vldr     s2, [sp, #0x2a0]                
8134d080  adds     r0, r4, #0                      
8134d082  movs     r1, #0                          
8134d084  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8134d088  ldr      r4, [r5, #0x10]                   ; this.t
8134d08a  movs     r1, #0                          
8134d08c  adds     r0, r4, #0                      
8134d08e  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
8134d092  movw     r0, #0x45fc                     
8134d096  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134d09a  vmov.f32 s21, s0                         
8134d09e  vmov.f32 s23, s2                         
8134d0a2  vmov.f32 s22, s1                         
8134d0a6  ldr      r0, [r0]                        
8134d0a8  vstr     s21, [sp, #0x244]               
8134d0ac  vstr     s23, [sp, #0x24c]               
8134d0b0  vstr     s22, [sp, #0x248]               
8134d0b4  ldr      r1, [r5, #0xc]                    ; this.settings
8134d0b6  vldr     s16, [r5, #0x74]                  ; this.playerDistance
8134d0ba  vldr     s24, [r1, #0x18]                
8134d0be  ldrsb.w  r1, [r0, #0xc2]                 
8134d0c2  vldr     s17, [r5, #0x50]                  ; this.ZdistAdditive
8134d0c6  ands     r1, r1, #1                      
8134d0ca  beq      #0x8134d0d4                     
8134d0cc  ldr      r1, [r0, #0x70]                 
8134d0ce  cbnz     r1, #0x8134d0d4                 
8134d0d0  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d0d4  vmov.f32 s3, #5.000000e-01               
8134d0d8  vmov.f32 s0, s21                         
8134d0dc  vmov.f32 s1, s22                         
8134d0e0  vmov.f32 s2, s23                         
8134d0e4  movs     r0, #0                          
8134d0e6  movs     r1, #0                          
8134d0e8  vmla.f32 s24, s16, s3                    
8134d0ec  vsub.f32 s3, s24, s17                    
8134d0f0  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134d0f4  movs     r0, #0                          
8134d0f6  movs     r1, #0                          
8134d0f8  vmov.f32 s3, s0                          
8134d0fc  vmov.f32 s5, s2                          
8134d100  vmov.f32 s4, s1                          
8134d104  vmov.f32 s0, s18                         
8134d108  vmov.f32 s1, s19                         
8134d10c  vmov.f32 s2, s20                         
8134d110  vstr     s3, [sp, #0x250]                
8134d114  vstr     s5, [sp, #0x258]                
8134d118  vstr     s4, [sp, #0x254]                
8134d11c  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134d120  adds     r0, r4, #0                      
8134d122  movs     r1, #0                          
8134d124  vstr     s0, [sp, #0x25c]                
8134d128  vstr     s2, [sp, #0x264]                
8134d12c  vstr     s1, [sp, #0x260]                
8134d130  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134d134  b.w      #0x8134c84a                     
8134d138  vmov.f32 s0, #4.000000e+00               
8134d13c  vcmp.f32 s1, s0                          
8134d140  vmrs     apsr_nzcv, fpscr                
8134d144  bgt      #0x8134d148                     
8134d146  b        #0x8134d21c                     
8134d148  ldrsb.w  r1, [r0, #0xc2]                 
8134d14c  vldr     s17, [r5, #0x50]                  ; this.ZdistAdditive
8134d150  ands     r1, r1, #1                      
8134d154  beq      #0x8134d15e                     
8134d156  ldr      r1, [r0, #0x70]                 
8134d158  cbnz     r1, #0x8134d15e                 
8134d15a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d15e  vmov.f32 s0, s23                         
8134d162  blx      #0x813e0e98                       ; -> fabsf
8134d166  ldr      r0, [r5, #0xc]                    ; this.settings
8134d168  vmov.f32 s2, #3.000000e+00               
8134d16c  vldr     s1, [r0, #0x24]                 
8134d170  movs     r0, #0                          
8134d172  movs     r1, #0                          
8134d174  vmul.f32 s1, s0, s1                      
8134d178  vmov.f32 s0, s17                         
8134d17c  vmul.f32 s2, s16, s2                     
8134d180  bl       #0x812ea1ca                       ; -> UnityEngine.Mathf$$MoveTowards
8134d184  vmov.f32 s1, #4.000000e+00               
8134d188  vldr     s2, [r5, #0x74]                   ; this.playerDistance
8134d18c  movs     r0, #0                          
8134d18e  vstr     s0, [r5, #0x50]                   ; this.ZdistAdditive
8134d192  str      r0, [r5, #0x5c]                   ; this.inFight
8134d194  movw     r0, #0x4618                     
8134d198  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134d19c  vcmp.f32 s2, s1                          
8134d1a0  ldr      r0, [r0]                        
8134d1a2  vmrs     apsr_nzcv, fpscr                
8134d1a6  bgt      #0x8134d1aa                     
8134d1a8  b        #0x8134d1e6                     
8134d1aa  ldrsb.w  r1, [r0, #0xc2]                 
8134d1ae  vldr     s17, [r5, #0x58]                  ; this.speedRot
8134d1b2  ands     r1, r1, #1                      
8134d1b6  beq      #0x8134d1c0                     
8134d1b8  ldr      r1, [r0, #0x70]                 
8134d1ba  cbnz     r1, #0x8134d1c0                 
8134d1bc  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d1c0  movw     r0, #0x999a                     
8134d1c4  vmov.f32 s0, s17                         
8134d1c8  movt     r0, #0x3e99                       ; = 0x3e99999a
8134d1cc  vmov     s2, r0                          
8134d1d0  vmov.f32 s1, #1.000000e+00               
8134d1d4  movs     r0, #0                          
8134d1d6  movs     r1, #0                          
8134d1d8  vmul.f32 s2, s16, s2                     
8134d1dc  bl       #0x812ea1ca                       ; -> UnityEngine.Mathf$$MoveTowards
8134d1e0  vstr     s0, [r5, #0x58]                   ; this.speedRot
8134d1e4  b        #0x8134cf06                     
8134d1e6  ldrsb.w  r1, [r0, #0xc2]                 
8134d1ea  vldr     s17, [r5, #0x58]                  ; this.speedRot
8134d1ee  ands     r1, r1, #1                      
8134d1f2  beq      #0x8134d1fc                     
8134d1f4  ldr      r1, [r0, #0x70]                 
8134d1f6  cbnz     r1, #0x8134d1fc                 
8134d1f8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d1fc  vmov.f32 s2, #1.500000e+00               
8134d200  vmov.f32 s0, s17                         
8134d204  movs     r0, #0                          
8134d206  vmov     s1, r0                          
8134d20a  movs     r0, #0                          
8134d20c  movs     r1, #0                          
8134d20e  vmul.f32 s2, s16, s2                     
8134d212  bl       #0x812ea1ca                       ; -> UnityEngine.Mathf$$MoveTowards
8134d216  vstr     s0, [r5, #0x58]                   ; this.speedRot
8134d21a  b        #0x8134cf06                     
8134d21c  ldrsb.w  r1, [r0, #0xc2]                 
8134d220  vldr     s17, [r5, #0x50]                  ; this.ZdistAdditive
8134d224  ands     r1, r1, #1                      
8134d228  beq      #0x8134d232                     
8134d22a  ldr      r1, [r0, #0x70]                 
8134d22c  cbnz     r1, #0x8134d232                 
8134d22e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d232  vmov.f32 s2, #3.000000e+00               
8134d236  movs     r0, #0                          
8134d238  vmov.f32 s0, s17                         
8134d23c  vmov     s1, r0                          
8134d240  movs     r0, #0                          
8134d242  movs     r1, #0                          
8134d244  vmul.f32 s2, s16, s2                     
8134d248  bl       #0x812ea1ca                       ; -> UnityEngine.Mathf$$MoveTowards
8134d24c  b        #0x8134d184                     
8134d24e  adds     r0, r4, #0                      
8134d250  movs     r1, #0                          
8134d252  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134d256  movs     r1, #0                          
8134d258  strd     r1, r1, [sp, #0x2a4]            
8134d25c  add      r0, sp, #0x2a4                  
8134d25e  vstr     s0, [sp, #0x238]                
8134d262  vstr     s2, [sp, #0x240]                
8134d266  vstr     s1, [sp, #0x23c]                
8134d26a  str      r1, [sp, #0x2ac]                
8134d26c  movs     r1, #0                          
8134d26e  vmov.f32 s0, s16                         
8134d272  vmov     s2, r1                          
8134d276  movs     r1, #0                          
8134d278  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134d27c  vldr     s0, [sp, #0x2a4]                
8134d280  vldr     s1, [sp, #0x2a8]                
8134d284  vldr     s2, [sp, #0x2ac]                
8134d288  adds     r0, r4, #0                      
8134d28a  movs     r1, #0                          
8134d28c  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8134d290  b        #0x8134d088                     
8134d292  vmov.f32 s0, #1.000000e+00               
8134d296  movs     r0, #0                          
8134d298  movs     r1, #0                          
8134d29a  bl       #0x813a038e                       ; -> UnityEngine.Time$$set_timeScale
8134d29e  movw     r0, #0x3489                     
8134d2a2  movt     r0, #0x8151                       ; = 0x81513489
8134d2a6  ldrb     r0, [r0]                        
8134d2a8  cbnz     r0, #0x8134d2c4                 
8134d2aa  movw     r0, #0xf2b8                     
8134d2ae  movt     r0, #0x814b                       ; = 0x814bf2b8
8134d2b2  ldr      r0, [r0]                        
8134d2b4  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134d2b8  movw     r0, #0x3489                     
8134d2bc  movt     r0, #0x8151                       ; = 0x81513489
8134d2c0  movs     r1, #1                          
8134d2c2  strb     r1, [r0]                        
8134d2c4  ldr      r0, [r4, #0x18]                 
8134d2c6  movs     r1, #0                          
8134d2c8  ldr      r0, [r0, #8]                    
8134d2ca  bl       #0x81261a0e                       ; -> UnityEngine.UI.Toggle$$get_isOn
8134d2ce  movw     r1, #0xb2f0                     
8134d2d2  movt     r1, #0x8151                       ; str "Settings.fpsTarget"
8134d2d6  ldr.w    lr, [r1]                        
8134d2da  cmp      r0, #0                          
8134d2dc  mov.w    r4, #1                          
8134d2e0  bne      #0x8134d2e4                     
8134d2e2  movs     r4, #0                          
8134d2e4  movs     r0, #0                          
8134d2e6  mov      r1, lr                          
8134d2e8  adds     r2, r4, #0                      
8134d2ea  movs     r3, #0                          
8134d2ec  bl       #0x812f2604                       ; -> UnityEngine.PlayerPrefs$$SetInt
8134d2f0  movs     r0, #0                          
8134d2f2  movs     r1, #0                          
8134d2f4  bl       #0x812f277e                       ; -> UnityEngine.PlayerPrefs$$Save
8134d2f8  b.w      #0x8134c63a                     
8134d2fc  ldr      r1, [sp, #0x2f8]                
8134d2fe  ldr.w    r0, [r8]                        
8134d302  cmp      r0, r1                          
8134d304  bne      #0x8134d312                     
8134d306  add.w    sp, sp, #0x300                  
8134d30a  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25}
8134d30e  pop.w    {r4, r5, r6, r7, r8, pc}        
8134d312  blx      #0x813e1118                       ; -> __stack_chk_fail
8134d316  nop                                      

; ==== cameraSC$$LateUpdateOld  @ 0x8134d318 .. 0x8134ddf4
8134d318  push.w   {r4, r5, r6, r7, r8, lr}        
8134d31c  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29}
8134d320  sub.w    sp, sp, #0x268                  
8134d324  movw     r8, #0x2514                     
8134d328  movt     r8, #0x813e                       ; = 0x813e2514
8134d32c  ldr.w    r1, [r8]                        
8134d330  str      r1, [sp, #0x260]                
8134d332  movw     r1, #0x34c6                     
8134d336  movt     r1, #0x8151                       ; = 0x815134c6
8134d33a  ldrb     r1, [r1]                        
8134d33c  adds     r5, r0, #0                      
8134d33e  cbnz     r1, #0x8134d35a                 
8134d340  movw     r0, #0x3708                     
8134d344  movt     r0, #0x814c                       ; = 0x814c3708
8134d348  ldr      r0, [r0]                        
8134d34a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134d34e  movw     r0, #0x34c6                     
8134d352  movt     r0, #0x8151                       ; = 0x815134c6
8134d356  movs     r1, #1                          
8134d358  strb     r1, [r0]                        
8134d35a  movs     r0, #0                          
8134d35c  strd     r0, r0, [sp, #0x208]            
8134d360  movs     r2, #0                          
8134d362  str      r0, [sp, #0x210]                
8134d364  movs     r3, #0                          
8134d366  strd     r2, r3, [sp, #0x250]            
8134d36a  movw     r1, #0x468c                     
8134d36e  strd     r2, r3, [sp, #0x258]            
8134d372  movt     r1, #0x8151                       ; UnityEngine.Input_TypeInfo
8134d376  ldr      r0, [r1]                        
8134d378  ldrsb.w  r1, [r0, #0xc2]                 
8134d37c  ands     r1, r1, #1                      
8134d380  beq      #0x8134d38a                     
8134d382  ldr      r1, [r0, #0x70]                 
8134d384  cbnz     r1, #0x8134d38a                 
8134d386  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d38a  movw     r0, #0xb384                     
8134d38e  movt     r0, #0x8151                       ; str "Start"
8134d392  ldr      r1, [r0]                        
8134d394  movs     r0, #0                          
8134d396  movs     r2, #0                          
8134d398  bl       #0x812e7686                       ; -> UnityEngine.Input$$GetButtonDown
8134d39c  cmp      r0, #0                          
8134d39e  beq      #0x8134d3da                     
8134d3a0  ldr      r4, [r5, #0x18]                   ; this.gameOptions
8134d3a2  movs     r1, #0                          
8134d3a4  ldr      r6, [r4, #0xc]                  
8134d3a6  adds     r0, r6, #0                      
8134d3a8  bl       #0x812e569c                       ; -> UnityEngine.GameObject$$get_activeSelf
8134d3ac  cmp      r0, #0                          
8134d3ae  mov.w    r1, #0                          
8134d3b2  bne      #0x8134d3b6                     
8134d3b4  movs     r1, #1                          
8134d3b6  movs     r2, #0                          
8134d3b8  adds     r0, r6, #0                      
8134d3ba  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134d3be  ldr      r0, [r4, #0xc]                  
8134d3c0  movs     r1, #0                          
8134d3c2  bl       #0x812e569c                       ; -> UnityEngine.GameObject$$get_activeSelf
8134d3c6  cmp      r0, #0                          
8134d3c8  beq.w    #0x8134dd74                     
8134d3cc  movs     r0, #0                          
8134d3ce  vmov     s0, r0                          
8134d3d2  movs     r0, #0                          
8134d3d4  movs     r1, #0                          
8134d3d6  bl       #0x813a038e                       ; -> UnityEngine.Time$$set_timeScale
8134d3da  movs     r0, #0                          
8134d3dc  movs     r1, #0                          
8134d3de  bl       #0x813a034e                       ; -> UnityEngine.Time$$get_timeScale
8134d3e2  vcmp.f32 s0, #0                          
8134d3e6  vmrs     apsr_nzcv, fpscr                
8134d3ea  beq.w    #0x8134dc74                     
8134d3ee  ldr      r0, [r5, #0x44]                   ; this.NinjCamera
8134d3f0  movs     r1, #0                          
8134d3f2  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8134d3f6  movs     r1, #0                          
8134d3f8  bl       #0x812e56e0                       ; -> UnityEngine.GameObject$$get_activeInHierarchy
8134d3fc  cmp      r0, #0                          
8134d3fe  beq.w    #0x8134d5d4                     
8134d402  ldr      r0, [r5, #0x4c]                   ; this.ninjActor
8134d404  movs     r1, #0                          
8134d406  ldr      r0, [r0, #0x10]                 
8134d408  ldr      r4, [r5, #0x44]                   ; this.NinjCamera
8134d40a  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134d40e  movw     r0, #0x45fc                     
8134d412  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134d416  vmov.f32 s16, s0                         
8134d41a  vmov.f32 s18, s2                         
8134d41e  vmov.f32 s17, s1                         
8134d422  ldr      r0, [r0]                        
8134d424  vstr     s16, [sp]                       
8134d428  vstr     s18, [sp, #8]                   
8134d42c  vstr     s17, [sp, #4]                   
8134d430  ldrsb.w  r1, [r0, #0xc2]                 
8134d434  ands     r1, r1, #1                      
8134d438  beq      #0x8134d442                     
8134d43a  ldr      r1, [r0, #0x70]                 
8134d43c  cbnz     r1, #0x8134d442                 
8134d43e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d442  movs     r0, #0                          
8134d444  movs     r1, #0                          
8134d446  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
8134d44a  movs     r0, #0                          
8134d44c  movt     r0, #0x4366                     
8134d450  vmov     s3, r0                          
8134d454  movs     r0, #0                          
8134d456  vstr     s0, [sp, #0xc]                  
8134d45a  vstr     s2, [sp, #0x14]                 
8134d45e  vstr     s1, [sp, #0x10]                 
8134d462  movs     r1, #0                          
8134d464  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134d468  movs     r0, #0                          
8134d46a  movs     r1, #0                          
8134d46c  vmov.f32 s3, s0                          
8134d470  vmov.f32 s5, s2                          
8134d474  vmov.f32 s4, s1                          
8134d478  vmov.f32 s0, s16                         
8134d47c  vmov.f32 s1, s17                         
8134d480  vmov.f32 s2, s18                         
8134d484  vstr     s3, [sp, #0x18]                 
8134d488  vstr     s5, [sp, #0x20]                 
8134d48c  vstr     s4, [sp, #0x1c]                 
8134d490  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134d494  adds     r0, r4, #0                      
8134d496  movs     r1, #0                          
8134d498  vstr     s0, [sp, #0x24]                 
8134d49c  vstr     s2, [sp, #0x2c]                 
8134d4a0  vstr     s1, [sp, #0x28]                 
8134d4a4  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8134d4a8  ldr      r0, [r5, #0x4c]                   ; this.ninjActor
8134d4aa  movs     r1, #0                          
8134d4ac  ldr      r0, [r0, #0x10]                 
8134d4ae  ldr      r4, [r5, #0x44]                   ; this.NinjCamera
8134d4b0  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d4b4  movs     r0, #0                          
8134d4b6  movs     r1, #0                          
8134d4b8  vmov.f32 s16, s0                         
8134d4bc  vmov.f32 s17, s2                         
8134d4c0  vmov.f32 s18, s1                         
8134d4c4  vstr     s16, [sp, #0x30]                
8134d4c8  vstr     s17, [sp, #0x38]                
8134d4cc  vstr     s18, [sp, #0x34]                
8134d4d0  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
8134d4d4  movw     r0, #0xcccd                     
8134d4d8  movt     r0, #0x3f4c                       ; = 0x3f4ccccd
8134d4dc  vmov     s19, r0                         
8134d4e0  movs     r0, #0                          
8134d4e2  vstr     s0, [sp, #0x3c]                 
8134d4e6  vstr     s2, [sp, #0x44]                 
8134d4ea  vstr     s1, [sp, #0x40]                 
8134d4ee  movs     r1, #0                          
8134d4f0  vmov.f32 s3, s19                         
8134d4f4  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134d4f8  movs     r0, #0                          
8134d4fa  movs     r1, #0                          
8134d4fc  vmov.f32 s3, s0                          
8134d500  vmov.f32 s5, s2                          
8134d504  vmov.f32 s4, s1                          
8134d508  vmov.f32 s0, s16                         
8134d50c  vmov.f32 s1, s18                         
8134d510  vmov.f32 s2, s17                         
8134d514  vstr     s3, [sp, #0x48]                 
8134d518  vstr     s5, [sp, #0x50]                 
8134d51c  vstr     s4, [sp, #0x4c]                 
8134d520  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134d524  adds     r0, r4, #0                      
8134d526  movs     r1, #0                          
8134d528  vstr     s0, [sp, #0x54]                 
8134d52c  vstr     s2, [sp, #0x5c]                 
8134d530  vstr     s1, [sp, #0x58]                 
8134d534  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134d538  ldr      r4, [r5, #0x44]                   ; this.NinjCamera
8134d53a  adds     r0, r4, #0                      
8134d53c  movs     r1, #0                          
8134d53e  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d542  movs     r0, #0                          
8134d544  movs     r1, #0                          
8134d546  vmov.f32 s16, s0                         
8134d54a  vmov.f32 s17, s2                         
8134d54e  vmov.f32 s18, s1                         
8134d552  vstr     s16, [sp, #0x60]                
8134d556  vstr     s17, [sp, #0x68]                
8134d55a  vstr     s18, [sp, #0x64]                
8134d55e  ldr      r5, [r5, #0x44]                   ; this.NinjCamera
8134d560  bl       #0x813a472a                       ; -> UnityEngine.Vector3$$get_back
8134d564  adds     r0, r5, #0                      
8134d566  movs     r1, #0                          
8134d568  vstr     s0, [sp, #0x6c]                 
8134d56c  vstr     s2, [sp, #0x74]                 
8134d570  vstr     s1, [sp, #0x70]                 
8134d574  bl       #0x813a1a6e                       ; -> UnityEngine.Transform$$TransformDirection
8134d578  vmov.f32 s3, s19                         
8134d57c  movs     r0, #0                          
8134d57e  movs     r1, #0                          
8134d580  vstr     s0, [sp, #0x78]                 
8134d584  vstr     s2, [sp, #0x80]                 
8134d588  vstr     s1, [sp, #0x7c]                 
8134d58c  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134d590  movs     r0, #0                          
8134d592  movs     r1, #0                          
8134d594  vmov.f32 s3, s0                          
8134d598  vmov.f32 s5, s2                          
8134d59c  vmov.f32 s4, s1                          
8134d5a0  vmov.f32 s0, s16                         
8134d5a4  vmov.f32 s1, s18                         
8134d5a8  vmov.f32 s2, s17                         
8134d5ac  vstr     s3, [sp, #0x84]                 
8134d5b0  vstr     s5, [sp, #0x8c]                 
8134d5b4  vstr     s4, [sp, #0x88]                 
8134d5b8  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134d5bc  adds     r0, r4, #0                      
8134d5be  movs     r1, #0                          
8134d5c0  vstr     s0, [sp, #0x90]                 
8134d5c4  vstr     s2, [sp, #0x98]                 
8134d5c8  vstr     s1, [sp, #0x94]                 
8134d5cc  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134d5d0  b.w      #0x8134ddd8                     
8134d5d4  ldr      r0, [r5, #0x1c]                 
8134d5d6  ldr      r1, [r0, #0x10]                 
8134d5d8  ldr      r2, [r1, #8]                    
8134d5da  movs     r1, #0                          
8134d5dc  ldr      r0, [r2, #0x2c]                 
8134d5de  ldr      r0, [r0, #0x10]                 
8134d5e0  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d5e4  movs     r1, #0                          
8134d5e6  vmov.f32 s26, s0                         
8134d5ea  vmov.f32 s17, s2                         
8134d5ee  vmov.f32 s16, s1                         
8134d5f2  vstr     s26, [sp, #0x9c]                
8134d5f6  vstr     s17, [sp, #0xa4]                
8134d5fa  vstr     s16, [sp, #0xa0]                
8134d5fe  ldr      r0, [r5, #0x1c]                 
8134d600  ldr      r2, [r0, #0x10]                 
8134d602  ldr      r3, [r2, #8]                    
8134d604  ldr      r4, [r3, #0x30]                 
8134d606  ldr      r6, [r4, #0x2c]                 
8134d608  ldr      r0, [r6, #0x10]                 
8134d60a  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d60e  movw     r0, #0x45fc                     
8134d612  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134d616  vmov.f32 s18, s0                         
8134d61a  vmov.f32 s20, s2                         
8134d61e  vmov.f32 s19, s1                         
8134d622  ldr      r0, [r0]                        
8134d624  vstr     s18, [sp, #0xa8]                
8134d628  vstr     s20, [sp, #0xb0]                
8134d62c  vstr     s19, [sp, #0xac]                
8134d630  ldrsb.w  r1, [r0, #0xc2]                 
8134d634  ands     r1, r1, #1                      
8134d638  beq      #0x8134d642                     
8134d63a  ldr      r1, [r0, #0x70]                 
8134d63c  cbnz     r1, #0x8134d642                 
8134d63e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d642  vmov.f32 s0, s26                         
8134d646  vmov.f32 s1, s16                         
8134d64a  vmov.f32 s2, s17                         
8134d64e  vmov.f32 s3, s18                         
8134d652  vmov.f32 s4, s19                         
8134d656  vmov.f32 s5, s20                         
8134d65a  movs     r0, #0                          
8134d65c  movs     r1, #0                          
8134d65e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134d662  movw     r0, #0x4618                     
8134d666  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134d66a  ldr      r0, [r0]                        
8134d66c  vstr     s0, [sp, #0xb4]                 
8134d670  vmov.f32 s26, s1                         
8134d674  vstr     s2, [sp, #0xbc]                 
8134d678  vstr     s0, [sp, #0x208]                
8134d67c  vstr     s2, [sp, #0x210]                
8134d680  vstr     s26, [sp, #0xb8]                
8134d684  vstr     s26, [sp, #0x20c]               
8134d688  ldrsb.w  r1, [r0, #0xc2]                 
8134d68c  ands     r1, r1, #1                      
8134d690  beq      #0x8134d69a                     
8134d692  ldr      r1, [r0, #0x70]                 
8134d694  cbnz     r1, #0x8134d69a                 
8134d696  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134d69a  vmov.f32 s0, s26                         
8134d69e  blx      #0x813e0e98                       ; -> fabsf
8134d6a2  movs     r4, #0                          
8134d6a4  str      r4, [sp, #0x20c]                
8134d6a6  add      r0, sp, #0x208                  
8134d6a8  vmov.f32 s16, s0                         
8134d6ac  movs     r1, #0                          
8134d6ae  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
8134d6b2  vstr     s0, [r5, #0x3c]                 
8134d6b6  adds     r0, r5, #0                      
8134d6b8  movs     r1, #0                          
8134d6ba  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134d6be  adds     r6, r0, #0                      
8134d6c0  movs     r0, #0                          
8134d6c2  movs     r1, #0                          
8134d6c4  bl       #0x813a472a                       ; -> UnityEngine.Vector3$$get_back
8134d6c8  adds     r0, r6, #0                      
8134d6ca  movs     r1, #0                          
8134d6cc  vstr     s0, [sp, #0xc0]                 
8134d6d0  vstr     s2, [sp, #0xc8]                 
8134d6d4  vstr     s1, [sp, #0xc4]                 
8134d6d8  bl       #0x813a1a6e                       ; -> UnityEngine.Transform$$TransformDirection
8134d6dc  adds     r0, r5, #0                      
8134d6de  movs     r1, #0                          
8134d6e0  vmov.f32 s17, s0                         
8134d6e4  vmov.f32 s18, s2                         
8134d6e8  vmov.f32 s19, s1                         
8134d6ec  vstr     s17, [sp, #0xcc]                
8134d6f0  vstr     s18, [sp, #0xd4]                
8134d6f4  vstr     s19, [sp, #0xd0]                
8134d6f8  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134d6fc  adds     r6, r0, #0                      
8134d6fe  adds     r0, r5, #0                      
8134d700  movs     r1, #0                          
8134d702  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134d706  movs     r1, #0                          
8134d708  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d70c  movs     r1, #0                          
8134d70e  vmov.f32 s20, s0                         
8134d712  vmov.f32 s21, s2                         
8134d716  vmov.f32 s22, s1                         
8134d71a  vstr     s20, [sp, #0xd8]                
8134d71e  vstr     s21, [sp, #0xe0]                
8134d722  vstr     s22, [sp, #0xdc]                
8134d726  ldr      r0, [r5, #0x1c]                 
8134d728  ldr      r2, [r0, #0x10]                 
8134d72a  ldr      r3, [r2, #8]                    
8134d72c  ldr      r7, [r3, #0x2c]                 
8134d72e  ldr      r0, [r7, #0x10]                 
8134d730  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d734  movs     r1, #0                          
8134d736  vmov.f32 s23, s0                         
8134d73a  vmov.f32 s24, s2                         
8134d73e  vmov.f32 s25, s1                         
8134d742  vstr     s23, [sp, #0xe4]                
8134d746  vstr     s24, [sp, #0xec]                
8134d74a  vstr     s25, [sp, #0xe8]                
8134d74e  ldr      r0, [r5, #0x1c]                 
8134d750  ldr      r2, [r0, #0x10]                 
8134d752  ldr      r3, [r2, #8]                    
8134d754  ldr      r7, [r3, #0x30]                 
8134d756  ldr      r0, [r7, #0x2c]                 
8134d758  ldr      r0, [r0, #0x10]                 
8134d75a  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134d75e  movs     r0, #0                          
8134d760  movs     r1, #0                          
8134d762  vmov.f32 s3, s0                          
8134d766  vmov.f32 s5, s2                          
8134d76a  vmov.f32 s4, s1                          
8134d76e  vmov.f32 s0, s23                         
8134d772  vmov.f32 s1, s25                         
8134d776  vmov.f32 s2, s24                         
8134d77a  vstr     s3, [sp, #0xf0]                 
8134d77e  vstr     s5, [sp, #0xf8]                 
8134d782  vstr     s4, [sp, #0xf4]                 
8134d786  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134d78a  vmov.f32 s23, #2.000000e+00              
8134d78e  movs     r0, #0                          
8134d790  movs     r1, #0                          
8134d792  vstr     s0, [sp, #0xfc]                 
8134d796  vstr     s2, [sp, #0x104]                
8134d79a  vstr     s1, [sp, #0x100]                
8134d79e  vmov.f32 s3, s23                         
8134d7a2  bl       #0x813a3904                       ; -> UnityEngine.Vector3$$op_Division
8134d7a6  vmov.f32 s6, #5.000000e-01               
8134d7aa  vmov.f32 s24, s0                         
8134d7ae  vmov.f32 s25, s2                         
8134d7b2  vmov.f32 s26, s1                         
8134d7b6  vmov.f32 s0, s17                         
8134d7ba  vmov.f32 s1, s19                         
8134d7be  vstr     s24, [sp, #0x108]               
8134d7c2  vstr     s25, [sp, #0x110]               
8134d7c6  vstr     s26, [sp, #0x10c]               
8134d7ca  vldr     s4, [r5, #0x24]                 
8134d7ce  vldr     s5, [r5, #0x3c]                 
8134d7d2  vmov.f32 s2, s18                         
8134d7d6  movs     r0, #0                          
8134d7d8  vmov.f32 s3, s4                          
8134d7dc  movs     r1, #0                          
8134d7de  vmla.f32 s3, s5, s6                      
8134d7e2  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134d7e6  movs     r0, #0                          
8134d7e8  movs     r1, #0                          
8134d7ea  vmov.f32 s3, s0                          
8134d7ee  vmov.f32 s5, s2                          
8134d7f2  vmov.f32 s4, s1                          
8134d7f6  vmov.f32 s0, s24                         
8134d7fa  vmov.f32 s1, s26                         
8134d7fe  vmov.f32 s2, s25                         
8134d802  vstr     s3, [sp, #0x114]                
8134d806  vstr     s5, [sp, #0x11c]                
8134d80a  vstr     s4, [sp, #0x118]                
8134d80e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134d812  movs     r0, #0                          
8134d814  vmov     s17, r0                         
8134d818  add      r0, sp, #0x214                  
8134d81a  vmov.f32 s18, s0                         
8134d81e  vmov.f32 s19, s2                         
8134d822  vmov.f32 s24, s1                         
8134d826  movs     r1, #0                          
8134d828  vmov.f32 s0, s17                         
8134d82c  vmov.f32 s2, s17                         
8134d830  vstr     s18, [sp, #0x120]               
8134d834  vstr     s19, [sp, #0x128]               
8134d838  vstr     s24, [sp, #0x124]               
8134d83c  vldr     s1, [r5, #0x28]                 
8134d840  str      r4, [sp, #0x214]                
8134d842  strd     r4, r4, [sp, #0x218]            
8134d846  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134d84a  vldr     s3, [sp, #0x214]                
8134d84e  vldr     s4, [sp, #0x218]                
8134d852  vldr     s5, [sp, #0x21c]                
8134d856  vmov.f32 s0, s18                         
8134d85a  vmov.f32 s1, s24                         
8134d85e  vmov.f32 s2, s19                         
8134d862  movs     r0, #0                          
8134d864  movs     r1, #0                          
8134d866  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134d86a  movs     r0, #0                          
8134d86c  movs     r1, #0                          
8134d86e  vmov.f32 s18, s0                         
8134d872  vmov.f32 s19, s2                         
8134d876  vmov.f32 s24, s1                         
8134d87a  vstr     s18, [sp, #0x12c]               
8134d87e  vstr     s19, [sp, #0x134]               
8134d882  vstr     s24, [sp, #0x130]               
8134d886  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134d88a  vmov.f32 s6, #2.700000e+01               
8134d88e  vmov.f32 s1, s22                         
8134d892  vmov.f32 s2, s21                         
8134d896  vmov.f32 s3, s18                         
8134d89a  vmov.f32 s4, s24                         
8134d89e  vmov.f32 s5, s19                         
8134d8a2  movs     r0, #0                          
8134d8a4  movs     r1, #0                          
8134d8a6  vmul.f32 s6, s0, s6                      
8134d8aa  vmov.f32 s0, s20                         
8134d8ae  bl       #0x813a385c                       ; -> UnityEngine.Vector3$$Lerp
8134d8b2  adds     r0, r6, #0                      
8134d8b4  movs     r1, #0                          
8134d8b6  vstr     s0, [sp, #0x138]                
8134d8ba  vstr     s2, [sp, #0x140]                
8134d8be  vstr     s1, [sp, #0x13c]                
8134d8c2  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134d8c6  ldr      r6, [r5, #0x20]                 
8134d8c8  adds     r0, r6, #0                      
8134d8ca  movs     r1, #0                          
8134d8cc  bl       #0x813a07c2                       ; -> UnityEngine.Transform$$get_localPosition
8134d8d0  vmov.f32 s18, #2.500000e+00              
8134d8d4  movw     r0, #0xcccd                     
8134d8d8  vmov.f32 s19, s1                         
8134d8dc  vstr     s0, [sp, #0x144]                
8134d8e0  vstr     s2, [sp, #0x14c]                
8134d8e4  movt     r0, #0x3f0c                       ; = 0x3f0ccccd
8134d8e8  vmov.f32 s1, s17                         
8134d8ec  vmov     s2, r0                          
8134d8f0  vstr     s19, [sp, #0x148]               
8134d8f4  vldr     s0, [r5, #0x3c]                 
8134d8f8  movs     r0, #0                          
8134d8fa  movs     r1, #0                          
8134d8fc  vsub.f32 s0, s0, s18                     
8134d900  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134d904  movs     r0, #0                          
8134d906  movs     r1, #0                          
8134d908  vmov.f32 s20, s0                         
8134d90c  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134d910  vmov.f32 s21, #4.000000e+00              
8134d914  movw     r0, #0xcccd                     
8134d918  movt     r0, #0xbf0c                       ; = 0xbf0ccccd
8134d91c  vmov     s1, r0                          
8134d920  vmul.f32 s2, s0, s21                     
8134d924  vmov.f32 s0, s19                         
8134d928  movs     r0, #0                          
8134d92a  movs     r1, #0                          
8134d92c  vadd.f32 s1, s20, s1                     
8134d930  bl       #0x812e9f30                       ; -> UnityEngine.Mathf$$Lerp
8134d934  ldr      r0, [r5, #0x20]                 
8134d936  vmov.f32 s19, s0                         
8134d93a  movs     r1, #0                          
8134d93c  bl       #0x813a07c2                       ; -> UnityEngine.Transform$$get_localPosition
8134d940  movw     r0, #0x6666                     
8134d944  movt     r0, #0x3f66                       ; = 0x3f666666
8134d948  vmov.f32 s20, s2                         
8134d94c  vstr     s0, [sp, #0x150]                
8134d950  vstr     s1, [sp, #0x154]                
8134d954  vmov     s22, r0                         
8134d958  vmov.f32 s1, s17                         
8134d95c  movs     r0, #0                          
8134d95e  vstr     s20, [sp, #0x158]               
8134d962  vldr     s0, [r5, #0x3c]                 
8134d966  movs     r1, #0                          
8134d968  vmov.f32 s2, s22                         
8134d96c  vsub.f32 s0, s0, s18                     
8134d970  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134d974  movs     r0, #0                          
8134d976  movs     r1, #0                          
8134d978  vmov.f32 s18, s0                         
8134d97c  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134d980  vmul.f32 s2, s0, s21                     
8134d984  vmov.f32 s0, s20                         
8134d988  movs     r0, #0                          
8134d98a  movs     r1, #0                          
8134d98c  vsub.f32 s1, s22, s18                    
8134d990  vsub.f32 s1, s1, s16                     
8134d994  bl       #0x812e9f30                       ; -> UnityEngine.Mathf$$Lerp
8134d998  str      r4, [sp, #0x220]                
8134d99a  vmov.f32 s2, s0                          
8134d99e  add      r0, sp, #0x220                  
8134d9a0  str      r4, [sp, #0x224]                
8134d9a2  vmov.f32 s0, s17                         
8134d9a6  vmov.f32 s1, s19                         
8134d9aa  str      r4, [sp, #0x228]                
8134d9ac  movs     r1, #0                          
8134d9ae  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134d9b2  vldr     s0, [sp, #0x220]                
8134d9b6  vldr     s1, [sp, #0x224]                
8134d9ba  vldr     s2, [sp, #0x228]                
8134d9be  adds     r0, r6, #0                      
8134d9c0  movs     r1, #0                          
8134d9c2  bl       #0x813a0882                       ; -> UnityEngine.Transform$$set_localPosition
8134d9c6  ldr      r6, [r5, #0x20]                 
8134d9c8  adds     r0, r6, #0                      
8134d9ca  movs     r1, #0                          
8134d9cc  bl       #0x813a0ccc                       ; -> UnityEngine.Transform$$get_localEulerAngles
8134d9d0  movs     r0, #0                          
8134d9d2  vmov.f32 s16, s0                         
8134d9d6  vstr     s2, [sp, #0x164]                
8134d9da  vstr     s1, [sp, #0x160]                
8134d9de  vmov.f32 s1, s17                         
8134d9e2  vmov.f32 s2, #5.000000e+00               
8134d9e6  movs     r1, #0                          
8134d9e8  vstr     s16, [sp, #0x15c]               
8134d9ec  vldr     s0, [r5, #0x3c]                 
8134d9f0  vmul.f32 s0, s0, s23                     
8134d9f4  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134d9f8  movs     r0, #0                          
8134d9fa  movs     r1, #0                          
8134d9fc  vmov.f32 s18, s0                         
8134da00  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134da04  vmul.f32 s2, s0, s21                     
8134da08  vmov.f32 s0, s16                         
8134da0c  movs     r0, #0                          
8134da0e  movs     r1, #0                          
8134da10  vmov.f32 s1, s18                         
8134da14  bl       #0x812e9f30                       ; -> UnityEngine.Mathf$$Lerp
8134da18  strd     r4, r4, [sp, #0x22c]            
8134da1c  vmov.f32 s1, s17                         
8134da20  add      r0, sp, #0x22c                  
8134da22  vmov.f32 s2, s17                         
8134da26  str      r4, [sp, #0x234]                
8134da28  movs     r1, #0                          
8134da2a  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134da2e  vldr     s0, [sp, #0x22c]                
8134da32  vldr     s1, [sp, #0x230]                
8134da36  vldr     s2, [sp, #0x234]                
8134da3a  adds     r0, r6, #0                      
8134da3c  movs     r1, #0                          
8134da3e  bl       #0x813a0e28                       ; -> UnityEngine.Transform$$set_localEulerAngles
8134da42  ldr      r0, [r5, #0x1c]                 
8134da44  ldr      r1, [r0, #0x10]                 
8134da46  ldr      r2, [r1, #8]                    
8134da48  movs     r1, #0                          
8134da4a  ldr      r0, [r2, #0x2c]                 
8134da4c  ldr      r0, [r0, #0x10]                 
8134da4e  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134da52  movs     r1, #0                          
8134da54  vmov.f32 s16, s0                         
8134da58  vmov.f32 s17, s2                         
8134da5c  vmov.f32 s18, s1                         
8134da60  vstr     s16, [sp, #0x168]               
8134da64  vstr     s17, [sp, #0x170]               
8134da68  vstr     s18, [sp, #0x16c]               
8134da6c  ldr      r0, [r5, #0x1c]                 
8134da6e  ldr      r2, [r0, #0x10]                 
8134da70  ldr      r3, [r2, #8]                    
8134da72  ldr      r4, [r3, #0x30]                 
8134da74  ldr      r6, [r4, #0x2c]                 
8134da76  ldr      r0, [r6, #0x10]                 
8134da78  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134da7c  movs     r0, #0                          
8134da7e  movs     r1, #0                          
8134da80  vmov.f32 s3, s0                          
8134da84  vmov.f32 s5, s2                          
8134da88  vmov.f32 s4, s1                          
8134da8c  vmov.f32 s0, s16                         
8134da90  vmov.f32 s1, s18                         
8134da94  vmov.f32 s2, s17                         
8134da98  vstr     s3, [sp, #0x174]                
8134da9c  vstr     s5, [sp, #0x17c]                
8134daa0  vstr     s4, [sp, #0x178]                
8134daa4  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134daa8  movs     r0, #0                          
8134daaa  movs     r1, #0                          
8134daac  vstr     s0, [sp, #0x180]                
8134dab0  vstr     s2, [sp, #0x188]                
8134dab4  vstr     s1, [sp, #0x184]                
8134dab8  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
8134dabc  movw     r0, #0x4710                     
8134dac0  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
8134dac4  vmov.f32 s26, s0                         
8134dac8  vmov.f32 s28, s2                         
8134dacc  vmov.f32 s27, s1                         
8134dad0  ldr      r0, [r0]                        
8134dad2  vstr     s26, [sp, #0x18c]               
8134dad6  vstr     s28, [sp, #0x194]               
8134dada  vstr     s27, [sp, #0x190]               
8134dade  ldrsb.w  r1, [r0, #0xc2]                 
8134dae2  ands     r1, r1, #1                      
8134dae6  beq      #0x8134daf0                     
8134dae8  ldr      r1, [r0, #0x70]                 
8134daea  cbnz     r1, #0x8134daf0                 
8134daec  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134daf0  vmov.f32 s0, s26                         
8134daf4  vmov.f32 s1, s27                         
8134daf8  vmov.f32 s2, s28                         
8134dafc  movs     r0, #0                          
8134dafe  movs     r1, #0                          
8134db00  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
8134db04  add      r0, sp, #0x250                  
8134db06  movs     r1, #0                          
8134db08  vstr     s0, [sp, #0x198]                
8134db0c  vstr     s3, [sp, #0x1a4]                
8134db10  vstr     s1, [sp, #0x19c]                
8134db14  vstr     s2, [sp, #0x1a0]                
8134db18  vstr     s0, [sp, #0x250]                
8134db1c  vstr     s1, [sp, #0x254]                
8134db20  vstr     s2, [sp, #0x258]                
8134db24  vstr     s3, [sp, #0x25c]                
8134db28  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
8134db2c  adds     r0, r5, #0                      
8134db2e  movs     r1, #0                          
8134db30  vmov.f32 s26, s1                         
8134db34  vstr     s0, [sp, #0x1a8]                
8134db38  vstr     s2, [sp, #0x1b0]                
8134db3c  vstr     s26, [sp, #0x1ac]               
8134db40  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134db44  movs     r1, #0                          
8134db46  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134db4a  movs     r0, #0                          
8134db4c  movs     r1, #0                          
8134db4e  vstr     s0, [sp, #0x1b4]                
8134db52  vstr     s2, [sp, #0x1bc]                
8134db56  vstr     s1, [sp, #0x1b8]                
8134db5a  vmov.f32 s0, s1                          
8134db5e  vmov.f32 s1, s26                         
8134db62  bl       #0x812ea282                       ; -> UnityEngine.Mathf$$DeltaAngle
8134db66  movs     r0, #0                          
8134db68  vmov     s1, r0                          
8134db6c  vcmp.f32 s0, s1                          
8134db70  vmrs     apsr_nzcv, fpscr                
8134db74  bgt      #0x8134db78                     
8134db76  b        #0x8134dc76                     
8134db78  movs     r1, #0                          
8134db7a  adds     r0, r5, #0                      
8134db7c  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134db80  adds     r4, r0, #0                      
8134db82  adds     r0, r5, #0                      
8134db84  movs     r1, #0                          
8134db86  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134db8a  movs     r1, #0                          
8134db8c  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134db90  adds     r0, r5, #0                      
8134db92  movs     r1, #0                          
8134db94  vmov.f32 s16, s0                         
8134db98  vstr     s2, [sp, #0x1c8]                
8134db9c  vstr     s1, [sp, #0x1c4]                
8134dba0  vstr     s16, [sp, #0x1c0]               
8134dba4  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dba8  movs     r1, #0                          
8134dbaa  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134dbae  movw     r0, #0x4618                     
8134dbb2  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134dbb6  ldr      r0, [r0]                        
8134dbb8  vmov.f32 s17, s1                         
8134dbbc  vstr     s0, [sp, #0x1cc]                
8134dbc0  vstr     s2, [sp, #0x1d4]                
8134dbc4  vstr     s17, [sp, #0x1d0]               
8134dbc8  ldrsb.w  r1, [r0, #0xc2]                 
8134dbcc  vldr     s18, [r5, #0x3c]                
8134dbd0  ands     r1, r1, #1                      
8134dbd4  beq      #0x8134dbde                     
8134dbd6  ldr      r1, [r0, #0x70]                 
8134dbd8  cbnz     r1, #0x8134dbde                 
8134dbda  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134dbde  vmov.f32 s0, #1.600000e+01               
8134dbe2  movs     r0, #0                          
8134dbe4  movt     r0, #0x42a0                     
8134dbe8  vmov     s19, r0                         
8134dbec  movs     r0, #0                          
8134dbee  vmul.f32 s0, s18, s0                     
8134dbf2  vmov     s1, r0                          
8134dbf6  movs     r0, #0                          
8134dbf8  movs     r1, #0                          
8134dbfa  vmov.f32 s2, s19                         
8134dbfe  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134dc02  vmov.f32 s18, s0                         
8134dc06  movs     r0, #0                          
8134dc08  movs     r1, #0                          
8134dc0a  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134dc0e  vmov.f32 s2, #8.000000e+00               
8134dc12  vsub.f32 s1, s19, s18                    
8134dc16  movs     r0, #0                          
8134dc18  movs     r1, #0                          
8134dc1a  vmul.f32 s2, s0, s2                      
8134dc1e  vmov.f32 s0, s17                         
8134dc22  vsub.f32 s1, s26, s1                     
8134dc26  bl       #0x812ea05a                       ; -> UnityEngine.Mathf$$LerpAngle
8134dc2a  adds     r0, r5, #0                      
8134dc2c  movs     r1, #0                          
8134dc2e  vmov.f32 s17, s0                         
8134dc32  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dc36  movs     r1, #0                          
8134dc38  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134dc3c  movs     r1, #0                          
8134dc3e  strd     r1, r1, [sp, #0x238]            
8134dc42  add      r0, sp, #0x238                  
8134dc44  vstr     s0, [sp, #0x1d8]                
8134dc48  vstr     s2, [sp, #0x1e0]                
8134dc4c  vstr     s1, [sp, #0x1dc]                
8134dc50  str      r1, [sp, #0x240]                
8134dc52  vmov.f32 s0, s16                         
8134dc56  vmov.f32 s1, s17                         
8134dc5a  movs     r1, #0                          
8134dc5c  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134dc60  vldr     s0, [sp, #0x238]                
8134dc64  vldr     s1, [sp, #0x23c]                
8134dc68  vldr     s2, [sp, #0x240]                
8134dc6c  adds     r0, r4, #0                      
8134dc6e  movs     r1, #0                          
8134dc70  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8134dc74  b        #0x8134ddd8                     
8134dc76  movs     r1, #0                          
8134dc78  adds     r0, r5, #0                      
8134dc7a  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dc7e  adds     r4, r0, #0                      
8134dc80  adds     r0, r5, #0                      
8134dc82  movs     r1, #0                          
8134dc84  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dc88  movs     r1, #0                          
8134dc8a  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134dc8e  adds     r0, r5, #0                      
8134dc90  movs     r1, #0                          
8134dc92  vmov.f32 s17, s0                         
8134dc96  vstr     s2, [sp, #0x1ec]                
8134dc9a  vstr     s1, [sp, #0x1e8]                
8134dc9e  vstr     s17, [sp, #0x1e4]               
8134dca2  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dca6  movs     r1, #0                          
8134dca8  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134dcac  movw     r0, #0x4618                     
8134dcb0  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8134dcb4  ldr      r0, [r0]                        
8134dcb6  vmov.f32 s18, s1                         
8134dcba  vstr     s0, [sp, #0x1f0]                
8134dcbe  vstr     s2, [sp, #0x1f8]                
8134dcc2  vstr     s18, [sp, #0x1f4]               
8134dcc6  ldrsb.w  r1, [r0, #0xc2]                 
8134dcca  vldr     s16, [r5, #0x3c]                
8134dcce  ands     r1, r1, #1                      
8134dcd2  beq      #0x8134dcdc                     
8134dcd4  ldr      r1, [r0, #0x70]                 
8134dcd6  cbnz     r1, #0x8134dcdc                 
8134dcd8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134dcdc  vmov.f32 s0, #1.600000e+01               
8134dce0  movs     r0, #0                          
8134dce2  movt     r0, #0x42a0                     
8134dce6  vmov     s19, r0                         
8134dcea  movs     r0, #0                          
8134dcec  vmul.f32 s0, s16, s0                     
8134dcf0  vmov     s1, r0                          
8134dcf4  movs     r0, #0                          
8134dcf6  movs     r1, #0                          
8134dcf8  vmov.f32 s2, s19                         
8134dcfc  bl       #0x812e9efa                       ; -> UnityEngine.Mathf$$Clamp
8134dd00  vmov.f32 s16, s0                         
8134dd04  movs     r0, #0                          
8134dd06  movs     r1, #0                          
8134dd08  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134dd0c  vmov.f32 s2, #8.000000e+00               
8134dd10  vsub.f32 s1, s19, s16                    
8134dd14  movs     r0, #0                          
8134dd16  movs     r1, #0                          
8134dd18  vmul.f32 s2, s0, s2                      
8134dd1c  vmov.f32 s0, s18                         
8134dd20  vadd.f32 s1, s26, s1                     
8134dd24  bl       #0x812ea05a                       ; -> UnityEngine.Mathf$$LerpAngle
8134dd28  adds     r0, r5, #0                      
8134dd2a  movs     r1, #0                          
8134dd2c  vmov.f32 s16, s0                         
8134dd30  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dd34  movs     r1, #0                          
8134dd36  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
8134dd3a  movs     r1, #0                          
8134dd3c  strd     r1, r1, [sp, #0x244]            
8134dd40  add      r0, sp, #0x244                  
8134dd42  vstr     s0, [sp, #0x1fc]                
8134dd46  vstr     s2, [sp, #0x204]                
8134dd4a  vstr     s1, [sp, #0x200]                
8134dd4e  str      r1, [sp, #0x24c]                
8134dd50  vmov.f32 s0, s17                         
8134dd54  vmov.f32 s1, s16                         
8134dd58  movs     r1, #0                          
8134dd5a  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134dd5e  vldr     s0, [sp, #0x244]                
8134dd62  vldr     s1, [sp, #0x248]                
8134dd66  vldr     s2, [sp, #0x24c]                
8134dd6a  adds     r0, r4, #0                      
8134dd6c  movs     r1, #0                          
8134dd6e  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
8134dd72  b        #0x8134dc74                     
8134dd74  vmov.f32 s0, #1.000000e+00               
8134dd78  movs     r0, #0                          
8134dd7a  movs     r1, #0                          
8134dd7c  bl       #0x813a038e                       ; -> UnityEngine.Time$$set_timeScale
8134dd80  movw     r0, #0x3489                     
8134dd84  movt     r0, #0x8151                       ; = 0x81513489
8134dd88  ldrb     r0, [r0]                        
8134dd8a  cbnz     r0, #0x8134dda6                 
8134dd8c  movw     r0, #0xf2b8                     
8134dd90  movt     r0, #0x814b                       ; = 0x814bf2b8
8134dd94  ldr      r0, [r0]                        
8134dd96  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134dd9a  movw     r0, #0x3489                     
8134dd9e  movt     r0, #0x8151                       ; = 0x81513489
8134dda2  movs     r1, #1                          
8134dda4  strb     r1, [r0]                        
8134dda6  ldr      r0, [r4, #0x18]                 
8134dda8  movs     r1, #0                          
8134ddaa  ldr      r0, [r0, #8]                    
8134ddac  bl       #0x81261a0e                       ; -> UnityEngine.UI.Toggle$$get_isOn
8134ddb0  movw     r1, #0xb2f0                     
8134ddb4  movt     r1, #0x8151                       ; str "Settings.fpsTarget"
8134ddb8  ldr      r1, [r1]                        
8134ddba  cmp      r0, #0                          
8134ddbc  mov.w    r2, #1                          
8134ddc0  bne      #0x8134ddc4                     
8134ddc2  movs     r2, #0                          
8134ddc4  movs     r0, #0                          
8134ddc6  movs     r3, #0                          
8134ddc8  bl       #0x812f2604                       ; -> UnityEngine.PlayerPrefs$$SetInt
8134ddcc  movs     r0, #0                          
8134ddce  movs     r1, #0                          
8134ddd0  bl       #0x812f277e                       ; -> UnityEngine.PlayerPrefs$$Save
8134ddd4  b.w      #0x8134d3da                     
8134ddd8  ldr      r1, [sp, #0x260]                
8134ddda  ldr.w    r0, [r8]                        
8134ddde  cmp      r0, r1                          
8134dde0  bne      #0x8134ddee                     
8134dde2  add.w    sp, sp, #0x268                  
8134dde6  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29}
8134ddea  pop.w    {r4, r5, r6, r7, r8, pc}        
8134ddee  blx      #0x813e1118                       ; -> __stack_chk_fail
8134ddf2  nop                                      

; ==== cameraSC.CameraOption$$.ctor  @ 0x8134ddf4 .. 0x8134de54
8134ddf4  push     {r4, r5, lr}                    
8134ddf6  sub      sp, #0xc                        
8134ddf8  movw     r5, #0x2514                     
8134ddfc  movt     r5, #0x813e                       ; = 0x813e2514
8134de00  ldr      r1, [r5]                        
8134de02  str      r1, [sp, #8]                    
8134de04  adds     r4, r0, #0                      
8134de06  movs     r0, #0                          
8134de08  movs     r1, #0                          
8134de0a  strd     r0, r1, [sp]                    
8134de0e  movs     r1, #0                          
8134de10  movt     r1, #0x4348                     
8134de14  vmov     s0, r1                          
8134de18  movs     r1, #0                          
8134de1a  movt     r1, #0x42c8                     
8134de1e  vmov     s1, r1                          
8134de22  add      r0, sp, #0                      
8134de24  movs     r1, #0                          
8134de26  bl       #0x8139af98                       ; -> sub_8139af98
8134de2a  vldr     s0, [sp]                        
8134de2e  vldr     s1, [sp, #4]                    
8134de32  adds     r0, r4, #0                      
8134de34  movs     r1, #0                          
8134de36  vstr     s0, [r4, #8]                      ; this.RotSpeed
8134de3a  vstr     s1, [r4, #0xc]                    ; this.RotSpeed+4
8134de3e  bl       #0x81000d00                       ; -> System.Object$$.ctor
8134de42  ldr      r1, [sp, #8]                    
8134de44  ldr      r0, [r5]                        
8134de46  cmp      r0, r1                          
8134de48  bne      #0x8134de4e                     
8134de4a  add      sp, #0xc                        
8134de4c  pop      {r4, r5, pc}                    
8134de4e  blx      #0x813e1118                       ; -> __stack_chk_fail
8134de52  nop                                      

; ==== cameraSC.CameraSettings$$.ctor  @ 0x8134de54 .. 0x8134dea6
8134de54  push     {r4, lr}                        
8134de56  movw     r1, #0x3333                     
8134de5a  movt     r1, #0x3f73                       ; = 0x3f733333
8134de5e  str      r1, [r0, #0xc]                    ; this.basicHeight
8134de60  movs.w   r1, #0x40000000                 
8134de64  str      r1, [r0, #8]                      ; this.basicXAngle
8134de66  movw     r1, #0xc28f                     
8134de6a  movt     r1, #0x3c75                       ; = 0x3c75c28f
8134de6e  str      r1, [r0, #0x10]                   ; this.HeightAdditive
8134de70  movs.w   r1, #0x3f000000                 
8134de74  str      r1, [r0, #0x14]                   ; this.Xangle
8134de76  movs     r1, #0                          
8134de78  movt     r1, #0x40c0                     
8134de7c  str      r1, [r0, #0x18]                   ; this.basicDist
8134de7e  movs.w   r1, #0x3f800000                 
8134de82  str      r1, [r0, #0x1c]                   ; this.fightDist
8134de84  movw     r1, #0xd70a                     
8134de88  movt     r1, #0x3ca3                       ; = 0x3ca3d70a
8134de8c  str      r1, [r0, #0x24]                   ; this.angleAdjust
8134de8e  movs     r1, #0                          
8134de90  movs.w   r2, #0x3fc00000                 
8134de94  str      r2, [r0, #0x20]                   ; this.HeightDist
8134de96  movt     r1, #0x4170                     
8134de9a  str      r1, [r0, #0x28]                   ; this.maxAngle
8134de9c  movs     r1, #0                          
8134de9e  bl       #0x81000d00                       ; -> System.Object$$.ctor
8134dea2  pop      {r4, pc}                        
8134dea4  pop      {r4, pc}                        

; ==== cameraSC.Players$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        
