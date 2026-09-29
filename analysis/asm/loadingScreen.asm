; ==== loadingScreen$$.ctor  @ 0x81000358 .. 0x81000364
81000358  push     {r4, lr}                        
8100035a  movs     r1, #0                          
8100035c  bl       #0x812dc960                       ; -> UnityEngine.Camera$$.ctor
81000360  pop      {r4, pc}                        
81000362  pop      {r4, pc}                        

; ==== loadingScreen$$Start  @ 0x813550be .. 0x8135513e
813550be  push     {r4, r5, r6, lr}                
813550c0  movw     r1, #0x34e9                     
813550c4  movt     r1, #0x8151                       ; = 0x815134e9
813550c8  ldrb     r1, [r1]                        
813550ca  adds     r4, r0, #0                      
813550cc  cbnz     r1, #0x813550e8                 
813550ce  movw     r0, #0x3778                     
813550d2  movt     r0, #0x814c                       ; = 0x814c3778
813550d6  ldr      r0, [r0]                        
813550d8  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813550dc  movw     r0, #0x34e9                     
813550e0  movt     r0, #0x8151                       ; = 0x815134e9
813550e4  movs     r1, #1                          
813550e6  strb     r1, [r0]                        
813550e8  movw     r0, #0x34e8                     
813550ec  movt     r0, #0x8151                       ; = 0x815134e8
813550f0  ldrb     r0, [r0]                        
813550f2  movw     r1, #0x855c                     
813550f6  movt     r1, #0x8151                       ; str "1"
813550fa  ldr      r5, [r1]                        
813550fc  cbnz     r0, #0x81355118                 
813550fe  movw     r0, #0x3774                     
81355102  movt     r0, #0x814c                       ; = 0x814c3774
81355106  ldr      r0, [r0]                        
81355108  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8135510c  movw     r0, #0x34e8                     
81355110  movt     r0, #0x8151                       ; = 0x815134e8
81355114  movs     r1, #1                          
81355116  strb     r1, [r0]                        
81355118  movw     r0, #0x4bcc                     
8135511c  movt     r0, #0x8151                       ; loadingScreen.<LoadingSceneRealProgress>c__Iterator0_TypeInfo
81355120  ldr      r0, [r0]                        
81355122  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81355126  adds     r6, r0, #0                      
81355128  movs     r1, #0                          
8135512a  bl       #0x81000d00                       ; -> System.Object$$.ctor
8135512e  str      r5, [r6, #8]                    
81355130  adds     r0, r4, #0                      
81355132  str      r4, [r6, #0x10]                 
81355134  adds     r1, r6, #0                      
81355136  movs     r2, #0                          
81355138  bl       #0x812eda9c                       ; -> UnityEngine.MonoBehaviour$$StartCoroutine
8135513c  pop      {r4, r5, r6, pc}                

; ==== loadingScreen$$LoadingSceneRealProgress  @ 0x81355074 .. 0x813550be
81355074  push     {r4, r5, r6, lr}                
81355076  movw     r2, #0x34e8                     
8135507a  movt     r2, #0x8151                       ; = 0x815134e8
8135507e  ldrb     r2, [r2]                        
81355080  adds     r4, r1, #0                      
81355082  adds     r5, r0, #0                      
81355084  cbnz     r2, #0x813550a0                 
81355086  movw     r0, #0x3774                     
8135508a  movt     r0, #0x814c                       ; = 0x814c3774
8135508e  ldr      r0, [r0]                        
81355090  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
81355094  movw     r0, #0x34e8                     
81355098  movt     r0, #0x8151                       ; = 0x815134e8
8135509c  movs     r1, #1                          
8135509e  strb     r1, [r0]                        
813550a0  movw     r0, #0x4bcc                     
813550a4  movt     r0, #0x8151                       ; loadingScreen.<LoadingSceneRealProgress>c__Iterator0_TypeInfo
813550a8  ldr      r0, [r0]                        
813550aa  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
813550ae  adds     r6, r0, #0                      
813550b0  movs     r1, #0                          
813550b2  bl       #0x81000d00                       ; -> System.Object$$.ctor
813550b6  str      r4, [r6, #8]                    
813550b8  adds     r0, r6, #0                      
813550ba  str      r5, [r6, #0x10]                 
813550bc  pop      {r4, r5, r6, pc}                

; ==== loadingScreen.<LoadingSceneRealProgress>c__Iterator0$$.ctor  @ 0x81000000 .. 0x8100000a
81000000  push     {r4, lr}                        
81000002  movs     r1, #0                          
81000004  bl       #0x81000d00                       ; -> System.Object$$.ctor
81000008  pop      {r4, pc}                        

; ==== loadingScreen.<LoadingSceneRealProgress>c__Iterator0$$MoveNext  @ 0x8135513e .. 0x8135538c
8135513e  push     {r4, r5, r6, r7, lr}            
81355140  vpush    {s16, s17}                      
81355144  sub      sp, #0x14                       
81355146  movw     r7, #0x2514                     
8135514a  movt     r7, #0x813e                       ; = 0x813e2514
8135514e  ldr      r1, [r7]                        
81355150  str      r1, [sp, #0x10]                 
81355152  movw     r1, #0x34ea                     
81355156  movt     r1, #0x8151                       ; = 0x815134ea
8135515a  ldrb     r1, [r1]                        
8135515c  adds     r6, r0, #0                      
8135515e  cbnz     r1, #0x8135517a                 
81355160  movw     r0, #0x2c18                     
81355164  movt     r0, #0x814c                       ; = 0x814c2c18
81355168  ldr      r0, [r0]                        
8135516a  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
8135516e  movw     r0, #0x34ea                     
81355172  movt     r0, #0x8151                       ; = 0x815134ea
81355176  movs     r1, #1                          
81355178  strb     r1, [r0]                        
8135517a  movs.w   r0, #-1                         
8135517e  ldr      r1, [r6, #0x1c]                   ; this._PC
81355180  cmp      r1, #1                          
81355182  str      r0, [r6, #0x1c]                   ; this._PC
81355184  bhi      #0x813551be                     
81355186  cmp      r1, #0                          
81355188  bne.w    #0x81355356                     
8135518c  movw     r0, #0x4bc8                     
81355190  movt     r0, #0x8151                       ; UnityEngine.WaitForSeconds_TypeInfo
81355194  ldr      r0, [r0]                        
81355196  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
8135519a  adds     r4, r0, #0                      
8135519c  movw     r0, #0xcccd                     
813551a0  movt     r0, #0x3e4c                       ; = 0x3e4ccccd
813551a4  vmov     s0, r0                          
813551a8  adds     r0, r4, #0                      
813551aa  movs     r1, #0                          
813551ac  bl       #0x813a5648                       ; -> UnityEngine.WaitForSeconds$$.ctor
813551b0  ldrb     r0, [r6, #0x18]                   ; this._disposing
813551b2  str      r4, [r6, #0x14]                   ; this._current
813551b4  cbnz     r0, #0x813551ba                 
813551b6  movs     r0, #1                          
813551b8  str      r0, [r6, #0x1c]                   ; this._PC
813551ba  movs     r0, #1                          
813551bc  b        #0x81355376                     
813551be  cmp      r1, #2                          
813551c0  bls      #0x813551dc                     
813551c2  cmp      r1, #3                          
813551c4  bhi      #0x813551d8                     
813551c6  ldr      r0, [r6, #0x10]                   ; this._this
813551c8  movs     r1, #1                          
813551ca  ldr      r0, [r0, #0xc]                  
813551cc  movs     r2, #0                          
813551ce  bl       #0x812dab7e                       ; -> UnityEngine.AsyncOperation$$set_allowSceneActivation
813551d2  movs.w   r0, #-1                         
813551d6  str      r0, [r6, #0x1c]                   ; this._PC
813551d8  movs     r0, #0                          
813551da  b        #0x81355376                     
813551dc  ldrb     r0, [r6, #0xc]                    ; this._loaded___0
813551de  cmp      r0, #0                          
813551e0  bne      #0x813552bc                     
813551e2  movw     r0, #0x3878                     
813551e6  ldr      r1, [r6, #0x10]                   ; this._this
813551e8  movt     r0, #0x8151                       ; string_TypeInfo
813551ec  ldr      r5, [r0]                        
813551ee  adds     r0, r1, #0                      
813551f0  ldr      r4, [r0, #0x10]                 
813551f2  ldrsb.w  r1, [r5, #0xc2]                 
813551f6  ands     r1, r1, #1                      
813551fa  beq      #0x81355212                     
813551fc  ldr      r1, [r5, #0x70]                 
813551fe  cbnz     r1, #0x81355212                 
81355200  adds     r0, r5, #0                      
81355202  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
81355206  ldr      r0, [r6, #0x10]                   ; this._this
81355208  movw     r1, #0x3878                     
8135520c  movt     r1, #0x8151                       ; string_TypeInfo
81355210  ldr      r5, [r1]                        
81355212  ldr      r5, [r5, #0x5c]                 
81355214  movs     r1, #0                          
81355216  ldr      r0, [r0, #0xc]                  
81355218  ldr      r5, [r5]                        
8135521a  bl       #0x812dab3a                       ; -> UnityEngine.AsyncOperation$$get_progress
8135521e  movw     r0, #0x4618                     
81355222  vmov.f32 s16, s0                         
81355226  movt     r0, #0x8151                       ; UnityEngine.Mathf_TypeInfo
8135522a  ldr      r0, [r0]                        
8135522c  ldrsb.w  r1, [r0, #0xc2]                 
81355230  ands     r1, r1, #1                      
81355234  beq      #0x8135523e                     
81355236  ldr      r1, [r0, #0x70]                 
81355238  cbnz     r1, #0x8135523e                 
8135523a  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
8135523e  movs     r0, #0                          
81355240  movt     r0, #0x42c8                     
81355244  vmov     s0, r0                          
81355248  movs     r0, #0                          
8135524a  movs     r1, #0                          
8135524c  vmul.f32 s0, s16, s0                     
81355250  bl       #0x812e9d52                       ; -> UnityEngine.Mathf$$RoundToInt
81355254  str      r0, [sp, #8]                    
81355256  movw     r0, #0x38b4                     
8135525a  movt     r0, #0x8151                       ; int_TypeInfo
8135525e  ldr      r0, [r0]                        
81355260  add      r1, sp, #8                      
81355262  bl       #0x812ab562                       ; -> il2cpp_codegen_box
81355266  adds     r2, r0, #0                      
81355268  movw     r0, #0x90f4                     
8135526c  movs     r1, #0                          
8135526e  str      r1, [sp]                        
81355270  movt     r0, #0x8151                       ; str "%"
81355274  ldr      r3, [r0]                        
81355276  adds     r1, r5, #0                      
81355278  movs     r0, #0                          
8135527a  bl       #0x8118ea4e                       ; -> System.String$$Concat
8135527e  adds     r1, r0, #0                      
81355280  adds     r0, r4, #0                      
81355282  movs     r2, #0                          
81355284  bl       #0x813ae3f4                       ; -> UnityEngine.TextMesh$$set_text
81355288  ldr      r0, [r6, #0x10]                   ; this._this
8135528a  movs     r1, #0                          
8135528c  ldr      r0, [r0, #0xc]                  
8135528e  bl       #0x812dab3a                       ; -> UnityEngine.AsyncOperation$$get_progress
81355292  movw     r0, #0x6666                     
81355296  movt     r0, #0x3f66                       ; = 0x3f666666
8135529a  vmov     s1, r0                          
8135529e  ldrb     r4, [r6, #0x18]                   ; this._disposing
813552a0  vcmp.f32 s0, s1                          
813552a4  vmrs     apsr_nzcv, fpscr                
813552a8  bne      #0x813552ae                     
813552aa  movs     r0, #1                          
813552ac  strb     r0, [r6, #0xc]                    ; this._loaded___0
813552ae  movs     r0, #0                          
813552b0  str      r0, [r6, #0x14]                   ; this._current
813552b2  cmp      r4, #0                          
813552b4  bne      #0x813551ba                     
813552b6  movs     r0, #2                          
813552b8  str      r0, [r6, #0x1c]                   ; this._PC
813552ba  b        #0x813551ba                     
813552bc  movw     r0, #0x3878                     
813552c0  ldr      r4, [r6, #0x10]                   ; this._this
813552c2  movt     r0, #0x8151                       ; string_TypeInfo
813552c6  ldr      r1, [r0]                        
813552c8  ldr      r4, [r4, #0x10]                 
813552ca  ldrsb.w  r0, [r1, #0xc2]                 
813552ce  ands     r0, r0, #1                      
813552d2  beq      #0x813552e8                     
813552d4  ldr      r0, [r1, #0x70]                 
813552d6  cbnz     r0, #0x813552e8                 
813552d8  adds     r0, r1, #0                      
813552da  bl       #0x8128c344                       ; -> il2cpp_runtime_class_init
813552de  movw     r0, #0x3878                     
813552e2  movt     r0, #0x8151                       ; string_TypeInfo
813552e6  ldr      r1, [r0]                        
813552e8  ldr      r1, [r1, #0x5c]                 
813552ea  movs     r0, #0x64                       
813552ec  ldr      r5, [r1]                        
813552ee  add      r1, sp, #0xc                    
813552f0  str      r0, [sp, #0xc]                  
813552f2  movw     r0, #0x38b4                     
813552f6  movt     r0, #0x8151                       ; int_TypeInfo
813552fa  ldr      r0, [r0]                        
813552fc  bl       #0x812ab562                       ; -> il2cpp_codegen_box
81355300  adds     r2, r0, #0                      
81355302  movw     r0, #0x90f4                     
81355306  movt     r0, #0x8151                       ; str "%"
8135530a  ldr      r3, [r0]                        
8135530c  movs     r0, #0                          
8135530e  str      r0, [sp]                        
81355310  adds     r1, r5, #0                      
81355312  movs     r0, #0                          
81355314  bl       #0x8118ea4e                       ; -> System.String$$Concat
81355318  adds     r1, r0, #0                      
8135531a  adds     r0, r4, #0                      
8135531c  movs     r2, #0                          
8135531e  bl       #0x813ae3f4                       ; -> UnityEngine.TextMesh$$set_text
81355322  movw     r0, #0x4bc8                     
81355326  movt     r0, #0x8151                       ; UnityEngine.WaitForSeconds_TypeInfo
8135532a  ldr      r0, [r0]                        
8135532c  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
81355330  adds     r4, r0, #0                      
81355332  movw     r0, #0xcccd                     
81355336  movt     r0, #0x3e4c                       ; = 0x3e4ccccd
8135533a  vmov     s0, r0                          
8135533e  adds     r0, r4, #0                      
81355340  movs     r1, #0                          
81355342  bl       #0x813a5648                       ; -> UnityEngine.WaitForSeconds$$.ctor
81355346  ldrb     r0, [r6, #0x18]                   ; this._disposing
81355348  cmp      r0, #0                          
8135534a  str      r4, [r6, #0x14]                   ; this._current
8135534c  bne.w    #0x813551ba                     
81355350  movs     r0, #3                          
81355352  str      r0, [r6, #0x1c]                   ; this._PC
81355354  b        #0x813551ba                     
81355356  ldr      r1, [r6, #8]                      ; this.sceneName
81355358  movs     r0, #0                          
8135535a  ldr      r4, [r6, #0x10]                   ; this._this
8135535c  movs     r2, #0                          
8135535e  bl       #0x8139a012                       ; -> UnityEngine.SceneManagement.SceneManager$$LoadSceneAsync
81355362  str      r0, [r4, #0xc]                  
81355364  movs     r1, #0                          
81355366  ldr      r0, [r6, #0x10]                   ; this._this
81355368  movs     r2, #0                          
8135536a  ldr      r0, [r0, #0xc]                  
8135536c  bl       #0x812dab7e                       ; -> UnityEngine.AsyncOperation$$set_allowSceneActivation
81355370  movs     r0, #0                          
81355372  strb     r0, [r6, #0xc]                    ; this._loaded___0
81355374  b        #0x813551dc                     
81355376  ldr      r2, [sp, #0x10]                 
81355378  ldr      r1, [r7]                        
8135537a  cmp      r1, r2                          
8135537c  bne      #0x81355386                     
8135537e  add      sp, #0x14                       
81355380  vpop     {s16, s17}                      
81355384  pop      {r4, r5, r6, r7, pc}            
81355386  blx      #0x813e1118                       ; -> __stack_chk_fail
8135538a  nop                                      

; ==== loadingScreen.<LoadingSceneRealProgress>c__Iterator0$$System.Collections.Generic.IEnumerator<object>.get_Current  @ 0x81000be0 .. 0x81000be4
81000be0  ldr      r0, [r0, #0x14]                   ; this._current
81000be2  bx       lr                              

; ==== loadingScreen.<LoadingSceneRealProgress>c__Iterator0$$System.Collections.IEnumerator.get_Current  @ 0x81000be0 .. 0x81000be4
81000be0  ldr      r0, [r0, #0x14]                   ; this._current
81000be2  bx       lr                              

; ==== loadingScreen.<LoadingSceneRealProgress>c__Iterator0$$Dispose  @ 0x8135538c .. 0x81355398
8135538c  movs     r1, #1                          
8135538e  strb     r1, [r0, #0x18]                   ; this._disposing
81355390  movs.w   r1, #-1                         
81355394  str      r1, [r0, #0x1c]                   ; this._PC
81355396  bx       lr                              

; ==== loadingScreen.<LoadingSceneRealProgress>c__Iterator0$$Reset  @ 0x81355398 .. 0x813553ee
81355398  push     {r4, lr}                        
8135539a  movw     r0, #0x34eb                     
8135539e  movt     r0, #0x8151                       ; = 0x815134eb
813553a2  ldrb     r0, [r0]                        
813553a4  cbnz     r0, #0x813553c0                 
813553a6  movw     r0, #0x2c1c                     
813553aa  movt     r0, #0x814c                       ; = 0x814c2c1c
813553ae  ldr      r0, [r0]                        
813553b0  bl       #0x812845d4                       ; -> il2cpp_codegen_initialize_method
813553b4  movw     r0, #0x34eb                     
813553b8  movt     r0, #0x8151                       ; = 0x815134eb
813553bc  movs     r1, #1                          
813553be  strb     r1, [r0]                        
813553c0  movw     r0, #0x3928                     
813553c4  movt     r0, #0x8151                       ; System.NotSupportedException_TypeInfo
813553c8  ldr      r0, [r0]                        
813553ca  bl       #0x812ab462                       ; -> il2cpp_codegen_object_new
813553ce  adds     r4, r0, #0                      
813553d0  movs     r1, #0                          
813553d2  bl       #0x81136302                       ; -> System.NotSupportedException$$.ctor
813553d6  movw     r0, #0x8028                     
813553da  movt     r0, #0x8151                       ; Method$loadingScreen.<LoadingSceneRealProgress>c__Iterator0.Reset()
813553de  ldr      r2, [r0]                        
813553e0  adds     r0, r4, #0                      
813553e2  movs     r1, #0                          
813553e4  bl       #0x8129f0aa                       ; -> il2cpp_throw_NotSupportedException(iterator Reset)
813553e8  bl       #0x81000d00                       ; -> System.Object$$.ctor
813553ec  pop      {r4, pc}                        
