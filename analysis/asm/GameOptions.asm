; ==== GameOptions$$.ctor  @ 0x81000358 .. 0x81000364
81000358  push     {r4, lr}                        
8100035a  movs     r1, #0                          
8100035c  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
81000360  pop      {r4, pc}                        
81000362  pop      {r4, pc}                        

; ==== GameOptions$$Start  @ 0x8134164c .. 0x813416e2
8134164c  push     {r4, lr}                        
8134164e  adds     r4, r0, #0                      
81341650  ldr      r0, [r4, #0xc]                    ; this.panel
81341652  movs     r1, #1                          
81341654  movs     r2, #0                          
81341656  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134165a  movw     r0, #0x3488                     
8134165e  movt     r0, #0x8151                       ; = 0x81513488
81341662  ldrb     r0, [r0]                        
81341664  cbnz     r0, #0x81341680                 
81341666  movw     r0, #0xf2b4                     
8134166a  movt     r0, #0x814b                       ; = 0x814bf2b4
8134166e  ldr      r0, [r0]                        
81341670  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341674  movw     r0, #0x3488                     
81341678  movt     r0, #0x8151                       ; = 0x81513488
8134167c  movs     r1, #1                          
8134167e  strb     r1, [r0]                        
81341680  movw     r0, #0xb2f0                     
81341684  movt     r0, #0x8151                       ; str "Settings.fpsTarget"
81341688  ldr      r1, [r0]                        
8134168a  movs     r0, #0                          
8134168c  movs     r2, #0                          
8134168e  bl       #0x812f273a                       ; -> UnityEngine.PlayerPrefs$$HasKey
81341692  cmp      r0, #0                          
81341694  beq      #0x813416c4                     
81341696  movw     r0, #0xb2f0                     
8134169a  movt     r0, #0x8151                       ; str "Settings.fpsTarget"
8134169e  ldr      r1, [r0]                        
813416a0  movs     r0, #0                          
813416a2  movs     r2, #0                          
813416a4  bl       #0x812f26f4                       ; -> UnityEngine.PlayerPrefs$$GetInt
813416a8  cmp      r0, #1                          
813416aa  bne      #0x813416d2                     
813416ac  ldr      r0, [r4, #0x18]                   ; this.fps
813416ae  movs     r1, #1                          
813416b0  ldr      r0, [r0, #8]                    
813416b2  movs     r2, #0                          
813416b4  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
813416b8  ldr      r0, [r4, #0xc]                    ; this.panel
813416ba  movs     r1, #0                          
813416bc  movs     r2, #0                          
813416be  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
813416c2  b        #0x813416e0                     
813416c4  ldr      r0, [r4, #0x18]                   ; this.fps
813416c6  movs     r1, #1                          
813416c8  ldr      r0, [r0, #0xc]                  
813416ca  movs     r2, #0                          
813416cc  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
813416d0  b        #0x813416b8                     
813416d2  ldr      r0, [r4, #0x18]                   ; this.fps
813416d4  movs     r1, #1                          
813416d6  ldr      r0, [r0, #0xc]                  
813416d8  movs     r2, #0                          
813416da  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
813416de  b        #0x813416b8                     
813416e0  pop      {r4, pc}                        

; ==== GameOptions$$OpenOptionPanel  @ 0x8134173c .. 0x813417dc
8134173c  push     {r4, r5, r6, lr}                
8134173e  adds     r5, r0, #0                      
81341740  ldr      r6, [r5, #0xc]                    ; this.panel
81341742  movs     r1, #0                          
81341744  adds     r0, r6, #0                      
81341746  bl       #0x812e569c                       ; -> UnityEngine.GameObject$$get_activeSelf
8134174a  movs     r1, #0                          
8134174c  cmp      r0, #0                          
8134174e  mov      r4, r1                          
81341750  bne      #0x81341754                     
81341752  movs     r1, #1                          
81341754  movs     r2, #0                          
81341756  adds     r0, r6, #0                      
81341758  bl       #0x812e5654                       ; -> UnityEngine.GameObject$$SetActive
8134175c  ldr      r0, [r5, #0xc]                    ; this.panel
8134175e  movs     r1, #0                          
81341760  bl       #0x812e569c                       ; -> UnityEngine.GameObject$$get_activeSelf
81341764  cmp      r0, #0                          
81341766  beq      #0x81341778                     
81341768  movs     r0, #0                          
8134176a  vmov     s0, r0                          
8134176e  movs     r0, #0                          
81341770  movs     r1, #0                          
81341772  bl       #0x813a038e                       ; -> UnityEngine.Time$$set_timeScale
81341776  b        #0x813417d8                     
81341778  vmov.f32 s0, #1.000000e+00               
8134177c  movs     r0, #0                          
8134177e  movs     r1, #0                          
81341780  bl       #0x813a038e                       ; -> UnityEngine.Time$$set_timeScale
81341784  movw     r0, #0x3489                     
81341788  movt     r0, #0x8151                       ; = 0x81513489
8134178c  ldrb     r0, [r0]                        
8134178e  cbnz     r0, #0x813417aa                 
81341790  movw     r0, #0xf2b8                     
81341794  movt     r0, #0x814b                       ; = 0x814bf2b8
81341798  ldr      r0, [r0]                        
8134179a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134179e  movw     r0, #0x3489                     
813417a2  movt     r0, #0x8151                       ; = 0x81513489
813417a6  movs     r1, #1                          
813417a8  strb     r1, [r0]                        
813417aa  ldr      r0, [r5, #0x18]                   ; this.fps
813417ac  movs     r1, #0                          
813417ae  ldr      r0, [r0, #8]                    
813417b0  bl       #0x81261a0e                       ; -> UnityEngine.UI.Toggle$$get_isOn
813417b4  movw     r1, #0xb2f0                     
813417b8  movt     r1, #0x8151                       ; str "Settings.fpsTarget"
813417bc  ldr      r1, [r1]                        
813417be  cmp      r0, #0                          
813417c0  mov.w    r2, #1                          
813417c4  bne      #0x813417c8                     
813417c6  adds     r2, r4, #0                      
813417c8  movs     r0, #0                          
813417ca  movs     r3, #0                          
813417cc  bl       #0x812f2604                       ; -> UnityEngine.PlayerPrefs$$SetInt
813417d0  movs     r0, #0                          
813417d2  movs     r1, #0                          
813417d4  bl       #0x812f277e                       ; -> UnityEngine.PlayerPrefs$$Save
813417d8  pop      {r4, r5, r6, pc}                
813417da  bx       lr                              

; ==== GameOptions$$SetDefaults  @ 0x813415bc .. 0x813415cc
813415bc  push     {r4, lr}                        
813415be  ldr      r0, [r0, #0x18]                   ; this.fps
813415c0  movs     r1, #1                          
813415c2  ldr      r0, [r0, #0xc]                  
813415c4  movs     r2, #0                          
813415c6  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
813415ca  pop      {r4, pc}                        

; ==== GameOptions$$setResolution  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== GameOptions$$SetFPS  @ 0x813417dc .. 0x81341850
813417dc  push     {lr}                            
813417de  sub      sp, #0xc                        
813417e0  ldr      r0, [r0, #0x18]                   ; this.fps
813417e2  movs     r1, #0                          
813417e4  ldr      r0, [r0, #0xc]                  
813417e6  bl       #0x81261a0e                       ; -> UnityEngine.UI.Toggle$$get_isOn
813417ea  cmp      r0, #0                          
813417ec  beq      #0x8134181c                     
813417ee  movs     r0, #0x3c                       
813417f0  str      r0, [sp]                        
813417f2  movs     r0, #0                          
813417f4  str      r0, [sp, #4]                    
813417f6  movs     r0, #0                          
813417f8  movs.w   r1, #0x3c0                      
813417fc  movs.w   r2, #0x220                      
81341800  movs     r3, #1                          
81341802  bl       #0x8139a39e                       ; -> UnityEngine.Screen$$SetResolution
81341806  movs     r0, #0                          
81341808  movs     r1, #0x3c                       
8134180a  movs     r2, #0                          
8134180c  bl       #0x812da328                       ; -> UnityEngine.Application$$set_targetFrameRate
81341810  movs     r0, #0                          
81341812  movs     r1, #1                          
81341814  movs     r2, #0                          
81341816  bl       #0x812f2c5a                       ; -> UnityEngine.QualitySettings$$set_vSyncCount
8134181a  b        #0x8134184a                     
8134181c  movs     r0, #0x3c                       
8134181e  str      r0, [sp]                        
81341820  movs     r0, #0                          
81341822  str      r0, [sp, #4]                    
81341824  movs     r0, #0                          
81341826  movs.w   r1, #0x3c0                      
8134182a  movs.w   r2, #0x220                      
8134182e  movs     r3, #1                          
81341830  bl       #0x8139a39e                       ; -> UnityEngine.Screen$$SetResolution
81341834  movs     r0, #0                          
81341836  movs     r1, #0x3c                       
81341838  movs     r2, #0                          
8134183a  bl       #0x812da328                       ; -> UnityEngine.Application$$set_targetFrameRate
8134183e  movs     r0, #0                          
81341840  movs     r1, #2                          
81341842  movs     r2, #0                          
81341844  bl       #0x812f2c5a                       ; -> UnityEngine.QualitySettings$$set_vSyncCount
81341848  b        #0x8134181a                     
8134184a  add      sp, #0xc                        
8134184c  pop      {pc}                            
8134184e  pop      {r4, pc}                        

; ==== GameOptions$$SetShadows  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== GameOptions$$SetAliasing  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== GameOptions$$SetBloom  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== GameOptions$$SetcolorSuite  @ 0x81000d00 .. 0x81000d02
81000d00  bx       lr                              

; ==== GameOptions$$SavePrefs  @ 0x813416e2 .. 0x8134173c
813416e2  push     {r4, lr}                        
813416e4  movw     r1, #0x3489                     
813416e8  movt     r1, #0x8151                       ; = 0x81513489
813416ec  ldrb     r1, [r1]                        
813416ee  adds     r4, r0, #0                      
813416f0  cbnz     r1, #0x8134170c                 
813416f2  movw     r0, #0xf2b8                     
813416f6  movt     r0, #0x814b                       ; = 0x814bf2b8
813416fa  ldr      r0, [r0]                        
813416fc  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81341700  movw     r0, #0x3489                     
81341704  movt     r0, #0x8151                       ; = 0x81513489
81341708  movs     r1, #1                          
8134170a  strb     r1, [r0]                        
8134170c  ldr      r0, [r4, #0x18]                   ; this.fps
8134170e  movs     r1, #0                          
81341710  ldr      r0, [r0, #8]                    
81341712  bl       #0x81261a0e                       ; -> UnityEngine.UI.Toggle$$get_isOn
81341716  movw     r1, #0xb2f0                     
8134171a  movt     r1, #0x8151                       ; str "Settings.fpsTarget"
8134171e  ldr      r1, [r1]                        
81341720  cmp      r0, #0                          
81341722  mov.w    r2, #1                          
81341726  bne      #0x8134172a                     
81341728  movs     r2, #0                          
8134172a  movs     r0, #0                          
8134172c  movs     r3, #0                          
8134172e  bl       #0x812f2604                       ; -> UnityEngine.PlayerPrefs$$SetInt
81341732  movs     r0, #0                          
81341734  movs     r1, #0                          
81341736  bl       #0x812f277e                       ; -> UnityEngine.PlayerPrefs$$Save
8134173a  pop      {r4, pc}                        

; ==== GameOptions$$LoadPrefs  @ 0x813415cc .. 0x8134164c
813415cc  push     {r4, lr}                        
813415ce  movw     r1, #0x3488                     
813415d2  movt     r1, #0x8151                       ; = 0x81513488
813415d6  ldrb     r1, [r1]                        
813415d8  adds     r4, r0, #0                      
813415da  cbnz     r1, #0x813415f6                 
813415dc  movw     r0, #0xf2b4                     
813415e0  movt     r0, #0x814b                       ; = 0x814bf2b4
813415e4  ldr      r0, [r0]                        
813415e6  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813415ea  movw     r0, #0x3488                     
813415ee  movt     r0, #0x8151                       ; = 0x81513488
813415f2  movs     r1, #1                          
813415f4  strb     r1, [r0]                        
813415f6  movw     r0, #0xb2f0                     
813415fa  movt     r0, #0x8151                       ; str "Settings.fpsTarget"
813415fe  ldr      r1, [r0]                        
81341600  movs     r0, #0                          
81341602  movs     r2, #0                          
81341604  bl       #0x812f273a                       ; -> UnityEngine.PlayerPrefs$$HasKey
81341608  cmp      r0, #0                          
8134160a  beq      #0x81341630                     
8134160c  movw     r0, #0xb2f0                     
81341610  movt     r0, #0x8151                       ; str "Settings.fpsTarget"
81341614  ldr      r1, [r0]                        
81341616  movs     r0, #0                          
81341618  movs     r2, #0                          
8134161a  bl       #0x812f26f4                       ; -> UnityEngine.PlayerPrefs$$GetInt
8134161e  cmp      r0, #1                          
81341620  bne      #0x8134163e                     
81341622  ldr      r0, [r4, #0x18]                   ; this.fps
81341624  movs     r1, #1                          
81341626  ldr      r0, [r0, #8]                    
81341628  movs     r2, #0                          
8134162a  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
8134162e  b        #0x8134164a                     
81341630  ldr      r0, [r4, #0x18]                   ; this.fps
81341632  movs     r1, #1                          
81341634  ldr      r0, [r0, #0xc]                  
81341636  movs     r2, #0                          
81341638  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
8134163c  b        #0x8134162e                     
8134163e  ldr      r0, [r4, #0x18]                   ; this.fps
81341640  movs     r1, #1                          
81341642  ldr      r0, [r0, #0xc]                  
81341644  movs     r2, #0                          
81341646  bl       #0x81261820                       ; -> UnityEngine.UI.Toggle$$set_isOn
8134164a  pop      {r4, pc}                        

; ==== GameOptions.Aliasing$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== GameOptions.Shadows$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== GameOptions.Fps$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== GameOptions.Resolution$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        
