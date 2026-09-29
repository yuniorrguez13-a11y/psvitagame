; ==== collisionSC$$.ctor  @ 0x8134dea6 .. 0x8134debe
8134dea6  push     {r4, lr}                        
8134dea8  movs     r1, #0                          
8134deaa  movt     r1, #0x4120                     
8134deae  str      r1, [r0, #0x14]                   ; this.maxGravity
8134deb0  adds     r3, r0, #0                      
8134deb2  str      r1, [r0, #0x10]                   ; this.gravity
8134deb4  adds     r2, r0, #0                      
8134deb6  movs     r1, #0                          
8134deb8  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
8134debc  pop      {r4, pc}                        

; ==== collisionSC$$Start  @ 0x8134debe .. 0x8134df06
8134debe  push     {r4, lr}                        
8134dec0  movw     r1, #0x34c7                     
8134dec4  movt     r1, #0x8151                       ; = 0x815134c7
8134dec8  ldrb     r1, [r1]                        
8134deca  adds     r4, r0, #0                      
8134decc  cbnz     r1, #0x8134dee8                 
8134dece  movw     r0, #0x3720                     
8134ded2  movt     r0, #0x814c                       ; = 0x814c3720
8134ded6  ldr      r0, [r0]                        
8134ded8  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134dedc  movw     r0, #0x34c7                     
8134dee0  movt     r0, #0x8151                       ; = 0x815134c7
8134dee4  movs     r1, #1                          
8134dee6  strb     r1, [r0]                        
8134dee8  movs     r1, #0                          
8134deea  adds     r0, r4, #0                      
8134deec  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134def0  str      r0, [r4, #0xc]                    ; this.t
8134def2  movw     r0, #0x4c28                     
8134def6  movt     r0, #0x8151                       ; Method$UnityEngine.Component.GetComponent<Collider>()
8134defa  ldr      r1, [r0]                        
8134defc  adds     r0, r4, #0                      
8134defe  bl       #0x8125faae                       ; -> UnityEngine.Component$$GetComponent<ShadowTextureRenderer>
8134df02  str      r0, [r4, #0x1c]                   ; this.myCollider
8134df04  pop      {r4, pc}                        

; ==== collisionSC$$OnTriggerStay  @ 0x8134df06 .. 0x8134e10c
8134df06  push     {r4, r5, r6, r7, lr}            
8134df08  vpush    {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25}
8134df0c  sub      sp, #0x7c                       
8134df0e  movw     r7, #0x2514                     
8134df12  movt     r7, #0x813e                       ; = 0x813e2514
8134df16  ldr      r2, [r7]                        
8134df18  str      r2, [sp, #0x74]                 
8134df1a  movw     r2, #0x34c8                     
8134df1e  movt     r2, #0x8151                       ; = 0x815134c8
8134df22  ldrb     r2, [r2]                        
8134df24  adds     r4, r1, #0                      
8134df26  adds     r5, r0, #0                      
8134df28  cbnz     r2, #0x8134df44                 
8134df2a  movw     r0, #0x371c                     
8134df2e  movt     r0, #0x814c                       ; = 0x814c371c
8134df32  ldr      r0, [r0]                        
8134df34  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134df38  movw     r0, #0x34c8                     
8134df3c  movt     r0, #0x8151                       ; = 0x815134c8
8134df40  movs     r1, #1                          
8134df42  strb     r1, [r0]                        
8134df44  movs     r0, #0                          
8134df46  strd     r0, r0, [sp, #0x68]             
8134df4a  movw     r1, #0x45fc                     
8134df4e  str      r0, [sp, #0x70]                 
8134df50  movt     r1, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134df54  str      r0, [sp, #0x64]                 
8134df56  ldr      r0, [r1]                        
8134df58  ldrsb.w  r1, [r0, #0xc2]                 
8134df5c  ands     r1, r1, #1                      
8134df60  beq      #0x8134df6a                     
8134df62  ldr      r1, [r0, #0x70]                 
8134df64  cbnz     r1, #0x8134df6a                 
8134df66  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134df6a  movs     r0, #0                          
8134df6c  movs     r1, #0                          
8134df6e  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134df72  movs     r0, #0                          
8134df74  str      r0, [sp, #0x64]                 
8134df76  movs     r1, #0                          
8134df78  vstr     s0, [sp, #8]                    
8134df7c  vstr     s2, [sp, #0x10]                 
8134df80  vstr     s1, [sp, #0xc]                  
8134df84  vstr     s0, [sp, #0x68]                 
8134df88  vstr     s1, [sp, #0x6c]                 
8134df8c  vstr     s2, [sp, #0x70]                 
8134df90  ldr      r0, [r5, #0xc]                    ; this.t
8134df92  ldr      r6, [r5, #0x1c]                   ; this.myCollider
8134df94  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134df98  movw     r0, #0x4710                     
8134df9c  movt     r0, #0x8151                       ; UnityEngine.Quaternion_TypeInfo
8134dfa0  vmov.f32 s18, s0                         
8134dfa4  vmov.f32 s16, s2                         
8134dfa8  vmov.f32 s17, s1                         
8134dfac  ldr      r0, [r0]                        
8134dfae  vstr     s18, [sp, #0x14]                
8134dfb2  vstr     s16, [sp, #0x1c]                
8134dfb6  vstr     s17, [sp, #0x18]                
8134dfba  ldrsb.w  r1, [r0, #0xc2]                 
8134dfbe  ands     r1, r1, #1                      
8134dfc2  beq      #0x8134dfcc                     
8134dfc4  ldr      r1, [r0, #0x70]                 
8134dfc6  cbnz     r1, #0x8134dfcc                 
8134dfc8  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134dfcc  movs     r0, #0                          
8134dfce  movs     r1, #0                          
8134dfd0  bl       #0x812f33f8                       ; -> UnityEngine.Quaternion$$get_identity
8134dfd4  adds     r0, r4, #0                      
8134dfd6  vmov.f32 s19, s0                         
8134dfda  vmov.f32 s20, s3                         
8134dfde  vmov.f32 s21, s1                         
8134dfe2  vmov.f32 s22, s2                         
8134dfe6  movs     r1, #0                          
8134dfe8  vstr     s19, [sp, #0x20]                
8134dfec  vstr     s20, [sp, #0x2c]                
8134dff0  vstr     s21, [sp, #0x24]                
8134dff4  vstr     s22, [sp, #0x28]                
8134dff8  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134dffc  movs     r1, #0                          
8134dffe  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134e002  adds     r0, r4, #0                      
8134e004  movs     r1, #0                          
8134e006  vmov.f32 s23, s0                         
8134e00a  vmov.f32 s24, s2                         
8134e00e  vmov.f32 s25, s1                         
8134e012  vstr     s23, [sp, #0x30]                
8134e016  vstr     s24, [sp, #0x38]                
8134e01a  vstr     s25, [sp, #0x34]                
8134e01e  bl       #0x812df28c                       ; -> UnityEngine.Component$$get_transform
8134e022  movs     r1, #0                          
8134e024  bl       #0x813a093a                       ; -> UnityEngine.Transform$$get_rotation
8134e028  adds     r2, r4, #0                      
8134e02a  vmov.f32 s4, s21                         
8134e02e  vmov.f32 s5, s22                         
8134e032  add      r0, sp, #0x64                   
8134e034  vmov.f32 s10, s0                         
8134e038  vmov.f32 s13, s3                         
8134e03c  vmov.f32 s11, s1                         
8134e040  vmov.f32 s12, s2                         
8134e044  movs     r4, #0                          
8134e046  vmov.f32 s0, s18                         
8134e04a  vmov.f32 s1, s17                         
8134e04e  add      r3, sp, #0x68                   
8134e050  vmov.f32 s2, s16                         
8134e054  vstr     s10, [sp, #0x3c]                
8134e058  vstr     s13, [sp, #0x48]                
8134e05c  vstr     s11, [sp, #0x40]                
8134e060  vstr     s12, [sp, #0x44]                
8134e064  strd     r0, r4, [sp]                    
8134e068  adds     r1, r6, #0                      
8134e06a  vmov.f32 s3, s19                         
8134e06e  vmov.f32 s6, s20                         
8134e072  vmov.f32 s7, s23                         
8134e076  vmov.f32 s8, s25                         
8134e07a  vmov.f32 s9, s24                         
8134e07e  movs     r0, #0                          
8134e080  bl       #0x8127116c                       ; -> UnityEngine.Physics$$ComputePenetration
8134e084  vldr     s0, [sp, #0x68]                 
8134e088  vldr     s1, [sp, #0x6c]                 
8134e08c  vldr     s2, [sp, #0x70]                 
8134e090  vldr     s3, [sp, #0x64]                 
8134e094  vldr     s16, [r5, #0x20]                  ; this.dir
8134e098  vldr     s17, [r5, #0x24]                  ; this.dir+4
8134e09c  vldr     s18, [r5, #0x28]                  ; this.dir+8
8134e0a0  movs     r0, #0                          
8134e0a2  movs     r1, #0                          
8134e0a4  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134e0a8  movs     r0, #0                          
8134e0aa  movs     r1, #0                          
8134e0ac  vmov.f32 s3, s0                          
8134e0b0  vmov.f32 s5, s2                          
8134e0b4  vmov.f32 s4, s1                          
8134e0b8  vmov.f32 s0, s16                         
8134e0bc  vmov.f32 s1, s17                         
8134e0c0  vmov.f32 s2, s18                         
8134e0c4  vstr     s3, [sp, #0x4c]                 
8134e0c8  vstr     s5, [sp, #0x54]                 
8134e0cc  vstr     s4, [sp, #0x50]                 
8134e0d0  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134e0d4  vmov.f32 s3, #1.000000e+00               
8134e0d8  vstr     s0, [r5, #0x20]                   ; this.dir
8134e0dc  vstr     s2, [r5, #0x28]                   ; this.dir+8
8134e0e0  vstr     s1, [r5, #0x24]                   ; this.dir+4
8134e0e4  vldr     s0, [sp, #0x6c]                 
8134e0e8  vcmp.f32 s0, s3                          
8134e0ec  vmrs     apsr_nzcv, fpscr                
8134e0f0  bne      #0x8134e0f6                     
8134e0f2  movs     r0, #1                          
8134e0f4  strb     r0, [r5, #0x18]                   ; this.grounded
8134e0f6  ldr      r1, [sp, #0x74]                 
8134e0f8  ldr      r0, [r7]                        
8134e0fa  cmp      r0, r1                          
8134e0fc  bne      #0x8134e106                     
8134e0fe  add      sp, #0x7c                       
8134e100  vpop     {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25}
8134e104  pop      {r4, r5, r6, r7, pc}            
8134e106  blx      #0x813e1118                       ; -> __stack_chk_fail
8134e10a  nop                                      

; ==== collisionSC$$FixedUpdate  @ 0x8134e10c .. 0x8134e284
8134e10c  push     {r4, r5, r6, lr}                
8134e10e  vpush    {s16, s17, s18, s19, s20, s21}  
8134e112  sub      sp, #0x50                       
8134e114  movw     r6, #0x2514                     
8134e118  movt     r6, #0x813e                       ; = 0x813e2514
8134e11c  ldr      r1, [r6]                        
8134e11e  str      r1, [sp, #0x48]                 
8134e120  movw     r1, #0x34c9                     
8134e124  movt     r1, #0x8151                       ; = 0x815134c9
8134e128  ldrb     r1, [r1]                        
8134e12a  adds     r4, r0, #0                      
8134e12c  cbnz     r1, #0x8134e148                 
8134e12e  movw     r0, #0x3718                     
8134e132  movt     r0, #0x814c                       ; = 0x814c3718
8134e136  ldr      r0, [r0]                        
8134e138  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8134e13c  movw     r0, #0x34c9                     
8134e140  movt     r0, #0x8151                       ; = 0x815134c9
8134e144  movs     r1, #1                          
8134e146  strb     r1, [r0]                        
8134e148  ldrb     r0, [r4, #0x18]                   ; this.grounded
8134e14a  cmp      r0, #0                          
8134e14c  bne      #0x8134e1d8                     
8134e14e  movw     r0, #0x45fc                     
8134e152  ldr      r5, [r4, #0xc]                    ; this.t
8134e154  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134e158  ldr      r0, [r0]                        
8134e15a  ldrsb.w  r1, [r0, #0xc2]                 
8134e15e  ands     r1, r1, #1                      
8134e162  beq      #0x8134e16c                     
8134e164  ldr      r1, [r0, #0x70]                 
8134e166  cbnz     r1, #0x8134e16c                 
8134e168  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134e16c  movs     r0, #0                          
8134e16e  movs     r1, #0                          
8134e170  bl       #0x813a4788                       ; -> UnityEngine.Vector3$$get_down
8134e174  movs     r0, #0                          
8134e176  movs     r1, #0                          
8134e178  vstr     s0, [sp]                        
8134e17c  vstr     s2, [sp, #8]                    
8134e180  vstr     s1, [sp, #4]                    
8134e184  vldr     s3, [r4, #0x10]                   ; this.gravity
8134e188  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134e18c  movs     r0, #0                          
8134e18e  movs     r1, #0                          
8134e190  vmov.f32 s16, s0                         
8134e194  vmov.f32 s17, s2                         
8134e198  vmov.f32 s18, s1                         
8134e19c  vstr     s16, [sp, #0xc]                 
8134e1a0  vstr     s17, [sp, #0x14]                
8134e1a4  vstr     s18, [sp, #0x10]                
8134e1a8  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
8134e1ac  vmov.f32 s3, s0                          
8134e1b0  vmov.f32 s0, s16                         
8134e1b4  vmov.f32 s1, s18                         
8134e1b8  vmov.f32 s2, s17                         
8134e1bc  movs     r0, #0                          
8134e1be  movs     r1, #0                          
8134e1c0  bl       #0x813a38f6                       ; -> UnityEngine.Vector3$$op_Multiply
8134e1c4  adds     r0, r5, #0                      
8134e1c6  movs     r1, #0                          
8134e1c8  vstr     s0, [sp, #0x18]                 
8134e1cc  vstr     s2, [sp, #0x20]                 
8134e1d0  vstr     s1, [sp, #0x1c]                 
8134e1d4  bl       #0x813a1d4e                       ; -> UnityEngine.Transform$$Translate
8134e1d8  ldr      r5, [r4, #0xc]                    ; this.t
8134e1da  movs     r1, #0                          
8134e1dc  adds     r0, r5, #0                      
8134e1de  bl       #0x813a064a                       ; -> UnityEngine.Transform$$get_position
8134e1e2  movw     r0, #0x45fc                     
8134e1e6  movt     r0, #0x8151                       ; UnityEngine.Vector3_TypeInfo
8134e1ea  vmov.f32 s21, s0                         
8134e1ee  vmov.f32 s19, s2                         
8134e1f2  vmov.f32 s20, s1                         
8134e1f6  ldr      r0, [r0]                        
8134e1f8  vstr     s21, [sp, #0x24]                
8134e1fc  vstr     s19, [sp, #0x2c]                
8134e200  vstr     s20, [sp, #0x28]                
8134e204  vldr     s18, [r4, #0x20]                  ; this.dir
8134e208  ldrsb.w  r1, [r0, #0xc2]                 
8134e20c  vldr     s17, [r4, #0x24]                  ; this.dir+4
8134e210  ands     r1, r1, #1                      
8134e214  vldr     s16, [r4, #0x28]                  ; this.dir+8
8134e218  beq      #0x8134e222                     
8134e21a  ldr      r1, [r0, #0x70]                 
8134e21c  cbnz     r1, #0x8134e222                 
8134e21e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8134e222  vmov.f32 s0, s21                         
8134e226  vmov.f32 s1, s20                         
8134e22a  vmov.f32 s2, s19                         
8134e22e  vmov.f32 s3, s18                         
8134e232  vmov.f32 s4, s17                         
8134e236  vmov.f32 s5, s16                         
8134e23a  movs     r0, #0                          
8134e23c  movs     r1, #0                          
8134e23e  bl       #0x813a1a10                       ; -> UnityEngine.Vector3$$op_Addition
8134e242  adds     r0, r5, #0                      
8134e244  movs     r1, #0                          
8134e246  vstr     s0, [sp, #0x30]                 
8134e24a  vstr     s2, [sp, #0x38]                 
8134e24e  vstr     s1, [sp, #0x34]                 
8134e252  bl       #0x813a070a                       ; -> UnityEngine.Transform$$set_position
8134e256  movs     r0, #0                          
8134e258  movs     r1, #0                          
8134e25a  bl       #0x8139b142                       ; -> UnityEngine.Vector3$$get_zero
8134e25e  movs     r0, #0                          
8134e260  strb     r0, [r4, #0x18]                   ; this.grounded
8134e262  vstr     s0, [r4, #0x20]                   ; this.dir
8134e266  vstr     s2, [r4, #0x28]                   ; this.dir+8
8134e26a  vstr     s1, [r4, #0x24]                   ; this.dir+4
8134e26e  ldr      r1, [sp, #0x48]                 
8134e270  ldr      r0, [r6]                        
8134e272  cmp      r0, r1                          
8134e274  bne      #0x8134e27e                     
8134e276  add      sp, #0x50                       
8134e278  vpop     {s16, s17, s18, s19, s20, s21}  
8134e27c  pop      {r4, r5, r6, pc}                
8134e27e  blx      #0x813e1118                       ; -> __stack_chk_fail
8134e282  nop                                      
