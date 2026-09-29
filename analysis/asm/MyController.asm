; ==== MyController$$.ctor  @ 0x81000358 .. 0x81000364
81000358  push     {r4, lr}                        
8100035a  movs     r1, #0                          
8100035c  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
81000360  pop      {r4, pc}                        
81000362  pop      {r4, pc}                        

; ==== MyController$$Start  @ 0x81341850 .. 0x81341898
81341850  push     {r4, lr}                        
81341852  movw     r1, #0x348a                     
81341856  movt     r1, #0x8151                       ; = 0x8151348a
8134185a  ldrb     r1, [r1]                        
8134185c  adds     r4, r0, #0                      
8134185e  cbnz     r1, #0x8134187a                 
81341860  movw     r0, #0x930                      
81341864  movt     r0, #0x814c                       ; = 0x814c0930
81341868  ldr      r0, [r0]                        
8134186a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134186e  movw     r0, #0x348a                     
81341872  movt     r0, #0x8151                       ; = 0x8151348a
81341876  movs     r1, #1                          
81341878  strb     r1, [r0]                        
8134187a  movw     r0, #0x4c64                     
8134187e  movt     r0, #0x8151                       ; Method$UnityEngine.Component.GetComponentInChildren<controller>()
81341882  ldr      r1, [r0]                        
81341884  adds     r0, r4, #0                      
81341886  bl       #0x8125fb4a                       ; -> UnityEngine.Component$$GetComponentInChildren<Toggle>
8134188a  str      r0, [r4, #0x40]                   ; this.myController
8134188c  adds     r0, r4, #0                      
8134188e  movs     r1, #0                          
81341890  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81341894  str      r0, [r4, #0x10]                   ; this.myT
81341896  pop      {r4, pc}                        

; ==== MyController$$OnTriggerEnter  @ 0x81342542 .. 0x8134254e
81342542  push     {r4, lr}                        
81342544  ldr      r0, [r0, #0x40]                   ; this.myController
81342546  movs     r2, #0                          
81342548  bl       #0x8134240c                       ; -> controller$$collided
8134254c  pop      {r4, pc}                        

; ==== MyController$$OnTriggerStay  @ 0x8134254e .. 0x813427a0
8134254e  push     {r4, r5, r6, lr}                
81342550  vpush    {s16, s17, s18, s19, s20, s21}  
81342554  sub      sp, #0x80                       
81342556  movw     r6, #0x2514                     
8134255a  movt     r6, #0x813e                       ; = 0x813e2514
8134255e  ldr      r2, [r6]                        
81342560  str      r2, [sp, #0x78]                 
81342562  movw     r2, #0x348f                     
81342566  movt     r2, #0x8151                       ; = 0x8151348f
8134256a  ldrb     r2, [r2]                        
8134256c  adds     r5, r1, #0                      
8134256e  adds     r4, r0, #0                      
81342570  cbnz     r2, #0x8134258c                 
81342572  movw     r0, #0x92c                      
81342576  movt     r0, #0x814c                       ; = 0x814c092c
8134257a  ldr      r0, [r0]                        
8134257c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81342580  movw     r0, #0x348f                     
81342584  movt     r0, #0x8151                       ; = 0x8151348f
81342588  movs     r1, #1                          
8134258a  strb     r1, [r0]                        
8134258c  movs     r2, #0                          
8134258e  strd     r2, r2, [sp, #0x6c]             
81342592  adds     r0, r5, #0                      
81342594  str      r2, [sp, #0x74]                 
81342596  movs     r1, #0                          
81342598  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8134259c  movw     r1, #0xb2f4                     
813425a0  movt     r1, #0x8151                       ; str "Player"
813425a4  ldr      r1, [r1]                        
813425a6  movs     r2, #0                          
813425a8  bl       #0x812df636                       ; -> UnityEngine.GameObject$$CompareTag
813425ac  cmp      r0, #0                          
813425ae  beq.w    #0x8134278a                     
813425b2  ldr      r0, [r4, #0x10]                   ; this.myT
813425b4  movs     r1, #0                          
813425b6  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813425ba  adds     r0, r5, #0                      
813425bc  movs     r1, #0                          
813425be  vmov.f32 s21, s0                         
813425c2  vmov.f32 s19, s2                         
813425c6  vmov.f32 s20, s1                         
813425ca  vstr     s21, [sp]                       
813425ce  vstr     s19, [sp, #8]                   
813425d2  vstr     s20, [sp, #4]                   
813425d6  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
813425da  movs     r1, #0                          
813425dc  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813425e0  movw     r0, #0x45fc                     
813425e4  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813425e8  vmov.f32 s18, s0                         
813425ec  vmov.f32 s16, s2                         
813425f0  vmov.f32 s17, s1                         
813425f4  ldr      r0, [r0]                        
813425f6  vstr     s18, [sp, #0xc]                 
813425fa  vstr     s16, [sp, #0x14]                
813425fe  vstr     s17, [sp, #0x10]                
81342602  ldrsb.w  r1, [r0, #0xc2]                 
81342606  ands     r1, r1, #1                      
8134260a  beq      #0x81342614                     
8134260c  ldr      r1, [r0, #0x70]                 
8134260e  cbnz     r1, #0x81342614                 
81342610  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81342614  vmov.f32 s0, s21                         
81342618  vmov.f32 s1, s20                         
8134261c  vmov.f32 s2, s19                         
81342620  vmov.f32 s3, s18                         
81342624  vmov.f32 s4, s17                         
81342628  vmov.f32 s5, s16                         
8134262c  movs     r0, #0                          
8134262e  movs     r1, #0                          
81342630  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81342634  add      r0, sp, #0x6c                   
81342636  movs     r1, #0                          
81342638  vstr     s0, [sp, #0x18]                 
8134263c  vstr     s2, [sp, #0x20]                 
81342640  vstr     s1, [sp, #0x1c]                 
81342644  vstr     s0, [sp, #0x6c]                 
81342648  vstr     s1, [sp, #0x70]                 
8134264c  vstr     s2, [sp, #0x74]                 
81342650  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
81342654  movs     r0, #0                          
81342656  str      r0, [sp, #0x70]                 
81342658  vldr     s16, [r4, #0x24]                  ; this.directionMove
8134265c  vldr     s17, [r4, #0x28]                  ; this.directionMove+4
81342660  vldr     s18, [r4, #0x2c]                  ; this.directionMove+8
81342664  movs     r0, #0                          
81342666  movs     r1, #0                          
81342668  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134266c  movs     r0, #0                          
8134266e  movs     r1, #0                          
81342670  vmov.f32 s3, s0                          
81342674  vmov.f32 s5, s2                          
81342678  vmov.f32 s4, s1                          
8134267c  vmov.f32 s0, s16                         
81342680  vmov.f32 s1, s17                         
81342684  vmov.f32 s2, s18                         
81342688  vstr     s3, [sp, #0x24]                 
8134268c  vstr     s5, [sp, #0x2c]                 
81342690  vstr     s4, [sp, #0x28]                 
81342694  bl       #0x8139b05e                       ; -> UnityEngine.Vector3$$op_Inequality
81342698  cmp      r0, #0                          
8134269a  beq      #0x8134278a                     
8134269c  ldr      r4, [r4, #0x10]                   ; this.myT
8134269e  movs     r1, #0                          
813426a0  adds     r0, r4, #0                      
813426a2  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813426a6  add      r0, sp, #0x6c                   
813426a8  movs     r1, #0                          
813426aa  vmov.f32 s21, s0                         
813426ae  vmov.f32 s19, s2                         
813426b2  vmov.f32 s20, s1                         
813426b6  vstr     s21, [sp, #0x30]                
813426ba  vstr     s19, [sp, #0x38]                
813426be  vstr     s20, [sp, #0x34]                
813426c2  bl       #0x813a4324                       ; -> Vector3.get_normalized(ptr)
813426c6  movw     r0, #0x45fc                     
813426ca  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813426ce  vmov.f32 s18, s0                         
813426d2  vmov.f32 s16, s2                         
813426d6  vmov.f32 s17, s1                         
813426da  ldr      r0, [r0]                        
813426dc  vstr     s18, [sp, #0x3c]                
813426e0  vstr     s16, [sp, #0x44]                
813426e4  vstr     s17, [sp, #0x40]                
813426e8  ldrsb.w  r1, [r0, #0xc2]                 
813426ec  ands     r1, r1, #1                      
813426f0  beq      #0x813426fa                     
813426f2  ldr      r1, [r0, #0x70]                 
813426f4  cbnz     r1, #0x813426fa                 
813426f6  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813426fa  vmov.f32 s0, s18                         
813426fe  vmov.f32 s1, s17                         
81342702  vmov.f32 s2, s16                         
81342706  vmov.f32 s3, #5.000000e+00               
8134270a  movs     r0, #0                          
8134270c  movs     r1, #0                          
8134270e  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342712  movs     r0, #0                          
81342714  movs     r1, #0                          
81342716  vmov.f32 s16, s0                         
8134271a  vmov.f32 s17, s2                         
8134271e  vmov.f32 s18, s1                         
81342722  vstr     s16, [sp, #0x48]                
81342726  vstr     s17, [sp, #0x50]                
8134272a  vstr     s18, [sp, #0x4c]                
8134272e  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81342732  vmov.f32 s3, s0                          
81342736  vmov.f32 s0, s16                         
8134273a  vmov.f32 s1, s18                         
8134273e  vmov.f32 s2, s17                         
81342742  movs     r0, #0                          
81342744  movs     r1, #0                          
81342746  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134274a  movs     r0, #0                          
8134274c  movs     r1, #0                          
8134274e  vmov.f32 s3, s0                          
81342752  vmov.f32 s5, s2                          
81342756  vmov.f32 s4, s1                          
8134275a  vmov.f32 s0, s21                         
8134275e  vmov.f32 s1, s20                         
81342762  vmov.f32 s2, s19                         
81342766  vstr     s3, [sp, #0x54]                 
8134276a  vstr     s5, [sp, #0x5c]                 
8134276e  vstr     s4, [sp, #0x58]                 
81342772  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342776  adds     r0, r4, #0                      
81342778  movs     r1, #0                          
8134277a  vstr     s0, [sp, #0x60]                 
8134277e  vstr     s2, [sp, #0x68]                 
81342782  vstr     s1, [sp, #0x64]                 
81342786  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134278a  ldr      r1, [sp, #0x78]                 
8134278c  ldr      r0, [r6]                        
8134278e  cmp      r0, r1                          
81342790  bne      #0x8134279a                     
81342792  add      sp, #0x80                       
81342794  vpop     {s16, s17, s18, s19, s20, s21}  
81342798  pop      {r4, r5, r6, pc}                
8134279a  blx      #0x813e1118                       ; -> __stack_chk_fail
8134279e  nop                                      

; ==== MyController$$SetJump  @ 0x81341898 .. 0x813418a2
81341898  vstr     s0, [r0, #0x30]                   ; this.jump
8134189c  vstr     s1, [r0, #0x34]                   ; this.dashTime
813418a0  bx       lr                              

; ==== MyController$$toGround  @ 0x813427a0 .. 0x8134284c
813427a0  mov      ip, sp                          
813427a2  push.w   {r0, r1, r2, r3}                
813427a6  push.w   {r4, r5, r6, ip, lr}            
813427aa  vpush    {s16, s17}                      
813427ae  sub      sp, #0x34                       
813427b0  movw     r6, #0x2514                     
813427b4  movt     r6, #0x813e                       ; = 0x813e2514
813427b8  ldr      r1, [r6]                        
813427ba  str      r1, [sp, #0x30]                 
813427bc  adds     r4, r0, #0                      
813427be  ldr      r5, [r4, #0x14]                   ; this.rb
813427c0  movs     r1, #0                          
813427c2  adds     r0, r5, #0                      
813427c4  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
813427c8  vmov.f32 s16, s0                         
813427cc  vstr     s2, [sp, #8]                    
813427d0  vstr     s1, [sp, #4]                    
813427d4  add      r0, sp, #0x54                   
813427d6  movs     r1, #0                          
813427d8  vstr     s16, [sp]                       
813427dc  bl       #0x812713e0                       ; -> RaycastHit.get_point(ptr)
813427e0  movs     r1, #0                          
813427e2  vmov.f32 s17, s1                         
813427e6  vstr     s0, [sp, #0xc]                  
813427ea  vstr     s2, [sp, #0x14]                 
813427ee  vstr     s17, [sp, #0x10]                
813427f2  ldr      r0, [r4, #0x14]                   ; this.rb
813427f4  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
813427f8  movs     r1, #0                          
813427fa  strd     r1, r1, [sp, #0x24]             
813427fe  add      r0, sp, #0x24                   
81342800  vstr     s0, [sp, #0x18]                 
81342804  vstr     s2, [sp, #0x20]                 
81342808  vstr     s1, [sp, #0x1c]                 
8134280c  str      r1, [sp, #0x2c]                 
8134280e  vmov.f32 s0, s16                         
81342812  vmov.f32 s1, s17                         
81342816  movs     r1, #0                          
81342818  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8134281c  vldr     s0, [sp, #0x24]                 
81342820  vldr     s1, [sp, #0x28]                 
81342824  vldr     s2, [sp, #0x2c]                 
81342828  adds     r0, r5, #0                      
8134282a  movs     r1, #0                          
8134282c  bl       #0x812715b0                       ; -> UnityEngine.Rigidbody$$set_position
81342830  ldr      r1, [sp, #0x30]                 
81342832  ldr      r0, [r6]                        
81342834  cmp      r0, r1                          
81342836  bne      #0x81342846                     
81342838  add      sp, #0x34                       
8134283a  vpop     {s16, s17}                      
8134283e  ldm.w    sp, {r4, r5, r6, ip, lr}        
81342842  mov      sp, ip                          
81342844  bx       lr                              
81342846  blx      #0x813e1118                       ; -> __stack_chk_fail
8134284a  nop                                      

; ==== MyController$$OnDrawGizmos  @ 0x8134284c .. 0x813431c2
8134284c  push     {r4, r5, r6, lr}                
8134284e  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
81342852  sub.w    sp, sp, #0x210                  
81342856  movw     r6, #0x2514                     
8134285a  movt     r6, #0x813e                       ; = 0x813e2514
8134285e  ldr      r1, [r6]                        
81342860  str      r1, [sp, #0x208]                
81342862  movw     r1, #0x3490                     
81342866  movt     r1, #0x8151                       ; = 0x81513490
8134286a  ldrb     r1, [r1]                        
8134286c  adds     r4, r0, #0                      
8134286e  cbnz     r1, #0x8134288a                 
81342870  movw     r0, #0x928                      
81342874  movt     r0, #0x814c                       ; = 0x814c0928
81342878  ldr      r0, [r0]                        
8134287a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134287e  movw     r0, #0x3490                     
81342882  movt     r0, #0x8151                       ; = 0x81513490
81342886  movs     r1, #1                          
81342888  strb     r1, [r0]                        
8134288a  movw     r0, #0x461c                     
8134288e  ldr      r5, [r4, #0x10]                   ; this.myT
81342890  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81342894  ldr      r0, [r0]                        
81342896  ldrsb.w  r1, [r0, #0xc2]                 
8134289a  ands     r1, r1, #1                      
8134289e  beq      #0x813428a8                     
813428a0  ldr      r1, [r0, #0x70]                 
813428a2  cbnz     r1, #0x813428a8                 
813428a4  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813428a8  movs     r0, #0                          
813428aa  adds     r1, r5, #0                      
813428ac  movs     r2, #0                          
813428ae  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813428b2  cmp      r0, #0                          
813428b4  ldr      r0, [r4, #0x10]                   ; this.myT
813428b6  bne      #0x813428c2                     
813428b8  movs     r1, #0                          
813428ba  adds     r0, r4, #0                      
813428bc  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
813428c0  str      r0, [r4, #0x10]                   ; this.myT
813428c2  movs     r1, #0                          
813428c4  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813428c8  movw     r0, #0x45fc                     
813428cc  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813428d0  vmov.f32 s29, s0                         
813428d4  vmov.f32 s31, s2                         
813428d8  vmov.f32 s30, s1                         
813428dc  ldr      r0, [r0]                        
813428de  vstr     s29, [sp]                       
813428e2  vstr     s31, [sp, #8]                   
813428e6  vstr     s30, [sp, #4]                   
813428ea  ldrsb.w  r1, [r0, #0xc2]                 
813428ee  ands     r1, r1, #1                      
813428f2  beq      #0x813428fc                     
813428f4  ldr      r1, [r0, #0x70]                 
813428f6  cbnz     r1, #0x813428fc                 
813428f8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813428fc  movs     r0, #0                          
813428fe  movs     r1, #0                          
81342900  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81342904  movs     r0, #0                          
81342906  vstr     s0, [sp, #0xc]                  
8134290a  vstr     s2, [sp, #0x14]                 
8134290e  vstr     s1, [sp, #0x10]                 
81342912  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342914  vldr     s3, [r1, #8]                    
81342918  vldr     s4, [r1, #0x10]                 
8134291c  movs     r1, #0                          
8134291e  vadd.f32 s3, s3, s4                      
81342922  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342926  movs     r0, #0                          
81342928  movs     r1, #0                          
8134292a  vmov.f32 s3, s0                          
8134292e  vmov.f32 s5, s2                          
81342932  vmov.f32 s4, s1                          
81342936  vmov.f32 s0, s29                         
8134293a  vmov.f32 s1, s30                         
8134293e  vmov.f32 s2, s31                         
81342942  vstr     s3, [sp, #0x18]                 
81342946  vstr     s5, [sp, #0x20]                 
8134294a  vstr     s4, [sp, #0x1c]                 
8134294e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342952  movs     r1, #0                          
81342954  vmov.f32 s16, s0                         
81342958  vmov.f32 s17, s2                         
8134295c  vmov.f32 s18, s1                         
81342960  vstr     s16, [sp, #0x24]                
81342964  vstr     s17, [sp, #0x2c]                
81342968  vstr     s18, [sp, #0x28]                
8134296c  ldr      r0, [r4, #0x10]                   ; this.myT
8134296e  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81342972  movs     r0, #0                          
81342974  movs     r1, #0                          
81342976  vmov.f32 s19, s0                         
8134297a  vmov.f32 s20, s2                         
8134297e  vmov.f32 s21, s1                         
81342982  vstr     s19, [sp, #0x30]                
81342986  vstr     s20, [sp, #0x38]                
8134298a  vstr     s21, [sp, #0x34]                
8134298e  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81342992  movs     r0, #0                          
81342994  vstr     s0, [sp, #0x3c]                 
81342998  vstr     s2, [sp, #0x44]                 
8134299c  vstr     s1, [sp, #0x40]                 
813429a0  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
813429a2  vldr     s3, [r1, #0xc]                  
813429a6  vldr     s4, [r1, #0x10]                 
813429aa  movs     r1, #0                          
813429ac  vsub.f32 s3, s3, s4                      
813429b0  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813429b4  movs     r0, #0                          
813429b6  movs     r1, #0                          
813429b8  vmov.f32 s3, s0                          
813429bc  vmov.f32 s5, s2                          
813429c0  vmov.f32 s4, s1                          
813429c4  vmov.f32 s0, s19                         
813429c8  vmov.f32 s1, s21                         
813429cc  vmov.f32 s2, s20                         
813429d0  vstr     s3, [sp, #0x48]                 
813429d4  vstr     s5, [sp, #0x50]                 
813429d8  vstr     s4, [sp, #0x4c]                 
813429dc  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813429e0  movs     r0, #0                          
813429e2  movs     r1, #0                          
813429e4  vmov.f32 s19, s0                         
813429e8  vmov.f32 s20, s2                         
813429ec  vmov.f32 s21, s1                         
813429f0  vstr     s19, [sp, #0x54]                
813429f4  vstr     s20, [sp, #0x5c]                
813429f8  vstr     s21, [sp, #0x58]                
813429fc  bl       #0x813a0f16                       ; -> UnityEngine.Vector3$$get_right
81342a00  movs     r0, #0                          
81342a02  vstr     s0, [sp, #0x60]                 
81342a06  vstr     s2, [sp, #0x68]                 
81342a0a  vstr     s1, [sp, #0x64]                 
81342a0e  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342a10  vldr     s3, [r1, #0x10]                 
81342a14  movs     r1, #0                          
81342a16  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342a1a  movs     r0, #0                          
81342a1c  movs     r1, #0                          
81342a1e  vmov.f32 s22, s0                         
81342a22  vmov.f32 s23, s2                         
81342a26  vmov.f32 s24, s1                         
81342a2a  vstr     s22, [sp, #0x6c]                
81342a2e  vstr     s23, [sp, #0x74]                
81342a32  vstr     s24, [sp, #0x70]                
81342a36  bl       #0x813a129e                       ; -> UnityEngine.Vector3$$get_forward
81342a3a  movs     r0, #0                          
81342a3c  vstr     s0, [sp, #0x78]                 
81342a40  vstr     s2, [sp, #0x80]                 
81342a44  vstr     s1, [sp, #0x7c]                 
81342a48  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342a4a  vldr     s3, [r1, #0x10]                 
81342a4e  movs     r1, #0                          
81342a50  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342a54  movs     r0, #0                          
81342a56  vmov.f32 s25, s0                         
81342a5a  vmov.f32 s26, s2                         
81342a5e  vmov.f32 s27, s1                         
81342a62  vstr     s25, [sp, #0x84]                
81342a66  vstr     s26, [sp, #0x8c]                
81342a6a  vstr     s27, [sp, #0x88]                
81342a6e  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342a70  vldr     s0, [r1, #0x18]                 
81342a74  vldr     s1, [r1, #0x1c]                 
81342a78  vldr     s2, [r1, #0x20]                 
81342a7c  vldr     s3, [r1, #0x24]                 
81342a80  movs     r1, #0                          
81342a82  bl       #0x812e59e0                       ; -> UnityEngine.Gizmos$$set_color
81342a86  vmov.f32 s0, s16                         
81342a8a  vmov.f32 s1, s18                         
81342a8e  vmov.f32 s2, s17                         
81342a92  vmov.f32 s3, s22                         
81342a96  vmov.f32 s4, s24                         
81342a9a  vmov.f32 s5, s23                         
81342a9e  movs     r0, #0                          
81342aa0  movs     r1, #0                          
81342aa2  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342aa6  vmov.f32 s3, s22                         
81342aaa  vmov.f32 s4, s24                         
81342aae  vmov.f32 s5, s23                         
81342ab2  movs     r0, #0                          
81342ab4  vmov.f32 s28, s0                         
81342ab8  vmov.f32 s29, s2                         
81342abc  vmov.f32 s30, s1                         
81342ac0  vmov.f32 s0, s19                         
81342ac4  vmov.f32 s1, s21                         
81342ac8  vmov.f32 s2, s20                         
81342acc  movs     r1, #0                          
81342ace  vstr     s28, [sp, #0x90]                
81342ad2  vstr     s29, [sp, #0x98]                
81342ad6  vstr     s30, [sp, #0x94]                
81342ada  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342ade  movs     r0, #0                          
81342ae0  movs     r1, #0                          
81342ae2  vmov.f32 s3, s0                          
81342ae6  vmov.f32 s5, s2                          
81342aea  vmov.f32 s4, s1                          
81342aee  vmov.f32 s0, s28                         
81342af2  vmov.f32 s1, s30                         
81342af6  vmov.f32 s2, s29                         
81342afa  vstr     s3, [sp, #0x9c]                 
81342afe  vstr     s5, [sp, #0xa4]                 
81342b02  vstr     s4, [sp, #0xa0]                 
81342b06  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
81342b0a  vmov.f32 s0, s16                         
81342b0e  vmov.f32 s1, s18                         
81342b12  vmov.f32 s2, s17                         
81342b16  vmov.f32 s3, s22                         
81342b1a  vmov.f32 s4, s24                         
81342b1e  vmov.f32 s5, s23                         
81342b22  movs     r0, #0                          
81342b24  movs     r1, #0                          
81342b26  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81342b2a  vmov.f32 s3, s22                         
81342b2e  vmov.f32 s5, s23                         
81342b32  vmov.f32 s4, s24                         
81342b36  movs     r0, #0                          
81342b38  vmov.f32 s22, s0                         
81342b3c  vmov.f32 s23, s2                         
81342b40  vmov.f32 s24, s1                         
81342b44  vmov.f32 s0, s19                         
81342b48  vmov.f32 s1, s21                         
81342b4c  vmov.f32 s2, s20                         
81342b50  movs     r1, #0                          
81342b52  vstr     s22, [sp, #0xa8]                
81342b56  vstr     s23, [sp, #0xb0]                
81342b5a  vstr     s24, [sp, #0xac]                
81342b5e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81342b62  movs     r0, #0                          
81342b64  movs     r1, #0                          
81342b66  vmov.f32 s3, s0                          
81342b6a  vmov.f32 s5, s2                          
81342b6e  vmov.f32 s4, s1                          
81342b72  vmov.f32 s0, s22                         
81342b76  vmov.f32 s1, s24                         
81342b7a  vmov.f32 s2, s23                         
81342b7e  vstr     s3, [sp, #0xb4]                 
81342b82  vstr     s5, [sp, #0xbc]                 
81342b86  vstr     s4, [sp, #0xb8]                 
81342b8a  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
81342b8e  vmov.f32 s0, s16                         
81342b92  vmov.f32 s1, s18                         
81342b96  vmov.f32 s2, s17                         
81342b9a  vmov.f32 s3, s25                         
81342b9e  vmov.f32 s4, s27                         
81342ba2  vmov.f32 s5, s26                         
81342ba6  movs     r0, #0                          
81342ba8  movs     r1, #0                          
81342baa  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342bae  vmov.f32 s3, s25                         
81342bb2  vmov.f32 s4, s27                         
81342bb6  vmov.f32 s5, s26                         
81342bba  movs     r0, #0                          
81342bbc  vmov.f32 s22, s0                         
81342bc0  vmov.f32 s23, s2                         
81342bc4  vmov.f32 s24, s1                         
81342bc8  vmov.f32 s0, s19                         
81342bcc  vmov.f32 s1, s21                         
81342bd0  vmov.f32 s2, s20                         
81342bd4  movs     r1, #0                          
81342bd6  vstr     s22, [sp, #0xc0]                
81342bda  vstr     s23, [sp, #0xc8]                
81342bde  vstr     s24, [sp, #0xc4]                
81342be2  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342be6  movs     r0, #0                          
81342be8  movs     r1, #0                          
81342bea  vmov.f32 s3, s0                          
81342bee  vmov.f32 s5, s2                          
81342bf2  vmov.f32 s4, s1                          
81342bf6  vmov.f32 s0, s22                         
81342bfa  vmov.f32 s1, s24                         
81342bfe  vmov.f32 s2, s23                         
81342c02  vstr     s3, [sp, #0xcc]                 
81342c06  vstr     s5, [sp, #0xd4]                 
81342c0a  vstr     s4, [sp, #0xd0]                 
81342c0e  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
81342c12  vmov.f32 s0, s16                         
81342c16  vmov.f32 s1, s18                         
81342c1a  vmov.f32 s2, s17                         
81342c1e  vmov.f32 s3, s25                         
81342c22  vmov.f32 s4, s27                         
81342c26  vmov.f32 s5, s26                         
81342c2a  movs     r0, #0                          
81342c2c  movs     r1, #0                          
81342c2e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81342c32  vmov.f32 s3, s25                         
81342c36  vmov.f32 s4, s27                         
81342c3a  vmov.f32 s5, s26                         
81342c3e  movs     r0, #0                          
81342c40  vmov.f32 s22, s0                         
81342c44  vmov.f32 s23, s2                         
81342c48  vmov.f32 s24, s1                         
81342c4c  vmov.f32 s0, s19                         
81342c50  vmov.f32 s1, s21                         
81342c54  vmov.f32 s2, s20                         
81342c58  movs     r1, #0                          
81342c5a  vstr     s22, [sp, #0xd8]                
81342c5e  vstr     s23, [sp, #0xe0]                
81342c62  vstr     s24, [sp, #0xdc]                
81342c66  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81342c6a  movs     r0, #0                          
81342c6c  movs     r1, #0                          
81342c6e  vmov.f32 s3, s0                          
81342c72  vmov.f32 s5, s2                          
81342c76  vmov.f32 s4, s1                          
81342c7a  vmov.f32 s0, s22                         
81342c7e  vmov.f32 s1, s24                         
81342c82  vmov.f32 s2, s23                         
81342c86  vstr     s3, [sp, #0xe4]                 
81342c8a  vstr     s5, [sp, #0xec]                 
81342c8e  vstr     s4, [sp, #0xe8]                 
81342c92  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
81342c96  ldr      r0, [r4, #0xc]                    ; this.colliderOptions
81342c98  vmov.f32 s0, s16                         
81342c9c  vldr     s3, [r0, #0x10]                 
81342ca0  vmov.f32 s1, s18                         
81342ca4  vmov.f32 s2, s17                         
81342ca8  movs     r0, #0                          
81342caa  movs     r1, #0                          
81342cac  bl       #0x812e5920                       ; -> UnityEngine.Gizmos$$DrawWireSphere
81342cb0  ldr      r0, [r4, #0xc]                    ; this.colliderOptions
81342cb2  vmov.f32 s0, s19                         
81342cb6  vldr     s3, [r0, #0x10]                 
81342cba  vmov.f32 s1, s21                         
81342cbe  vmov.f32 s2, s20                         
81342cc2  movs     r0, #0                          
81342cc4  movs     r1, #0                          
81342cc6  bl       #0x812e5920                       ; -> UnityEngine.Gizmos$$DrawWireSphere
81342cca  ldr      r0, [r4, #0xc]                    ; this.colliderOptions
81342ccc  vldr     s0, [r0, #0x44]                 
81342cd0  vldr     s1, [r0, #0x48]                 
81342cd4  vldr     s2, [r0, #0x4c]                 
81342cd8  movw     r0, #0xcccd                     
81342cdc  movt     r0, #0x3dcc                       ; = 0x3dcccccd
81342ce0  vmov     s3, r0                          
81342ce4  movs     r0, #0                          
81342ce6  movs     r1, #0                          
81342ce8  bl       #0x812e5920                       ; -> UnityEngine.Gizmos$$DrawWireSphere
81342cec  ldr      r0, [r4, #0xc]                    ; this.colliderOptions
81342cee  vldr     s16, [r0, #0x38]                
81342cf2  vldr     s17, [r0, #0x3c]                
81342cf6  vldr     s18, [r0, #0x40]                
81342cfa  movs     r0, #0                          
81342cfc  movs     r1, #0                          
81342cfe  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81342d02  movs     r0, #0                          
81342d04  movs     r1, #0                          
81342d06  vmov.f32 s3, s0                          
81342d0a  vmov.f32 s5, s2                          
81342d0e  vmov.f32 s4, s1                          
81342d12  vmov.f32 s0, s16                         
81342d16  vmov.f32 s1, s17                         
81342d1a  vmov.f32 s2, s18                         
81342d1e  vstr     s3, [sp, #0xf0]                 
81342d22  vstr     s5, [sp, #0xf8]                 
81342d26  vstr     s4, [sp, #0xf4]                 
81342d2a  bl       #0x8139afc4                       ; -> UnityEngine.Vector3$$op_Equality
81342d2e  cmp      r0, #0                          
81342d30  bne.w    #0x813431aa                     
81342d34  ldr      r0, [r4, #0x10]                   ; this.myT
81342d36  movs     r1, #0                          
81342d38  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81342d3c  movw     r0, #0x45fc                     
81342d40  vmov.f32 s29, s0                         
81342d44  vmov.f32 s27, s2                         
81342d48  vmov.f32 s28, s1                         
81342d4c  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81342d50  vstr     s29, [sp, #0xfc]                
81342d54  vstr     s27, [sp, #0x104]               
81342d58  vstr     s28, [sp, #0x100]               
81342d5c  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342d5e  vldr     s0, [r1, #0x38]                 
81342d62  vldr     s31, [r1, #0x3c]                
81342d66  vldr     s30, [r1, #0x40]                
81342d6a  vstr     s0, [sp, #0x204]                
81342d6e  ldr      r0, [r0]                        
81342d70  ldrsb.w  r1, [r0, #0xc2]                 
81342d74  ands     r1, r1, #1                      
81342d78  beq      #0x81342d82                     
81342d7a  ldr      r1, [r0, #0x70]                 
81342d7c  cbnz     r1, #0x81342d82                 
81342d7e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81342d82  vldr     s3, [sp, #0x204]                
81342d86  vmov.f32 s0, s29                         
81342d8a  vmov.f32 s1, s28                         
81342d8e  vmov.f32 s2, s27                         
81342d92  vmov.f32 s4, s31                         
81342d96  vmov.f32 s5, s30                         
81342d9a  movs     r0, #0                          
81342d9c  movs     r1, #0                          
81342d9e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342da2  movs     r0, #0                          
81342da4  movs     r1, #0                          
81342da6  vmov.f32 s16, s0                         
81342daa  vmov.f32 s17, s2                         
81342dae  vmov.f32 s18, s1                         
81342db2  vstr     s16, [sp, #0x108]               
81342db6  vstr     s17, [sp, #0x110]               
81342dba  vstr     s18, [sp, #0x10c]               
81342dbe  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81342dc2  movs     r0, #0                          
81342dc4  vstr     s0, [sp, #0x114]                
81342dc8  vstr     s2, [sp, #0x11c]                
81342dcc  vstr     s1, [sp, #0x118]                
81342dd0  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342dd2  vldr     s3, [r1, #8]                    
81342dd6  vldr     s4, [r1, #0x10]                 
81342dda  movs     r1, #0                          
81342ddc  vadd.f32 s3, s3, s4                      
81342de0  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342de4  movs     r0, #0                          
81342de6  movs     r1, #0                          
81342de8  vmov.f32 s3, s0                          
81342dec  vmov.f32 s5, s2                          
81342df0  vmov.f32 s4, s1                          
81342df4  vmov.f32 s0, s16                         
81342df8  vmov.f32 s1, s18                         
81342dfc  vmov.f32 s2, s17                         
81342e00  vstr     s3, [sp, #0x120]                
81342e04  vstr     s5, [sp, #0x128]                
81342e08  vstr     s4, [sp, #0x124]                
81342e0c  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342e10  movs     r1, #0                          
81342e12  vmov.f32 s16, s0                         
81342e16  vmov.f32 s17, s2                         
81342e1a  vmov.f32 s18, s1                         
81342e1e  vstr     s16, [sp, #0x12c]               
81342e22  vstr     s17, [sp, #0x134]               
81342e26  vstr     s18, [sp, #0x130]               
81342e2a  ldr      r0, [r4, #0x10]                   ; this.myT
81342e2c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81342e30  movs     r0, #0                          
81342e32  vstr     s0, [sp, #0x138]                
81342e36  vstr     s2, [sp, #0x140]                
81342e3a  vstr     s1, [sp, #0x13c]                
81342e3e  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342e40  vldr     s3, [r1, #0x38]                 
81342e44  vldr     s4, [r1, #0x3c]                 
81342e48  vldr     s5, [r1, #0x40]                 
81342e4c  movs     r1, #0                          
81342e4e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342e52  movs     r0, #0                          
81342e54  movs     r1, #0                          
81342e56  vmov.f32 s19, s0                         
81342e5a  vmov.f32 s20, s2                         
81342e5e  vmov.f32 s21, s1                         
81342e62  vstr     s19, [sp, #0x144]               
81342e66  vstr     s20, [sp, #0x14c]               
81342e6a  vstr     s21, [sp, #0x148]               
81342e6e  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81342e72  movs     r0, #0                          
81342e74  vstr     s0, [sp, #0x150]                
81342e78  vstr     s2, [sp, #0x158]                
81342e7c  vstr     s1, [sp, #0x154]                
81342e80  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342e82  vldr     s3, [r1, #0xc]                  
81342e86  vldr     s4, [r1, #0x10]                 
81342e8a  movs     r1, #0                          
81342e8c  vsub.f32 s3, s3, s4                      
81342e90  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342e94  movs     r0, #0                          
81342e96  movs     r1, #0                          
81342e98  vmov.f32 s3, s0                          
81342e9c  vmov.f32 s5, s2                          
81342ea0  vmov.f32 s4, s1                          
81342ea4  vmov.f32 s0, s19                         
81342ea8  vmov.f32 s1, s21                         
81342eac  vmov.f32 s2, s20                         
81342eb0  vstr     s3, [sp, #0x15c]                
81342eb4  vstr     s5, [sp, #0x164]                
81342eb8  vstr     s4, [sp, #0x160]                
81342ebc  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342ec0  movs     r0, #0                          
81342ec2  movs     r1, #0                          
81342ec4  vmov.f32 s19, s0                         
81342ec8  vmov.f32 s20, s2                         
81342ecc  vmov.f32 s21, s1                         
81342ed0  vstr     s19, [sp, #0x168]               
81342ed4  vstr     s20, [sp, #0x170]               
81342ed8  vstr     s21, [sp, #0x16c]               
81342edc  bl       #0x813a0f16                       ; -> UnityEngine.Vector3$$get_right
81342ee0  movs     r0, #0                          
81342ee2  vstr     s0, [sp, #0x174]                
81342ee6  vstr     s2, [sp, #0x17c]                
81342eea  vstr     s1, [sp, #0x178]                
81342eee  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342ef0  vldr     s3, [r1, #0x10]                 
81342ef4  movs     r1, #0                          
81342ef6  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342efa  movs     r0, #0                          
81342efc  movs     r1, #0                          
81342efe  vmov.f32 s22, s0                         
81342f02  vmov.f32 s23, s2                         
81342f06  vmov.f32 s24, s1                         
81342f0a  vstr     s22, [sp, #0x180]               
81342f0e  vstr     s23, [sp, #0x188]               
81342f12  vstr     s24, [sp, #0x184]               
81342f16  bl       #0x813a129e                       ; -> UnityEngine.Vector3$$get_forward
81342f1a  movs     r0, #0                          
81342f1c  vstr     s0, [sp, #0x18c]                
81342f20  vstr     s2, [sp, #0x194]                
81342f24  vstr     s1, [sp, #0x190]                
81342f28  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342f2a  vldr     s3, [r1, #0x10]                 
81342f2e  movs     r1, #0                          
81342f30  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81342f34  movs     r0, #0                          
81342f36  vmov.f32 s25, s0                         
81342f3a  vmov.f32 s26, s2                         
81342f3e  vmov.f32 s27, s1                         
81342f42  vstr     s25, [sp, #0x198]               
81342f46  vstr     s26, [sp, #0x1a0]               
81342f4a  vstr     s27, [sp, #0x19c]               
81342f4e  ldr      r1, [r4, #0xc]                    ; this.colliderOptions
81342f50  vldr     s0, [r1, #0x28]                 
81342f54  vldr     s1, [r1, #0x2c]                 
81342f58  vldr     s2, [r1, #0x30]                 
81342f5c  vldr     s3, [r1, #0x34]                 
81342f60  movs     r1, #0                          
81342f62  bl       #0x812e59e0                       ; -> UnityEngine.Gizmos$$set_color
81342f66  vmov.f32 s0, s16                         
81342f6a  vmov.f32 s1, s18                         
81342f6e  vmov.f32 s2, s17                         
81342f72  vmov.f32 s3, s22                         
81342f76  vmov.f32 s4, s24                         
81342f7a  vmov.f32 s5, s23                         
81342f7e  movs     r0, #0                          
81342f80  movs     r1, #0                          
81342f82  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342f86  vmov.f32 s3, s22                         
81342f8a  vmov.f32 s4, s24                         
81342f8e  vmov.f32 s5, s23                         
81342f92  movs     r0, #0                          
81342f94  vmov.f32 s28, s0                         
81342f98  vmov.f32 s29, s2                         
81342f9c  vmov.f32 s30, s1                         
81342fa0  vmov.f32 s0, s19                         
81342fa4  vmov.f32 s1, s21                         
81342fa8  vmov.f32 s2, s20                         
81342fac  movs     r1, #0                          
81342fae  vstr     s28, [sp, #0x1a4]               
81342fb2  vstr     s29, [sp, #0x1ac]               
81342fb6  vstr     s30, [sp, #0x1a8]               
81342fba  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81342fbe  movs     r0, #0                          
81342fc0  movs     r1, #0                          
81342fc2  vmov.f32 s3, s0                          
81342fc6  vmov.f32 s5, s2                          
81342fca  vmov.f32 s4, s1                          
81342fce  vmov.f32 s0, s28                         
81342fd2  vmov.f32 s1, s30                         
81342fd6  vmov.f32 s2, s29                         
81342fda  vstr     s3, [sp, #0x1b0]                
81342fde  vstr     s5, [sp, #0x1b8]                
81342fe2  vstr     s4, [sp, #0x1b4]                
81342fe6  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
81342fea  vmov.f32 s0, s16                         
81342fee  vmov.f32 s1, s18                         
81342ff2  vmov.f32 s2, s17                         
81342ff6  vmov.f32 s3, s22                         
81342ffa  vmov.f32 s4, s24                         
81342ffe  vmov.f32 s5, s23                         
81343002  movs     r0, #0                          
81343004  movs     r1, #0                          
81343006  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134300a  vmov.f32 s3, s22                         
8134300e  vmov.f32 s5, s23                         
81343012  vmov.f32 s4, s24                         
81343016  movs     r0, #0                          
81343018  vmov.f32 s22, s0                         
8134301c  vmov.f32 s23, s2                         
81343020  vmov.f32 s24, s1                         
81343024  vmov.f32 s0, s19                         
81343028  vmov.f32 s1, s21                         
8134302c  vmov.f32 s2, s20                         
81343030  movs     r1, #0                          
81343032  vstr     s22, [sp, #0x1bc]               
81343036  vstr     s23, [sp, #0x1c4]               
8134303a  vstr     s24, [sp, #0x1c0]               
8134303e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81343042  movs     r0, #0                          
81343044  movs     r1, #0                          
81343046  vmov.f32 s3, s0                          
8134304a  vmov.f32 s5, s2                          
8134304e  vmov.f32 s4, s1                          
81343052  vmov.f32 s0, s22                         
81343056  vmov.f32 s1, s24                         
8134305a  vmov.f32 s2, s23                         
8134305e  vstr     s3, [sp, #0x1c8]                
81343062  vstr     s5, [sp, #0x1d0]                
81343066  vstr     s4, [sp, #0x1cc]                
8134306a  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
8134306e  vmov.f32 s0, s16                         
81343072  vmov.f32 s1, s18                         
81343076  vmov.f32 s2, s17                         
8134307a  vmov.f32 s3, s25                         
8134307e  vmov.f32 s4, s27                         
81343082  vmov.f32 s5, s26                         
81343086  movs     r0, #0                          
81343088  movs     r1, #0                          
8134308a  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134308e  vmov.f32 s3, s25                         
81343092  vmov.f32 s4, s27                         
81343096  vmov.f32 s5, s26                         
8134309a  movs     r0, #0                          
8134309c  vmov.f32 s22, s0                         
813430a0  vmov.f32 s23, s2                         
813430a4  vmov.f32 s24, s1                         
813430a8  vmov.f32 s0, s19                         
813430ac  vmov.f32 s1, s21                         
813430b0  vmov.f32 s2, s20                         
813430b4  movs     r1, #0                          
813430b6  vstr     s22, [sp, #0x1d4]               
813430ba  vstr     s23, [sp, #0x1dc]               
813430be  vstr     s24, [sp, #0x1d8]               
813430c2  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813430c6  movs     r0, #0                          
813430c8  movs     r1, #0                          
813430ca  vmov.f32 s3, s0                          
813430ce  vmov.f32 s5, s2                          
813430d2  vmov.f32 s4, s1                          
813430d6  vmov.f32 s0, s22                         
813430da  vmov.f32 s1, s24                         
813430de  vmov.f32 s2, s23                         
813430e2  vstr     s3, [sp, #0x1e0]                
813430e6  vstr     s5, [sp, #0x1e8]                
813430ea  vstr     s4, [sp, #0x1e4]                
813430ee  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
813430f2  vmov.f32 s0, s16                         
813430f6  vmov.f32 s1, s18                         
813430fa  vmov.f32 s2, s17                         
813430fe  vmov.f32 s3, s25                         
81343102  vmov.f32 s4, s27                         
81343106  vmov.f32 s5, s26                         
8134310a  movs     r0, #0                          
8134310c  movs     r1, #0                          
8134310e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81343112  vmov.f32 s3, s25                         
81343116  vmov.f32 s4, s27                         
8134311a  vmov.f32 s5, s26                         
8134311e  movs     r0, #0                          
81343120  vmov.f32 s22, s0                         
81343124  vmov.f32 s23, s2                         
81343128  vmov.f32 s24, s1                         
8134312c  vmov.f32 s0, s19                         
81343130  vmov.f32 s1, s21                         
81343134  vmov.f32 s2, s20                         
81343138  movs     r1, #0                          
8134313a  vstr     s22, [sp, #0x1ec]               
8134313e  vstr     s23, [sp, #0x1f4]               
81343142  vstr     s24, [sp, #0x1f0]               
81343146  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
8134314a  movs     r0, #0                          
8134314c  movs     r1, #0                          
8134314e  vmov.f32 s3, s0                          
81343152  vmov.f32 s5, s2                          
81343156  vmov.f32 s4, s1                          
8134315a  vmov.f32 s0, s22                         
8134315e  vmov.f32 s1, s24                         
81343162  vmov.f32 s2, s23                         
81343166  vstr     s3, [sp, #0x1f8]                
8134316a  vstr     s5, [sp, #0x200]                
8134316e  vstr     s4, [sp, #0x1fc]                
81343172  bl       #0x812e5852                       ; -> UnityEngine.Gizmos$$DrawLine
81343176  ldr      r0, [r4, #0xc]                    ; this.colliderOptions
81343178  vmov.f32 s0, s16                         
8134317c  vldr     s3, [r0, #0x10]                 
81343180  vmov.f32 s1, s18                         
81343184  vmov.f32 s2, s17                         
81343188  movs     r0, #0                          
8134318a  movs     r1, #0                          
8134318c  bl       #0x812e5920                       ; -> UnityEngine.Gizmos$$DrawWireSphere
81343190  ldr      r0, [r4, #0xc]                    ; this.colliderOptions
81343192  vmov.f32 s0, s19                         
81343196  vldr     s3, [r0, #0x10]                 
8134319a  vmov.f32 s1, s21                         
8134319e  vmov.f32 s2, s20                         
813431a2  movs     r0, #0                          
813431a4  movs     r1, #0                          
813431a6  bl       #0x812e5920                       ; -> UnityEngine.Gizmos$$DrawWireSphere
813431aa  ldr      r1, [sp, #0x208]                
813431ac  ldr      r0, [r6]                        
813431ae  cmp      r0, r1                          
813431b0  bne      #0x813431bc                     
813431b2  add.w    sp, sp, #0x210                  
813431b6  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
813431ba  pop      {r4, r5, r6, pc}                
813431bc  blx      #0x813e1118                       ; -> __stack_chk_fail
813431c0  nop                                      

; ==== MyController$$GoUpdate  @ 0x813431c2 .. 0x81343ee8
813431c2  push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
813431c6  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
813431ca  sub.w    sp, sp, #0x314                  
813431ce  movw     r1, #0x2514                     
813431d2  movt     r1, #0x813e                       ; = 0x813e2514
813431d6  ldr      r1, [r1]                        
813431d8  str      r1, [sp, #0x30c]                
813431da  movw     r1, #0x3491                     
813431de  movt     r1, #0x8151                       ; = 0x81513491
813431e2  ldrb     r1, [r1]                        
813431e4  mov      r8, r0                          
813431e6  cbnz     r1, #0x81343202                 
813431e8  movw     r0, #0x924                      
813431ec  movt     r0, #0x814c                       ; = 0x814c0924
813431f0  ldr      r0, [r0]                        
813431f2  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813431f6  movw     r0, #0x3491                     
813431fa  movt     r0, #0x8151                       ; = 0x81513491
813431fe  movs     r1, #1                          
81343200  strb     r1, [r0]                        
81343202  movs.w   fp, #0                          
81343206  strd     fp, fp, [sp, #0x2d8]            
8134320a  movs     r0, #0                          
8134320c  strd     fp, fp, [sp, #0x2e0]            
81343210  vmov     s0, r0                          
81343214  strd     fp, fp, [sp, #0x2e8]            
81343218  movs     r2, #0                          
8134321a  strd     fp, fp, [sp, #0x2f0]            
8134321e  movs     r3, #0                          
81343220  strd     fp, fp, [sp, #0x2f8]            
81343224  str.w    fp, [sp, #0x300]                
81343228  add      r0, sp, #0x298                  
8134322a  strd     fp, fp, [sp, #0x28c]            
8134322e  vmov.f32 s1, s0                          
81343232  str.w    fp, [sp, #0x294]                
81343236  vmov.f32 s2, s0                          
8134323a  str.w    fp, [sp, #0x288]                
8134323e  movs     r1, #0                          
81343240  strd     r2, r3, [sp, #0x2c8]            
81343244  strd     r2, r3, [sp, #0x2d0]            
81343248  ldr.w    r4, [r8, #0x14]                   ; this.rb
8134324c  strd     fp, fp, [sp, #0x298]            
81343250  str.w    fp, [sp, #0x2a0]                
81343254  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81343258  vldr     s0, [sp, #0x298]                
8134325c  vldr     s1, [sp, #0x29c]                
81343260  vldr     s2, [sp, #0x2a0]                
81343264  adds     r0, r4, #0                      
81343266  movs     r1, #0                          
81343268  bl       #0x81271438                       ; -> UnityEngine.Rigidbody$$set_velocity
8134326c  vldr     s16, [r8, #0x34]                  ; this.dashTime
81343270  movs     r0, #0                          
81343272  movs     r1, #0                          
81343274  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81343278  vsub.f32 s0, s16, s0                     
8134327c  ldr.w    r0, [r8, #0x18]                   ; this.coll
81343280  movs     r1, #0                          
81343282  vstr     s0, [r8, #0x34]                   ; this.dashTime
81343286  bl       #0x8126d914                       ; -> UnityEngine.CapsuleCollider$$get_center
8134328a  movs     r1, #0                          
8134328c  vmov.f32 s16, s0                         
81343290  vmov.f32 s18, s2                         
81343294  vmov.f32 s17, s1                         
81343298  vstr     s16, [sp, #0x60]                
8134329c  vstr     s18, [sp, #0x68]                
813432a0  vstr     s17, [sp, #0x64]                
813432a4  ldr.w    r0, [r8, #0x10]                   ; this.myT
813432a8  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813432ac  movw     sb, #0x45fc                     
813432b0  movt     sb, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813432b4  vmov.f32 s19, s0                         
813432b8  vmov.f32 s21, s2                         
813432bc  vmov.f32 s20, s1                         
813432c0  ldr.w    r0, [sb]                        
813432c4  vstr     s19, [sp, #0x6c]                
813432c8  vstr     s21, [sp, #0x74]                
813432cc  vstr     s20, [sp, #0x70]                
813432d0  ldrsb.w  r1, [r0, #0xc2]                 
813432d4  ands     r1, r1, #1                      
813432d8  beq      #0x813432e2                     
813432da  ldr      r1, [r0, #0x70]                 
813432dc  cbnz     r1, #0x813432e2                 
813432de  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813432e2  vmov.f32 s0, s16                         
813432e6  vmov.f32 s1, s17                         
813432ea  vmov.f32 s2, s18                         
813432ee  vmov.f32 s3, s19                         
813432f2  vmov.f32 s4, s20                         
813432f6  vmov.f32 s5, s21                         
813432fa  movs     r0, #0                          
813432fc  movs     r1, #0                          
813432fe  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81343302  movs     r0, #0                          
81343304  movs     r1, #0                          
81343306  vmov.f32 s16, s0                         
8134330a  vmov.f32 s17, s2                         
8134330e  vmov.f32 s18, s1                         
81343312  vstr     s16, [sp, #0x78]                
81343316  vstr     s17, [sp, #0x80]                
8134331a  vstr     s18, [sp, #0x7c]                
8134331e  bl       #0x813a4788                       ; -> UnityEngine.Vector3$$get_down
81343322  movs     r1, #0                          
81343324  vmov.f32 s19, s0                         
81343328  vmov.f32 s20, s2                         
8134332c  vmov.f32 s21, s1                         
81343330  vstr     s19, [sp, #0x84]                
81343334  vstr     s20, [sp, #0x8c]                
81343338  vstr     s21, [sp, #0x88]                
8134333c  ldr.w    r0, [r8, #0x18]                   ; this.coll
81343340  bl       #0x8126d914                       ; -> UnityEngine.CapsuleCollider$$get_center
81343344  movs     r0, #0                          
81343346  movs     r2, #0                          
81343348  vmov.f32 s22, s1                         
8134334c  vstr     s0, [sp, #0x90]                 
81343350  vstr     s2, [sp, #0x98]                 
81343354  vstr     s22, [sp, #0x94]                
81343358  ldr.w    r1, [r8, #0x20]                   ; this.groundMasks
8134335c  bl       #0x811336b0                       ; -> System.IntPtr$$op_Explicit
81343360  movw     r1, #0x999a                     
81343364  movt     r1, #0x3e19                       ; = 0x3e19999a
81343368  vmov     s7, r1                          
8134336c  adds     r2, r0, #0                      
8134336e  vmov.f32 s0, s16                         
81343372  movw     r0, #0xcccd                     
81343376  vmov.f32 s1, s18                         
8134337a  vmov.f32 s2, s17                         
8134337e  movt     r0, #0x3e4c                       ; = 0x3e4ccccd
81343382  vmov.f32 s4, s19                         
81343386  vmov     s3, r0                          
8134338a  add      r4, sp, #0x2d8                  
8134338c  vsub.f32 s7, s22, s7                     
81343390  vmov.f32 s5, s21                         
81343394  vmov.f32 s6, s20                         
81343398  adds     r1, r4, #0                      
8134339a  movs     r0, #0                          
8134339c  movs     r3, #0                          
8134339e  bl       #0x8126fb04                       ; -> UnityEngine.Physics$$SphereCast
813433a2  adds     r0, r4, #0                      
813433a4  movs     r1, #0                          
813433a6  bl       #0x812712cc                       ; -> RaycastHit.get_collider(ptr)
813433aa  movw     r1, #0x461c                     
813433ae  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
813433b2  adds     r4, r0, #0                      
813433b4  ldr      r0, [r1]                        
813433b6  ldrsb.w  r1, [r0, #0xc2]                 
813433ba  ands     r1, r1, #1                      
813433be  beq      #0x813433c8                     
813433c0  ldr      r1, [r0, #0x70]                 
813433c2  cbnz     r1, #0x813433c8                 
813433c4  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813433c8  movs     r0, #0                          
813433ca  adds     r1, r4, #0                      
813433cc  movs     r2, #0                          
813433ce  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
813433d2  vldr     s0, [r8, #0x34]                   ; this.dashTime
813433d6  vldr     s1, [sp, #0x2d8]                
813433da  vldr     s2, [sp, #0x2dc]                
813433de  vldr     s3, [sp, #0x2e0]                
813433e2  vldr     s4, [sp, #0x2e4]                
813433e6  vldr     s5, [sp, #0x2e8]                
813433ea  vldr     s6, [sp, #0x2ec]                
813433ee  ldr      r3, [sp, #0x2f0]                
813433f0  vldr     s7, [sp, #0x2f4]                
813433f4  vldr     s8, [sp, #0x2f8]                
813433f8  vldr     s9, [sp, #0x2fc]                
813433fc  ldr.w    lr, [sp, #0x300]                
81343400  cmp      r0, #0                          
81343402  ldr.w    r4, [r8, #0x14]                   ; this.rb
81343406  beq.w    #0x81343d92                     
8134340a  movs     r0, #0                          
8134340c  vldr     s10, [r8, #0x30]                  ; this.jump
81343410  vmov     s11, r0                         
81343414  vcmp.f32 s10, s11                        
81343418  vmrs     apsr_nzcv, fpscr                
8134341c  bls      #0x81343422                     
8134341e  b.w      #0x81343d92                     
81343422  movs     r0, #0                          
81343424  vmov     s10, r0                         
81343428  vcmp.f32 s0, s10                         
8134342c  vmrs     apsr_nzcv, fpscr                
81343430  bls      #0x81343436                     
81343432  b.w      #0x81343d92                     
81343436  movs     r0, #1                          
81343438  strb.w   r0, [r8, #0x1c]                   ; this.grounded
8134343c  vstr     s1, [sp, #0x34]                 
81343440  vstr     s2, [sp, #0x38]                 
81343444  vstr     s3, [sp, #0x3c]                 
81343448  vstr     s4, [sp, #0x40]                 
8134344c  vstr     s5, [sp, #0x44]                 
81343450  vstr     s6, [sp, #0x48]                 
81343454  str      r3, [sp, #0x4c]                 
81343456  vstr     s7, [sp, #0x50]                 
8134345a  vstr     s8, [sp, #0x54]                 
8134345e  vstr     s9, [sp, #0x58]                 
81343462  str.w    lr, [sp, #0x5c]                 
81343466  adds     r0, r4, #0                      
81343468  movs     r1, #0                          
8134346a  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
8134346e  add      r0, sp, #0x34                   
81343470  movs     r1, #0                          
81343472  vmov.f32 s16, s0                         
81343476  vstr     s2, [sp, #0xa4]                 
8134347a  vstr     s1, [sp, #0xa0]                 
8134347e  vstr     s16, [sp, #0x9c]                
81343482  bl       #0x812713e0                       ; -> RaycastHit.get_point(ptr)
81343486  movs     r1, #0                          
81343488  vmov.f32 s17, s1                         
8134348c  vstr     s0, [sp, #0xa8]                 
81343490  vstr     s2, [sp, #0xb0]                 
81343494  vstr     s17, [sp, #0xac]                
81343498  ldr.w    r0, [r8, #0x14]                   ; this.rb
8134349c  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
813434a0  strd     fp, fp, [sp, #0x2bc]            
813434a4  add      r0, sp, #0x2bc                  
813434a6  movs     r1, #0                          
813434a8  vstr     s0, [sp, #0xb4]                 
813434ac  vstr     s2, [sp, #0xbc]                 
813434b0  vstr     s1, [sp, #0xb8]                 
813434b4  str.w    fp, [sp, #0x2c4]                
813434b8  vmov.f32 s0, s16                         
813434bc  vmov.f32 s1, s17                         
813434c0  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
813434c4  vldr     s0, [sp, #0x2bc]                
813434c8  vldr     s1, [sp, #0x2c0]                
813434cc  vldr     s2, [sp, #0x2c4]                
813434d0  adds     r0, r4, #0                      
813434d2  movs     r1, #0                          
813434d4  bl       #0x812715b0                       ; -> UnityEngine.Rigidbody$$set_position
813434d8  ldr.w    r0, [r8, #0x10]                   ; this.myT
813434dc  movs     r1, #0                          
813434de  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813434e2  vmov.f32 s3, #-1.000000e+00              
813434e6  ldr.w    r0, [sb]                        
813434ea  vstr     s0, [sp, #0xe4]                 
813434ee  vstr     s2, [sp, #0xec]                 
813434f2  vstr     s1, [sp, #0xe8]                 
813434f6  vcmp.f32 s1, s3                          
813434fa  ldr.w    r4, [r8, #0x10]                   ; this.myT
813434fe  vmrs     apsr_nzcv, fpscr                
81343502  bmi      #0x81343506                     
81343504  b        #0x8134354c                     
81343506  ldrsb.w  r1, [r0, #0xc2]                 
8134350a  ands     r1, r1, #1                      
8134350e  beq      #0x81343518                     
81343510  ldr      r1, [r0, #0x70]                 
81343512  cbnz     r1, #0x81343518                 
81343514  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343518  movs     r0, #0                          
8134351a  movs     r1, #0                          
8134351c  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
81343520  vmov.f32 s3, #2.500000e+00               
81343524  movs     r0, #0                          
81343526  movs     r1, #0                          
81343528  vstr     s0, [sp, #0xf0]                 
8134352c  vstr     s2, [sp, #0xf8]                 
81343530  vstr     s1, [sp, #0xf4]                 
81343534  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81343538  adds     r0, r4, #0                      
8134353a  movs     r1, #0                          
8134353c  vstr     s0, [sp, #0xfc]                 
81343540  vstr     s2, [sp, #0x104]                
81343544  vstr     s1, [sp, #0x100]                
81343548  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134354c  ldrb.w   r0, [r8, #0x1c]                   ; this.grounded
81343550  cmp      r0, #0                          
81343552  beq.w    #0x81343a94                     
81343556  str.w    fp, [r8, #0x30]                   ; this.jump
8134355a  str.w    fp, [r8, #0x28]                   ; this.directionMove+4
8134355e  ldr.w    r7, [r8, #0x14]                   ; this.rb
81343562  movs     r1, #0                          
81343564  adds     r0, r7, #0                      
81343566  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
8134356a  movs     r0, #0                          
8134356c  movs     r1, #0                          
8134356e  vmov.f32 s16, s0                         
81343572  vmov.f32 s18, s2                         
81343576  vmov.f32 s17, s1                         
8134357a  vstr     s16, [sp, #0x108]               
8134357e  vstr     s18, [sp, #0x110]               
81343582  vstr     s17, [sp, #0x10c]               
81343586  vldr     s19, [r8, #0x24]                  ; this.directionMove
8134358a  vldr     s20, [r8, #0x28]                  ; this.directionMove+4
8134358e  vldr     s21, [r8, #0x2c]                  ; this.directionMove+8
81343592  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81343596  ldr.w    r0, [sb]                        
8134359a  vmov.f32 s22, s0                         
8134359e  ldrsb.w  r1, [r0, #0xc2]                 
813435a2  ands     r1, r1, #1                      
813435a6  beq      #0x813435b0                     
813435a8  ldr      r1, [r0, #0x70]                 
813435aa  cbnz     r1, #0x813435b0                 
813435ac  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813435b0  vmov.f32 s0, s19                         
813435b4  vmov.f32 s1, s20                         
813435b8  vmov.f32 s2, s21                         
813435bc  vmov.f32 s3, s22                         
813435c0  movs     r0, #0                          
813435c2  movs     r1, #0                          
813435c4  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813435c8  movs     r0, #0                          
813435ca  movs     r1, #0                          
813435cc  vmov.f32 s3, s0                          
813435d0  vmov.f32 s5, s2                          
813435d4  vmov.f32 s4, s1                          
813435d8  vmov.f32 s0, s16                         
813435dc  vmov.f32 s1, s17                         
813435e0  vmov.f32 s2, s18                         
813435e4  vstr     s3, [sp, #0x114]                
813435e8  vstr     s5, [sp, #0x11c]                
813435ec  vstr     s4, [sp, #0x118]                
813435f0  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813435f4  adds     r0, r7, #0                      
813435f6  movs     r1, #0                          
813435f8  vstr     s0, [sp, #0x120]                
813435fc  vstr     s2, [sp, #0x128]                
81343600  vstr     s1, [sp, #0x124]                
81343604  bl       #0x812715b0                       ; -> UnityEngine.Rigidbody$$set_position
81343608  ldr.w    r0, [r8, #0x14]                   ; this.rb
8134360c  movs     r1, #0                          
8134360e  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
81343612  movs     r0, #0                          
81343614  movs     r1, #0                          
81343616  vstr     s0, [sp, #0x12c]                
8134361a  vstr     s2, [sp, #0x134]                
8134361e  vstr     s1, [sp, #0x130]                
81343622  vldr     s3, [r8, #0x44]                   ; this.oldPos
81343626  vldr     s4, [r8, #0x48]                   ; this.oldPos+4
8134362a  vldr     s5, [r8, #0x4c]                   ; this.oldPos+8
8134362e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81343632  movs     r0, #0                          
81343634  movs     r1, #0                          
81343636  vmov.f32 s16, s0                         
8134363a  vmov.f32 s17, s2                         
8134363e  vstr     s1, [sp, #0x13c]                
81343642  vstr     s16, [sp, #0x138]               
81343646  vstr     s17, [sp, #0x140]               
8134364a  vldr     s18, [r8, #0x44]                  ; this.oldPos
8134364e  vldr     s19, [r8, #0x48]                  ; this.oldPos+4
81343652  vldr     s20, [r8, #0x4c]                  ; this.oldPos+8
81343656  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
8134365a  movs     r0, #0                          
8134365c  vstr     s0, [sp, #0x144]                
81343660  vstr     s2, [sp, #0x14c]                
81343664  vstr     s1, [sp, #0x148]                
81343668  ldr.w    r1, [r8, #0xc]                    ; this.colliderOptions
8134366c  vldr     s3, [r1, #8]                    
81343670  vldr     s4, [r1, #0x10]                 
81343674  movs     r1, #0                          
81343676  vadd.f32 s3, s3, s4                      
8134367a  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134367e  movs     r0, #0                          
81343680  movs     r1, #0                          
81343682  vmov.f32 s3, s0                          
81343686  vmov.f32 s5, s2                          
8134368a  vmov.f32 s4, s1                          
8134368e  vmov.f32 s0, s18                         
81343692  vmov.f32 s1, s19                         
81343696  vmov.f32 s2, s20                         
8134369a  vstr     s3, [sp, #0x150]                
8134369e  vstr     s5, [sp, #0x158]                
813436a2  vstr     s4, [sp, #0x154]                
813436a6  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813436aa  movs     r0, #0                          
813436ac  movs     r1, #0                          
813436ae  vmov.f32 s18, s0                         
813436b2  vmov.f32 s19, s2                         
813436b6  vmov.f32 s20, s1                         
813436ba  vstr     s18, [sp, #0x15c]               
813436be  vstr     s19, [sp, #0x164]               
813436c2  vstr     s20, [sp, #0x160]               
813436c6  vldr     s21, [r8, #0x44]                  ; this.oldPos
813436ca  vldr     s22, [r8, #0x48]                  ; this.oldPos+4
813436ce  vldr     s23, [r8, #0x4c]                  ; this.oldPos+8
813436d2  bl       #0x813a10da                       ; -> UnityEngine.Vector3$$get_up
813436d6  movs     r0, #0                          
813436d8  vstr     s0, [sp, #0x168]                
813436dc  vstr     s2, [sp, #0x170]                
813436e0  vstr     s1, [sp, #0x16c]                
813436e4  ldr.w    r1, [r8, #0xc]                    ; this.colliderOptions
813436e8  vldr     s3, [r1, #0xc]                  
813436ec  vldr     s4, [r1, #0x10]                 
813436f0  movs     r1, #0                          
813436f2  vsub.f32 s3, s3, s4                      
813436f6  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813436fa  movs     r0, #0                          
813436fc  movs     r1, #0                          
813436fe  vmov.f32 s3, s0                          
81343702  vmov.f32 s5, s2                          
81343706  vmov.f32 s4, s1                          
8134370a  vmov.f32 s0, s21                         
8134370e  vmov.f32 s1, s22                         
81343712  vmov.f32 s2, s23                         
81343716  vstr     s3, [sp, #0x174]                
8134371a  vstr     s5, [sp, #0x17c]                
8134371e  vstr     s4, [sp, #0x178]                
81343722  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81343726  vmov.f32 s21, s0                         
8134372a  vmov.f32 s22, s2                         
8134372e  vmov.f32 s23, s1                         
81343732  movs     r0, #0                          
81343734  vstr     s21, [sp, #0x180]               
81343738  vstr     s22, [sp, #0x188]               
8134373c  vstr     s23, [sp, #0x184]               
81343740  ldr.w    r1, [r8, #0xc]                    ; this.colliderOptions
81343744  vldr     s0, [r1, #0x10]                 
81343748  movs     r2, #0                          
8134374a  vstr     s0, [r1, #0x14]                 
8134374e  ldr.w    r1, [r8, #0xc]                    ; this.colliderOptions
81343752  vldr     s24, [r1, #0x10]                
81343756  ldr.w    r1, [r8, #0x20]                   ; this.groundMasks
8134375a  bl       #0x811336b0                       ; -> System.IntPtr$$op_Explicit
8134375e  vmov.f32 s0, s18                         
81343762  adds     r1, r0, #0                      
81343764  vmov.f32 s1, s20                         
81343768  vmov.f32 s2, s19                         
8134376c  movs     r0, #0                          
8134376e  vmov.f32 s3, s21                         
81343772  vmov     s8, r0                          
81343776  vmov.f32 s4, s23                         
8134377a  vmov.f32 s5, s22                         
8134377e  vmov.f32 s6, s24                         
81343782  vmov.f32 s7, s16                         
81343786  vmov.f32 s9, s17                         
8134378a  vmov.f32 s10, s24                        
8134378e  movs     r0, #0                          
81343790  movs     r2, #0                          
81343792  bl       #0x81270d5e                       ; -> UnityEngine.Physics$$CapsuleCastAll
81343796  ldr.w    r1, [r8, #0xc]                    ; this.colliderOptions
8134379a  vstr     s16, [r1, #0x38]                
8134379e  str.w    fp, [r1, #0x3c]                 
813437a2  adds     r7, r0, #0                      
813437a4  vstr     s17, [r1, #0x40]                
813437a8  ldr      r0, [r7, #0xc]                  
813437aa  cmp      r0, #0                          
813437ac  ble.w    #0x81343d7a                     
813437b0  ldr.w    r0, [sb]                        
813437b4  ldrsb.w  r1, [r0, #0xc2]                 
813437b8  ands     r1, r1, #1                      
813437bc  beq      #0x813437c6                     
813437be  ldr      r1, [r0, #0x70]                 
813437c0  cbnz     r1, #0x813437c6                 
813437c2  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813437c6  movs     r0, #0                          
813437c8  movs     r1, #0                          
813437ca  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813437ce  movs     r0, #0                          
813437d0  movs     r1, #0                          
813437d2  vmov.f32 s19, s0                         
813437d6  vmov.f32 s21, s2                         
813437da  vmov.f32 s20, s1                         
813437de  vstr     s19, [sp, #0x18c]               
813437e2  vstr     s21, [sp, #0x194]               
813437e6  vstr     s20, [sp, #0x190]               
813437ea  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
813437ee  movw     sl, #0x4710                     
813437f2  mov      r4, fp                          
813437f4  vmov.f32 s22, s0                         
813437f8  vmov.f32 s24, s2                         
813437fc  vmov.f32 s23, s1                         
81343800  adds     r5, r4, #0                      
81343802  movt     sl, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81343806  vstr     s22, [sp, #0x198]               
8134380a  vstr     s24, [sp, #0x1a0]               
8134380e  vstr     s23, [sp, #0x19c]               
81343812  ldr.w    lr, [r7, #0xc]                  
81343816  cmp      r5, lr                          
81343818  bge.w    #0x81343af6                     
8134381c  ldr.w    r0, [sb]                        
81343820  ldrsb.w  r1, [r0, #0xc2]                 
81343824  ands     r1, r1, #1                      
81343828  beq      #0x81343832                     
8134382a  ldr      r1, [r0, #0x70]                 
8134382c  cbnz     r1, #0x81343832                 
8134382e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343832  movs     r0, #0                          
81343834  movs     r1, #0                          
81343836  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134383a  str.w    fp, [sp, #0x288]                
8134383e  movs     r1, #0                          
81343840  vstr     s0, [sp, #0x1a4]                
81343844  vstr     s2, [sp, #0x1ac]                
81343848  vstr     s1, [sp, #0x1a8]                
8134384c  vstr     s0, [sp, #0x28c]                
81343850  vstr     s1, [sp, #0x290]                
81343854  vstr     s2, [sp, #0x294]                
81343858  ldr.w    r0, [r8, #0x14]                   ; this.rb
8134385c  ldr.w    r6, [r8, #0x18]                   ; this.coll
81343860  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
81343864  ldr.w    r0, [sl]                        
81343868  vmov.f32 s16, s0                         
8134386c  vmov.f32 s18, s2                         
81343870  vmov.f32 s17, s1                         
81343874  vstr     s16, [sp, #0x1b0]               
81343878  vstr     s18, [sp, #0x1b8]               
8134387c  vstr     s17, [sp, #0x1b4]               
81343880  ldrsb.w  r1, [r0, #0xc2]                 
81343884  ands     r1, r1, #1                      
81343888  beq      #0x81343892                     
8134388a  ldr      r1, [r0, #0x70]                 
8134388c  cbnz     r1, #0x81343892                 
8134388e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343892  strd     sl, sb, [sp, #0x304]            
81343896  movs     r0, #0                          
81343898  movs     r1, #0                          
8134389a  bl       #0x812f33f8                       ; -> UnityEngine.Quaternion$$get_identity
8134389e  movs     r0, #0x2c                       
813438a0  mla      r0, r5, r0, r7                  
813438a4  vmov.f32 s25, s0                         
813438a8  vmov.f32 s26, s3                         
813438ac  vmov.f32 s27, s1                         
813438b0  vmov.f32 s28, s2                         
813438b4  movs     r1, #0                          
813438b6  vstr     s25, [sp, #0x1bc]               
813438ba  vstr     s26, [sp, #0x1c8]               
813438be  add.w    sl, r0, #0x10                   
813438c2  vstr     s27, [sp, #0x1c0]               
813438c6  vstr     s28, [sp, #0x1c4]               
813438ca  mov      r0, sl                          
813438cc  bl       #0x812712cc                       ; -> RaycastHit.get_collider(ptr)
813438d0  mov      sb, r0                          
813438d2  mov      r0, sl                          
813438d4  movs     r1, #0                          
813438d6  bl       #0x812712cc                       ; -> RaycastHit.get_collider(ptr)
813438da  movs     r1, #0                          
813438dc  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
813438e0  movs     r1, #0                          
813438e2  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813438e6  mov      r0, sl                          
813438e8  movs     r1, #0                          
813438ea  vmov.f32 s29, s0                         
813438ee  vmov.f32 s30, s2                         
813438f2  vmov.f32 s31, s1                         
813438f6  vstr     s29, [sp, #0x1cc]               
813438fa  vstr     s30, [sp, #0x1d4]               
813438fe  vstr     s31, [sp, #0x1d0]               
81343902  bl       #0x812712cc                       ; -> RaycastHit.get_collider(ptr)
81343906  movs     r1, #0                          
81343908  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134390c  movs     r1, #0                          
8134390e  bl       #0x813a093a                       ; -> UnityEngine.Transform$$get_rotation
81343912  add      r0, sp, #0x288                  
81343914  vmov.f32 s4, s27                         
81343918  vmov.f32 s5, s28                         
8134391c  vmov.f32 s10, s0                         
81343920  vmov.f32 s13, s3                         
81343924  vmov.f32 s11, s1                         
81343928  vmov.f32 s12, s2                         
8134392c  add      r3, sp, #0x28c                  
8134392e  vmov.f32 s0, s16                         
81343932  vmov.f32 s1, s17                         
81343936  adds     r1, r6, #0                      
81343938  vmov.f32 s2, s18                         
8134393c  vstr     s10, [sp, #0x1d8]               
81343940  vstr     s13, [sp, #0x1e4]               
81343944  vstr     s11, [sp, #0x1dc]               
81343948  vstr     s12, [sp, #0x1e0]               
8134394c  strd     r0, fp, [sp]                    
81343950  vmov.f32 s3, s25                         
81343954  vmov.f32 s6, s26                         
81343958  mov      r2, sb                          
8134395a  vmov.f32 s7, s29                         
8134395e  vmov.f32 s8, s31                         
81343962  vmov.f32 s9, s30                         
81343966  movs     r0, #0                          
81343968  bl       #0x8127116c                       ; -> UnityEngine.Physics$$ComputePenetration
8134396c  vldr     s0, [sp, #0x28c]                
81343970  vldr     s1, [sp, #0x290]                
81343974  vldr     s2, [sp, #0x294]                
81343978  vldr     s3, [sp, #0x288]                
8134397c  movs     r0, #0                          
8134397e  movs     r1, #0                          
81343980  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81343984  movs     r0, #0                          
81343986  movs     r1, #0                          
81343988  vmov.f32 s3, s0                          
8134398c  vmov.f32 s5, s2                          
81343990  vmov.f32 s4, s1                          
81343994  vmov.f32 s0, s19                         
81343998  vmov.f32 s1, s20                         
8134399c  vmov.f32 s2, s21                         
813439a0  vstr     s3, [sp, #0x1e8]                
813439a4  vstr     s5, [sp, #0x1f0]                
813439a8  vstr     s4, [sp, #0x1ec]                
813439ac  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813439b0  movs     r1, #0                          
813439b2  vmov.f32 s19, s0                         
813439b6  vmov.f32 s21, s2                         
813439ba  vmov.f32 s20, s1                         
813439be  vstr     s19, [sp, #0x1f4]               
813439c2  vstr     s21, [sp, #0x1fc]               
813439c6  vstr     s20, [sp, #0x1f8]               
813439ca  ldr.w    r0, [r8, #0x10]                   ; this.myT
813439ce  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
813439d2  vldr     s3, [sp, #0x28c]                
813439d6  vldr     s4, [sp, #0x290]                
813439da  vldr     s5, [sp, #0x294]                
813439de  movs     r0, #0                          
813439e0  movs     r1, #0                          
813439e2  vstr     s0, [sp, #0x200]                
813439e6  vstr     s2, [sp, #0x208]                
813439ea  vstr     s1, [sp, #0x204]                
813439ee  bl       #0x813a4418                       ; -> UnityEngine.Vector3$$Dot
813439f2  vmov.f32 s1, #5.000000e-01               
813439f6  ldrb.w   r6, [r8, #0x1c]                   ; this.grounded
813439fa  ldrd     sl, sb, [sp, #0x304]            
813439fe  vcmp.f32 s0, s1                          
81343a02  vmrs     apsr_nzcv, fpscr                
81343a06  bgt      #0x81343a0a                     
81343a08  b        #0x81343a18                     
81343a0a  ldr.w    lr, [r8, #0x40]                   ; this.myController
81343a0e  ldr.w    r0, [lr, #0x18]                 
81343a12  cmp      r0, #2                          
81343a14  bne      #0x81343a18                     
81343a16  cbz      r6, #0x81343a1c                 
81343a18  adds     r5, #1                          
81343a1a  b        #0x81343812                     
81343a1c  movs     r1, #0                          
81343a1e  add.w    r0, lr, #0x54                   
81343a22  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
81343a26  vmov.f32 s1, #3.000000e+00               
81343a2a  vldr     s16, [sp, #0x28c]               
81343a2e  vldr     s17, [sp, #0x290]               
81343a32  vldr     s18, [sp, #0x294]               
81343a36  ldr.w    r0, [sb]                        
81343a3a  vcmp.f32 s0, s1                          
81343a3e  vmrs     apsr_nzcv, fpscr                
81343a42  bgt      #0x81343a46                     
81343a44  b        #0x81343a18                     
81343a46  ldrsb.w  r1, [r0, #0xc2]                 
81343a4a  adds     r4, #1                          
81343a4c  ands     r1, r1, #1                      
81343a50  beq      #0x81343a5a                     
81343a52  ldr      r1, [r0, #0x70]                 
81343a54  cbnz     r1, #0x81343a5a                 
81343a56  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343a5a  vmov.f32 s0, s22                         
81343a5e  vmov.f32 s1, s23                         
81343a62  vmov.f32 s2, s24                         
81343a66  vmov.f32 s3, s16                         
81343a6a  vmov.f32 s4, s17                         
81343a6e  vmov.f32 s5, s18                         
81343a72  movs     r0, #0                          
81343a74  movs     r1, #0                          
81343a76  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81343a7a  vmov.f32 s22, s0                         
81343a7e  vmov.f32 s24, s2                         
81343a82  vmov.f32 s23, s1                         
81343a86  vstr     s22, [sp, #0x20c]               
81343a8a  vstr     s24, [sp, #0x214]               
81343a8e  vstr     s23, [sp, #0x210]               
81343a92  b        #0x81343a18                     
81343a94  vldr     s16, [r8, #0x38]                  ; this.gravity
81343a98  ldr.w    r1, [r8, #0x40]                   ; this.myController
81343a9c  ldr      r1, [r1, #0x18]                 
81343a9e  cmp      r1, #1                          
81343aa0  beq      #0x81343aa6                     
81343aa2  cmp      r1, #2                          
81343aa4  bne      #0x81343aae                     
81343aa6  vmov.f32 s0, #5.000000e-01               
81343aaa  vmul.f32 s16, s16, s0                    
81343aae  vldr     s0, [r8, #0x3c]                   ; this.maxGravity
81343ab2  vldr     s17, [r8, #0x30]                  ; this.jump
81343ab6  vneg.f32 s0, s0                          
81343aba  vcmp.f32 s17, s0                         
81343abe  vmrs     apsr_nzcv, fpscr                
81343ac2  bgt      #0x81343ac6                     
81343ac4  b        #0x81343ad6                     
81343ac6  movs     r0, #0                          
81343ac8  movs     r1, #0                          
81343aca  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81343ace  vmul.f32 s0, s16, s0                     
81343ad2  vsub.f32 s0, s17, s0                     
81343ad6  movs     r0, #0                          
81343ad8  vldr     s1, [r8, #0x34]                   ; this.dashTime
81343adc  vmov     s2, r0                          
81343ae0  vstr     s0, [r8, #0x30]                   ; this.jump
81343ae4  vcmp.f32 s1, s2                          
81343ae8  vmrs     apsr_nzcv, fpscr                
81343aec  bls      #0x81343af0                     
81343aee  b        #0x8134355e                     
81343af0  vstr     s0, [r8, #0x28]                   ; this.directionMove+4
81343af4  b        #0x8134355e                     
81343af6  ldr.w    r0, [sb]                        
81343afa  ldrsb.w  r1, [r0, #0xc2]                 
81343afe  ands     r1, r1, #1                      
81343b02  beq      #0x81343b10                     
81343b04  ldr      r1, [r0, #0x70]                 
81343b06  cbnz     r1, #0x81343b10                 
81343b08  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343b0c  ldr.w    lr, [r7, #0xc]                  
81343b10  vmov     s3, lr                          
81343b14  movs     r0, #0                          
81343b16  vmov.f32 s0, s19                         
81343b1a  vmov     s1, r0                          
81343b1e  vmov.f32 s2, s21                         
81343b22  movs     r0, #0                          
81343b24  movs     r1, #0                          
81343b26  vcvt.f32.s32 s3, s3                          
81343b2a  bl       #0x813a3904                       ; -> UnityEngine.Vector3$$op_Division
81343b2e  movs     r1, #0                          
81343b30  vmov.f32 s16, s0                         
81343b34  vmov.f32 s17, s2                         
81343b38  vmov.f32 s18, s1                         
81343b3c  vstr     s16, [sp, #0x218]               
81343b40  vstr     s17, [sp, #0x220]               
81343b44  vstr     s18, [sp, #0x21c]               
81343b48  ldr.w    r5, [r8, #0x14]                   ; this.rb
81343b4c  adds     r0, r5, #0                      
81343b4e  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
81343b52  vmov.f32 s3, s16                         
81343b56  vmov.f32 s4, s18                         
81343b5a  vmov.f32 s5, s17                         
81343b5e  movs     r0, #0                          
81343b60  movs     r1, #0                          
81343b62  vstr     s0, [sp, #0x224]                
81343b66  vstr     s2, [sp, #0x22c]                
81343b6a  vstr     s1, [sp, #0x228]                
81343b6e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81343b72  adds     r0, r5, #0                      
81343b74  movs     r1, #0                          
81343b76  vstr     s0, [sp, #0x230]                
81343b7a  vstr     s2, [sp, #0x238]                
81343b7e  vstr     s1, [sp, #0x234]                
81343b82  bl       #0x812715b0                       ; -> UnityEngine.Rigidbody$$set_position
81343b86  cmp      r4, #0                          
81343b88  ble.w    #0x81343d7a                     
81343b8c  ldr.w    r0, [sb]                        
81343b90  ldrsb.w  r1, [r0, #0xc2]                 
81343b94  ands     r1, r1, #1                      
81343b98  beq      #0x81343ba2                     
81343b9a  ldr      r1, [r0, #0x70]                 
81343b9c  cbnz     r1, #0x81343ba2                 
81343b9e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343ba2  vmov     s3, r4                          
81343ba6  vmov.f32 s0, s22                         
81343baa  vmov.f32 s1, s23                         
81343bae  vmov.f32 s2, s24                         
81343bb2  movs     r0, #0                          
81343bb4  movs     r1, #0                          
81343bb6  vcvt.f32.s32 s3, s3                          
81343bba  bl       #0x813a3904                       ; -> UnityEngine.Vector3$$op_Division
81343bbe  movs.w   r0, #0x40000000                 
81343bc2  vmov.f32 s22, s0                         
81343bc6  vmov.f32 s17, s2                         
81343bca  vmov.f32 s16, s1                         
81343bce  movs     r2, #0                          
81343bd0  vstr     s22, [sp, #0x23c]               
81343bd4  vstr     s17, [sp, #0x244]               
81343bd8  vstr     s16, [sp, #0x240]               
81343bdc  ldr.w    r1, [r8, #0x40]                   ; this.myController
81343be0  str.w    r0, [r8, #0x30]                   ; this.jump
81343be4  ldr      r0, [r1, #0x7c]                 
81343be6  ldr      r1, [r0, #0x34]                 
81343be8  ldr      r0, [r0, #0x20]                 
81343bea  ldr      r1, [r1, #0x10]                 
81343bec  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81343bf0  ldr.w    r0, [r8, #0x40]                   ; this.myController
81343bf4  movw     r1, #0xb2f8                     
81343bf8  ldr      r0, [r0, #0x7c]                 
81343bfa  movt     r1, #0x8151                       ; str "fallToWall"
81343bfe  ldr      r0, [r0, #0x14]                 
81343c00  movs     r2, #1                          
81343c02  ldr      r1, [r1]                        
81343c04  movs     r3, #0                          
81343c06  bl       #0x8126a1a0                       ; -> UnityEngine.Animator$$SetBool
81343c0a  ldr.w    r0, [r8, #0x40]                   ; this.myController
81343c0e  movw     r1, #0xb2fc                     
81343c12  ldr      r0, [r0, #0x7c]                 
81343c14  movt     r1, #0x8151                       ; str "hited"
81343c18  ldr      r0, [r0, #0x14]                 
81343c1a  movs     r2, #0                          
81343c1c  ldr      r1, [r1]                        
81343c1e  bl       #0x8126a240                       ; -> UnityEngine.Animator$$SetTrigger
81343c22  ldr.w    r0, [sl]                        
81343c26  ldrsb.w  r1, [r0, #0xc2]                 
81343c2a  ands     r1, r1, #1                      
81343c2e  ldr.w    r4, [r8, #0x10]                   ; this.myT
81343c32  beq      #0x81343c3c                     
81343c34  ldr      r1, [r0, #0x70]                 
81343c36  cbnz     r1, #0x81343c3c                 
81343c38  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343c3c  vmov.f32 s0, s22                         
81343c40  vmov.f32 s1, s16                         
81343c44  vmov.f32 s2, s17                         
81343c48  movs     r0, #0                          
81343c4a  movs     r1, #0                          
81343c4c  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81343c50  add      r0, sp, #0x2c8                  
81343c52  movs     r1, #0                          
81343c54  vstr     s0, [sp, #0x248]                
81343c58  vstr     s3, [sp, #0x254]                
81343c5c  vstr     s1, [sp, #0x24c]                
81343c60  vstr     s2, [sp, #0x250]                
81343c64  vstr     s0, [sp, #0x2c8]                
81343c68  vstr     s1, [sp, #0x2cc]                
81343c6c  vstr     s2, [sp, #0x2d0]                
81343c70  vstr     s3, [sp, #0x2d4]                
81343c74  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81343c78  movs     r1, #0                          
81343c7a  str.w    fp, [sp, #0x2a4]                
81343c7e  add      r0, sp, #0x2a4                  
81343c80  vstr     s0, [sp, #0x258]                
81343c84  vmov     s0, r1                          
81343c88  vstr     s1, [sp, #0x25c]                
81343c8c  vstr     s2, [sp, #0x260]                
81343c90  strd     fp, fp, [sp, #0x2a8]            
81343c94  movs     r1, #0                          
81343c96  vmov.f32 s2, s0                          
81343c9a  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81343c9e  vldr     s0, [sp, #0x2a4]                
81343ca2  vldr     s1, [sp, #0x2a8]                
81343ca6  vldr     s2, [sp, #0x2ac]                
81343caa  adds     r0, r4, #0                      
81343cac  movs     r1, #0                          
81343cae  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81343cb2  ldr.w    r0, [r8, #0x40]                   ; this.myController
81343cb6  ldr      r1, [r0, #0x24]                 
81343cb8  ldr      r2, [r1, #0xc]                  
81343cba  subs.w   r0, r2, #0x14                   
81343cbe  str      r0, [r1, #0xc]                  
81343cc0  ldr.w    r4, [r8, #0x40]                   ; this.myController
81343cc4  ldr      r1, [r4, #0x24]                 
81343cc6  ldr      r2, [r1, #0xc]                  
81343cc8  cmp      r2, #0                          
81343cca  bgt      #0x81343cd4                     
81343ccc  ldr      r0, [r1, #0x10]                 
81343cce  str      r0, [r1, #0xc]                  
81343cd0  ldr.w    r4, [r8, #0x40]                   ; this.myController
81343cd4  ldr      r0, [r4, #0x7c]                 
81343cd6  ldr      r1, [r0, #0x18]                 
81343cd8  ldr      r2, [r4, #0x14]                 
81343cda  ldr      r3, [r1, #0x1c]                 
81343cdc  add.w    r0, r3, r2, lsl #2              
81343ce0  ldr      r0, [r0, #0x10]                 
81343ce2  ldr      r1, [r0, #8]                    
81343ce4  ldr      r2, [r1, #0x24]                 
81343ce6  ldr      r3, [r2, #0x10]                 
81343ce8  vmov     s0, r3                          
81343cec  ldr      r1, [r2, #0xc]                  
81343cee  vmov.f32 s2, #1.000000e+00               
81343cf2  vmov     s1, r1                          
81343cf6  ldr      r0, [r0, #0x10]                 
81343cf8  vcvt.f32.s32 s0, s0                          
81343cfc  vcvt.f32.s32 s1, s1                          
81343d00  movs     r1, #0                          
81343d02  vdiv.f32 s0, s2, s0                      
81343d06  vmul.f32 s0, s0, s1                      
81343d0a  bl       #0x81021bc4                       ; -> UnityEngine.UI.Image$$set_fillAmount
81343d0e  ldr.w    r0, [r8, #0x10]                   ; this.myT
81343d12  movs     r1, #0                          
81343d14  ldr.w    r4, [r8, #0x40]                   ; this.myController
81343d18  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81343d1c  ldr.w    r0, [sb]                        
81343d20  vmov.f32 s16, s0                         
81343d24  vmov.f32 s18, s2                         
81343d28  vmov.f32 s17, s1                         
81343d2c  vstr     s16, [sp, #0x264]               
81343d30  vstr     s18, [sp, #0x26c]               
81343d34  vstr     s17, [sp, #0x268]               
81343d38  ldrsb.w  r1, [r0, #0xc2]                 
81343d3c  ands     r1, r1, #1                      
81343d40  beq      #0x81343d4a                     
81343d42  ldr      r1, [r0, #0x70]                 
81343d44  cbnz     r1, #0x81343d4a                 
81343d46  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343d4a  vmov.f32 s0, s16                         
81343d4e  vmov.f32 s1, s17                         
81343d52  vmov.f32 s2, s18                         
81343d56  vmov.f32 s3, #4.000000e+00               
81343d5a  movs     r0, #0                          
81343d5c  movs     r1, #0                          
81343d5e  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81343d62  vstr     s0, [sp, #0x270]                
81343d66  vstr     s2, [sp, #0x278]                
81343d6a  vstr     s1, [sp, #0x274]                
81343d6e  vstr     s0, [r4, #0x54]                 
81343d72  vstr     s1, [r4, #0x58]                 
81343d76  vstr     s2, [r4, #0x5c]                 
81343d7a  ldr.w    r0, [r8, #0x14]                   ; this.rb
81343d7e  movs     r1, #0                          
81343d80  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
81343d84  vstr     s0, [r8, #0x44]                   ; this.oldPos
81343d88  vstr     s2, [r8, #0x4c]                   ; this.oldPos+8
81343d8c  vstr     s1, [r8, #0x48]                   ; this.oldPos+4
81343d90  b        #0x81343ec6                     
81343d92  movs     r1, #0                          
81343d94  strb.w   fp, [r8, #0x1c]                   ; this.grounded
81343d98  add      r0, sp, #0x2d8                  
81343d9a  bl       #0x812712cc                       ; -> RaycastHit.get_collider(ptr)
81343d9e  movw     r1, #0x461c                     
81343da2  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81343da6  adds     r4, r0, #0                      
81343da8  ldr      r0, [r1]                        
81343daa  ldrsb.w  r1, [r0, #0xc2]                 
81343dae  ands     r1, r1, #1                      
81343db2  beq      #0x81343dbc                     
81343db4  ldr      r1, [r0, #0x70]                 
81343db6  cbnz     r1, #0x81343dbc                 
81343db8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81343dbc  movs     r0, #0                          
81343dbe  adds     r1, r4, #0                      
81343dc0  movs     r2, #0                          
81343dc2  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81343dc6  vldr     s0, [r8, #0x34]                   ; this.dashTime
81343dca  vldr     s1, [sp, #0x2d8]                
81343dce  vldr     s2, [sp, #0x2dc]                
81343dd2  vldr     s3, [sp, #0x2e0]                
81343dd6  vldr     s4, [sp, #0x2e4]                
81343dda  vldr     s5, [sp, #0x2e8]                
81343dde  vldr     s6, [sp, #0x2ec]                
81343de2  ldr      r1, [sp, #0x2f0]                
81343de4  vldr     s7, [sp, #0x2f4]                
81343de8  vldr     s8, [sp, #0x2f8]                
81343dec  vldr     s9, [sp, #0x2fc]                
81343df0  ldr      r2, [sp, #0x300]                
81343df2  cmp      r0, #0                          
81343df4  ldr.w    r4, [r8, #0x14]                   ; this.rb
81343df8  beq.w    #0x813434d8                     
81343dfc  movs     r0, #0                          
81343dfe  vldr     s10, [r8, #0x28]                  ; this.directionMove+4
81343e02  vmov     s11, r0                         
81343e06  vcmp.f32 s10, s11                        
81343e0a  vmrs     apsr_nzcv, fpscr                
81343e0e  bls      #0x81343e14                     
81343e10  b.w      #0x813434d8                     
81343e14  movs     r0, #0                          
81343e16  vmov     s10, r0                         
81343e1a  vcmp.f32 s0, s10                         
81343e1e  vmrs     apsr_nzcv, fpscr                
81343e22  bgt      #0x81343e28                     
81343e24  b.w      #0x813434d8                     
81343e28  vstr     s1, [sp, #8]                    
81343e2c  vstr     s2, [sp, #0xc]                  
81343e30  vstr     s3, [sp, #0x10]                 
81343e34  vstr     s4, [sp, #0x14]                 
81343e38  vstr     s5, [sp, #0x18]                 
81343e3c  vstr     s6, [sp, #0x1c]                 
81343e40  str      r1, [sp, #0x20]                 
81343e42  vstr     s7, [sp, #0x24]                 
81343e46  vstr     s8, [sp, #0x28]                 
81343e4a  vstr     s9, [sp, #0x2c]                 
81343e4e  str      r2, [sp, #0x30]                 
81343e50  adds     r0, r4, #0                      
81343e52  movs     r1, #0                          
81343e54  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
81343e58  add      r0, sp, #8                      
81343e5a  movs     r1, #0                          
81343e5c  vmov.f32 s16, s0                         
81343e60  vstr     s2, [sp, #0xc8]                 
81343e64  vstr     s1, [sp, #0xc4]                 
81343e68  vstr     s16, [sp, #0xc0]                
81343e6c  bl       #0x812713e0                       ; -> RaycastHit.get_point(ptr)
81343e70  movs     r1, #0                          
81343e72  vmov.f32 s17, s1                         
81343e76  vstr     s0, [sp, #0xcc]                 
81343e7a  vstr     s2, [sp, #0xd4]                 
81343e7e  vstr     s17, [sp, #0xd0]                
81343e82  ldr.w    r0, [r8, #0x14]                   ; this.rb
81343e86  bl       #0x812714f0                       ; -> UnityEngine.Rigidbody$$get_position
81343e8a  strd     fp, fp, [sp, #0x2b0]            
81343e8e  add      r0, sp, #0x2b0                  
81343e90  movs     r1, #0                          
81343e92  vstr     s0, [sp, #0xd8]                 
81343e96  vstr     s2, [sp, #0xe0]                 
81343e9a  vstr     s1, [sp, #0xdc]                 
81343e9e  str.w    fp, [sp, #0x2b8]                
81343ea2  vmov.f32 s0, s16                         
81343ea6  vmov.f32 s1, s17                         
81343eaa  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81343eae  vldr     s0, [sp, #0x2b0]                
81343eb2  vldr     s1, [sp, #0x2b4]                
81343eb6  vldr     s2, [sp, #0x2b8]                
81343eba  adds     r0, r4, #0                      
81343ebc  movs     r1, #0                          
81343ebe  bl       #0x812715b0                       ; -> UnityEngine.Rigidbody$$set_position
81343ec2  b.w      #0x813434d8                     
81343ec6  ldr      r1, [sp, #0x30c]                
81343ec8  movw     r0, #0x2514                     
81343ecc  movt     r0, #0x813e                       ; = 0x813e2514
81343ed0  ldr      r0, [r0]                        
81343ed2  cmp      r0, r1                          
81343ed4  bne      #0x81343ee2                     
81343ed6  add.w    sp, sp, #0x314                  
81343eda  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
81343ede  pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
81343ee2  blx      #0x813e1118                       ; -> __stack_chk_fail
81343ee6  nop                                      

; ==== MyController.CollisionTest$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        
