; ==== eyes$$.ctor  @ 0x81000358 .. 0x81000364
81000358  push     {r4, lr}                        
8100035a  movs     r1, #0                          
8100035c  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
81000360  pop      {r4, pc}                        
81000362  pop      {r4, pc}                        

; ==== eyes$$Update  @ 0x81354ddc .. 0x81355074
81354ddc  push     {r4, r5, lr}                    
81354dde  vpush    {s16, s17, s18, s19, s20, s21}  
81354de2  sub      sp, #0x34                       
81354de4  movw     r5, #0x2514                     
81354de8  movt     r5, #0x813e                       ; = 0x813e2514
81354dec  ldr      r1, [r5]                        
81354dee  str      r1, [sp, #0x30]                 
81354df0  movw     r1, #0x34e7                     
81354df4  movt     r1, #0x8151                       ; = 0x815134e7
81354df8  ldrb     r1, [r1]                        
81354dfa  adds     r4, r0, #0                      
81354dfc  cbnz     r1, #0x81354e18                 
81354dfe  movw     r0, #0x3770                     
81354e02  movt     r0, #0x814c                       ; = 0x814c3770
81354e06  ldr      r0, [r0]                        
81354e08  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81354e0c  movw     r0, #0x34e7                     
81354e10  movt     r0, #0x8151                       ; = 0x815134e7
81354e14  movs     r1, #1                          
81354e16  strb     r1, [r0]                        
81354e18  vldr     s16, [r4, #0x20]                  ; this.randomTime
81354e1c  movs     r0, #0                          
81354e1e  movs     r1, #0                          
81354e20  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81354e24  vsub.f32 s0, s16, s0                     
81354e28  movs     r0, #0                          
81354e2a  vmov     s1, r0                          
81354e2e  vldr     s17, [r4, #0x18]                  ; this.toOffset
81354e32  vldr     s16, [r4, #0x1c]                  ; this.toOffset+4
81354e36  vstr     s0, [r4, #0x20]                   ; this.randomTime
81354e3a  vcmp.f32 s0, s1                          
81354e3e  vmrs     apsr_nzcv, fpscr                
81354e42  bmi      #0x81354e46                     
81354e44  b        #0x81354ebe                     
81354e46  vldr     s0, [r4, #0x28]                   ; this.minTime
81354e4a  vldr     s1, [r4, #0x2c]                   ; this.maxTime
81354e4e  movs     r0, #0                          
81354e50  movs     r1, #0                          
81354e52  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
81354e56  vstr     s0, [r4, #0x20]                   ; this.randomTime
81354e5a  movs     r0, #0                          
81354e5c  movs     r1, #0                          
81354e5e  bl       #0x812f4134                       ; -> UnityEngine.Random$$get_insideUnitCircle
81354e62  movw     r0, #0x4604                     
81354e66  movt     r0, #0x8151                       ; UnityEngine.Vector2_TypeInfo
81354e6a  ldr      r0, [r0]                        
81354e6c  vmov.f32 s18, s0                         
81354e70  vmov.f32 s16, s1                         
81354e74  vstr     s18, [sp]                       
81354e78  vstr     s16, [sp, #4]                   
81354e7c  ldrsb.w  r1, [r0, #0xc2]                 
81354e80  vldr     s17, [r4, #0x30]                  ; this.maxOffset
81354e84  ands     r1, r1, #1                      
81354e88  beq      #0x81354e92                     
81354e8a  ldr      r1, [r0, #0x70]                 
81354e8c  cbnz     r1, #0x81354e92                 
81354e8e  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354e92  vmov.f32 s0, s18                         
81354e96  vmov.f32 s1, s16                         
81354e9a  vmov.f32 s2, s17                         
81354e9e  movs     r0, #0                          
81354ea0  movs     r1, #0                          
81354ea2  bl       #0x813a306a                       ; -> UnityEngine.Vector2$$op_Multiply
81354ea6  vmov.f32 s17, s0                         
81354eaa  vmov.f32 s16, s1                         
81354eae  vstr     s17, [sp, #8]                   
81354eb2  vstr     s16, [sp, #0xc]                 
81354eb6  vstr     s17, [r4, #0x18]                  ; this.toOffset
81354eba  vstr     s16, [r4, #0x1c]                  ; this.toOffset+4
81354ebe  vldr     s21, [r4, #0x10]                  ; this.offset
81354ec2  vldr     s20, [r4, #0x14]                  ; this.offset+4
81354ec6  movs     r0, #0                          
81354ec8  vldr     s18, [r4, #0x24]                  ; this.speed
81354ecc  movs     r1, #0                          
81354ece  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81354ed2  movw     r0, #0x4604                     
81354ed6  vmov.f32 s19, s0                         
81354eda  movt     r0, #0x8151                       ; UnityEngine.Vector2_TypeInfo
81354ede  ldr      r0, [r0]                        
81354ee0  ldrsb.w  r1, [r0, #0xc2]                 
81354ee4  ands     r1, r1, #1                      
81354ee8  beq      #0x81354ef2                     
81354eea  ldr      r1, [r0, #0x70]                 
81354eec  cbnz     r1, #0x81354ef2                 
81354eee  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354ef2  vmul.f32 s4, s18, s19                    
81354ef6  vmov.f32 s0, s21                         
81354efa  vmov.f32 s1, s20                         
81354efe  vmov.f32 s2, s17                         
81354f02  vmov.f32 s3, s16                         
81354f06  movs     r0, #0                          
81354f08  movs     r1, #0                          
81354f0a  bl       #0x813a308a                       ; -> UnityEngine.Vector2$$MoveTowards
81354f0e  movs     r0, #0                          
81354f10  movs     r1, #0                          
81354f12  vstr     s0, [sp, #0x10]                 
81354f16  vstr     s1, [sp, #0x14]                 
81354f1a  vldr     s16, [r4, #0x3c]                  ; this.randomTimeAdd
81354f1e  vstr     s0, [r4, #0x10]                   ; this.offset
81354f22  vstr     s1, [r4, #0x14]                   ; this.offset+4
81354f26  bl       #0x813a028e                       ; -> UnityEngine.Time$$get_deltaTime
81354f2a  movs     r0, #0                          
81354f2c  vsub.f32 s0, s16, s0                     
81354f30  vmov     s1, r0                          
81354f34  vldr     s19, [r4, #0x10]                  ; this.offset
81354f38  movw     r0, #0x4604                     
81354f3c  vldr     s18, [r4, #0x14]                  ; this.offset+4
81354f40  vldr     s16, [r4, #0x18]                  ; this.toOffset
81354f44  movt     r0, #0x8151                       ; UnityEngine.Vector2_TypeInfo
81354f48  vldr     s17, [r4, #0x1c]                  ; this.toOffset+4
81354f4c  vstr     s0, [r4, #0x3c]                   ; this.randomTimeAdd
81354f50  vcmp.f32 s0, s1                          
81354f54  ldr      r0, [r0]                        
81354f56  vmrs     apsr_nzcv, fpscr                
81354f5a  bmi      #0x81354f5e                     
81354f5c  b        #0x81354ffc                     
81354f5e  ldrsb.w  r1, [r0, #0xc2]                 
81354f62  ands     r1, r1, #1                      
81354f66  beq      #0x81354f70                     
81354f68  ldr      r1, [r0, #0x70]                 
81354f6a  cbnz     r1, #0x81354f70                 
81354f6c  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354f70  movs     r0, #0                          
81354f72  vmov.f32 s0, s19                         
81354f76  vmov.f32 s1, s18                         
81354f7a  vmov.f32 s2, s16                         
81354f7e  vmov.f32 s3, s17                         
81354f82  movs     r1, #0                          
81354f84  bl       #0x813a3502                       ; -> UnityEngine.Vector2$$op_Equality
81354f88  cmp      r0, #0                          
81354f8a  beq      #0x81354ffc                     
81354f8c  vldr     s0, [r4, #0x40]                   ; this.minTimeAdd
81354f90  vldr     s1, [r4, #0x44]                   ; this.maxTimeAdd
81354f94  movs     r0, #0                          
81354f96  movs     r1, #0                          
81354f98  bl       #0x812f3f98                       ; -> UnityEngine.Random$$Range
81354f9c  vstr     s0, [r4, #0x3c]                   ; this.randomTimeAdd
81354fa0  movs     r0, #0                          
81354fa2  movs     r1, #0                          
81354fa4  bl       #0x812f4134                       ; -> UnityEngine.Random$$get_insideUnitCircle
81354fa8  movw     r0, #0x4604                     
81354fac  movt     r0, #0x8151                       ; UnityEngine.Vector2_TypeInfo
81354fb0  ldr      r0, [r0]                        
81354fb2  vmov.f32 s18, s0                         
81354fb6  vmov.f32 s17, s1                         
81354fba  vstr     s18, [sp, #0x18]                
81354fbe  vstr     s17, [sp, #0x1c]                
81354fc2  ldrsb.w  r1, [r0, #0xc2]                 
81354fc6  vldr     s16, [r4, #0x48]                  ; this.maxOffsetAdd
81354fca  ands     r1, r1, #1                      
81354fce  beq      #0x81354fd8                     
81354fd0  ldr      r1, [r0, #0x70]                 
81354fd2  cbnz     r1, #0x81354fd8                 
81354fd4  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81354fd8  vmov.f32 s0, s18                         
81354fdc  vmov.f32 s1, s17                         
81354fe0  vmov.f32 s2, s16                         
81354fe4  movs     r0, #0                          
81354fe6  movs     r1, #0                          
81354fe8  bl       #0x813a306a                       ; -> UnityEngine.Vector2$$op_Multiply
81354fec  vstr     s0, [sp, #0x20]                 
81354ff0  vstr     s1, [sp, #0x24]                 
81354ff4  vstr     s0, [r4, #0x34]                   ; this.toOffsetAdd
81354ff8  vstr     s1, [r4, #0x38]                   ; this.toOffsetAdd+4
81354ffc  movw     r0, #0x4604                     
81355000  movt     r0, #0x8151                       ; UnityEngine.Vector2_TypeInfo
81355004  ldr      r0, [r0]                        
81355006  adds     r1, r4, #0                      
81355008  ldr      r4, [r1, #0xc]                    ; this.eyeMat
8135500a  vldr     s19, [r1, #0x10]                  ; this.offset
8135500e  vldr     s18, [r1, #0x14]                  ; this.offset+4
81355012  ldrsb.w  r2, [r0, #0xc2]                 
81355016  vldr     s17, [r1, #0x34]                  ; this.toOffsetAdd
8135501a  vldr     s16, [r1, #0x38]                  ; this.toOffsetAdd+4
8135501e  ands     r1, r2, #1                      
81355022  beq      #0x8135502c                     
81355024  ldr      r1, [r0, #0x70]                 
81355026  cbnz     r1, #0x8135502c                 
81355028  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135502c  vmov.f32 s0, s19                         
81355030  vmov.f32 s1, s18                         
81355034  vmov.f32 s2, s17                         
81355038  vmov.f32 s3, s16                         
8135503c  movs     r0, #0                          
8135503e  movs     r1, #0                          
81355040  bl       #0x813a3060                       ; -> UnityEngine.Vector2$$op_Addition
81355044  movw     r0, #0xae28                     
81355048  movt     r0, #0x8151                       ; str "_MainTex"
8135504c  ldr      r1, [r0]                        
8135504e  adds     r0, r4, #0                      
81355050  vstr     s0, [sp, #0x28]                 
81355054  vstr     s1, [sp, #0x2c]                 
81355058  movs     r2, #0                          
8135505a  bl       #0x812e989a                       ; -> UnityEngine.Material$$SetTextureOffset
8135505e  ldr      r1, [sp, #0x30]                 
81355060  ldr      r0, [r5]                        
81355062  cmp      r0, r1                          
81355064  bne      #0x8135506e                     
81355066  add      sp, #0x34                       
81355068  vpop     {s16, s17, s18, s19, s20, s21}  
8135506c  pop      {r4, r5, pc}                    
8135506e  blx      #0x813e1118                       ; -> __stack_chk_fail
81355072  nop                                      
