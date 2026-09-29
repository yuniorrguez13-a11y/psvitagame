; ==== throwingObject$$.ctor  @ 0x813553ee .. 0x81355400
813553ee  push     {r4, lr}                        
813553f0  movs     r1, #0                          
813553f2  movt     r1, #0x4120                     
813553f6  str      r1, [r0, #0x34]                   ; this.lifeTime
813553f8  movs     r1, #0                          
813553fa  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
813553fe  pop      {r4, pc}                        

; ==== throwingObject$$Start  @ 0x81355400 .. 0x813556d0
81355400  push     {r4, r5, r6, r7, lr}            
81355402  vpush    {s16, s17, s18, s19, s20, s21}  
81355406  sub      sp, #0xa4                       
81355408  movw     r7, #0x2514                     
8135540c  movt     r7, #0x813e                       ; = 0x813e2514
81355410  ldr      r1, [r7]                        
81355412  str      r1, [sp, #0x9c]                 
81355414  movw     r1, #0x34ec                     
81355418  movt     r1, #0x8151                       ; = 0x815134ec
8135541c  ldrb     r1, [r1]                        
8135541e  adds     r4, r0, #0                      
81355420  cbnz     r1, #0x8135543c                 
81355422  movw     r0, #0x3780                     
81355426  movt     r0, #0x814c                       ; = 0x814c3780
8135542a  ldr      r0, [r0]                        
8135542c  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81355430  movw     r0, #0x34ec                     
81355434  movt     r0, #0x8151                       ; = 0x815134ec
81355438  movs     r1, #1                          
8135543a  strb     r1, [r0]                        
8135543c  movs     r0, #0                          
8135543e  strd     r0, r0, [sp, #0x78]             
81355442  movw     r1, #0x461c                     
81355446  strd     r0, r0, [sp, #0x80]             
8135544a  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
8135544e  strd     r0, r0, [sp, #0x88]             
81355452  ldr      r2, [r4, #0x30]                   ; this.target
81355454  ldr      r0, [r1]                        
81355456  ldr      r6, [r2, #0x2c]                 
81355458  ldr      r5, [r4, #0x2c]                   ; this.targetT
8135545a  ldrsb.w  r1, [r0, #0xc2]                 
8135545e  ands     r1, r1, #1                      
81355462  ldr      r6, [r6, #0x10]                 
81355464  beq      #0x8135546e                     
81355466  ldr      r1, [r0, #0x70]                 
81355468  cbnz     r1, #0x8135546e                 
8135546a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135546e  movs     r0, #0                          
81355470  adds     r1, r5, #0                      
81355472  adds     r2, r6, #0                      
81355474  movs     r3, #0                          
81355476  bl       #0x812e164c                       ; -> UnityEngine.Object$$op_Inequality
8135547a  cmp      r0, #0                          
8135547c  beq.w    #0x81355582                     
81355480  ldr      r0, [r4, #0x18]                   ; this.t
81355482  movs     r1, #0                          
81355484  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355488  movs     r1, #0                          
8135548a  vmov.f32 s21, s0                         
8135548e  vmov.f32 s19, s2                         
81355492  vmov.f32 s20, s1                         
81355496  vstr     s21, [sp]                       
8135549a  vstr     s19, [sp, #8]                   
8135549e  vstr     s20, [sp, #4]                   
813554a2  ldr      r0, [r4, #0x2c]                   ; this.targetT
813554a4  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813554a8  movw     r0, #0x45fc                     
813554ac  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813554b0  vmov.f32 s18, s0                         
813554b4  vmov.f32 s16, s2                         
813554b8  vmov.f32 s17, s1                         
813554bc  ldr      r0, [r0]                        
813554be  vstr     s18, [sp, #0xc]                 
813554c2  vstr     s16, [sp, #0x14]                
813554c6  vstr     s17, [sp, #0x10]                
813554ca  ldrsb.w  r1, [r0, #0xc2]                 
813554ce  ands     r1, r1, #1                      
813554d2  beq      #0x813554dc                     
813554d4  ldr      r1, [r0, #0x70]                 
813554d6  cbnz     r1, #0x813554dc                 
813554d8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813554dc  vmov.f32 s0, s21                         
813554e0  vmov.f32 s1, s20                         
813554e4  vmov.f32 s2, s19                         
813554e8  vmov.f32 s3, s18                         
813554ec  vmov.f32 s4, s17                         
813554f0  vmov.f32 s5, s16                         
813554f4  movs     r0, #0                          
813554f6  movs     r1, #0                          
813554f8  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
813554fc  add      r0, sp, #0x78                   
813554fe  movs     r1, #0                          
81355500  vstr     s0, [sp, #0x18]                 
81355504  vstr     s2, [sp, #0x20]                 
81355508  vstr     s1, [sp, #0x1c]                 
8135550c  vstr     s0, [sp, #0x78]                 
81355510  vstr     s1, [sp, #0x7c]                 
81355514  vstr     s2, [sp, #0x80]                 
81355518  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
8135551c  ldr      r0, [r4, #0x2c]                   ; this.targetT
8135551e  movs     r1, #0                          
81355520  ldr      r5, [r4, #0x18]                   ; this.t
81355522  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355526  adds     r0, r5, #0                      
81355528  movs     r1, #0                          
8135552a  vstr     s0, [sp, #0x24]                 
8135552e  vstr     s2, [sp, #0x2c]                 
81355532  vstr     s1, [sp, #0x28]                 
81355536  bl       #0x813a2224                       ; -> UnityEngine.Transform$$LookAt
8135553a  ldr      r4, [r4, #0x10]                   ; this.obj
8135553c  movs     r0, #0                          
8135553e  mvns     r1, #0x13                       
81355542  movs     r2, #0x14                       
81355544  movs     r3, #0                          
81355546  bl       #0x812f3ff0                       ; -> UnityEngine.Random$$Range
8135554a  vmov     s2, r0                          
8135554e  movs     r0, #0                          
81355550  vmov     s0, r0                          
81355554  movs     r2, #0                          
81355556  str      r2, [sp, #0x90]                 
81355558  add      r0, sp, #0x90                   
8135555a  vcvt.f32.s32 s2, s2                          
8135555e  strd     r2, r2, [sp, #0x94]             
81355562  movs     r1, #0                          
81355564  vmov.f32 s1, s0                          
81355568  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
8135556c  vldr     s0, [sp, #0x90]                 
81355570  vldr     s1, [sp, #0x94]                 
81355574  vldr     s2, [sp, #0x98]                 
81355578  adds     r0, r4, #0                      
8135557a  movs     r1, #0                          
8135557c  bl       #0x813a0e28                       ; -> UnityEngine.Transform$$set_localEulerAngles
81355580  b        #0x813556ba                     
81355582  ldr      r0, [r4, #0x18]                 
81355584  movs     r1, #0                          
81355586  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135558a  movs     r1, #0                          
8135558c  vmov.f32 s21, s0                         
81355590  vmov.f32 s19, s2                         
81355594  vmov.f32 s20, s1                         
81355598  vstr     s21, [sp, #0x30]                
8135559c  vstr     s19, [sp, #0x38]                
813555a0  vstr     s20, [sp, #0x34]                
813555a4  ldr      r0, [r4, #0x30]                 
813555a6  ldr      r2, [r0, #0x2c]                 
813555a8  ldr      r0, [r2, #0x10]                 
813555aa  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813555ae  movw     r0, #0x45fc                     
813555b2  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
813555b6  vmov.f32 s18, s0                         
813555ba  vmov.f32 s16, s2                         
813555be  vmov.f32 s17, s1                         
813555c2  ldr      r0, [r0]                        
813555c4  vstr     s18, [sp, #0x3c]                
813555c8  vstr     s16, [sp, #0x44]                
813555cc  vstr     s17, [sp, #0x40]                
813555d0  ldrsb.w  r1, [r0, #0xc2]                 
813555d4  ands     r1, r1, #1                      
813555d8  beq      #0x813555e2                     
813555da  ldr      r1, [r0, #0x70]                 
813555dc  cbnz     r1, #0x813555e2                 
813555de  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813555e2  vmov.f32 s0, s21                         
813555e6  vmov.f32 s1, s20                         
813555ea  vmov.f32 s2, s19                         
813555ee  vmov.f32 s3, s18                         
813555f2  vmov.f32 s4, s17                         
813555f6  vmov.f32 s5, s16                         
813555fa  movs     r0, #0                          
813555fc  movs     r1, #0                          
813555fe  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81355602  add      r0, sp, #0x84                   
81355604  movs     r1, #0                          
81355606  vstr     s0, [sp, #0x48]                 
8135560a  vstr     s2, [sp, #0x50]                 
8135560e  vstr     s1, [sp, #0x4c]                 
81355612  vstr     s0, [sp, #0x84]                 
81355616  vstr     s1, [sp, #0x88]                 
8135561a  vstr     s2, [sp, #0x8c]                 
8135561e  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
81355622  ldr      r0, [r4, #0x30]                 
81355624  vmov.f32 s16, s0                         
81355628  movs     r1, #0                          
8135562a  ldr      r0, [r0, #0x10]                 
8135562c  ldr      r5, [r4, #0x18]                 
8135562e  ldr      r0, [r0, #0xc]                  
81355630  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355634  vmov.f32 s3, #5.000000e-01               
81355638  vmov.f32 s17, s0                         
8135563c  vmov.f32 s18, s2                         
81355640  vmov.f32 s19, s1                         
81355644  vstr     s17, [sp, #0x54]                
81355648  vstr     s18, [sp, #0x5c]                
8135564c  vstr     s19, [sp, #0x58]                
81355650  vldr     s0, [r4, #0x1c]                 
81355654  ldr      r0, [r4, #0x30]                 
81355656  ldr      r1, [r0, #0x2c]                 
81355658  movs     r0, #0                          
8135565a  vdiv.f32 s4, s16, s0                     
8135565e  vldr     s0, [r1, #0x24]                 
81355662  vldr     s1, [r1, #0x28]                 
81355666  vldr     s5, [r1, #0x2c]                 
8135566a  movs     r1, #0                          
8135566c  vmul.f32 s3, s4, s3                      
81355670  vmov.f32 s2, s5                          
81355674  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81355678  movs     r0, #0                          
8135567a  movs     r1, #0                          
8135567c  vmov.f32 s3, s0                          
81355680  vmov.f32 s5, s2                          
81355684  vmov.f32 s4, s1                          
81355688  vmov.f32 s0, s17                         
8135568c  vmov.f32 s1, s19                         
81355690  vmov.f32 s2, s18                         
81355694  vstr     s3, [sp, #0x60]                 
81355698  vstr     s5, [sp, #0x68]                 
8135569c  vstr     s4, [sp, #0x64]                 
813556a0  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813556a4  adds     r0, r5, #0                      
813556a6  movs     r1, #0                          
813556a8  vstr     s0, [sp, #0x6c]                 
813556ac  vstr     s2, [sp, #0x74]                 
813556b0  vstr     s1, [sp, #0x70]                 
813556b4  bl       #0x813a2224                       ; -> UnityEngine.Transform$$LookAt
813556b8  b        #0x8135553a                     
813556ba  ldr      r1, [sp, #0x9c]                 
813556bc  ldr      r0, [r7]                        
813556be  cmp      r0, r1                          
813556c0  bne      #0x813556ca                     
813556c2  add      sp, #0xa4                       
813556c4  vpop     {s16, s17, s18, s19, s20, s21}  
813556c8  pop      {r4, r5, r6, r7, pc}            
813556ca  blx      #0x813e1118                       ; -> __stack_chk_fail
813556ce  nop                                      

; ==== throwingObject$$OnTriggerEnter  @ 0x813556d0 .. 0x81355974
813556d0  push.w   {r4, r5, r6, r7, r8, lr}        
813556d4  sub      sp, #0x18                       
813556d6  movw     r8, #0x2514                     
813556da  movt     r8, #0x813e                       ; = 0x813e2514
813556de  ldr.w    r2, [r8]                        
813556e2  str      r2, [sp, #0x14]                 
813556e4  movw     r2, #0x34ed                     
813556e8  movt     r2, #0x8151                       ; = 0x815134ed
813556ec  ldrb     r2, [r2]                        
813556ee  adds     r7, r1, #0                      
813556f0  adds     r6, r0, #0                      
813556f2  cbnz     r2, #0x8135570e                 
813556f4  movw     r0, #0x377c                     
813556f8  movt     r0, #0x814c                       ; = 0x814c377c
813556fc  ldr      r0, [r0]                        
813556fe  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81355702  movw     r0, #0x34ed                     
81355706  movt     r0, #0x8151                       ; = 0x815134ed
8135570a  movs     r1, #1                          
8135570c  strb     r1, [r0]                        
8135570e  movw     r0, #0xb2f4                     
81355712  movt     r0, #0x8151                       ; str "Player"
81355716  ldr      r1, [r0]                        
81355718  adds     r0, r7, #0                      
8135571a  movs     r2, #0                          
8135571c  bl       #0x812df67e                       ; -> UnityEngine.Component$$CompareTag
81355720  cmp      r0, #0                          
81355722  beq      #0x813557b8                     
81355724  movs     r1, #0                          
81355726  adds     r0, r7, #0                      
81355728  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8135572c  adds     r4, r0, #0                      
8135572e  ldr      r0, [r6, #0x14]                   ; this.from
81355730  movs     r1, #0                          
81355732  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
81355736  movw     r1, #0x461c                     
8135573a  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
8135573e  adds     r5, r0, #0                      
81355740  ldr      r0, [r1]                        
81355742  ldrsb.w  r1, [r0, #0xc2]                 
81355746  ands     r1, r1, #1                      
8135574a  beq      #0x81355754                     
8135574c  ldr      r1, [r0, #0x70]                 
8135574e  cbnz     r1, #0x81355754                 
81355750  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355754  movs     r0, #0                          
81355756  adds     r1, r4, #0                      
81355758  adds     r2, r5, #0                      
8135575a  movs     r3, #0                          
8135575c  bl       #0x812e164c                       ; -> UnityEngine.Object$$op_Inequality
81355760  cmp      r0, #0                          
81355762  beq      #0x813557b6                     
81355764  movw     r0, #0x4c58                     
81355768  movt     r0, #0x8151                       ; Method$UnityEngine.Component.GetComponent<controller>()
8135576c  ldr      r1, [r0]                        
8135576e  adds     r0, r7, #0                      
81355770  bl       #0x8125faae                       ; -> UnityEngine.Component$$GetComponent<ShadowTextureRenderer>
81355774  ldr      r1, [r6, #0x14]                   ; this.from
81355776  movs     r3, #0                          
81355778  ldr      r2, [r6, #0xc]                    ; this.attack
8135577a  str      r3, [sp]                        
8135577c  movs     r3, #0                          
8135577e  bl       #0x81341a5c                       ; -> controller$$dmg
81355782  cmp      r0, #0                          
81355784  ble      #0x813557b6                     
81355786  movs     r1, #0                          
81355788  adds     r0, r6, #0                      
8135578a  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8135578e  movw     r1, #0x461c                     
81355792  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81355796  adds     r6, r0, #0                      
81355798  ldr      r0, [r1]                        
8135579a  ldrsb.w  r1, [r0, #0xc2]                 
8135579e  ands     r1, r1, #1                      
813557a2  beq      #0x813557ac                     
813557a4  ldr      r1, [r0, #0x70]                 
813557a6  cbnz     r1, #0x813557ac                 
813557a8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813557ac  movs     r0, #0                          
813557ae  adds     r1, r6, #0                      
813557b0  movs     r2, #0                          
813557b2  bl       #0x812f0cd6                       ; -> UnityEngine.Object$$Destroy
813557b6  b        #0x8135595e                     
813557b8  movw     r0, #0xb40c                     
813557bc  movt     r0, #0x8151                       ; str "ThrowObj"
813557c0  ldr      r1, [r0]                        
813557c2  adds     r0, r7, #0                      
813557c4  movs     r2, #0                          
813557c6  bl       #0x812df67e                       ; -> UnityEngine.Component$$CompareTag
813557ca  cmp      r0, #0                          
813557cc  beq      #0x813558a4                     
813557ce  movw     r0, #0x4c5c                     
813557d2  movt     r0, #0x8151                       ; Method$UnityEngine.Component.GetComponent<throwingObject>()
813557d6  ldr      r1, [r0]                        
813557d8  adds     r0, r7, #0                      
813557da  bl       #0x8125faae                       ; -> UnityEngine.Component$$GetComponent<ShadowTextureRenderer>
813557de  ldr      r5, [r0, #0x14]                 
813557e0  movw     r0, #0x461c                     
813557e4  ldr      r4, [r6, #0x14]                 
813557e6  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
813557ea  ldr      r0, [r0]                        
813557ec  ldrsb.w  r1, [r0, #0xc2]                 
813557f0  ands     r1, r1, #1                      
813557f4  beq      #0x813557fe                     
813557f6  ldr      r1, [r0, #0x70]                 
813557f8  cbnz     r1, #0x813557fe                 
813557fa  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813557fe  movs     r0, #0                          
81355800  adds     r1, r5, #0                      
81355802  adds     r2, r4, #0                      
81355804  movs     r3, #0                          
81355806  bl       #0x812e164c                       ; -> UnityEngine.Object$$op_Inequality
8135580a  cmp      r0, #0                          
8135580c  beq      #0x813557b6                     
8135580e  movs     r1, #0                          
81355810  adds     r0, r7, #0                      
81355812  bl       #0x812f0542                       ; -> UnityEngine.Object$$GetInstanceID
81355816  adds     r4, r0, #0                      
81355818  adds     r0, r6, #0                      
8135581a  movs     r1, #0                          
8135581c  bl       #0x812f0542                       ; -> UnityEngine.Object$$GetInstanceID
81355820  cmp      r4, r0                          
81355822  bge      #0x8135582e                     
81355824  ldr      r0, [r6, #0x48]                 
81355826  movs     r2, #0                          
81355828  ldr      r1, [r6, #0x3c]                 
8135582a  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
8135582e  ldr      r0, [r6, #0x38]                 
81355830  movs     r1, #0                          
81355832  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81355836  movs     r1, #0                          
81355838  movs     r2, #0                          
8135583a  bl       #0x813a16ba                       ; -> UnityEngine.Transform$$set_parent
8135583e  ldr      r0, [r6, #0x38]                 
81355840  movs     r1, #0                          
81355842  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81355846  adds     r4, r0, #0                      
81355848  adds     r0, r7, #0                      
8135584a  movs     r1, #0                          
8135584c  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
81355850  movs     r1, #0                          
81355852  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355856  adds     r0, r4, #0                      
81355858  movs     r1, #0                          
8135585a  vstr     s0, [sp, #8]                    
8135585e  vstr     s2, [sp, #0x10]                 
81355862  vstr     s1, [sp, #0xc]                  
81355866  bl       #0x813a2224                       ; -> UnityEngine.Transform$$LookAt
8135586a  ldr      r0, [r6, #0x38]                 
8135586c  movs     r1, #0                          
8135586e  bl       #0x8127d684                       ; -> UnityEngine.ParticleSystem$$Play
81355872  adds     r0, r6, #0                      
81355874  movs     r1, #0                          
81355876  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
8135587a  movw     r1, #0x461c                     
8135587e  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81355882  adds     r6, r0, #0                      
81355884  ldr      r0, [r1]                        
81355886  ldrsb.w  r1, [r0, #0xc2]                 
8135588a  ands     r1, r1, #1                      
8135588e  beq      #0x81355898                     
81355890  ldr      r1, [r0, #0x70]                 
81355892  cbnz     r1, #0x81355898                 
81355894  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355898  movs     r0, #0                          
8135589a  adds     r1, r6, #0                      
8135589c  movs     r2, #0                          
8135589e  bl       #0x812f0cd6                       ; -> UnityEngine.Object$$Destroy
813558a2  b        #0x813557b6                     
813558a4  movw     r0, #0xb410                     
813558a8  movt     r0, #0x8151                       ; str "bush"
813558ac  ldr      r1, [r0]                        
813558ae  adds     r0, r7, #0                      
813558b0  movs     r2, #0                          
813558b2  bl       #0x812df67e                       ; -> UnityEngine.Component$$CompareTag
813558b6  cmp      r0, #0                          
813558b8  beq      #0x8135590a                     
813558ba  ldr      r0, [r6, #0x48]                 
813558bc  movs     r2, #0                          
813558be  ldr      r1, [r6, #0x40]                 
813558c0  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
813558c4  ldr      r4, [r6, #0x10]                 
813558c6  adds     r0, r7, #0                      
813558c8  movs     r1, #0                          
813558ca  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
813558ce  adds     r1, r0, #0                      
813558d0  adds     r0, r4, #0                      
813558d2  movs     r2, #0                          
813558d4  bl       #0x813a16ba                       ; -> UnityEngine.Transform$$set_parent
813558d8  adds     r0, r6, #0                      
813558da  movs     r1, #0                          
813558dc  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
813558e0  movw     r1, #0x461c                     
813558e4  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
813558e8  adds     r6, r0, #0                      
813558ea  ldr      r0, [r1]                        
813558ec  ldrsb.w  r1, [r0, #0xc2]                 
813558f0  ands     r1, r1, #1                      
813558f4  beq      #0x813558fe                     
813558f6  ldr      r1, [r0, #0x70]                 
813558f8  cbnz     r1, #0x813558fe                 
813558fa  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813558fe  movs     r0, #0                          
81355900  adds     r1, r6, #0                      
81355902  movs     r2, #0                          
81355904  bl       #0x812f0cd6                       ; -> UnityEngine.Object$$Destroy
81355908  b        #0x813557b6                     
8135590a  ldr      r0, [r6, #0x48]                 
8135590c  movs     r2, #0                          
8135590e  ldr      r1, [r6, #0x3c]                 
81355910  bl       #0x81267fa8                       ; -> UnityEngine.AudioSource$$PlayOneShot
81355914  ldr      r0, [r6, #0x38]                 
81355916  movs     r1, #0                          
81355918  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8135591c  movs     r1, #0                          
8135591e  movs     r2, #0                          
81355920  bl       #0x813a16ba                       ; -> UnityEngine.Transform$$set_parent
81355924  ldr      r0, [r6, #0x38]                 
81355926  movs     r1, #0                          
81355928  bl       #0x8127d684                       ; -> UnityEngine.ParticleSystem$$Play
8135592c  adds     r0, r6, #0                      
8135592e  movs     r1, #0                          
81355930  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
81355934  movw     r1, #0x461c                     
81355938  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
8135593c  adds     r6, r0, #0                      
8135593e  ldr      r0, [r1]                        
81355940  ldrsb.w  r1, [r0, #0xc2]                 
81355944  ands     r1, r1, #1                      
81355948  beq      #0x81355952                     
8135594a  ldr      r1, [r0, #0x70]                 
8135594c  cbnz     r1, #0x81355952                 
8135594e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355952  movs     r0, #0                          
81355954  adds     r1, r6, #0                      
81355956  movs     r2, #0                          
81355958  bl       #0x812f0cd6                       ; -> UnityEngine.Object$$Destroy
8135595c  b        #0x813557b6                     
8135595e  ldr      r1, [sp, #0x14]                 
81355960  ldr.w    r0, [r8]                        
81355964  cmp      r0, r1                          
81355966  bne      #0x8135596e                     
81355968  add      sp, #0x18                       
8135596a  pop.w    {r4, r5, r6, r7, r8, pc}        
8135596e  blx      #0x813e1118                       ; -> __stack_chk_fail
81355972  nop                                      

; ==== throwingObject$$Update  @ 0x81355974 .. 0x81359974
81355974  push     {r4, r5, r6, r7, lr}            
81355976  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27}
8135597a  sub.w    sp, sp, #0x27c                  
8135597e  movw     r7, #0x2514                     
81355982  movt     r7, #0x813e                       ; = 0x813e2514
81355986  ldr      r1, [r7]                        
81355988  str      r1, [sp, #0x278]                
8135598a  movw     r1, #0x34ee                     
8135598e  movt     r1, #0x8151                       ; = 0x815134ee
81355992  ldrb     r1, [r1]                        
81355994  adds     r5, r0, #0                      
81355996  cbnz     r1, #0x813559b2                 
81355998  movw     r0, #0x3784                     
8135599c  movt     r0, #0x814c                       ; = 0x814c3784
813559a0  ldr      r0, [r0]                        
813559a2  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813559a6  movw     r0, #0x34ee                     
813559aa  movt     r0, #0x8151                       ; = 0x815134ee
813559ae  movs     r1, #1                          
813559b0  strb     r1, [r0]                        
813559b2  movs     r0, #0                          
813559b4  strd     r0, r0, [sp, #0x20c]            
813559b8  movs     r2, #0                          
813559ba  strd     r0, r0, [sp, #0x214]            
813559be  movs     r3, #0                          
813559c0  strd     r0, r0, [sp, #0x21c]            
813559c4  strd     r0, r0, [sp, #0x224]            
813559c8  strd     r0, r0, [sp, #0x22c]            
813559cc  movs     r1, #0                          
813559ce  strd     r2, r3, [sp, #0x258]            
813559d2  strd     r2, r3, [sp, #0x260]            
813559d6  strd     r0, r0, [sp, #0x234]            
813559da  strd     r2, r3, [sp, #0x268]            
813559de  strd     r2, r3, [sp, #0x270]            
813559e2  strd     r0, r0, [sp, #0x23c]            
813559e6  str      r0, [sp, #0x244]                
813559e8  ldr      r0, [r5, #0x18]                   ; this.t
813559ea  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813559ee  movs     r1, #0                          
813559f0  vmov.f32 s16, s0                         
813559f4  vmov.f32 s18, s2                         
813559f8  vmov.f32 s17, s1                         
813559fc  vstr     s16, [sp]                       
81355a00  vstr     s18, [sp, #8]                   
81355a04  vstr     s17, [sp, #4]                   
81355a08  ldr      r0, [r5, #0x30]                   ; this.target
81355a0a  ldr      r2, [r0, #0x10]                 
81355a0c  ldr      r0, [r2, #0xc]                  
81355a0e  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355a12  movw     r0, #0x45fc                     
81355a16  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81355a1a  vmov.f32 s19, s0                         
81355a1e  vmov.f32 s21, s2                         
81355a22  vmov.f32 s20, s1                         
81355a26  ldr      r0, [r0]                        
81355a28  vstr     s19, [sp, #0xc]                 
81355a2c  vstr     s21, [sp, #0x14]                
81355a30  vstr     s20, [sp, #0x10]                
81355a34  ldrsb.w  r1, [r0, #0xc2]                 
81355a38  ands     r1, r1, #1                      
81355a3c  beq      #0x81355a46                     
81355a3e  ldr      r1, [r0, #0x70]                 
81355a40  cbnz     r1, #0x81355a46                 
81355a42  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355a46  vmov.f32 s0, s16                         
81355a4a  vmov.f32 s1, s17                         
81355a4e  vmov.f32 s2, s18                         
81355a52  vmov.f32 s3, s19                         
81355a56  vmov.f32 s4, s20                         
81355a5a  vmov.f32 s5, s21                         
81355a5e  movs     r0, #0                          
81355a60  movs     r1, #0                          
81355a62  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81355a66  add      r0, sp, #0x20c                  
81355a68  movs     r1, #0                          
81355a6a  vstr     s0, [sp, #0x18]                 
81355a6e  vstr     s2, [sp, #0x20]                 
81355a72  vstr     s1, [sp, #0x1c]                 
81355a76  vstr     s0, [sp, #0x20c]                
81355a7a  vstr     s1, [sp, #0x210]                
81355a7e  vstr     s2, [sp, #0x214]                
81355a82  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
81355a86  vmov.f32 s16, s0                         
81355a8a  movs     r0, #0                          
81355a8c  movs     r1, #0                          
81355a8e  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81355a92  movs     r0, #0                          
81355a94  movs     r1, #0                          
81355a96  vstr     s0, [sp, #0x24]                 
81355a9a  vstr     s2, [sp, #0x2c]                 
81355a9e  vstr     s1, [sp, #0x28]                 
81355aa2  vstr     s0, [sp, #0x218]                
81355aa6  vstr     s1, [sp, #0x21c]                
81355aaa  vstr     s2, [sp, #0x220]                
81355aae  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
81355ab2  movw     r0, #0x461c                     
81355ab6  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81355aba  ldr      r0, [r0]                        
81355abc  vstr     s0, [sp, #0x30]                 
81355ac0  vstr     s2, [sp, #0x38]                 
81355ac4  vstr     s1, [sp, #0x34]                 
81355ac8  ldr      r4, [r5, #0x30]                   ; this.target
81355aca  ldrsb.w  r1, [r0, #0xc2]                 
81355ace  ands     r1, r1, #1                      
81355ad2  ldr      r4, [r4, #0x34]                 
81355ad4  beq      #0x81355ade                     
81355ad6  ldr      r1, [r0, #0x70]                 
81355ad8  cbnz     r1, #0x81355ade                 
81355ada  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355ade  movs     r0, #0                          
81355ae0  adds     r1, r4, #0                      
81355ae2  movs     r2, #0                          
81355ae4  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81355ae8  ldr      r4, [r5, #0x2c]                   ; this.targetT
81355aea  cmp      r0, #0                          
81355aec  beq      #0x81355af4                     
81355aee  ldr      r0, [r5, #0x30]                   ; this.target
81355af0  ldr      r4, [r0, #0x34]                 
81355af2  str      r4, [r5, #0x2c]                   ; this.targetT
81355af4  movw     r0, #0x461c                     
81355af8  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81355afc  ldr      r0, [r0]                        
81355afe  ldrsb.w  r1, [r0, #0xc2]                 
81355b02  ands     r1, r1, #1                      
81355b06  beq      #0x81355b10                     
81355b08  ldr      r1, [r0, #0x70]                 
81355b0a  cbnz     r1, #0x81355b10                 
81355b0c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355b10  movs     r0, #0                          
81355b12  adds     r1, r4, #0                      
81355b14  movs     r2, #0                          
81355b16  bl       #0x812e625a                       ; -> UnityEngine.Object$$op_Implicit
81355b1a  cmp      r0, #0                          
81355b1c  beq.w    #0x81355eb4                     
81355b20  movw     r0, #0x461c                     
81355b24  ldr      r1, [r5, #0x30]                   ; this.target
81355b26  movt     r0, #0x8151                       ; UnityEngine.Object_TypeInfo
81355b2a  ldr      r4, [r1, #0x2c]                 
81355b2c  ldr      r0, [r0]                        
81355b2e  ldr      r6, [r5, #0x2c]                   ; this.targetT
81355b30  ldrsb.w  r1, [r0, #0xc2]                 
81355b34  ands     r1, r1, #1                      
81355b38  ldr      r4, [r4, #0x10]                 
81355b3a  beq      #0x81355b44                     
81355b3c  ldr      r1, [r0, #0x70]                 
81355b3e  cbnz     r1, #0x81355b44                 
81355b40  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355b44  movs     r0, #0                          
81355b46  adds     r1, r6, #0                      
81355b48  adds     r2, r4, #0                      
81355b4a  movs     r3, #0                          
81355b4c  bl       #0x812e164c                       ; -> UnityEngine.Object$$op_Inequality
81355b50  cmp      r0, #0                          
81355b52  beq.w    #0x81356014                     
81355b56  ldr      r0, [r5, #0x18]                   ; this.t
81355b58  movs     r1, #0                          
81355b5a  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355b5e  movs     r1, #0                          
81355b60  vmov.f32 s16, s0                         
81355b64  vmov.f32 s18, s2                         
81355b68  vmov.f32 s17, s1                         
81355b6c  vstr     s16, [sp, #0x3c]                
81355b70  vstr     s18, [sp, #0x44]                
81355b74  vstr     s17, [sp, #0x40]                
81355b78  ldr      r0, [r5, #0x2c]                   ; this.targetT
81355b7a  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355b7e  movw     r0, #0x45fc                     
81355b82  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81355b86  vmov.f32 s19, s0                         
81355b8a  vmov.f32 s21, s2                         
81355b8e  vmov.f32 s20, s1                         
81355b92  ldr      r0, [r0]                        
81355b94  vstr     s19, [sp, #0x48]                
81355b98  vstr     s21, [sp, #0x50]                
81355b9c  vstr     s20, [sp, #0x4c]                
81355ba0  ldrsb.w  r1, [r0, #0xc2]                 
81355ba4  ands     r1, r1, #1                      
81355ba8  beq      #0x81355bb2                     
81355baa  ldr      r1, [r0, #0x70]                 
81355bac  cbnz     r1, #0x81355bb2                 
81355bae  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355bb2  vmov.f32 s0, s16                         
81355bb6  vmov.f32 s1, s17                         
81355bba  vmov.f32 s2, s18                         
81355bbe  vmov.f32 s3, s19                         
81355bc2  vmov.f32 s4, s20                         
81355bc6  vmov.f32 s5, s21                         
81355bca  movs     r0, #0                          
81355bcc  movs     r1, #0                          
81355bce  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81355bd2  add      r0, sp, #0x224                  
81355bd4  movs     r1, #0                          
81355bd6  vstr     s0, [sp, #0x54]                 
81355bda  vstr     s2, [sp, #0x5c]                 
81355bde  vstr     s1, [sp, #0x58]                 
81355be2  vstr     s0, [sp, #0x224]                
81355be6  vstr     s1, [sp, #0x228]                
81355bea  vstr     s2, [sp, #0x22c]                
81355bee  bl       #0x813a3912                       ; -> Vector3.get_magnitude(ptr)
81355bf2  ldr      r0, [r5, #0x18]                   ; this.t
81355bf4  movs     r1, #0                          
81355bf6  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355bfa  movs     r1, #0                          
81355bfc  vmov.f32 s16, s0                         
81355c00  vmov.f32 s17, s2                         
81355c04  vmov.f32 s18, s1                         
81355c08  vstr     s16, [sp, #0x60]                
81355c0c  vstr     s17, [sp, #0x68]                
81355c10  vstr     s18, [sp, #0x64]                
81355c14  ldr      r0, [r5, #0x2c]                   ; this.targetT
81355c16  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355c1a  movs     r0, #0                          
81355c1c  movs     r1, #0                          
81355c1e  vmov.f32 s3, s0                          
81355c22  vmov.f32 s5, s2                          
81355c26  vmov.f32 s4, s1                          
81355c2a  vmov.f32 s0, s16                         
81355c2e  vmov.f32 s1, s18                         
81355c32  vmov.f32 s2, s17                         
81355c36  vstr     s3, [sp, #0x6c]                 
81355c3a  vstr     s5, [sp, #0x74]                 
81355c3e  vstr     s4, [sp, #0x70]                 
81355c42  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81355c46  movs     r0, #0                          
81355c48  movs     r1, #0                          
81355c4a  vstr     s0, [sp, #0x78]                 
81355c4e  vstr     s2, [sp, #0x80]                 
81355c52  vstr     s1, [sp, #0x7c]                 
81355c56  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81355c5a  add      r0, sp, #0x218                  
81355c5c  movs     r1, #0                          
81355c5e  vstr     s0, [sp, #0x84]                 
81355c62  vstr     s2, [sp, #0x8c]                 
81355c66  vstr     s1, [sp, #0x88]                 
81355c6a  vstr     s0, [sp, #0x218]                
81355c6e  vstr     s1, [sp, #0x21c]                
81355c72  vstr     s2, [sp, #0x220]                
81355c76  bl       #0x813a4324                       ; -> Vector3.get_normalized(ptr)
81355c7a  movw     r0, #0x4710                     
81355c7e  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
81355c82  vmov.f32 s16, s0                         
81355c86  vmov.f32 s18, s2                         
81355c8a  vmov.f32 s17, s1                         
81355c8e  ldr      r0, [r0]                        
81355c90  vstr     s16, [sp, #0x90]                
81355c94  vstr     s18, [sp, #0x98]                
81355c98  vstr     s17, [sp, #0x94]                
81355c9c  ldrsb.w  r1, [r0, #0xc2]                 
81355ca0  ands     r1, r1, #1                      
81355ca4  beq      #0x81355cae                     
81355ca6  ldr      r1, [r0, #0x70]                 
81355ca8  cbnz     r1, #0x81355cae                 
81355caa  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355cae  vmov.f32 s0, s16                         
81355cb2  vmov.f32 s1, s17                         
81355cb6  vmov.f32 s2, s18                         
81355cba  movs     r0, #0                          
81355cbc  movs     r1, #0                          
81355cbe  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
81355cc2  add      r0, sp, #0x258                  
81355cc4  movs     r1, #0                          
81355cc6  vstr     s0, [sp, #0x9c]                 
81355cca  vstr     s3, [sp, #0xa8]                 
81355cce  vstr     s1, [sp, #0xa0]                 
81355cd2  vstr     s2, [sp, #0xa4]                 
81355cd6  vstr     s0, [sp, #0x258]                
81355cda  vstr     s1, [sp, #0x25c]                
81355cde  vstr     s2, [sp, #0x260]                
81355ce2  vstr     s3, [sp, #0x264]                
81355ce6  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
81355cea  movs     r1, #0                          
81355cec  vmov.f32 s17, s0                         
81355cf0  vmov.f32 s16, s1                         
81355cf4  vstr     s2, [sp, #0xb4]                 
81355cf8  vstr     s17, [sp, #0xac]                
81355cfc  vstr     s16, [sp, #0xb0]                
81355d00  ldr      r0, [r5, #0x18]                   ; this.t
81355d02  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81355d06  movs     r1, #0                          
81355d08  vmov.f32 s18, s0                         
81355d0c  vmov.f32 s19, s2                         
81355d10  vmov.f32 s20, s1                         
81355d14  vstr     s18, [sp, #0xb8]                
81355d18  vstr     s19, [sp, #0xc0]                
81355d1c  vstr     s20, [sp, #0xbc]                
81355d20  ldr      r0, [r5, #0x18]                   ; this.t
81355d22  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355d26  movs     r1, #0                          
81355d28  vmov.f32 s21, s0                         
81355d2c  vmov.f32 s22, s2                         
81355d30  vmov.f32 s23, s1                         
81355d34  vstr     s21, [sp, #0xc4]                
81355d38  vstr     s22, [sp, #0xcc]                
81355d3c  vstr     s23, [sp, #0xc8]                
81355d40  ldr      r0, [r5, #0x2c]                   ; this.targetT
81355d42  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355d46  movs     r0, #0                          
81355d48  movs     r1, #0                          
81355d4a  vmov.f32 s3, s0                          
81355d4e  vmov.f32 s5, s2                          
81355d52  vmov.f32 s4, s1                          
81355d56  vmov.f32 s0, s21                         
81355d5a  vmov.f32 s1, s23                         
81355d5e  vmov.f32 s2, s22                         
81355d62  vstr     s3, [sp, #0xd0]                 
81355d66  vstr     s5, [sp, #0xd8]                 
81355d6a  vstr     s4, [sp, #0xd4]                 
81355d6e  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81355d72  add      r0, sp, #0x230                  
81355d74  movs     r1, #0                          
81355d76  vstr     s0, [sp, #0xdc]                 
81355d7a  vstr     s2, [sp, #0xe4]                 
81355d7e  vstr     s1, [sp, #0xe0]                 
81355d82  vstr     s0, [sp, #0x230]                
81355d86  vstr     s1, [sp, #0x234]                
81355d8a  vstr     s2, [sp, #0x238]                
81355d8e  bl       #0x813a4324                       ; -> Vector3.get_normalized(ptr)
81355d92  movs     r0, #0                          
81355d94  movs     r1, #0                          
81355d96  vstr     s0, [sp, #0xe8]                 
81355d9a  vstr     s2, [sp, #0xf0]                 
81355d9e  vstr     s1, [sp, #0xec]                 
81355da2  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81355da6  movs     r0, #0                          
81355da8  movs     r1, #0                          
81355daa  vmov.f32 s3, s0                          
81355dae  vmov.f32 s5, s2                          
81355db2  vmov.f32 s4, s1                          
81355db6  vmov.f32 s0, s18                         
81355dba  vmov.f32 s1, s20                         
81355dbe  vmov.f32 s2, s19                         
81355dc2  vstr     s3, [sp, #0xf4]                 
81355dc6  vstr     s5, [sp, #0xfc]                 
81355dca  vstr     s4, [sp, #0xf8]                 
81355dce  bl       #0x813a4418                       ; -> UnityEngine.Vector3$$Dot
81355dd2  movw     r0, #0xcccd                     
81355dd6  movt     r0, #0x3f4c                       ; = 0x3f4ccccd
81355dda  vmov     s1, r0                          
81355dde  vcmp.f32 s0, s1                          
81355de2  vmrs     apsr_nzcv, fpscr                
81355de6  bgt      #0x81355dea                     
81355de8  b        #0x81355eb4                     
81355dea  ldr      r4, [r5, #0x18]                   ; this.t
81355dec  movs     r1, #0                          
81355dee  adds     r0, r4, #0                      
81355df0  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81355df4  movs     r0, #0                          
81355df6  movs     r1, #0                          
81355df8  vmov.f32 s18, s0                         
81355dfc  vstr     s2, [sp, #0x1c0]                
81355e00  vstr     s1, [sp, #0x1bc]                
81355e04  vstr     s18, [sp, #0x1b8]               
81355e08  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81355e0c  movw     r0, #0x4618                     
81355e10  vmov.f32 s19, s0                         
81355e14  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
81355e18  ldr      r0, [r0]                        
81355e1a  ldrsb.w  r1, [r0, #0xc2]                 
81355e1e  ands     r1, r1, #1                      
81355e22  beq      #0x81355e2c                     
81355e24  ldr      r1, [r0, #0x70]                 
81355e26  cbnz     r1, #0x81355e2c                 
81355e28  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355e2c  movs     r0, #0                          
81355e2e  vmov.f32 s0, s18                         
81355e32  movt     r0, #0x425c                     
81355e36  vmov     s20, r0                         
81355e3a  vmov.f32 s1, s17                         
81355e3e  movs     r0, #0                          
81355e40  movs     r1, #0                          
81355e42  vmul.f32 s2, s19, s20                    
81355e46  bl       #0x812ea39c                       ; -> UnityEngine.Mathf$$MoveTowardsAngle
81355e4a  ldr      r0, [r5, #0x18]                   ; this.t
81355e4c  vmov.f32 s17, s0                         
81355e50  movs     r1, #0                          
81355e52  bl       #0x813a09ba                       ; -> UnityEngine.Transform$$get_eulerAngles
81355e56  movs     r0, #0                          
81355e58  movs     r1, #0                          
81355e5a  vmov.f32 s18, s1                         
81355e5e  vstr     s0, [sp, #0x1c4]                
81355e62  vstr     s2, [sp, #0x1cc]                
81355e66  vstr     s18, [sp, #0x1c8]               
81355e6a  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81355e6e  vmul.f32 s2, s0, s20                     
81355e72  vmov.f32 s0, s18                         
81355e76  vmov.f32 s1, s16                         
81355e7a  movs     r0, #0                          
81355e7c  movs     r1, #0                          
81355e7e  bl       #0x812ea39c                       ; -> UnityEngine.Mathf$$MoveTowardsAngle
81355e82  vmov.f32 s1, s0                          
81355e86  movs     r1, #0                          
81355e88  vmov.f32 s0, s17                         
81355e8c  str      r1, [sp, #0x248]                
81355e8e  movs     r2, #0                          
81355e90  strd     r1, r1, [sp, #0x24c]            
81355e94  add      r0, sp, #0x248                  
81355e96  vmov     s2, r2                          
81355e9a  movs     r1, #0                          
81355e9c  bl       #0x8127d904                       ; -> Vector3..ctor(ptr, x, y, z)
81355ea0  vldr     s0, [sp, #0x248]                
81355ea4  vldr     s1, [sp, #0x24c]                
81355ea8  vldr     s2, [sp, #0x250]                
81355eac  adds     r0, r4, #0                      
81355eae  movs     r1, #0                          
81355eb0  bl       #0x813a0b16                       ; -> UnityEngine.Transform$$set_eulerAngles
81355eb4  ldr      r4, [r5, #0x18]                   ; this.t
81355eb6  movs     r1, #0                          
81355eb8  adds     r0, r4, #0                      
81355eba  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81355ebe  movs     r1, #0                          
81355ec0  vmov.f32 s17, s0                         
81355ec4  vmov.f32 s19, s2                         
81355ec8  vmov.f32 s18, s1                         
81355ecc  vstr     s17, [sp, #0x1d0]               
81355ed0  vstr     s19, [sp, #0x1d8]               
81355ed4  vstr     s18, [sp, #0x1d4]               
81355ed8  ldr      r0, [r5, #0x18]                   ; this.t
81355eda  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
81355ede  movw     r0, #0x45fc                     
81355ee2  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81355ee6  vmov.f32 s20, s0                         
81355eea  vmov.f32 s22, s2                         
81355eee  vmov.f32 s21, s1                         
81355ef2  ldr      r0, [r0]                        
81355ef4  vstr     s20, [sp, #0x1dc]               
81355ef8  vstr     s22, [sp, #0x1e4]               
81355efc  vstr     s21, [sp, #0x1e0]               
81355f00  ldrsb.w  r1, [r0, #0xc2]                 
81355f04  vldr     s16, [r5, #0x1c]                  ; this.speed
81355f08  ands     r1, r1, #1                      
81355f0c  beq      #0x81355f16                     
81355f0e  ldr      r1, [r0, #0x70]                 
81355f10  cbnz     r1, #0x81355f16                 
81355f12  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355f16  vmov.f32 s0, s20                         
81355f1a  vmov.f32 s1, s21                         
81355f1e  vmov.f32 s2, s22                         
81355f22  vmov.f32 s3, s16                         
81355f26  movs     r0, #0                          
81355f28  movs     r1, #0                          
81355f2a  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81355f2e  movs     r0, #0                          
81355f30  movs     r1, #0                          
81355f32  vmov.f32 s16, s0                         
81355f36  vmov.f32 s20, s2                         
81355f3a  vmov.f32 s21, s1                         
81355f3e  vstr     s16, [sp, #0x1e8]               
81355f42  vstr     s20, [sp, #0x1f0]               
81355f46  vstr     s21, [sp, #0x1ec]               
81355f4a  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81355f4e  vmov.f32 s3, s0                          
81355f52  vmov.f32 s0, s16                         
81355f56  vmov.f32 s1, s21                         
81355f5a  vmov.f32 s2, s20                         
81355f5e  movs     r0, #0                          
81355f60  movs     r1, #0                          
81355f62  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
81355f66  movs     r0, #0                          
81355f68  movs     r1, #0                          
81355f6a  vmov.f32 s3, s0                          
81355f6e  vmov.f32 s5, s2                          
81355f72  vmov.f32 s4, s1                          
81355f76  vmov.f32 s0, s17                         
81355f7a  vmov.f32 s1, s18                         
81355f7e  vmov.f32 s2, s19                         
81355f82  vstr     s3, [sp, #0x1f4]                
81355f86  vstr     s5, [sp, #0x1fc]                
81355f8a  vstr     s4, [sp, #0x1f8]                
81355f8e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
81355f92  adds     r0, r4, #0                      
81355f94  movs     r1, #0                          
81355f96  vstr     s0, [sp, #0x200]                
81355f9a  vstr     s2, [sp, #0x208]                
81355f9e  vstr     s1, [sp, #0x204]                
81355fa2  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
81355fa6  vldr     s0, [r5, #0x20]                   ; this.rotation
81355faa  vldr     s1, [r5, #0x24]                   ; this.rotation+4
81355fae  vldr     s2, [r5, #0x28]                   ; this.rotation+8
81355fb2  ldr      r0, [r5, #0x10]                   ; this.obj
81355fb4  movs     r1, #1                          
81355fb6  movs     r2, #0                          
81355fb8  bl       #0x813a1d5a                       ; -> UnityEngine.Transform$$Rotate
81355fbc  vldr     s16, [r5, #0x34]                  ; this.lifeTime
81355fc0  movs     r0, #0                          
81355fc2  movs     r1, #0                          
81355fc4  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81355fc8  vsub.f32 s0, s16, s0                     
81355fcc  movs     r0, #0                          
81355fce  vmov     s1, r0                          
81355fd2  vstr     s0, [r5, #0x34]                   ; this.lifeTime
81355fd6  vcmp.f32 s0, s1                          
81355fda  vmrs     apsr_nzcv, fpscr                
81355fde  bmi      #0x81355fe2                     
81355fe0  b        #0x81356012                     
81355fe2  movs     r1, #0                          
81355fe4  adds     r0, r5, #0                      
81355fe6  bl       #0x812df2d0                       ; -> UnityEngine.Component$$get_gameObject
81355fea  movw     r1, #0x461c                     
81355fee  movt     r1, #0x8151                       ; UnityEngine.Object_TypeInfo
81355ff2  adds     r5, r0, #0                      
81355ff4  ldr      r0, [r1]                        
81355ff6  ldrsb.w  r1, [r0, #0xc2]                 
81355ffa  ands     r1, r1, #1                      
81355ffe  beq      #0x81356008                     
81356000  ldr      r1, [r0, #0x70]                 
81356002  cbnz     r1, #0x81356008                 
81356004  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81356008  movs     r0, #0                          
8135600a  adds     r1, r5, #0                      
8135600c  movs     r2, #0                          
8135600e  bl       #0x812f0cd6                       ; -> UnityEngine.Object$$Destroy
81356012  b        #0x81356292                     
81356014  ldr      r0, [r5, #0x18]                 
81356016  movs     r1, #0                          
81356018  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8135601c  movs     r1, #0                          
8135601e  vmov.f32 s17, s0                         
81356022  vmov.f32 s19, s2                         
81356026  vmov.f32 s18, s1                         
8135602a  vstr     s17, [sp, #0x100]               
8135602e  vstr     s19, [sp, #0x108]               
81356032  vstr     s18, [sp, #0x104]               
81356036  ldr      r0, [r5, #0x30]                 
81356038  ldr      r2, [r0, #0x10]                 
8135603a  ldr      r0, [r2, #0xc]                  
8135603c  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81356040  movw     r0, #0x45fc                     
81356044  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
81356048  vmov.f32 s20, s0                         
8135604c  vmov.f32 s22, s2                         
81356050  vmov.f32 s21, s1                         
81356054  ldr      r0, [r0]                        
81356056  vstr     s20, [sp, #0x10c]               
8135605a  vstr     s22, [sp, #0x114]               
8135605e  vstr     s21, [sp, #0x110]               
81356062  ldr      r1, [r5, #0x30]                 
81356064  vldr     s26, [r5, #0x1c]                
81356068  ldr      r1, [r1, #0x2c]                 
8135606a  vldr     s23, [r1, #0x24]                
8135606e  vldr     s24, [r1, #0x28]                
81356072  ldrsb.w  r2, [r0, #0xc2]                 
81356076  vldr     s25, [r1, #0x2c]                
8135607a  ands     r1, r2, #1                      
8135607e  beq      #0x81356088                     
81356080  ldr      r1, [r0, #0x70]                 
81356082  cbnz     r1, #0x81356088                 
81356084  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81356088  vdiv.f32 s3, s16, s26                    
8135608c  vmov.f32 s4, #5.000000e-01               
81356090  vmov.f32 s0, s23                         
81356094  vmov.f32 s1, s24                         
81356098  vmov.f32 s2, s25                         
8135609c  movs     r0, #0                          
8135609e  movs     r1, #0                          
813560a0  vmul.f32 s3, s3, s4                      
813560a4  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
813560a8  movs     r0, #0                          
813560aa  movs     r1, #0                          
813560ac  vmov.f32 s3, s0                          
813560b0  vmov.f32 s5, s2                          
813560b4  vmov.f32 s4, s1                          
813560b8  vmov.f32 s0, s20                         
813560bc  vmov.f32 s1, s21                         
813560c0  vmov.f32 s2, s22                         
813560c4  vstr     s3, [sp, #0x118]                
813560c8  vstr     s5, [sp, #0x120]                
813560cc  vstr     s4, [sp, #0x11c]                
813560d0  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
813560d4  movs     r0, #0                          
813560d6  movs     r1, #0                          
813560d8  vmov.f32 s3, s0                          
813560dc  vmov.f32 s5, s2                          
813560e0  vmov.f32 s4, s1                          
813560e4  vmov.f32 s0, s17                         
813560e8  vmov.f32 s1, s18                         
813560ec  vmov.f32 s2, s19                         
813560f0  vstr     s3, [sp, #0x124]                
813560f4  vstr     s5, [sp, #0x12c]                
813560f8  vstr     s4, [sp, #0x128]                
813560fc  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81356100  movs     r0, #0                          
81356102  movs     r1, #0                          
81356104  vstr     s0, [sp, #0x130]                
81356108  vstr     s2, [sp, #0x138]                
8135610c  vstr     s1, [sp, #0x134]                
81356110  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81356114  add      r0, sp, #0x218                  
81356116  movs     r1, #0                          
81356118  vstr     s0, [sp, #0x13c]                
8135611c  vstr     s2, [sp, #0x144]                
81356120  vstr     s1, [sp, #0x140]                
81356124  vstr     s0, [sp, #0x218]                
81356128  vstr     s1, [sp, #0x21c]                
8135612c  vstr     s2, [sp, #0x220]                
81356130  bl       #0x813a4324                       ; -> Vector3.get_normalized(ptr)
81356134  movw     r0, #0x4710                     
81356138  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
8135613c  vmov.f32 s16, s0                         
81356140  vmov.f32 s18, s2                         
81356144  vmov.f32 s17, s1                         
81356148  ldr      r0, [r0]                        
8135614a  vstr     s16, [sp, #0x148]               
8135614e  vstr     s18, [sp, #0x150]               
81356152  vstr     s17, [sp, #0x14c]               
81356156  ldrsb.w  r1, [r0, #0xc2]                 
8135615a  ands     r1, r1, #1                      
8135615e  beq      #0x81356168                     
81356160  ldr      r1, [r0, #0x70]                 
81356162  cbnz     r1, #0x81356168                 
81356164  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81356168  vmov.f32 s0, s16                         
8135616c  vmov.f32 s1, s17                         
81356170  vmov.f32 s2, s18                         
81356174  movs     r0, #0                          
81356176  movs     r1, #0                          
81356178  bl       #0x812f328c                       ; -> UnityEngine.Quaternion$$LookRotation
8135617c  add      r0, sp, #0x268                  
8135617e  movs     r1, #0                          
81356180  vstr     s0, [sp, #0x154]                
81356184  vstr     s3, [sp, #0x160]                
81356188  vstr     s1, [sp, #0x158]                
8135618c  vstr     s2, [sp, #0x15c]                
81356190  vstr     s0, [sp, #0x268]                
81356194  vstr     s1, [sp, #0x26c]                
81356198  vstr     s2, [sp, #0x270]                
8135619c  vstr     s3, [sp, #0x274]                
813561a0  bl       #0x812f378e                       ; -> Quaternion.get_eulerAngles(ptr)
813561a4  movs     r1, #0                          
813561a6  vmov.f32 s17, s0                         
813561aa  vmov.f32 s16, s1                         
813561ae  vstr     s2, [sp, #0x16c]                
813561b2  vstr     s17, [sp, #0x164]               
813561b6  vstr     s16, [sp, #0x168]               
813561ba  ldr      r0, [r5, #0x18]                 
813561bc  bl       #0x813a12fc                       ; -> UnityEngine.Transform$$get_forward
813561c0  movs     r1, #0                          
813561c2  vmov.f32 s18, s0                         
813561c6  vmov.f32 s19, s2                         
813561ca  vmov.f32 s20, s1                         
813561ce  vstr     s18, [sp, #0x170]               
813561d2  vstr     s19, [sp, #0x178]               
813561d6  vstr     s20, [sp, #0x174]               
813561da  ldr      r0, [r5, #0x18]                 
813561dc  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
813561e0  movs     r1, #0                          
813561e2  vmov.f32 s21, s0                         
813561e6  vmov.f32 s22, s2                         
813561ea  vmov.f32 s23, s1                         
813561ee  vstr     s21, [sp, #0x17c]               
813561f2  vstr     s22, [sp, #0x184]               
813561f6  vstr     s23, [sp, #0x180]               
813561fa  ldr      r0, [r5, #0x30]                 
813561fc  ldr      r2, [r0, #0x10]                 
813561fe  ldr      r0, [r2, #0xc]                  
81356200  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
81356204  movs     r0, #0                          
81356206  movs     r1, #0                          
81356208  vmov.f32 s3, s0                          
8135620c  vmov.f32 s5, s2                          
81356210  vmov.f32 s4, s1                          
81356214  vmov.f32 s0, s21                         
81356218  vmov.f32 s1, s23                         
8135621c  vmov.f32 s2, s22                         
81356220  vstr     s3, [sp, #0x188]                
81356224  vstr     s5, [sp, #0x190]                
81356228  vstr     s4, [sp, #0x18c]                
8135622c  bl       #0x8139afb6                       ; -> UnityEngine.Vector3$$op_Subtraction
81356230  add      r0, sp, #0x23c                  
81356232  movs     r1, #0                          
81356234  vstr     s0, [sp, #0x194]                
81356238  vstr     s2, [sp, #0x19c]                
8135623c  vstr     s1, [sp, #0x198]                
81356240  vstr     s0, [sp, #0x23c]                
81356244  vstr     s1, [sp, #0x240]                
81356248  vstr     s2, [sp, #0x244]                
8135624c  bl       #0x813a4324                       ; -> Vector3.get_normalized(ptr)
81356250  movs     r0, #0                          
81356252  movs     r1, #0                          
81356254  vstr     s0, [sp, #0x1a0]                
81356258  vstr     s2, [sp, #0x1a8]                
8135625c  vstr     s1, [sp, #0x1a4]                
81356260  bl       #0x813a4844                       ; -> UnityEngine.Vector3$$op_UnaryNegation
81356264  movs     r0, #0                          
81356266  movs     r1, #0                          
81356268  vmov.f32 s3, s0                          
8135626c  vmov.f32 s5, s2                          
81356270  vmov.f32 s4, s1                          
81356274  vmov.f32 s0, s18                         
81356278  vmov.f32 s1, s20                         
8135627c  vmov.f32 s2, s19                         
81356280  vstr     s3, [sp, #0x1ac]                
81356284  vstr     s5, [sp, #0x1b4]                
81356288  vstr     s4, [sp, #0x1b0]                
8135628c  bl       #0x813a4418                       ; -> UnityEngine.Vector3$$Dot
81356290  b        #0x81355dd2                     
81356292  ldr      r1, [sp, #0x278]                
81356294  ldr      r0, [r7]                        
81356296  cmp      r0, r1                          
81356298  bne      #0x813562a4                     
8135629a  add.w    sp, sp, #0x27c                  
8135629e  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27}
813562a2  pop      {r4, r5, r6, r7, pc}            
813562a4  blx      #0x813e1118                       ; -> __stack_chk_fail
813562a8  nop                                      
813562aa  push     {r4, lr}                        
813562ac  movw     r0, #0xf68c                     
813562b0  movt     r0, #0x8151                       ; = 0x8151f68c
813562b4  ldr      r0, [r0]                        
813562b6  ands     r0, r0, #1                      
813562ba  bne      #0x813562fc                     
813562bc  movw     r0, #0xf68c                     
813562c0  movt     r0, #0x8151                       ; = 0x8151f68c
813562c4  blx      #0x813e0c78                       ; -> __cxa_guard_acquire
813562c8  cmp      r0, #0                          
813562ca  beq      #0x813562fc                     
813562cc  movw     r4, #0xf680                     
813562d0  movt     r4, #0x8151                       ; = 0x8151f680
813562d4  adds     r0, r4, #0                      
813562d6  bl       #0x813bf6b4                       ; -> sub_813bf6b4
813562da  movw     r1, #0xf3b5                     
813562de  movw     r2, #0xf6b0                     
813562e2  adds     r0, r4, #0                      
813562e4  movt     r1, #0x813b                       ; = 0x813bf3b5
813562e8  movt     r2, #0x8151                       ; = 0x8151f6b0
813562ec  blx      #0x813e0d28                       ; -> __aeabi_atexit
813562f0  movw     r0, #0xf68c                     
813562f4  movt     r0, #0x8151                       ; = 0x8151f68c
813562f8  blx      #0x813e0a58                       ; -> __cxa_guard_release
813562fc  movw     r0, #0xf690                     
81356300  movt     r0, #0x8151                       ; = 0x8151f690
81356304  ldr      r0, [r0]                        
81356306  ands     r0, r0, #1                      
8135630a  bne      #0x8135634c                     
8135630c  movw     r0, #0xf690                     
81356310  movt     r0, #0x8151                       ; = 0x8151f690
81356314  blx      #0x813e0c78                       ; -> __cxa_guard_acquire
81356318  cmp      r0, #0                          
8135631a  beq      #0x8135634c                     
8135631c  movw     r4, #0xf684                     
81356320  movt     r4, #0x8151                       ; = 0x8151f684
81356324  adds     r0, r4, #0                      
81356326  bl       #0x813bf6f0                       ; -> sub_813bf6f0
8135632a  movw     r1, #0xf3b5                     
8135632e  movw     r2, #0xf6b0                     
81356332  adds     r0, r4, #0                      
81356334  movt     r1, #0x813b                       ; = 0x813bf3b5
81356338  movt     r2, #0x8151                       ; = 0x8151f6b0
8135633c  blx      #0x813e0d28                       ; -> __aeabi_atexit
81356340  movw     r0, #0xf690                     
81356344  movt     r0, #0x8151                       ; = 0x8151f690
81356348  blx      #0x813e0a58                       ; -> __cxa_guard_release
8135634c  movw     r0, #0xf694                     
81356350  movt     r0, #0x8151                       ; = 0x8151f694
81356354  ldr      r0, [r0]                        
81356356  ands     r0, r0, #1                      
8135635a  bne      #0x8135639c                     
8135635c  movw     r0, #0xf694                     
81356360  movt     r0, #0x8151                       ; = 0x8151f694
81356364  blx      #0x813e0c78                       ; -> __cxa_guard_acquire
81356368  cmp      r0, #0                          
8135636a  beq      #0x8135639c                     
8135636c  movw     r4, #0xf688                     
81356370  movt     r4, #0x8151                       ; = 0x8151f688
81356374  adds     r0, r4, #0                      
81356376  bl       #0x813bf740                       ; -> sub_813bf740
8135637a  movw     r1, #0xf3b5                     
8135637e  movw     r2, #0xf6b0                     
81356382  adds     r0, r4, #0                      
81356384  movt     r1, #0x813b                       ; = 0x813bf3b5
81356388  movt     r2, #0x8151                       ; = 0x8151f6b0
8135638c  blx      #0x813e0d28                       ; -> __aeabi_atexit
81356390  movw     r0, #0xf694                     
81356394  movt     r0, #0x8151                       ; = 0x8151f694
81356398  blx      #0x813e0a58                       ; -> __cxa_guard_release
8135639c  pop      {r4, pc}                        
8135639e  nop                                      
813563a0  push     {r4, lr}                        
813563a2  movw     r0, #0xf68c                     
813563a6  movt     r0, #0x8151                       ; = 0x8151f68c
813563aa  ldr      r0, [r0]                        
813563ac  ands     r0, r0, #1                      
813563b0  bne      #0x813563f2                     
813563b2  movw     r0, #0xf68c                     
813563b6  movt     r0, #0x8151                       ; = 0x8151f68c
813563ba  blx      #0x813e0c78                       ; -> __cxa_guard_acquire
813563be  cmp      r0, #0                          
813563c0  beq      #0x813563f2                     
813563c2  movw     r4, #0xf680                     
813563c6  movt     r4, #0x8151                       ; = 0x8151f680
813563ca  adds     r0, r4, #0                      
813563cc  bl       #0x813bf6b4                       ; -> sub_813bf6b4
813563d0  movw     r1, #0xf3b5                     
813563d4  movw     r2, #0xf6b0                     
813563d8  adds     r0, r4, #0                      
813563da  movt     r1, #0x813b                       ; = 0x813bf3b5
813563de  movt     r2, #0x8151                       ; = 0x8151f6b0
813563e2  blx      #0x813e0d28                       ; -> __aeabi_atexit
813563e6  movw     r0, #0xf68c                     
813563ea  movt     r0, #0x8151                       ; = 0x8151f68c
813563ee  blx      #0x813e0a58                       ; -> __cxa_guard_release
813563f2  movw     r0, #0xf690                     
813563f6  movt     r0, #0x8151                       ; = 0x8151f690
813563fa  ldr      r0, [r0]                        
813563fc  ands     r0, r0, #1                      
81356400  bne      #0x81356442                     
81356402  movw     r0, #0xf690                     
81356406  movt     r0, #0x8151                       ; = 0x8151f690
8135640a  blx      #0x813e0c78                       ; -> __cxa_guard_acquire
8135640e  cmp      r0, #0                          
81356410  beq      #0x81356442                     
81356412  movw     r4, #0xf684                     
81356416  movt     r4, #0x8151                       ; = 0x8151f684
8135641a  adds     r0, r4, #0                      
8135641c  bl       #0x813bf6f0                       ; -> sub_813bf6f0
81356420  movw     r1, #0xf3b5                     
81356424  movw     r2, #0xf6b0                     
81356428  adds     r0, r4, #0                      
8135642a  movt     r1, #0x813b                       ; = 0x813bf3b5
8135642e  movt     r2, #0x8151                       ; = 0x8151f6b0
81356432  blx      #0x813e0d28                       ; -> __aeabi_atexit
81356436  movw     r0, #0xf690                     
8135643a  movt     r0, #0x8151                       ; = 0x8151f690
8135643e  blx      #0x813e0a58                       ; -> __cxa_guard_release
81356442  movw     r0, #0xf694                     
81356446  movt     r0, #0x8151                       ; = 0x8151f694
8135644a  ldr      r0, [r0]                        
8135644c  ands     r0, r0, #1                      
81356450  bne      #0x81356492                     
81356452  movw     r0, #0xf694                     
81356456  movt     r0, #0x8151                       ; = 0x8151f694
8135645a  blx      #0x813e0c78                       ; -> __cxa_guard_acquire
8135645e  cmp      r0, #0                          
81356460  beq      #0x81356492                     
81356462  movw     r4, #0xf688                     
81356466  movt     r4, #0x8151                       ; = 0x8151f688
8135646a  adds     r0, r4, #0                      
8135646c  bl       #0x813bf740                       ; -> sub_813bf740
81356470  movw     r1, #0xf3b5                     
81356474  movw     r2, #0xf6b0                     
81356478  adds     r0, r4, #0                      
8135647a  movt     r1, #0x813b                       ; = 0x813bf3b5
8135647e  movt     r2, #0x8151                       ; = 0x8151f6b0
81356482  blx      #0x813e0d28                       ; -> __aeabi_atexit
81356486  movw     r0, #0xf694                     
8135648a  movt     r0, #0x8151                       ; = 0x8151f694
8135648e  blx      #0x813e0a58                       ; -> __cxa_guard_release
81356492  pop      {r4, pc}                        
