source_filename = "test"
target datalayout = "e-p:32:32:32-f80:32:32"

%anon_struct_30 = type { i32, i32, i32, i32, i32, [8 x i8] }
%anon_struct_29 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%anon_struct_31 = type { i32, i32, i32, i32, i32, [8 x i8], i32, i32 }
%anon_struct_76 = type { i32, i32, i32 }
%anon_struct_107 = type { i32, i32, i32, i32, i32 }
%anon_struct_107.22 = type { i32, i32, i32, i32, i32 }
%anon_struct_104 = type { i32, i32, i32 }
%anon_struct_107.24 = type { i32, i32, i32, i32, i32 }
%anon_struct_108 = type { i32, i32, i32, i32, i32, i32 }
%anon_struct_103 = type { i32, i32, i32, i32 }
%anon_struct_100 = type { i32, i32, i32, i32, i32, i32, i32 }
%anon_struct_99 = type { i32, i32 }
%anon_struct_93 = type { i32, i32, i32, i32 }
%anon_struct_89 = type { i32, i32, i32, i32, i32, i32, i32 }
%anon_struct_107.38 = type { i32, i32, i32, i32, i32 }
%anon_struct_100.42 = type { i32, i32, i32, i32, i32, i32, i32 }

@r0 = internal unnamed_addr global i32 0
@r1 = internal unnamed_addr global i32 0
@r2 = internal unnamed_addr global i32 0
@r3 = internal unnamed_addr global i32 0
@r4 = internal unnamed_addr global i32 0
@r5 = internal unnamed_addr global i32 0
@r6 = internal unnamed_addr global i32 0
@r7 = internal unnamed_addr global i32 0
@0 = external global i32
@global_var_80027cc.86 = constant i32 1151271003
@global_var_80027d0.87 = constant i32 8060950
@nodeid = global i32 10
@1 = internal constant [3 x i8] c"\DCu\00"
@2 = internal constant [2 x i8] c"\14\00"
@3 = internal constant [2 x i8] c"\0C\00"
@global_var_80007d9.263 = constant void (i8)* inttoptr (i32 268435527 to void (i8)*)
@4 = internal constant [2 x i8] c"\F0\00"

declare void @__pseudo_call(i32) local_unnamed_addr

declare void @__pseudo_branch(i32) local_unnamed_addr

define i32 @__aeabi_llsr(i32 %arg1, i32 %arg2, i32 %arg3) local_unnamed_addr {
entry:
  %v5_8000184 = icmp slt i32 %arg3, 32
  br i1 %v5_8000184, label %dec_label_pc_8000190, label %dec_label_pc_8000186

dec_label_pc_8000186:                             ; preds = %entry
  %v1_8000188 = add i32 %arg3, -32
  %v6_800018a = lshr i32 %arg2, %v1_8000188
  ret i32 %v6_800018a

dec_label_pc_8000190:                             ; preds = %entry
  %v6_8000194 = lshr i32 %arg1, %arg3
  %v2_8000198 = sub i32 32, %arg3
  %v6_800019a = shl i32 %arg2, %v2_8000198
  %v2_800019c = or i32 %v6_800019a, %v6_8000194
  ret i32 %v2_800019c

; uselistorder directives
  uselistorder i32 %arg3, { 0, 3, 2, 1 }
  uselistorder i32 %arg2, { 1, 0 }
}

define i32 @__aeabi_memset() local_unnamed_addr {
entry:
  %v0_80001aa1 = load i32, i32* @r1, align 4
  %v2_80001aa3 = icmp eq i32 %v0_80001aa1, 0
  br i1 %v2_80001aa3, label %dec_label_pc_80001ae, label %dec_label_pc_80001a6.preheader

dec_label_pc_80001a6.preheader:                   ; preds = %entry
  call void @llvm.trap()
  unreachable

dec_label_pc_80001ae:                             ; preds = %entry
  ret i32 undef
}

define i32 @__aeabi_memclr(i32 %arg1, i32 %arg2) local_unnamed_addr {
entry:
  store i32 0, i32* @r2, align 4
  %v0_80001b2 = call i32 @__aeabi_memset()
  ret i32 %v0_80001b2
}

define i32 @ADC_Enable(i32 %hadc) local_unnamed_addr {
entry:
  %r4.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  store i32 %hadc, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r5.global-to-local, align 4
  %v1_800024e = inttoptr i32 %hadc to i32*
  %v2_800024e = load i32, i32* %v1_800024e, align 4
  %v1_8000250 = add i32 %v2_800024e, 8
  %v2_8000250 = inttoptr i32 %v1_8000250 to i32*
  %v3_8000250 = load i32, i32* %v2_8000250, align 4
  %v3_8000254 = urem i32 %v3_8000250, 4
  %v7_8000256 = icmp eq i32 %v3_8000254, 1
  br i1 %v7_8000256, label %dec_label_pc_800025a, label %dec_label_pc_800027e

dec_label_pc_800025a:                             ; preds = %entry
  %v2_800025a = load i32, i32* %v1_800024e, align 4
  %v1_800025c = inttoptr i32 %v2_800025a to i32*
  %v2_800025c = load i32, i32* %v1_800025c, align 4
  %v3_8000260 = urem i32 %v2_800025c, 2
  %v4_8000260 = icmp eq i32 %v3_8000260, 0
  br i1 %v4_8000260, label %dec_label_pc_8000266, label %dec_label_pc_800027a.thread

dec_label_pc_8000266:                             ; preds = %dec_label_pc_800025a
  %v2_8000266 = load i32, i32* %v1_800024e, align 4
  %v1_8000268 = add i32 %v2_8000266, 12
  %v2_8000268 = inttoptr i32 %v1_8000268 to i32*
  %v3_8000268 = load i32, i32* %v2_8000268, align 4
  %v2_800026e = and i32 %v3_8000268, 32768
  %v3_8000270 = icmp eq i32 %v2_800026e, 0
  br i1 %v3_8000270, label %dec_label_pc_800027e, label %dec_label_pc_800027a.thread

dec_label_pc_800027a.thread:                      ; preds = %dec_label_pc_8000266, %dec_label_pc_800025a
  br label %dec_label_pc_8000306

dec_label_pc_800027e:                             ; preds = %dec_label_pc_8000266, %entry
  %v2_800027e = load i32, i32* %v1_800024e, align 4
  %v1_8000280 = add i32 %v2_800027e, 8
  %v2_8000280 = inttoptr i32 %v1_8000280 to i32*
  %v3_8000280 = load i32, i32* %v2_8000280, align 4
  %v2_8000284 = and i32 %v3_8000280, -2147483625
  %v4_8000284 = icmp eq i32 %v2_8000284, 0
  %v2_8000290 = icmp eq i1 %v4_8000284, false
  br i1 %v2_8000290, label %dec_label_pc_8000294, label %dec_label_pc_80002a8

dec_label_pc_8000294:                             ; preds = %dec_label_pc_800027e
  %v1_8000294 = add i32 %hadc, 68
  %v2_8000294 = inttoptr i32 %v1_8000294 to i32*
  %v3_8000294 = load i32, i32* %v2_8000294, align 4
  %v2_8000298 = or i32 %v3_8000294, 16
  store i32 %v2_8000298, i32* %v2_8000294, align 4
  %v0_800029c = load i32, i32* %r4.global-to-local, align 4
  %v1_800029c = add i32 %v0_800029c, 72
  %v2_800029c = inttoptr i32 %v1_800029c to i32*
  %v3_800029c = load i32, i32* %v2_800029c, align 4
  %v2_80002a0 = or i32 %v3_800029c, 1
  store i32 %v2_80002a0, i32* %v2_800029c, align 4
  br label %dec_label_pc_80002a6

dec_label_pc_80002a6:                             ; preds = %dec_label_pc_8000306, %dec_label_pc_80002e0, %dec_label_pc_8000294
  %v14_80002a6 = phi i32 [ 0, %dec_label_pc_8000306 ], [ 1, %dec_label_pc_8000294 ], [ 1, %dec_label_pc_80002e0 ]
  ret i32 %v14_80002a6

dec_label_pc_80002a8:                             ; preds = %dec_label_pc_800027e
  %v2_80002a8 = load i32, i32* %v1_800024e, align 4
  %v1_80002aa = add i32 %v2_80002a8, 8
  %v2_80002aa = inttoptr i32 %v1_80002aa to i32*
  %v3_80002aa = load i32, i32* %v2_80002aa, align 4
  %v2_80002ae = or i32 %v3_80002aa, 1
  %v2_80002b2 = add i32 %v2_80002a8, 8
  %v3_80002b2 = inttoptr i32 %v2_80002b2 to i32*
  store i32 %v2_80002ae, i32* %v3_80002b2, align 4
  %v0_80002ce = call i32 @HAL_GetTick()
  store i32 %v0_80002ce, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_80002f4

dec_label_pc_80002d6:                             ; preds = %dec_label_pc_80002f4
  %v0_80002d6 = call i32 @HAL_GetTick()
  %v1_80002da = load i32, i32* %r5.global-to-local, align 4
  %v2_80002da = sub i32 %v0_80002d6, %v1_80002da
  %tmp17 = icmp ult i32 %v2_80002da, 3
  br i1 %tmp17, label %dec_label_pc_80002f4, label %dec_label_pc_80002e0

dec_label_pc_80002e0:                             ; preds = %dec_label_pc_80002d6
  %v0_80002e0 = load i32, i32* %r4.global-to-local, align 4
  %v1_80002e0 = add i32 %v0_80002e0, 68
  %v2_80002e0 = inttoptr i32 %v1_80002e0 to i32*
  %v3_80002e0 = load i32, i32* %v2_80002e0, align 4
  %v2_80002e4 = or i32 %v3_80002e0, 16
  store i32 %v2_80002e4, i32* %v2_80002e0, align 4
  %v0_80002e8 = load i32, i32* %r4.global-to-local, align 4
  %v1_80002e8 = add i32 %v0_80002e8, 72
  %v2_80002e8 = inttoptr i32 %v1_80002e8 to i32*
  %v3_80002e8 = load i32, i32* %v2_80002e8, align 4
  %v2_80002ec = or i32 %v3_80002e8, 1
  store i32 %v2_80002ec, i32* %v2_80002e8, align 4
  br label %dec_label_pc_80002a6

dec_label_pc_80002f4:                             ; preds = %dec_label_pc_80002d6, %dec_label_pc_80002a8
  %v0_80002f4 = load i32, i32* %r4.global-to-local, align 4
  %v1_80002f4 = inttoptr i32 %v0_80002f4 to i32*
  %v2_80002f4 = load i32, i32* %v1_80002f4, align 4
  %v1_80002f6 = inttoptr i32 %v2_80002f4 to i32*
  %v2_80002f6 = load i32, i32* %v1_80002f6, align 4
  %v3_80002fa = urem i32 %v2_80002f6, 2
  %v4_80002fa = icmp eq i32 %v3_80002fa, 0
  br i1 %v4_80002fa, label %dec_label_pc_80002d6, label %dec_label_pc_8000306

dec_label_pc_8000306:                             ; preds = %dec_label_pc_80002f4, %dec_label_pc_800027a.thread
  br label %dec_label_pc_80002a6

; uselistorder directives
  uselistorder i32* %r4.global-to-local, { 2, 0, 1, 3, 4 }
}

define i32 @ADC_Start_DMA(i32 %hadc, i32* %pData, i32 %Length) local_unnamed_addr {
entry:
  %tmp = ptrtoint i32* %pData to i32
  %v6_8000318 = load i32, i32* @r4, align 4
  %v9_8000318 = load i32, i32* @r5, align 4
  %v12_8000318 = load i32, i32* @r6, align 4
  %v15_8000318 = load i32, i32* @r7, align 4
  store i32 %hadc, i32* @r4, align 4
  store i32 %tmp, i32* @r5, align 4
  store i32 %Length, i32* @r6, align 4
  %v1_8000322 = inttoptr i32 %hadc to i32*
  %v2_8000322 = load i32, i32* %v1_8000322, align 4
  %v1_8000324 = add i32 %v2_8000322, 8
  %v2_8000324 = inttoptr i32 %v1_8000324 to i32*
  %v3_8000324 = load i32, i32* %v2_8000324, align 4
  %v2_8000328 = udiv i32 %v3_8000324, 4
  %v3_800032a = urem i32 %v2_8000328, 2
  %v4_800032a = icmp eq i32 %v3_800032a, 0
  br i1 %v4_800032a, label %dec_label_pc_8000330, label %dec_label_pc_80003aa

dec_label_pc_8000330:                             ; preds = %entry
  %v2_8000334 = add i32 %hadc, 64
  %v3_8000334 = inttoptr i32 %v2_8000334 to i8*
  %v4_8000334 = load i8, i8* %v3_8000334, align 1
  %v7_8000336 = icmp eq i8 %v4_8000334, 1
  br i1 %v7_8000336, label %dec_label_pc_800033c, label %dec_label_pc_800033e

dec_label_pc_800033c:                             ; preds = %dec_label_pc_80003aa, %dec_label_pc_8000352, %dec_label_pc_800033e, %dec_label_pc_8000330
  %storemerge = phi i32 [ 2, %dec_label_pc_8000330 ], [ %v2_8000348, %dec_label_pc_800033e ], [ %v0_80003ac.pre, %dec_label_pc_8000352 ], [ 2, %dec_label_pc_80003aa ]
  store i32 %v6_8000318, i32* @r4, align 4
  store i32 %v9_8000318, i32* @r5, align 4
  store i32 %v12_8000318, i32* @r6, align 4
  store i32 %v15_8000318, i32* @r7, align 4
  ret i32 %storemerge

dec_label_pc_800033e:                             ; preds = %dec_label_pc_8000330
  store i8 1, i8* %v3_8000334, align 1
  %v0_8000346 = load i32, i32* @r4, align 4
  %v2_8000348 = call i32 @ADC_Enable(i32 %v0_8000346)
  store i32 %v2_8000348, i32* @r7, align 4
  %v2_800034e = icmp eq i32 %v2_8000348, 0
  br i1 %v2_800034e, label %dec_label_pc_8000352, label %dec_label_pc_800033c

dec_label_pc_8000352:                             ; preds = %dec_label_pc_800033e
  %v0_8000352 = load i32, i32* @r4, align 4
  %v1_8000352 = add i32 %v0_8000352, 68
  %v2_8000352 = inttoptr i32 %v1_8000352 to i32*
  %v3_8000352 = load i32, i32* %v2_8000352, align 4
  %v2_8000356 = and i32 %v3_8000352, -3842
  %v2_800035c = or i32 %v2_8000356, 256
  store i32 %v2_800035c, i32* %v2_8000352, align 4
  %v1_8000362 = load i32, i32* @r4, align 4
  %v2_8000362 = add i32 %v1_8000362, 72
  %v3_8000362 = inttoptr i32 %v2_8000362 to i32*
  store i32 0, i32* %v3_8000362, align 4
  %v3_800036a = load i32, i32* @r4, align 4
  %v4_800036a = add i32 %v3_800036a, 64
  %v5_800036a = inttoptr i32 %v4_800036a to i8*
  store i8 0, i8* %v5_800036a, align 1
  %v0_8000370 = load i32, i32* @r4, align 4
  %v1_8000370 = inttoptr i32 %v0_8000370 to i32*
  %v2_8000370 = load i32, i32* %v1_8000370, align 4
  %v2_8000372 = inttoptr i32 %v2_8000370 to i32*
  store i32 28, i32* %v2_8000372, align 4
  %v0_8000374 = load i32, i32* @r4, align 4
  %v1_8000374 = inttoptr i32 %v0_8000374 to i32*
  %v2_8000374 = load i32, i32* %v1_8000374, align 4
  %v1_8000376 = add i32 %v2_8000374, 4
  %v2_8000376 = inttoptr i32 %v1_8000376 to i32*
  %v3_8000376 = load i32, i32* %v2_8000376, align 4
  %v2_800037a = or i32 %v3_8000376, 16
  %v2_800037e = add i32 %v2_8000374, 4
  %v3_800037e = inttoptr i32 %v2_800037e to i32*
  store i32 %v2_800037a, i32* %v3_800037e, align 4
  %v0_8000380 = load i32, i32* @r4, align 4
  %v1_8000380 = inttoptr i32 %v0_8000380 to i32*
  %v2_8000380 = load i32, i32* %v1_8000380, align 4
  %v1_8000382 = add i32 %v2_8000380, 12
  %v2_8000382 = inttoptr i32 %v1_8000382 to i32*
  %v3_8000382 = load i32, i32* %v2_8000382, align 4
  %v2_8000386 = or i32 %v3_8000382, 1
  %v2_800038a = add i32 %v2_8000380, 12
  %v3_800038a = inttoptr i32 %v2_800038a to i32*
  store i32 %v2_8000386, i32* %v3_800038a, align 4
  %v0_800038c = load i32, i32* @r4, align 4
  %v1_800038c = inttoptr i32 %v0_800038c to i32*
  %v2_800038c = load i32, i32* %v1_800038c, align 4
  %v1_8000390 = add i32 %v2_800038c, 64
  %v0_8000392 = load i32, i32* @r6, align 4
  %v0_8000394 = load i32, i32* @r5, align 4
  %v1_8000396 = add i32 %v0_800038c, 60
  %v2_8000396 = inttoptr i32 %v1_8000396 to i32*
  %v3_8000396 = load i32, i32* %v2_8000396, align 4
  %v4_8000398 = call i32 @HAL_DMA_Start_IT(i32 %v3_8000396, i32 %v1_8000390, i32 %v0_8000394, i32 %v0_8000392)
  %v0_800039c = load i32, i32* @r4, align 4
  %v1_800039c = inttoptr i32 %v0_800039c to i32*
  %v2_800039c = load i32, i32* %v1_800039c, align 4
  %v1_800039e = add i32 %v2_800039c, 8
  %v2_800039e = inttoptr i32 %v1_800039e to i32*
  %v3_800039e = load i32, i32* %v2_800039e, align 4
  %v2_80003a2 = or i32 %v3_800039e, 4
  %v2_80003a6 = add i32 %v2_800039c, 8
  %v3_80003a6 = inttoptr i32 %v2_80003a6 to i32*
  store i32 %v2_80003a2, i32* %v3_80003a6, align 4
  %v0_80003ac.pre = load i32, i32* @r7, align 4
  br label %dec_label_pc_800033c

dec_label_pc_80003aa:                             ; preds = %entry
  br label %dec_label_pc_800033c

; uselistorder directives
  uselistorder i32 %v2_8000348, { 1, 2, 0 }
}

define i8 @CAN_Transmit(i32 %hcan, %anon_struct_30* %TxMessage) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r2.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_30* %TxMessage to i32
  store i32 %hcan, i32* %r0.global-to-local, align 4
  store i32 %hcan, i32* %r2.global-to-local, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v1_80006a4 = inttoptr i32 %hcan to i32*
  %v2_80006a4 = load i32, i32* %v1_80006a4, align 4
  %v1_80006a6 = add i32 %v2_80006a4, 8
  %v2_80006a6 = inttoptr i32 %v1_80006a6 to i32*
  %v3_80006a6 = load i32, i32* %v2_80006a6, align 4
  %v2_80006ac = and i32 %v3_80006a6, 67108864
  %v3_80006ae = icmp eq i32 %v2_80006ac, 0
  br i1 %v3_80006ae, label %dec_label_pc_80006b4, label %dec_label_pc_80006de

dec_label_pc_80006b4:                             ; preds = %entry
  %v2_80006b4 = load i32, i32* %v1_80006a4, align 4
  %v1_80006b6 = add i32 %v2_80006b4, 8
  %v2_80006b6 = inttoptr i32 %v1_80006b6 to i32*
  %v3_80006b6 = load i32, i32* %v2_80006b6, align 4
  %v2_80006bc = and i32 %v3_80006b6, 134217728
  %v3_80006be = icmp eq i32 %v2_80006bc, 0
  br i1 %v3_80006be, label %dec_label_pc_80006c6, label %dec_label_pc_80006da.thread

dec_label_pc_80006c6:                             ; preds = %dec_label_pc_80006b4
  %v2_80006c6 = load i32, i32* %v1_80006a4, align 4
  %v1_80006c8 = add i32 %v2_80006c6, 8
  %v2_80006c8 = inttoptr i32 %v1_80006c8 to i32*
  %v3_80006c8 = load i32, i32* %v2_80006c8, align 4
  %v2_80006ce = and i32 %v3_80006c8, 268435456
  %v3_80006d0 = icmp eq i32 %v2_80006ce, 0
  br i1 %v3_80006d0, label %dec_label_pc_80006da.thread3, label %dec_label_pc_80006da.thread

dec_label_pc_80006da.thread3:                     ; preds = %dec_label_pc_80006c6
  store i32 4, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80007d6

dec_label_pc_80006da.thread:                      ; preds = %dec_label_pc_80006c6, %dec_label_pc_80006b4
  %storemerge = phi i32 [ 1, %dec_label_pc_80006b4 ], [ 2, %dec_label_pc_80006c6 ]
  store i32 %storemerge, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80006de

dec_label_pc_80006de:                             ; preds = %entry, %dec_label_pc_80006da.thread
  %v0_80006f2 = phi i32 [ %storemerge, %dec_label_pc_80006da.thread ], [ 0, %entry ]
  %v2_80006de = load i32, i32* %v1_80006a4, align 4
  %v1_80006e2 = add i32 %v2_80006de, 384
  %v3_80006e4 = mul nsw i32 %v0_80006f2, 16
  %v2_80006e6 = add i32 %v1_80006e2, %v3_80006e4
  %v3_80006e6 = inttoptr i32 %v2_80006e6 to i32*
  %v4_80006e6 = load i32, i32* %v3_80006e6, align 4
  %v3_80006ea = urem i32 %v4_80006e6, 2
  %v2_80006ec = load i32, i32* %v1_80006a4, align 4
  %v1_80006f0 = add i32 %v2_80006ec, 384
  %v3_80006f4 = add i32 %v1_80006f0, %v3_80006e4
  %v4_80006f4 = inttoptr i32 %v3_80006f4 to i32*
  store i32 %v3_80006ea, i32* %v4_80006f4, align 4
  %v2_80006f6 = add i32 %tmp, 8
  %v3_80006f6 = inttoptr i32 %v2_80006f6 to i32*
  %v4_80006f6 = load i32, i32* %v3_80006f6, align 4
  %v2_80006f8 = icmp eq i32 %v4_80006f6, 0
  %v0_80006fc = load i32, i32* %r2.global-to-local, align 4
  %v1_80006fc = inttoptr i32 %v0_80006fc to i32*
  %v2_80006fc = load i32, i32* %v1_80006fc, align 4
  %v1_8000700 = add i32 %v2_80006fc, 384
  %v0_8000702 = load i32, i32* %r0.global-to-local, align 4
  %v3_8000702 = mul i32 %v0_8000702, 16
  %v2_8000704 = add i32 %v3_8000702, %v1_8000700
  %v3_8000704 = inttoptr i32 %v2_8000704 to i32*
  %v4_8000704 = load i32, i32* %v3_8000704, align 4
  br i1 %v2_80006f8, label %dec_label_pc_80006fc, label %dec_label_pc_800071c

dec_label_pc_80006fc:                             ; preds = %dec_label_pc_80006de
  %tmp13 = bitcast %anon_struct_30* %TxMessage to i16*
  %v3_8000706 = load i16, i16* %tmp13, align 2
  %v4_8000706 = zext i16 %v3_8000706 to i32
  %v3_8000708 = mul i32 %v4_8000706, 2097152
  %v2_800070a = add i32 %tmp, 12
  %v3_800070a = inttoptr i32 %v2_800070a to i32*
  %v4_800070a = load i32, i32* %v3_800070a, align 4
  %v2_800070c = or i32 %v3_8000708, %v4_800070a
  %v2_800070e = or i32 %v2_800070c, %v4_8000704
  %v2_8000710 = load i32, i32* %v1_80006fc, align 4
  %v1_8000714 = add i32 %v2_8000710, 384
  %v3_8000718 = add i32 %v1_8000714, %v3_8000702
  %v4_8000718 = inttoptr i32 %v3_8000718 to i32*
  store i32 %v2_800070e, i32* %v4_8000718, align 4
  br label %dec_label_pc_800073e

dec_label_pc_800071c:                             ; preds = %dec_label_pc_80006de
  %v2_8000726 = add i32 %tmp, 4
  %v3_8000726 = inttoptr i32 %v2_8000726 to i32*
  %v4_8000726 = load i32, i32* %v3_8000726, align 4
  %v3_8000728 = mul i32 %v4_8000726, 8
  %v4_800072a = load i32, i32* %v3_80006f6, align 4
  %v2_800072c = or i32 %v4_800072a, %v3_8000728
  %v2_800072e = add i32 %tmp, 12
  %v3_800072e = inttoptr i32 %v2_800072e to i32*
  %v4_800072e = load i32, i32* %v3_800072e, align 4
  %v2_8000730 = or i32 %v4_800072e, %v2_800072c
  %v2_8000732 = or i32 %v2_8000730, %v4_8000704
  %v2_8000734 = load i32, i32* %v1_80006fc, align 4
  %v1_8000738 = add i32 %v2_8000734, 384
  %v3_800073c = add i32 %v1_8000738, %v3_8000702
  %v4_800073c = inttoptr i32 %v3_800073c to i32*
  store i32 %v2_8000732, i32* %v4_800073c, align 4
  br label %dec_label_pc_800073e

dec_label_pc_800073e:                             ; preds = %dec_label_pc_80006fc, %dec_label_pc_800071c
  %v2_800073e = add i32 %tmp, 16
  %v3_800073e = inttoptr i32 %v2_800073e to i8*
  %v4_800073e = load i8, i8* %v3_800073e, align 1
  %tmp14 = urem i8 %v4_800073e, 16
  %v3_8000742 = zext i8 %tmp14 to i32
  %v4_8000744 = inttoptr i32 %v2_800073e to i32*
  store i32 %v3_8000742, i32* %v4_8000744, align 4
  %v0_8000746 = load i32, i32* %r2.global-to-local, align 4
  %v1_8000746 = inttoptr i32 %v0_8000746 to i32*
  %v2_8000746 = load i32, i32* %v1_8000746, align 4
  %v1_800074a = add i32 %v2_8000746, 384
  %v0_800074c = load i32, i32* %r0.global-to-local, align 4
  %v3_800074c = mul i32 %v0_800074c, 16
  %v2_800074e = add i32 %v1_800074a, %v3_800074c
  %v1_8000750 = add i32 %v2_800074e, 4
  %v2_8000750 = inttoptr i32 %v1_8000750 to i32*
  %v3_8000750 = load i32, i32* %v2_8000750, align 4
  %v3_8000752 = and i32 %v3_8000750, -16
  %v2_8000756 = load i32, i32* %v1_8000746, align 4
  %v1_800075a = add i32 %v3_800074c, 384
  %v2_800075e = add i32 %v1_800075a, %v2_8000756
  %v2_8000760 = add i32 %v2_800075e, 4
  %v3_8000760 = inttoptr i32 %v2_8000760 to i32*
  store i32 %v3_8000752, i32* %v3_8000760, align 4
  %v0_8000762 = load i32, i32* %r2.global-to-local, align 4
  %v1_8000762 = inttoptr i32 %v0_8000762 to i32*
  %v2_8000762 = load i32, i32* %v1_8000762, align 4
  %v1_8000766 = add i32 %v2_8000762, 384
  %v0_8000768 = load i32, i32* %r0.global-to-local, align 4
  %v3_8000768 = mul i32 %v0_8000768, 16
  %v2_800076a = add i32 %v1_8000766, %v3_8000768
  %v1_800076c = add i32 %v2_800076a, 4
  %v2_800076c = inttoptr i32 %v1_800076c to i32*
  %v3_800076c = load i32, i32* %v2_800076c, align 4
  %v4_800076e = load i32, i32* %v4_8000744, align 4
  %v2_8000770 = or i32 %v4_800076e, %v3_800076c
  %v2_8000772 = load i32, i32* %v1_8000762, align 4
  %v1_8000776 = add i32 %v3_8000768, 384
  %v2_800077a = add i32 %v1_8000776, %v2_8000772
  %v2_800077c = add i32 %v2_800077a, 4
  %v3_800077c = inttoptr i32 %v2_800077c to i32*
  store i32 %v2_8000770, i32* %v3_800077c, align 4
  %v2_800077e = add i32 %tmp, 23
  %v3_800077e = inttoptr i32 %v2_800077e to i8*
  %v4_800077e = load i8, i8* %v3_800077e, align 1
  %v5_800077e = zext i8 %v4_800077e to i32
  %v3_8000780 = mul nuw i32 %v5_800077e, 16777216
  %v2_8000782 = add i32 %tmp, 22
  %v3_8000782 = inttoptr i32 %v2_8000782 to i8*
  %v4_8000782 = load i8, i8* %v3_8000782, align 1
  %v5_8000782 = zext i8 %v4_8000782 to i32
  %v3_8000784 = mul nuw nsw i32 %v5_8000782, 65536
  %v2_8000786 = or i32 %v3_8000784, %v3_8000780
  %v2_8000788 = add i32 %tmp, 21
  %v3_8000788 = inttoptr i32 %v2_8000788 to i8*
  %v4_8000788 = load i8, i8* %v3_8000788, align 1
  %v5_8000788 = zext i8 %v4_8000788 to i32
  %v3_800078a = mul nuw nsw i32 %v5_8000788, 256
  %v2_800078c = or i32 %v3_800078a, %v2_8000786
  %v2_800078e = add i32 %tmp, 20
  %v3_800078e = inttoptr i32 %v2_800078e to i8*
  %v4_800078e = load i8, i8* %v3_800078e, align 1
  %v5_800078e = zext i8 %v4_800078e to i32
  %v2_8000790 = or i32 %v5_800078e, %v2_800078c
  %v0_8000792 = load i32, i32* %r2.global-to-local, align 4
  %v1_8000792 = inttoptr i32 %v0_8000792 to i32*
  %v2_8000792 = load i32, i32* %v1_8000792, align 4
  %v1_8000796 = add i32 %v2_8000792, 384
  %v0_8000798 = load i32, i32* %r0.global-to-local, align 4
  %v3_8000798 = mul i32 %v0_8000798, 16
  %v2_800079a = add i32 %v1_8000796, %v3_8000798
  %v2_800079c = add i32 %v2_800079a, 8
  %v3_800079c = inttoptr i32 %v2_800079c to i32*
  store i32 %v2_8000790, i32* %v3_800079c, align 4
  %v2_800079e = add i32 %tmp, 27
  %v3_800079e = inttoptr i32 %v2_800079e to i8*
  %v4_800079e = load i8, i8* %v3_800079e, align 1
  %v5_800079e = zext i8 %v4_800079e to i32
  %v3_80007a0 = mul nuw i32 %v5_800079e, 16777216
  %v2_80007a2 = add i32 %tmp, 26
  %v3_80007a2 = inttoptr i32 %v2_80007a2 to i8*
  %v4_80007a2 = load i8, i8* %v3_80007a2, align 1
  %v5_80007a2 = zext i8 %v4_80007a2 to i32
  %v3_80007a4 = mul nuw nsw i32 %v5_80007a2, 65536
  %v2_80007a6 = or i32 %v3_80007a4, %v3_80007a0
  %v2_80007a8 = add i32 %tmp, 25
  %v3_80007a8 = inttoptr i32 %v2_80007a8 to i8*
  %v4_80007a8 = load i8, i8* %v3_80007a8, align 1
  %v5_80007a8 = zext i8 %v4_80007a8 to i32
  %v3_80007aa = mul nuw nsw i32 %v5_80007a8, 256
  %v2_80007ac = or i32 %v3_80007aa, %v2_80007a6
  %v2_80007ae = add i32 %tmp, 24
  %v3_80007ae = inttoptr i32 %v2_80007ae to i8*
  %v4_80007ae = load i8, i8* %v3_80007ae, align 1
  %v5_80007ae = zext i8 %v4_80007ae to i32
  %v2_80007b0 = or i32 %v5_80007ae, %v2_80007ac
  %v0_80007b2 = load i32, i32* %r2.global-to-local, align 4
  %v1_80007b2 = inttoptr i32 %v0_80007b2 to i32*
  %v2_80007b2 = load i32, i32* %v1_80007b2, align 4
  %v1_80007b6 = add i32 %v2_80007b2, 384
  %v0_80007b8 = load i32, i32* %r0.global-to-local, align 4
  %v3_80007b8 = mul i32 %v0_80007b8, 16
  %v2_80007ba = add i32 %v1_80007b6, %v3_80007b8
  %v2_80007bc = add i32 %v2_80007ba, 12
  %v3_80007bc = inttoptr i32 %v2_80007bc to i32*
  store i32 %v2_80007b0, i32* %v3_80007bc, align 4
  %v0_80007be = load i32, i32* %r2.global-to-local, align 4
  %v1_80007be = inttoptr i32 %v0_80007be to i32*
  %v2_80007be = load i32, i32* %v1_80007be, align 4
  %v1_80007c2 = add i32 %v2_80007be, 384
  %v0_80007c4 = load i32, i32* %r0.global-to-local, align 4
  %v3_80007c4 = mul i32 %v0_80007c4, 16
  %v2_80007c6 = add i32 %v3_80007c4, %v1_80007c2
  %v3_80007c6 = inttoptr i32 %v2_80007c6 to i32*
  %v4_80007c6 = load i32, i32* %v3_80007c6, align 4
  %v2_80007ca = or i32 %v4_80007c6, 1
  %v2_80007cc = load i32, i32* %v1_80007be, align 4
  %v1_80007d0 = add i32 %v2_80007cc, 384
  %v3_80007d4 = add i32 %v1_80007d0, %v3_80007c4
  %v4_80007d4 = inttoptr i32 %v3_80007d4 to i32*
  store i32 %v2_80007ca, i32* %v4_80007d4, align 4
  %v11_80007d6.pre = load i32, i32* %r0.global-to-local, align 4
  %extract.t = trunc i32 %v11_80007d6.pre to i8
  br label %dec_label_pc_80007d6

dec_label_pc_80007d6:                             ; preds = %dec_label_pc_80006da.thread3, %dec_label_pc_800073e
  %v11_80007d6.off0 = phi i8 [ 4, %dec_label_pc_80006da.thread3 ], [ %extract.t, %dec_label_pc_800073e ]
  ret i8 %v11_80007d6.off0

; uselistorder directives
  uselistorder i32 %v3_80007c4, { 1, 0 }
  uselistorder i32 %v3_8000768, { 1, 0 }
  uselistorder i32 %v3_800074c, { 1, 0 }
  uselistorder i32 %v3_8000702, { 2, 1, 0 }
  uselistorder i32* %v1_80006fc, { 1, 0, 2 }
  uselistorder i32 %v3_80006e4, { 1, 0 }
  uselistorder i32 %tmp, { 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 1, 11, 12 }
  uselistorder i32* %r0.global-to-local, { 3, 4, 5, 6, 7, 8, 9, 1, 2, 10, 0 }
  uselistorder i32 384, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10, 11, 12 }
  uselistorder i32 %hcan, { 1, 0, 2 }
  uselistorder label %dec_label_pc_80007d6, { 1, 0 }
  uselistorder label %dec_label_pc_800073e, { 1, 0 }
  uselistorder label %dec_label_pc_80006de, { 1, 0 }
}

define void @CO_CANmodule_disable(i32 %CANmodule) local_unnamed_addr {
entry:
  store i32 %CANmodule, i32* @r4, align 4
  %v1_8000c16 = call i32 @HAL_CAN_DeInit(i32 536872104)
  ret void
}

define i32 @CO_CANmodule_init(i32 %CANmodule, i32 %CANbaseAddress, i32 %rxArray, i16 %rxSize, i32 %txArray, i16 %txSize, i16 %CANbitRate) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r1.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  %tmp = sext i16 %rxSize to i32
  store i32 %tmp, i32* @r3, align 4
  store i32 %CANbaseAddress, i32* %r1.global-to-local, align 4
  store i32 %CANmodule, i32* %r0.global-to-local, align 4
  %CAN_FilterInitStruct_-76 = alloca %anon_struct_29, align 8
  %v18_8000c20 = load i32, i32* @r4, align 4
  %v21_8000c20 = load i32, i32* @r5, align 4
  store i32 %CANmodule, i32* @r4, align 4
  store i32 %rxArray, i32* @r7, align 4
  store i32 %tmp, i32* @r6, align 4
  %v2_8000c2a = icmp eq i32 %CANmodule, 0
  %v2_8000c2e = icmp eq i32 %rxArray, 0
  %or.cond = or i1 %v2_8000c2a, %v2_8000c2e
  br i1 %or.cond, label %dec_label_pc_8000c38, label %dec_label_pc_8000c32

dec_label_pc_8000c32:                             ; preds = %entry
  store i32 %txArray, i32* %r0.global-to-local, align 4
  %v2_8000c34 = icmp eq i32 %txArray, 0
  br i1 %v2_8000c34, label %dec_label_pc_8000c38, label %dec_label_pc_8000c40

dec_label_pc_8000c38:                             ; preds = %dec_label_pc_8000c32, %entry
  store i32 -1, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8000c3c

dec_label_pc_8000c3c:                             ; preds = %dec_label_pc_8000d7a, %dec_label_pc_8000d74, %dec_label_pc_8000c38
  %v17_8000c3e = phi i32 [ 0, %dec_label_pc_8000d7a ], [ -3, %dec_label_pc_8000d74 ], [ -1, %dec_label_pc_8000c38 ]
  store i32 %v18_8000c20, i32* @r4, align 4
  store i32 %v21_8000c20, i32* @r5, align 4
  ret i32 %v17_8000c3e

dec_label_pc_8000c40:                             ; preds = %dec_label_pc_8000c32
  %v2_8000c42 = inttoptr i32 %CANmodule to i32*
  store i32 %CANbaseAddress, i32* %v2_8000c42, align 4
  %v0_8000c44 = load i32, i32* @r7, align 4
  %v1_8000c44 = load i32, i32* @r4, align 4
  %v2_8000c44 = add i32 %v1_8000c44, 4
  %v3_8000c44 = inttoptr i32 %v2_8000c44 to i32*
  store i32 %v0_8000c44, i32* %v3_8000c44, align 4
  %v0_8000c46 = load i32, i32* @r6, align 4
  %v1_8000c46 = trunc i32 %v0_8000c46 to i16
  %v2_8000c46 = load i32, i32* @r4, align 4
  %v3_8000c46 = add i32 %v2_8000c46, 8
  %v4_8000c46 = inttoptr i32 %v3_8000c46 to i16*
  store i16 %v1_8000c46, i16* %v4_8000c46, align 2
  %v1_8000c4a = load i32, i32* @r4, align 4
  %v2_8000c4a = add i32 %v1_8000c4a, 12
  %v3_8000c4a = inttoptr i32 %v2_8000c4a to i32*
  store i32 %txArray, i32* %v3_8000c4a, align 4
  %v4_8000c4c = sext i16 %txSize to i32
  %v2_8000c4e = load i32, i32* @r4, align 4
  %v3_8000c4e = add i32 %v2_8000c4e, 16
  %v4_8000c4e = inttoptr i32 %v3_8000c4e to i16*
  store i16 %txSize, i16* %v4_8000c4e, align 2
  %v2_8000c52 = load i32, i32* @r4, align 4
  %v3_8000c52 = add i32 %v2_8000c52, 18
  %v4_8000c52 = inttoptr i32 %v3_8000c52 to i8*
  store i8 0, i8* %v4_8000c52, align 1
  %v0_8000c54 = load i32, i32* @r6, align 4
  %tmp43 = icmp ult i32 %v0_8000c54, 33
  %v1_8000c5e = zext i1 %tmp43 to i8
  %v2_8000c5e = load i32, i32* @r4, align 4
  %v3_8000c5e = add i32 %v2_8000c5e, 19
  %v4_8000c5e = inttoptr i32 %v3_8000c5e to i8*
  store i8 %v1_8000c5e, i8* %v4_8000c5e, align 1
  %v2_8000c62 = load i32, i32* @r4, align 4
  %v3_8000c62 = add i32 %v2_8000c62, 20
  %v4_8000c62 = inttoptr i32 %v3_8000c62 to i8*
  store i8 0, i8* %v4_8000c62, align 1
  %v2_8000c66 = load i32, i32* @r4, align 4
  %v3_8000c66 = add i32 %v2_8000c66, 21
  %v4_8000c66 = inttoptr i32 %v3_8000c66 to i8*
  store i8 1, i8* %v4_8000c66, align 1
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8000c6a = load i32, i32* @r4, align 4
  %v3_8000c6a = add i32 %v2_8000c6a, 22
  %v4_8000c6a = inttoptr i32 %v3_8000c6a to i16*
  store i16 0, i16* %v4_8000c6a, align 2
  %v0_8000c6c = load i32, i32* %r0.global-to-local, align 4
  %v1_8000c6c = load i32, i32* @r4, align 4
  %v2_8000c6c = add i32 %v1_8000c6c, 24
  %v3_8000c6c = inttoptr i32 %v2_8000c6c to i32*
  store i32 %v0_8000c6c, i32* %v3_8000c6c, align 4
  %v0_8000c6e = load i32, i32* %r0.global-to-local, align 4
  %v1_8000c6e = load i32, i32* @r4, align 4
  %v2_8000c6e = add i32 %v1_8000c6e, 28
  %v3_8000c6e = inttoptr i32 %v2_8000c6e to i32*
  store i32 %v0_8000c6e, i32* %v3_8000c6e, align 4
  store i32 0, i32* %r5.global-to-local, align 4
  %v1_8000c8c12 = load i32, i32* @r6, align 4
  %v3_8000c8c14 = trunc i32 %v1_8000c8c12 to i16
  %v7_8000c8e17 = icmp sgt i16 %v3_8000c8c14, 0
  br i1 %v7_8000c8e17, label %dec_label_pc_8000c74, label %dec_label_pc_8000c90

dec_label_pc_8000c74:                             ; preds = %dec_label_pc_8000c40, %dec_label_pc_8000c74
  %v0_8000c78 = phi i32 [ %v1_8000c8a, %dec_label_pc_8000c74 ], [ 0, %dec_label_pc_8000c40 ]
  store i32 0, i32* %r1.global-to-local, align 4
  %v2_8000c78 = mul nuw nsw i32 %v0_8000c78, 12
  store i32 %v2_8000c78, i32* %r0.global-to-local, align 4
  %v0_8000c7a = load i32, i32* @r4, align 4
  %v1_8000c7a = add i32 %v0_8000c7a, 4
  %v2_8000c7a = inttoptr i32 %v1_8000c7a to i32*
  %v3_8000c7a = load i32, i32* %v2_8000c7a, align 4
  %v4_8000c7c = add i32 %v3_8000c7a, %v2_8000c78
  %v5_8000c7c = inttoptr i32 %v4_8000c7c to i16*
  store i16 0, i16* %v5_8000c7c, align 2
  %v0_8000c80 = load i32, i32* %r5.global-to-local, align 4
  %v2_8000c80 = mul i32 %v0_8000c80, 12
  store i32 %v2_8000c80, i32* %r0.global-to-local, align 4
  %v0_8000c82 = load i32, i32* @r4, align 4
  %v1_8000c82 = add i32 %v0_8000c82, 4
  %v2_8000c82 = inttoptr i32 %v1_8000c82 to i32*
  %v3_8000c82 = load i32, i32* %v2_8000c82, align 4
  %v0_8000c86 = load i32, i32* %r1.global-to-local, align 4
  %v2_8000c84 = add i32 %v2_8000c80, 8
  %v2_8000c86 = add i32 %v2_8000c84, %v3_8000c82
  %v3_8000c86 = inttoptr i32 %v2_8000c86 to i32*
  store i32 %v0_8000c86, i32* %v3_8000c86, align 4
  %v0_8000c88 = load i32, i32* %r5.global-to-local, align 4
  %v1_8000c88 = add i32 %v0_8000c88, 1
  store i32 %v1_8000c88, i32* %r0.global-to-local, align 4
  %v1_8000c8a = urem i32 %v1_8000c88, 65536
  store i32 %v1_8000c8a, i32* %r5.global-to-local, align 4
  %v1_8000c8c = load i32, i32* @r6, align 4
  %v2_8000c8c = trunc i32 %v1_8000c88 to i16
  %v3_8000c8c = trunc i32 %v1_8000c8c to i16
  %v7_8000c8e = icmp slt i16 %v2_8000c8c, %v3_8000c8c
  br i1 %v7_8000c8e, label %dec_label_pc_8000c74, label %dec_label_pc_8000c90

dec_label_pc_8000c90:                             ; preds = %dec_label_pc_8000c74, %dec_label_pc_8000c40
  store i32 0, i32* @r5, align 4
  store i32 %v4_8000c4c, i32* %r0.global-to-local, align 4
  %v7_8000ca610 = icmp sgt i16 %txSize, 0
  br i1 %v7_8000ca610, label %dec_label_pc_8000c94, label %dec_label_pc_8000ca8

dec_label_pc_8000c94:                             ; preds = %dec_label_pc_8000c90, %dec_label_pc_8000c94
  %v0_8000c96 = phi i32 [ %v1_8000ca0, %dec_label_pc_8000c94 ], [ 0, %dec_label_pc_8000c90 ]
  store i32 0, i32* %r0.global-to-local, align 4
  %v3_8000c96 = mul nuw nsw i32 %v0_8000c96, 16
  %v0_8000c98 = load i32, i32* @r4, align 4
  %v1_8000c98 = add i32 %v0_8000c98, 12
  %v2_8000c98 = inttoptr i32 %v1_8000c98 to i32*
  %v3_8000c98 = load i32, i32* %v2_8000c98, align 4
  %v2_8000c9a = add i32 %v3_8000c98, %v3_8000c96
  store i32 %v2_8000c9a, i32* %r1.global-to-local, align 4
  %v3_8000c9c = add i32 %v2_8000c9a, 13
  %v4_8000c9c = inttoptr i32 %v3_8000c9c to i8*
  store i8 0, i8* %v4_8000c9c, align 1
  %v0_8000c9e = load i32, i32* @r5, align 4
  %v1_8000c9e = add i32 %v0_8000c9e, 1
  %v1_8000ca0 = urem i32 %v1_8000c9e, 65536
  store i32 %v1_8000ca0, i32* @r5, align 4
  store i32 %v4_8000c4c, i32* %r0.global-to-local, align 4
  %v2_8000ca4 = trunc i32 %v1_8000c9e to i16
  %v7_8000ca6 = icmp slt i16 %v2_8000ca4, %txSize
  br i1 %v7_8000ca6, label %dec_label_pc_8000c94, label %dec_label_pc_8000ca8

dec_label_pc_8000ca8:                             ; preds = %dec_label_pc_8000c94, %dec_label_pc_8000c90
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 1073767424, i32* inttoptr (i32 536872104 to i32*), align 8
  store i32 536872104, i32* %r0.global-to-local, align 4
  %v1_8000cb0 = call i32 @HAL_CAN_DeInit(i32 536872104)
  %v4_8000cb4 = sext i16 %CANbitRate to i32
  store i32 %v4_8000cb4, i32* %r0.global-to-local, align 4
  %v8_8000cb6 = icmp eq i16 %CANbitRate, 100
  br i1 %v8_8000cb6, label %dec_label_pc_8000d08, label %dec_label_pc_8000cba

dec_label_pc_8000cba:                             ; preds = %dec_label_pc_8000ca8
  %v9_8000cba = icmp sgt i16 %CANbitRate, 100
  br i1 %v9_8000cba, label %dec_label_pc_8000cce, label %dec_label_pc_8000cbc

dec_label_pc_8000cbc:                             ; preds = %dec_label_pc_8000cba
  switch i16 %CANbitRate, label %dec_label_pc_8000cf8 [
    i16 10, label %dec_label_pc_8000d2c
    i16 20, label %dec_label_pc_8000d22
    i16 25, label %dec_label_pc_8000d18
    i16 50, label %dec_label_pc_8000d10
  ]

dec_label_pc_8000cce:                             ; preds = %dec_label_pc_8000cba
  switch i16 %CANbitRate, label %dec_label_pc_8000cd6 [
    i16 125, label %dec_label_pc_8000d00
    i16 250, label %dec_label_pc_8000cf8
  ]

dec_label_pc_8000cd6:                             ; preds = %dec_label_pc_8000cce
  %v1_8000cd8 = add nsw i32 %v4_8000cb4, -500
  store i32 %v1_8000cd8, i32* %r0.global-to-local, align 4
  %v2_8000cda = icmp eq i32 %v1_8000cd8, 0
  br i1 %v2_8000cda, label %dec_label_pc_8000cee, label %dec_label_pc_8000cde

dec_label_pc_8000cde:                             ; preds = %dec_label_pc_8000cd6
  %v1_8000ce0 = add nsw i32 %v4_8000cb4, -1000
  store i32 %v1_8000ce0, i32* %r0.global-to-local, align 4
  %v2_8000ce2 = icmp eq i32 %v1_8000ce0, 0
  br i1 %v2_8000ce2, label %dec_label_pc_8000ce6, label %dec_label_pc_8000cf8

dec_label_pc_8000ce6:                             ; preds = %dec_label_pc_8000cde
  store i32 8, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 8, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000cee:                             ; preds = %dec_label_pc_8000cd6
  store i32 16, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 16, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000cf8:                             ; preds = %dec_label_pc_8000cce, %dec_label_pc_8000cbc, %dec_label_pc_8000cde
  store i32 32, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 32, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d00:                             ; preds = %dec_label_pc_8000cce
  store i32 64, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 64, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d08:                             ; preds = %dec_label_pc_8000ca8
  store i32 80, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 80, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d10:                             ; preds = %dec_label_pc_8000cbc
  store i32 160, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 160, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d18:                             ; preds = %dec_label_pc_8000cbc
  store i32 320, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 320, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d22:                             ; preds = %dec_label_pc_8000cbc
  store i32 400, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 400, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d2c:                             ; preds = %dec_label_pc_8000cbc
  store i32 800, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 800, i32* inttoptr (i32 536872108 to i32*), align 4
  br label %dec_label_pc_8000d36

dec_label_pc_8000d36:                             ; preds = %dec_label_pc_8000d22, %dec_label_pc_8000d18, %dec_label_pc_8000d10, %dec_label_pc_8000d08, %dec_label_pc_8000d00, %dec_label_pc_8000cf8, %dec_label_pc_8000cee, %dec_label_pc_8000ce6, %dec_label_pc_8000d2c
  store i32 536872104, i32* %r0.global-to-local, align 4
  store i32 0, i32* inttoptr (i32 536872116 to i32*), align 4
  store i32 196608, i32* inttoptr (i32 536872120 to i32*), align 8
  store i32 0, i32* inttoptr (i32 536872124 to i32*), align 4
  store i32 1, i32* inttoptr (i32 536872140 to i32*), align 4
  store i32 0, i32* %r1.global-to-local, align 4
  store i32 0, i32* inttoptr (i32 536872112 to i32*), align 16
  %v1_8000d50 = load i32, i32* %r0.global-to-local, align 4
  %v2_8000d50 = add i32 %v1_8000d50, 24
  %v3_8000d50 = inttoptr i32 %v2_8000d50 to i32*
  store i32 0, i32* %v3_8000d50, align 4
  %v0_8000d52 = load i32, i32* %r1.global-to-local, align 4
  %v1_8000d52 = load i32, i32* %r0.global-to-local, align 4
  %v2_8000d52 = add i32 %v1_8000d52, 28
  %v3_8000d52 = inttoptr i32 %v2_8000d52 to i32*
  store i32 %v0_8000d52, i32* %v3_8000d52, align 4
  %v0_8000d54 = load i32, i32* %r1.global-to-local, align 4
  %v1_8000d54 = load i32, i32* %r0.global-to-local, align 4
  %v2_8000d54 = add i32 %v1_8000d54, 32
  %v3_8000d54 = inttoptr i32 %v2_8000d54 to i32*
  store i32 %v0_8000d54, i32* %v3_8000d54, align 4
  %v0_8000d56 = load i32, i32* %r1.global-to-local, align 4
  %v1_8000d56 = load i32, i32* %r0.global-to-local, align 4
  %v2_8000d56 = add i32 %v1_8000d56, 36
  %v3_8000d56 = inttoptr i32 %v2_8000d56 to i32*
  store i32 %v0_8000d56, i32* %v3_8000d56, align 4
  %v0_8000d58 = load i32, i32* %r1.global-to-local, align 4
  %v1_8000d58 = load i32, i32* %r0.global-to-local, align 4
  %v2_8000d58 = add i32 %v1_8000d58, 40
  %v3_8000d58 = inttoptr i32 %v2_8000d58 to i32*
  store i32 %v0_8000d58, i32* %v3_8000d58, align 4
  %v0_8000d5a = load i32, i32* %r1.global-to-local, align 4
  %v1_8000d5a = load i32, i32* %r0.global-to-local, align 4
  %v2_8000d5a = add i32 %v1_8000d5a, 44
  %v3_8000d5a = inttoptr i32 %v2_8000d5a to i32*
  store i32 %v0_8000d5a, i32* %v3_8000d5a, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  store i32 536872368, i32* inttoptr (i32 536872152 to i32*), align 8
  store i32 536872332, i32* inttoptr (i32 536872156 to i32*), align 4
  store i32 536872104, i32* %r0.global-to-local, align 4
  %v1_8000d68 = call i32 @HAL_CAN_Init(i32 536872104)
  store i32 %v1_8000d68, i32* %r0.global-to-local, align 4
  %v2_8000d70 = icmp eq i32 %v1_8000d68, 0
  br i1 %v2_8000d70, label %dec_label_pc_8000d7a, label %dec_label_pc_8000d74

dec_label_pc_8000d74:                             ; preds = %dec_label_pc_8000d36
  store i32 -3, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8000c3c

dec_label_pc_8000d7a:                             ; preds = %dec_label_pc_8000d36
  store i32 40, i32* @r1, align 4
  %v2_8000d7c = ptrtoint %anon_struct_29* %CAN_FilterInitStruct_-76 to i32
  store i32 %v2_8000d7c, i32* %r0.global-to-local, align 4
  %v2_8000d7e = call i32 @__aeabi_memclr(i32 %v2_8000d7c, i32 40)
  %v4_8000d86 = getelementptr inbounds %anon_struct_29, %anon_struct_29* %CAN_FilterInitStruct_-76, i32 0, i32 0
  store i32 0, i32* %v4_8000d86, align 8
  store i32 %v2_8000d7c, i32* %r1.global-to-local, align 4
  store i32 536872104, i32* %r0.global-to-local, align 4
  %v4_8000d9c = call i32 @HAL_CAN_ConfigFilter(i32 536872104, %anon_struct_29* nonnull %CAN_FilterInitStruct_-76)
  store i32 536872104, i32* %r0.global-to-local, align 4
  %v2_8000da2 = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  store i32 %v2_8000da2, i32* %r0.global-to-local, align 4
  %v1_8000da4 = add i32 %v2_8000da2, 20
  %v2_8000da4 = inttoptr i32 %v1_8000da4 to i32*
  %v3_8000da4 = load i32, i32* %v2_8000da4, align 4
  %v2_8000da8 = or i32 %v3_8000da4, 3
  store i32 %v2_8000da8, i32* %r0.global-to-local, align 4
  store i32 536872104, i32* %r1.global-to-local, align 4
  %v2_8000dac = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  store i32 %v2_8000dac, i32* %r1.global-to-local, align 4
  %v2_8000dae = add i32 %v2_8000dac, 20
  %v3_8000dae = inttoptr i32 %v2_8000dae to i32*
  store i32 %v2_8000da8, i32* %v3_8000dae, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8000c3c

; uselistorder directives
  uselistorder i32 %v1_8000c9e, { 1, 0 }
  uselistorder i32 %v1_8000c88, { 1, 0, 2 }
  uselistorder i32 %v4_8000c4c, { 1, 0 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 22, 24, 26, 25, 27, 28, 29, 30, 31, 40, 32, 33, 34, 35, 36, 37, 38, 39, 0 }
  uselistorder i32* inttoptr (i32 536872108 to i32*), { 4, 5, 6, 8, 0, 1, 7, 2, 3 }
  uselistorder i32 (i32)* @HAL_CAN_DeInit, { 1, 0 }
  uselistorder i16 %CANbitRate, { 0, 1, 2, 4, 3 }
  uselistorder i16 %txSize, { 1, 0, 3, 2 }
  uselistorder i32 %txArray, { 0, 2, 1 }
  uselistorder i32 %CANmodule, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_8000d36, { 8, 0, 1, 2, 3, 4, 5, 6, 7 }
  uselistorder label %dec_label_pc_8000cf8, { 2, 0, 1 }
  uselistorder label %dec_label_pc_8000c94, { 1, 0 }
  uselistorder label %dec_label_pc_8000c74, { 1, 0 }
}

define i32 @CO_CANrxBufferInit(i32 %CANmodule, i16 %index, i16 %ident, i16 %mask, i8 %rtr, i8* %object, void (i8*, %anon_struct_31*)* %pFunct) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %tmp = sext i16 %mask to i32
  store i32 %tmp, i32* %r3.global-to-local, align 4
  %tmp8 = sext i16 %ident to i32
  %tmp9 = sext i16 %index to i32
  store i32 %CANmodule, i32* %r0.global-to-local, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8000dd0 = icmp eq i32 %CANmodule, 0
  br i1 %v2_8000dd0, label %dec_label_pc_8000e20, label %dec_label_pc_8000dd4

dec_label_pc_8000dd4:                             ; preds = %entry
  %v4_8000dd4 = ptrtoint i8* %object to i32
  store i32 %v4_8000dd4, i32* %r0.global-to-local, align 4
  %v2_8000dd6 = icmp eq i8* %object, null
  br i1 %v2_8000dd6, label %dec_label_pc_8000e20, label %dec_label_pc_8000dda

dec_label_pc_8000dda:                             ; preds = %dec_label_pc_8000dd4
  %v4_8000dda = ptrtoint void (i8*, %anon_struct_31*)* %pFunct to i32
  store i32 %v4_8000dda, i32* %r0.global-to-local, align 4
  %v2_8000ddc = icmp eq void (i8*, %anon_struct_31*)* %pFunct, null
  br i1 %v2_8000ddc, label %dec_label_pc_8000e20, label %dec_label_pc_8000de0

dec_label_pc_8000de0:                             ; preds = %dec_label_pc_8000dda
  %v1_8000de0 = add i32 %CANmodule, 8
  %v2_8000de0 = inttoptr i32 %v1_8000de0 to i16*
  %v3_8000de0 = load i16, i16* %v2_8000de0, align 2
  %v4_8000de0 = zext i16 %v3_8000de0 to i32
  store i32 %v4_8000de0, i32* %r0.global-to-local, align 4
  %v9_8000de4 = icmp sgt i16 %v3_8000de0, %index
  br i1 %v9_8000de4, label %dec_label_pc_8000de6, label %dec_label_pc_8000e20

dec_label_pc_8000de6:                             ; preds = %dec_label_pc_8000de0
  %v2_8000de8 = mul nsw i32 %tmp9, 12
  %v1_8000dea = add i32 %CANmodule, 4
  %v2_8000dea = inttoptr i32 %v1_8000dea to i32*
  %v3_8000dea = load i32, i32* %v2_8000dea, align 4
  %v2_8000dec = add i32 %v3_8000dea, %v2_8000de8
  store i32 %v2_8000dec, i32* %r0.global-to-local, align 4
  %v2_8000df0 = add i32 %v2_8000dec, 4
  %v3_8000df0 = inttoptr i32 %v2_8000df0 to i32*
  store i32 %v4_8000dd4, i32* %v3_8000df0, align 4
  %v1_8000df4 = load i32, i32* %r0.global-to-local, align 4
  %v2_8000df4 = add i32 %v1_8000df4, 8
  %v3_8000df4 = inttoptr i32 %v2_8000df4 to i32*
  store i32 %v4_8000dda, i32* %v3_8000df4, align 4
  %tmp23 = mul nsw i32 %tmp8, 4
  %v3_8000df8 = and i32 %tmp23, 8188
  %v2_8000dfc = icmp eq i8 %rtr, 0
  br i1 %v2_8000dfc, label %dec_label_pc_8000e04, label %dec_label_pc_8000e00

dec_label_pc_8000e00:                             ; preds = %dec_label_pc_8000de6
  %v2_8000e02 = or i32 %v3_8000df8, 2
  br label %dec_label_pc_8000e04

dec_label_pc_8000e04:                             ; preds = %dec_label_pc_8000de6, %dec_label_pc_8000e00
  %v0_8000e1a = phi i32 [ %v3_8000df8, %dec_label_pc_8000de6 ], [ %v2_8000e02, %dec_label_pc_8000e00 ]
  %tmp24 = mul nsw i32 %tmp, 4
  %v3_8000e08 = and i32 %tmp24, 8188
  %v2_8000e0c = or i32 %v3_8000e08, 2
  store i32 %v2_8000e0c, i32* %r3.global-to-local, align 4
  %v0_8000e0e = load i32, i32* %r0.global-to-local, align 4
  %v1_8000e0e = inttoptr i32 %v0_8000e0e to i16*
  %v2_8000e0e = load i16, i16* %v1_8000e0e, align 2
  %v3_8000e0e = zext i16 %v2_8000e0e to i32
  %v9_8000e10 = icmp eq i32 %v3_8000e0e, %v0_8000e1a
  br i1 %v9_8000e10, label %dec_label_pc_8000e14, label %dec_label_pc_8000e1a

dec_label_pc_8000e14:                             ; preds = %dec_label_pc_8000e04
  %v1_8000e14 = add i32 %v0_8000e0e, 2
  %v2_8000e14 = inttoptr i32 %v1_8000e14 to i16*
  %v3_8000e14 = load i16, i16* %v2_8000e14, align 2
  %v4_8000e14 = zext i16 %v3_8000e14 to i32
  %v9_8000e16 = icmp eq i32 %v4_8000e14, %v2_8000e0c
  br i1 %v9_8000e16, label %dec_label_pc_8000e26, label %dec_label_pc_8000e1a

dec_label_pc_8000e1a:                             ; preds = %dec_label_pc_8000e04, %dec_label_pc_8000e14
  %v1_8000e1a = trunc i32 %v0_8000e1a to i16
  store i16 %v1_8000e1a, i16* %v1_8000e0e, align 2
  %v0_8000e1c = load i32, i32* %r3.global-to-local, align 4
  %v1_8000e1c = trunc i32 %v0_8000e1c to i16
  %v2_8000e1c = load i32, i32* %r0.global-to-local, align 4
  %v3_8000e1c = add i32 %v2_8000e1c, 2
  %v4_8000e1c = inttoptr i32 %v3_8000e1c to i16*
  store i16 %v1_8000e1c, i16* %v4_8000e1c, align 2
  br label %dec_label_pc_8000e26

dec_label_pc_8000e20:                             ; preds = %dec_label_pc_8000de0, %dec_label_pc_8000dda, %dec_label_pc_8000dd4, %entry
  store i32 -1, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8000e26

dec_label_pc_8000e26:                             ; preds = %dec_label_pc_8000e1a, %dec_label_pc_8000e14, %dec_label_pc_8000e20
  %ret_-40.0 = phi i32 [ -1, %dec_label_pc_8000e20 ], [ 0, %dec_label_pc_8000e14 ], [ 0, %dec_label_pc_8000e1a ]
  store i32 %ret_-40.0, i32* %r0.global-to-local, align 4
  ret i32 %ret_-40.0

; uselistorder directives
  uselistorder i32 %ret_-40.0, { 1, 0 }
  uselistorder i32* %r3.global-to-local, { 1, 2, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0 }
  uselistorder void (i8*, %anon_struct_31*)* %pFunct, { 1, 0 }
  uselistorder i8* %object, { 1, 0 }
  uselistorder label %dec_label_pc_8000e26, { 2, 0, 1 }
  uselistorder label %dec_label_pc_8000e1a, { 1, 0 }
  uselistorder label %dec_label_pc_8000e04, { 1, 0 }
}

define i32 @CO_CANsend(i32 %CANmodule, i32 %buffer) local_unnamed_addr {
entry:
  %v3_8000e2c = load i32, i32* @r4, align 4
  %v6_8000e2c = load i32, i32* @r5, align 4
  %v9_8000e2c = load i32, i32* @r6, align 4
  store i32 %CANmodule, i32* @r4, align 4
  store i32 %buffer, i32* @r5, align 4
  store i32 0, i32* @r6, align 4
  %v1_8000e34 = add i32 %buffer, 13
  %v2_8000e34 = inttoptr i32 %v1_8000e34 to i8*
  %v3_8000e34 = load i8, i8* %v2_8000e34, align 1
  %v2_8000e36 = icmp eq i8 %v3_8000e34, 0
  br i1 %v2_8000e36, label %dec_label_pc_8000e50, label %dec_label_pc_8000e3a

dec_label_pc_8000e3a:                             ; preds = %entry
  %v1_8000e3a = add i32 %CANmodule, 21
  %v2_8000e3a = inttoptr i32 %v1_8000e3a to i8*
  %v3_8000e3a = load i8, i8* %v2_8000e3a, align 1
  %v2_8000e3c = icmp eq i8 %v3_8000e3a, 0
  br i1 %v2_8000e3c, label %dec_label_pc_8000e40, label %dec_label_pc_8000e4c

dec_label_pc_8000e40:                             ; preds = %dec_label_pc_8000e3a
  %v1_8000e40 = inttoptr i32 %buffer to i32*
  %v2_8000e40 = load i32, i32* %v1_8000e40, align 4
  %v1_8000e46 = add i32 %CANmodule, 28
  %v2_8000e46 = inttoptr i32 %v1_8000e46 to i32*
  %v3_8000e46 = load i32, i32* %v2_8000e46, align 4
  call void @CO_errorReport(i32 %v3_8000e46, i8 20, i16 -32496, i32 %v2_8000e40)
  br label %dec_label_pc_8000e4c

dec_label_pc_8000e4c:                             ; preds = %dec_label_pc_8000e3a, %dec_label_pc_8000e40
  store i32 -9, i32* @r6, align 4
  br label %dec_label_pc_8000e50

dec_label_pc_8000e50:                             ; preds = %entry, %dec_label_pc_8000e4c
  call void @__set_PRIMASK(i32 1)
  %v0_8000e56 = load i32, i32* @r4, align 4
  %v1_8000e56 = add i32 %v0_8000e56, 22
  %v2_8000e56 = inttoptr i32 %v1_8000e56 to i16*
  %v3_8000e56 = load i16, i16* %v2_8000e56, align 2
  %v2_8000e58 = icmp eq i16 %v3_8000e56, 0
  br i1 %v2_8000e58, label %dec_label_pc_8000e5c, label %dec_label_pc_8000e6a

dec_label_pc_8000e5c:                             ; preds = %dec_label_pc_8000e50
  %v0_8000e5c = load i32, i32* @r5, align 4
  %v1_8000e5c = add i32 %v0_8000e5c, 14
  %v2_8000e5c = inttoptr i32 %v1_8000e5c to i8*
  %v3_8000e5c = load i8, i8* %v2_8000e5c, align 1
  %v3_8000e5e = add i32 %v0_8000e56, 20
  %v4_8000e5e = inttoptr i32 %v3_8000e5e to i8*
  store i8 %v3_8000e5c, i8* %v4_8000e5e, align 1
  %v0_8000e60 = load i32, i32* @r5, align 4
  %v0_8000e62 = load i32, i32* @r4, align 4
  call void @CO_CANsendToModule(i32 %v0_8000e62, i32 %v0_8000e60)
  br label %dec_label_pc_8000e74

dec_label_pc_8000e6a:                             ; preds = %dec_label_pc_8000e50
  %v2_8000e6c = load i32, i32* @r5, align 4
  %v3_8000e6c = add i32 %v2_8000e6c, 13
  %v4_8000e6c = inttoptr i32 %v3_8000e6c to i8*
  store i8 1, i8* %v4_8000e6c, align 1
  %v0_8000e6e = load i32, i32* @r4, align 4
  %v1_8000e6e = add i32 %v0_8000e6e, 22
  %v2_8000e6e = inttoptr i32 %v1_8000e6e to i16*
  %v3_8000e6e = load i16, i16* %v2_8000e6e, align 2
  %v1_8000e70 = add i16 %v3_8000e6e, 1
  store i16 %v1_8000e70, i16* %v2_8000e6e, align 2
  br label %dec_label_pc_8000e74

dec_label_pc_8000e74:                             ; preds = %dec_label_pc_8000e5c, %dec_label_pc_8000e6a
  call void @__set_PRIMASK(i32 0)
  %v0_8000e7a = load i32, i32* @r6, align 4
  store i32 %v3_8000e2c, i32* @r4, align 4
  store i32 %v6_8000e2c, i32* @r5, align 4
  store i32 %v9_8000e2c, i32* @r6, align 4
  ret i32 %v0_8000e7a

; uselistorder directives
  uselistorder void (i32)* @__set_PRIMASK, { 1, 0 }
  uselistorder i32 %buffer, { 0, 2, 1 }
  uselistorder label %dec_label_pc_8000e74, { 1, 0 }
  uselistorder label %dec_label_pc_8000e50, { 1, 0 }
  uselistorder label %dec_label_pc_8000e4c, { 1, 0 }
}

define void @CO_CANsendToModule(i32 %CANmodule, i32 %buffer) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  store i32 %CANmodule, i32* %r0.global-to-local, align 4
  %stack_var_-20 = alloca i32, align 4
  %tx_-40 = alloca %anon_struct_30, align 8
  store i32 %buffer, i32* @r4, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8000e9c = ptrtoint i32* %stack_var_-20 to i32
  br label %dec_label_pc_8000e98

dec_label_pc_8000e98:                             ; preds = %entry, %dec_label_pc_8000e98
  %v3_8000e9e = phi i32 [ 0, %entry ], [ %v1_8000ea0, %dec_label_pc_8000e98 ]
  %v0_8000e982 = phi i32 [ %buffer, %entry ], [ %v0_8000e98, %dec_label_pc_8000e98 ]
  %v1_8000e98 = add i32 %v0_8000e982, 5
  %v2_8000e9a = add i32 %v1_8000e98, %v3_8000e9e
  %v3_8000e9a = inttoptr i32 %v2_8000e9a to i8*
  %v4_8000e9a = load i8, i8* %v3_8000e9a, align 1
  %v4_8000e9e = add i32 %v3_8000e9e, %v2_8000e9c
  %v5_8000e9e = inttoptr i32 %v4_8000e9e to i8*
  store i8 %v4_8000e9a, i8* %v5_8000e9e, align 1
  %v0_8000ea0 = load i32, i32* %r0.global-to-local, align 4
  %v1_8000ea0 = add i32 %v0_8000ea0, 1
  store i32 %v1_8000ea0, i32* %r0.global-to-local, align 4
  %v5_8000ea4 = icmp slt i32 %v1_8000ea0, 8
  %v0_8000e98 = load i32, i32* @r4, align 4
  br i1 %v5_8000ea4, label %dec_label_pc_8000e98, label %dec_label_pc_8000ea6

dec_label_pc_8000ea6:                             ; preds = %dec_label_pc_8000e98
  %v1_8000ea6 = inttoptr i32 %v0_8000e98 to i32*
  %v2_8000ea6 = load i32, i32* %v1_8000ea6, align 4
  %v3_8000ea8 = udiv i32 %v2_8000ea6, 2097152
  %v3_8000eaa = getelementptr inbounds %anon_struct_30, %anon_struct_30* %tx_-40, i32 0, i32 0
  store i32 %v3_8000ea8, i32* %v3_8000eaa, align 8
  store i32 536872104, i32* %r0.global-to-local, align 4
  %v4_8000eb4 = call i8 @CAN_Transmit(i32 536872104, %anon_struct_30* nonnull %tx_-40)
  store i32 536872104, i32* %r0.global-to-local, align 4
  %v2_8000eba = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  store i32 %v2_8000eba, i32* %r0.global-to-local, align 4
  %v1_8000ebc = add i32 %v2_8000eba, 20
  %v2_8000ebc = inttoptr i32 %v1_8000ebc to i32*
  %v3_8000ebc = load i32, i32* %v2_8000ebc, align 4
  %v2_8000ec0 = or i32 %v3_8000ebc, 1
  store i32 %v2_8000ec0, i32* %r0.global-to-local, align 4
  %v2_8000ec4 = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  %v2_8000ec6 = add i32 %v2_8000ec4, 20
  %v3_8000ec6 = inttoptr i32 %v2_8000ec6 to i32*
  store i32 %v2_8000ec0, i32* %v3_8000ec6, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v1_8000ea0, { 1, 2, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder label %dec_label_pc_8000e98, { 1, 0 }
}

define void @CO_CANsetConfigurationMode(i32 %CANbaseAddress) local_unnamed_addr {
entry:
  %v3_8000ed2 = load i32, i32* inttoptr (i32 1073877008 to i32*), align 16
  %v3_8000ee6 = and i32 %v3_8000ed2, -33554433
  store i32 %v3_8000ee6, i32* inttoptr (i32 1073877008 to i32*), align 16
  ret void
}

define void @CO_CANsetNormalMode(i32 %CANmodule) local_unnamed_addr {
entry:
  %v3_8000ef6 = add i32 %CANmodule, 18
  %v4_8000ef6 = inttoptr i32 %v3_8000ef6 to i8*
  store i8 1, i8* %v4_8000ef6, align 1
  ret void
}

define i32 @CO_CANtxBufferInit(i32 %CANmodule, i16 %index, i16 %ident, i8 %rtr, i8 %noOfBytes, i8 %syncFlag) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %tmp8 = sext i16 %ident to i32
  %tmp9 = sext i16 %index to i32
  store i32 %CANmodule, i32* %r0.global-to-local, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8000f00 = icmp eq i32 %CANmodule, 0
  br i1 %v2_8000f00, label %dec_label_pc_8000f36, label %dec_label_pc_8000f04

dec_label_pc_8000f04:                             ; preds = %entry
  %v1_8000f04 = add i32 %CANmodule, 16
  %v2_8000f04 = inttoptr i32 %v1_8000f04 to i16*
  %v3_8000f04 = load i16, i16* %v2_8000f04, align 2
  %v9_8000f08 = icmp sgt i16 %v3_8000f04, %index
  br i1 %v9_8000f08, label %dec_label_pc_8000f0a, label %dec_label_pc_8000f36

dec_label_pc_8000f0a:                             ; preds = %dec_label_pc_8000f04
  %v4_8000f0a = mul nsw i32 %tmp9, 16
  %v1_8000f0c = add i32 %CANmodule, 12
  %v2_8000f0c = inttoptr i32 %v1_8000f0c to i32*
  %v3_8000f0c = load i32, i32* %v2_8000f0c, align 4
  %v2_8000f0e = add i32 %v3_8000f0c, %v4_8000f0a
  store i32 %v2_8000f0e, i32* %r0.global-to-local, align 4
  %v4_8000f10 = mul i32 %tmp8, 2097152
  %v3_8000f16 = icmp eq i8 %rtr, 0
  br i1 %v3_8000f16, label %dec_label_pc_8000f1e, label %dec_label_pc_8000f1a

dec_label_pc_8000f1a:                             ; preds = %dec_label_pc_8000f0a
  %v2_8000f1c = or i32 %v4_8000f10, 2
  br label %dec_label_pc_8000f1e

dec_label_pc_8000f1e:                             ; preds = %dec_label_pc_8000f0a, %dec_label_pc_8000f1a
  %v0_8000f1e = phi i32 [ %v4_8000f10, %dec_label_pc_8000f0a ], [ %v2_8000f1c, %dec_label_pc_8000f1a ]
  %v2_8000f1e = inttoptr i32 %v2_8000f0e to i32*
  store i32 %v0_8000f1e, i32* %v2_8000f1e, align 4
  %v2_8000f22 = load i32, i32* %r0.global-to-local, align 4
  %v3_8000f22 = add i32 %v2_8000f22, 4
  %v4_8000f22 = inttoptr i32 %v3_8000f22 to i8*
  store i8 %noOfBytes, i8* %v4_8000f22, align 1
  %v2_8000f26 = load i32, i32* %r0.global-to-local, align 4
  %v3_8000f26 = add i32 %v2_8000f26, 13
  %v4_8000f26 = inttoptr i32 %v3_8000f26 to i8*
  store i8 0, i8* %v4_8000f26, align 1
  %v2_8000f2a = icmp ne i8 %syncFlag, 0
  %v1_8000f34 = zext i1 %v2_8000f2a to i8
  %v2_8000f34 = load i32, i32* %r0.global-to-local, align 4
  %v3_8000f34 = add i32 %v2_8000f34, 14
  %v4_8000f34 = inttoptr i32 %v3_8000f34 to i8*
  store i8 %v1_8000f34, i8* %v4_8000f34, align 1
  %v17_8000f36.pre = load i32, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8000f36

dec_label_pc_8000f36:                             ; preds = %dec_label_pc_8000f04, %entry, %dec_label_pc_8000f1e
  %v17_8000f36 = phi i32 [ 0, %dec_label_pc_8000f04 ], [ 0, %entry ], [ %v17_8000f36.pre, %dec_label_pc_8000f1e ]
  ret i32 %v17_8000f36

; uselistorder directives
  uselistorder i32 %v4_8000f10, { 1, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 4, 5, 6, 0 }
  uselistorder label %dec_label_pc_8000f36, { 2, 0, 1 }
  uselistorder label %dec_label_pc_8000f1e, { 1, 0 }
}

define void @CO_CANverifyErrors(i32 %CANmodule) local_unnamed_addr {
entry:
  %v3_8000f38 = load i32, i32* @r4, align 4
  %v6_8000f38 = load i32, i32* @r5, align 4
  store i32 %CANmodule, i32* @r5, align 4
  %v1_8000f3c = add i32 %CANmodule, 28
  %v2_8000f3c = inttoptr i32 %v1_8000f3c to i32*
  %v3_8000f3c = load i32, i32* %v2_8000f3c, align 4
  store i32 %v3_8000f3c, i32* @r6, align 4
  %v2_8000f40 = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  %v1_8000f42 = add i32 %v2_8000f40, 24
  %v2_8000f42 = inttoptr i32 %v1_8000f42 to i32*
  %v3_8000f42 = load i32, i32* %v2_8000f42, align 4
  store i32 %v3_8000f42, i32* @r4, align 4
  %v1_8000f44 = add i32 %CANmodule, 24
  %v2_8000f44 = inttoptr i32 %v1_8000f44 to i32*
  %v3_8000f44 = load i32, i32* %v2_8000f44, align 4
  %v9_8000f46 = icmp eq i32 %v3_8000f44, %v3_8000f42
  br i1 %v9_8000f46, label %dec_label_pc_8000fea, label %dec_label_pc_8000f4a

dec_label_pc_8000f4a:                             ; preds = %entry
  store i32 %v3_8000f42, i32* %v2_8000f44, align 4
  %v2_8000f4e = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  %v1_8000f50 = add i32 %v2_8000f4e, 12
  %v2_8000f50 = inttoptr i32 %v1_8000f50 to i32*
  %v3_8000f50 = load i32, i32* %v2_8000f50, align 4
  %v2_8000f54 = and i32 %v3_8000f50, 8
  %v4_8000f54 = icmp eq i32 %v2_8000f54, 0
  br i1 %v4_8000f54, label %dec_label_pc_8000f76, label %dec_label_pc_8000f5a

dec_label_pc_8000f5a:                             ; preds = %dec_label_pc_8000f4a
  %v0_8000f5a = load i32, i32* @r4, align 4
  %v0_8000f60 = load i32, i32* @r6, align 4
  call void @CO_errorReport(i32 %v0_8000f60, i8 19, i16 -32496, i32 %v0_8000f5a)
  %v2_8000f68 = load i32, i32* inttoptr (i32 536872104 to i32*), align 8
  %v1_8000f6a = add i32 %v2_8000f68, 12
  %v2_8000f6a = inttoptr i32 %v1_8000f6a to i32*
  %v3_8000f6a = load i32, i32* %v2_8000f6a, align 4
  %v3_8000f6e = and i32 %v3_8000f6a, -9
  %v2_8000f74 = add i32 %v2_8000f68, 12
  %v3_8000f74 = inttoptr i32 %v2_8000f74 to i32*
  store i32 %v3_8000f6e, i32* %v3_8000f74, align 4
  br label %dec_label_pc_8000f76

dec_label_pc_8000f76:                             ; preds = %dec_label_pc_8000f4a, %dec_label_pc_8000f5a
  %v1_8000f78 = load i32, i32* @r4, align 4
  %v2_8000f78 = and i32 %v1_8000f78, 4
  %v4_8000f78 = icmp eq i32 %v2_8000f78, 0
  br i1 %v4_8000f78, label %dec_label_pc_8000f8e, label %dec_label_pc_8000f7e

dec_label_pc_8000f7e:                             ; preds = %dec_label_pc_8000f76
  %v0_8000f86 = load i32, i32* @r6, align 4
  call void @CO_errorReport(i32 %v0_8000f86, i8 18, i16 -32448, i32 %v1_8000f78)
  br label %dec_label_pc_8000f98

dec_label_pc_8000f8e:                             ; preds = %dec_label_pc_8000f76
  %v0_8000f92 = load i32, i32* @r6, align 4
  call void @CO_errorReset(i32 %v0_8000f92, i8 18, i32 %v1_8000f78)
  br label %dec_label_pc_8000f98

dec_label_pc_8000f98:                             ; preds = %dec_label_pc_8000f7e, %dec_label_pc_8000f8e
  %v1_8000f9a = load i32, i32* @r4, align 4
  %v2_8000f9a = and i32 %v1_8000f9a, 2
  %v4_8000f9a = icmp eq i32 %v2_8000f9a, 0
  br i1 %v4_8000f9a, label %dec_label_pc_8000fb6, label %dec_label_pc_8000fa0

dec_label_pc_8000fa0:                             ; preds = %dec_label_pc_8000f98
  %v0_8000fa0 = load i32, i32* @r5, align 4
  %v1_8000fa0 = add i32 %v0_8000fa0, 21
  %v2_8000fa0 = inttoptr i32 %v1_8000fa0 to i8*
  %v3_8000fa0 = load i8, i8* %v2_8000fa0, align 1
  %v2_8000fa2 = icmp eq i8 %v3_8000fa0, 0
  br i1 %v2_8000fa2, label %dec_label_pc_8000fa6, label %dec_label_pc_8000fca

dec_label_pc_8000fa6:                             ; preds = %dec_label_pc_8000fa0
  %v0_8000fae = load i32, i32* @r6, align 4
  call void @CO_errorReport(i32 %v0_8000fae, i8 7, i16 -32480, i32 %v1_8000f9a)
  br label %dec_label_pc_8000fca

dec_label_pc_8000fb6:                             ; preds = %dec_label_pc_8000f98
  %v0_8000fba = load i32, i32* @r6, align 4
  call void @CO_errorReset(i32 %v0_8000fba, i8 7, i32 %v1_8000f9a)
  %v0_8000fc0 = load i32, i32* @r4, align 4
  %v0_8000fc4 = load i32, i32* @r6, align 4
  call void @CO_errorReset(i32 %v0_8000fc4, i8 20, i32 %v0_8000fc0)
  br label %dec_label_pc_8000fca

dec_label_pc_8000fca:                             ; preds = %dec_label_pc_8000fa0, %dec_label_pc_8000fa6, %dec_label_pc_8000fb6
  %v0_8000fca = load i32, i32* @r4, align 4
  %v3_8000fcc = urem i32 %v0_8000fca, 2
  %v4_8000fcc = icmp eq i32 %v3_8000fcc, 0
  br i1 %v4_8000fcc, label %dec_label_pc_8000fe0, label %dec_label_pc_8000fd2

dec_label_pc_8000fd2:                             ; preds = %dec_label_pc_8000fca
  %v0_8000fd8 = load i32, i32* @r6, align 4
  call void @CO_errorReport(i32 %v0_8000fd8, i8 1, i16 0, i32 %v0_8000fca)
  br label %dec_label_pc_8000fea

dec_label_pc_8000fe0:                             ; preds = %dec_label_pc_8000fca
  %v0_8000fe4 = load i32, i32* @r6, align 4
  call void @CO_errorReset(i32 %v0_8000fe4, i8 1, i32 %v0_8000fca)
  br label %dec_label_pc_8000fea

dec_label_pc_8000fea:                             ; preds = %entry, %dec_label_pc_8000fd2, %dec_label_pc_8000fe0
  store i32 %v3_8000f38, i32* @r4, align 4
  store i32 %v6_8000f38, i32* @r5, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v0_8000fca, { 1, 2, 0 }
  uselistorder i32 %v1_8000f78, { 1, 0, 2 }
  uselistorder void (i32, i8, i32)* @CO_errorReset, { 3, 2, 1, 0 }
  uselistorder i32 536872104, { 5, 4, 6, 17, 18, 7, 19, 1, 0, 20, 21, 13, 14, 15, 22, 9, 10, 16, 11, 12, 3, 2, 8, 23, 24 }
  uselistorder i32 %CANmodule, { 0, 2, 1 }
  uselistorder label %dec_label_pc_8000fea, { 2, 1, 0 }
  uselistorder label %dec_label_pc_8000fca, { 2, 1, 0 }
  uselistorder label %dec_label_pc_8000f98, { 1, 0 }
  uselistorder label %dec_label_pc_8000f76, { 1, 0 }
}

define i32 @CO_EM_init(i32 %em, i32 %emPr, i32 %SDO, i8* %errorStatusBits, i8 %errorStatusBitsSize, i8* %errorRegister, i32* %preDefErr, i8 %preDefErrSize, i32 %CANdev, i16 %CANdevTxIdx, i16 %CANidTxEM) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r1.global-to-local = alloca i32, align 4
  %tmp = ptrtoint i32* %preDefErr to i32
  %tmp21 = ptrtoint i8* %errorStatusBits to i32
  store i32 %emPr, i32* %r1.global-to-local, align 4
  store i32 %em, i32* %r0.global-to-local, align 4
  %v18_8000ff4 = load i32, i32* @r4, align 4
  %v21_8000ff4 = load i32, i32* @r5, align 4
  %v27_8000ff4 = load i32, i32* @r7, align 4
  store i32 %em, i32* @r4, align 4
  store i32 %emPr, i32* @r5, align 4
  store i32 %SDO, i32* @r6, align 4
  %v2_8000ffe = icmp eq i32 %em, 0
  %v2_8001002 = icmp eq i32 %emPr, 0
  %or.cond = or i1 %v2_8000ffe, %v2_8001002
  %v2_8001006 = icmp eq i32 %SDO, 0
  %or.cond40 = or i1 %or.cond, %v2_8001006
  br i1 %or.cond40, label %dec_label_pc_8001028, label %dec_label_pc_800100a

dec_label_pc_800100a:                             ; preds = %entry
  store i32 %tmp21, i32* %r0.global-to-local, align 4
  %v2_800100c = icmp eq i8* %errorStatusBits, null
  br i1 %v2_800100c, label %dec_label_pc_8001028, label %dec_label_pc_8001010

dec_label_pc_8001010:                             ; preds = %dec_label_pc_800100a
  %v4_8001010 = sext i8 %errorStatusBitsSize to i32
  store i32 %v4_8001010, i32* %r0.global-to-local, align 4
  %v3_8001014 = icmp ult i8 %errorStatusBitsSize, 4
  br i1 %v3_8001014, label %dec_label_pc_8001028, label %dec_label_pc_8001016

dec_label_pc_8001016:                             ; preds = %dec_label_pc_8001010
  %v4_8001016 = ptrtoint i8* %errorRegister to i32
  store i32 %v4_8001016, i32* %r0.global-to-local, align 4
  %v2_8001018 = icmp eq i8* %errorRegister, null
  br i1 %v2_8001018, label %dec_label_pc_8001028, label %dec_label_pc_800101c

dec_label_pc_800101c:                             ; preds = %dec_label_pc_8001016
  store i32 %tmp, i32* %r0.global-to-local, align 4
  %v2_800101e = icmp eq i32* %preDefErr, null
  br i1 %v2_800101e, label %dec_label_pc_8001028, label %dec_label_pc_8001022

dec_label_pc_8001022:                             ; preds = %dec_label_pc_800101c
  store i32 %CANdev, i32* %r0.global-to-local, align 4
  %v2_8001024 = icmp eq i32 %CANdev, 0
  br i1 %v2_8001024, label %dec_label_pc_8001028, label %dec_label_pc_8001030

dec_label_pc_8001028:                             ; preds = %dec_label_pc_8001022, %dec_label_pc_800101c, %dec_label_pc_8001016, %dec_label_pc_8001010, %dec_label_pc_800100a, %entry
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800102c

dec_label_pc_800102c:                             ; preds = %dec_label_pc_800107a, %dec_label_pc_8001028
  %storemerge10 = phi i32 [ 0, %dec_label_pc_800107a ], [ -1, %dec_label_pc_8001028 ]
  store i32 %storemerge10, i32* %r0.global-to-local, align 4
  store i32 %v18_8000ff4, i32* @r4, align 4
  store i32 %v21_8000ff4, i32* @r5, align 4
  store i32 %v27_8000ff4, i32* @r7, align 4
  ret i32 %storemerge10

dec_label_pc_8001030:                             ; preds = %dec_label_pc_8001022
  %v2_8001032 = inttoptr i32 %em to i32*
  store i32 %tmp21, i32* %v2_8001032, align 4
  %v2_8001036 = load i32, i32* @r4, align 4
  %v3_8001036 = add i32 %v2_8001036, 4
  %v4_8001036 = inttoptr i32 %v3_8001036 to i8*
  store i8 %errorStatusBitsSize, i8* %v4_8001036, align 1
  %v0_8001038 = load i32, i32* @r4, align 4
  %v1_800103a = add i32 %v0_8001038, 85
  %v2_800103c = add i32 %v0_8001038, 88
  %v3_800103c = inttoptr i32 %v2_800103c to i32*
  store i32 %v1_800103a, i32* %v3_800103c, align 4
  %v0_800103e = load i32, i32* @r4, align 4
  %v1_800103e = add i32 %v0_800103e, 5
  store i32 %v1_800103e, i32* %r0.global-to-local, align 4
  %v2_8001040 = add i32 %v0_800103e, 92
  %v3_8001040 = inttoptr i32 %v2_8001040 to i32*
  store i32 %v1_800103e, i32* %v3_8001040, align 4
  %v0_8001042 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001042 = load i32, i32* @r4, align 4
  %v2_8001042 = add i32 %v1_8001042, 96
  %v3_8001042 = inttoptr i32 %v2_8001042 to i32*
  store i32 %v0_8001042, i32* %v3_8001042, align 4
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_8001048 = load i32, i32* @r4, align 4
  %v4_8001048 = add i32 %v3_8001048, 100
  %v5_8001048 = inttoptr i32 %v4_8001048 to i8*
  store i8 0, i8* %v5_8001048, align 1
  %v0_800104c = load i32, i32* %r1.global-to-local, align 4
  %v1_800104c = trunc i32 %v0_800104c to i8
  %v3_800104c = load i32, i32* @r4, align 4
  %v4_800104c = add i32 %v3_800104c, 101
  %v5_800104c = inttoptr i32 %v4_800104c to i8*
  store i8 %v1_800104c, i8* %v5_800104c, align 1
  %v1_8001050 = load i32, i32* @r4, align 4
  %v2_8001050 = add i32 %v1_8001050, 104
  %v3_8001050 = inttoptr i32 %v2_8001050 to i32*
  store i32 0, i32* %v3_8001050, align 4
  %v0_8001052 = load i32, i32* @r4, align 4
  %v1_8001052 = load i32, i32* @r5, align 4
  %v2_8001052 = add i32 %v1_8001052, 12
  %v3_8001052 = inttoptr i32 %v2_8001052 to i32*
  store i32 %v0_8001052, i32* %v3_8001052, align 4
  %v1_8001056 = load i32, i32* @r5, align 4
  %v2_8001056 = inttoptr i32 %v1_8001056 to i32*
  store i32 %v4_8001016, i32* %v2_8001056, align 4
  %v1_800105a = load i32, i32* @r5, align 4
  %v2_800105a = add i32 %v1_800105a, 4
  %v3_800105a = inttoptr i32 %v2_800105a to i32*
  store i32 %tmp, i32* %v3_800105a, align 4
  %v2_800105e = load i32, i32* @r5, align 4
  %v3_800105e = add i32 %v2_800105e, 8
  %v4_800105e = inttoptr i32 %v3_800105e to i8*
  store i8 %preDefErrSize, i8* %v4_800105e, align 1
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8001062 = load i32, i32* @r5, align 4
  %v3_8001062 = add i32 %v2_8001062, 9
  %v4_8001062 = inttoptr i32 %v3_8001062 to i8*
  store i8 0, i8* %v4_8001062, align 1
  %v0_8001064 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001064 = trunc i32 %v0_8001064 to i16
  %v2_8001064 = load i32, i32* @r5, align 4
  %v3_8001064 = add i32 %v2_8001064, 10
  %v4_8001064 = inttoptr i32 %v3_8001064 to i16*
  store i16 %v1_8001064, i16* %v4_8001064, align 2
  store i32 0, i32* @r7, align 4
  %v7_800107817 = icmp sgt i8 %errorStatusBitsSize, 0
  store i32 0, i32* %r0.global-to-local, align 4
  br i1 %v7_800107817, label %dec_label_pc_800106a, label %dec_label_pc_800107a

dec_label_pc_800106a:                             ; preds = %dec_label_pc_8001030, %dec_label_pc_800106a
  %v3_800106e = phi i32 [ %v1_8001072, %dec_label_pc_800106a ], [ 0, %dec_label_pc_8001030 ]
  %v0_800106c = load i32, i32* @r4, align 4
  %v1_800106c = inttoptr i32 %v0_800106c to i32*
  %v2_800106c = load i32, i32* %v1_800106c, align 4
  store i32 %v2_800106c, i32* %r1.global-to-local, align 4
  %v4_800106e = add i32 %v2_800106c, %v3_800106e
  %v5_800106e = inttoptr i32 %v4_800106e to i8*
  store i8 0, i8* %v5_800106e, align 1
  %v0_8001070 = load i32, i32* @r7, align 4
  %v1_8001070 = add i32 %v0_8001070, 1
  %v1_8001072 = urem i32 %v1_8001070, 256
  store i32 %v1_8001072, i32* @r7, align 4
  %v2_8001076 = trunc i32 %v1_8001070 to i8
  %v7_8001078 = icmp slt i8 %v2_8001076, %errorStatusBitsSize
  store i32 0, i32* %r0.global-to-local, align 4
  br i1 %v7_8001078, label %dec_label_pc_800106a, label %dec_label_pc_800107a

dec_label_pc_800107a:                             ; preds = %dec_label_pc_800106a, %dec_label_pc_8001030
  %v0_800107e = load i32, i32* @r5, align 4
  store i32 4099, i32* %r1.global-to-local, align 4
  %v0_8001086 = load i32, i32* @r6, align 4
  store i32 %v0_8001086, i32* %r0.global-to-local, align 4
  %v10_8001088 = inttoptr i32 %v0_800107e to i8*
  call void @CO_OD_configure(i32 %v0_8001086, i16 4099, i32 134223881, i8* %v10_8001088, i8* null, i8 0)
  %v0_8001090 = load i32, i32* @r6, align 4
  %v1_8001092 = add i32 %v0_8001090, 96
  %v2_8001092 = inttoptr i32 %v1_8001092 to i8*
  store i32 4116, i32* %r1.global-to-local, align 4
  store i32 %v0_8001090, i32* %r0.global-to-local, align 4
  call void @CO_OD_configure(i32 %v0_8001090, i16 4116, i32 134224209, i8* %v2_8001092, i8* null, i8 0)
  store i32 %CANdev, i32* %r0.global-to-local, align 4
  %v1_80010a4 = load i32, i32* @r5, align 4
  %v2_80010a4 = add i32 %v1_80010a4, 16
  %v3_80010a4 = inttoptr i32 %v2_80010a4 to i32*
  store i32 %CANdev, i32* %v3_80010a4, align 4
  %v0_80010a6 = load i32, i32* @r5, align 4
  %v1_80010a6 = add i32 %v0_80010a6, 16
  %v2_80010a6 = inttoptr i32 %v1_80010a6 to i32*
  %v3_80010a6 = load i32, i32* %v2_80010a6, align 4
  %v0_80010a8 = load i32, i32* @r4, align 4
  %v2_80010a8 = add i32 %v3_80010a6, 28
  %v3_80010a8 = inttoptr i32 %v2_80010a8 to i32*
  store i32 %v0_80010a8, i32* %v3_80010a8, align 4
  store i32 %CANdev, i32* %r0.global-to-local, align 4
  %v6_80010b6 = sext i16 %CANdevTxIdx to i32
  store i32 %v6_80010b6, i32* %r1.global-to-local, align 4
  %v16_80010b8 = call i32 @CO_CANtxBufferInit(i32 %CANdev, i16 %CANdevTxIdx, i16 %CANidTxEM, i8 0, i8 8, i8 0)
  store i32 %v16_80010b8, i32* %r0.global-to-local, align 4
  %v1_80010bc = load i32, i32* @r5, align 4
  %v2_80010bc = add i32 %v1_80010bc, 20
  %v3_80010bc = inttoptr i32 %v2_80010bc to i32*
  store i32 %v16_80010b8, i32* %v3_80010bc, align 4
  br label %dec_label_pc_800102c

; uselistorder directives
  uselistorder i32 %v0_8001090, { 1, 0, 2 }
  uselistorder i32 %v1_8001070, { 1, 0 }
  uselistorder i32 %tmp, { 1, 0 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 0 }
  uselistorder i32* %r0.global-to-local, { 5, 3, 4, 6, 7, 8, 1, 9, 10, 11, 12, 2, 14, 13, 15, 16, 17, 18, 0 }
  uselistorder i16 %CANdevTxIdx, { 1, 0 }
  uselistorder i32 %CANdev, { 3, 2, 1, 0, 5, 4 }
  uselistorder i8* %errorRegister, { 1, 0 }
  uselistorder i8 %errorStatusBitsSize, { 0, 1, 2, 4, 3 }
  uselistorder i32 %em, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_800106a, { 1, 0 }
}

define void @CO_EM_process(i32 %emPr, i8 %NMTisPreOrOperational, i16 %timeDifference_100us, i16 %emInhTime) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %tmp = sext i16 %emInhTime to i32
  %tmp18 = sext i16 %timeDifference_100us to i32
  %tmp19 = sext i8 %NMTisPreOrOperational to i32
  store i32 %emPr, i32* %r0.global-to-local, align 4
  %preDEF_-40 = alloca i32, align 4
  %v24_80010d0 = load i32, i32* @r4, align 4
  %v27_80010d0 = load i32, i32* @r5, align 4
  %v30_80010d0 = load i32, i32* @r6, align 4
  %v33_80010d0 = load i32, i32* @r7, align 4
  %v2_80010d2 = ptrtoint i32* %preDEF_-40 to i32
  store i32 %emPr, i32* @r4, align 4
  store i32 %tmp, i32* @r7, align 4
  %v1_80010d8 = add i32 %emPr, 12
  %v2_80010d8 = inttoptr i32 %v1_80010d8 to i32*
  %v3_80010d8 = load i32, i32* %v2_80010d8, align 4
  store i32 %v3_80010d8, i32* @r5, align 4
  %v1_80010da = add i32 %emPr, 16
  %v2_80010da = inttoptr i32 %v1_80010da to i32*
  %v3_80010da = load i32, i32* %v2_80010da, align 4
  store i32 %v3_80010da, i32* %r0.global-to-local, align 4
  call void @CO_CANverifyErrors(i32 %v3_80010da)
  store i32 101, i32* %r0.global-to-local, align 4
  %v1_80010e2 = load i32, i32* @r5, align 4
  %v2_80010e2 = add i32 %v1_80010e2, 101
  %v3_80010e2 = inttoptr i32 %v2_80010e2 to i8*
  %v4_80010e2 = load i8, i8* %v3_80010e2, align 1
  %v6_80010e2 = zext i8 %v4_80010e2 to i32
  store i32 %v6_80010e2, i32* %r0.global-to-local, align 4
  %v2_80010e4 = icmp eq i8 %v4_80010e2, 0
  br i1 %v2_80010e4, label %dec_label_pc_80010fe, label %dec_label_pc_80010e8

dec_label_pc_80010e8:                             ; preds = %entry
  store i32 101, i32* %r0.global-to-local, align 4
  %v4_80010ea = load i8, i8* %v3_80010e2, align 1
  %v6_80010ea = zext i8 %v4_80010ea to i32
  store i32 %v1_80010e2, i32* %r0.global-to-local, align 4
  call void @CO_errorReport(i32 %v1_80010e2, i8 40, i16 24832, i32 %v6_80010ea)
  store i32 101, i32* %r0.global-to-local, align 4
  %v3_80010fc = load i32, i32* @r5, align 4
  %v4_80010fc = add i32 %v3_80010fc, 101
  %v5_80010fc = inttoptr i32 %v4_80010fc to i8*
  store i8 0, i8* %v5_80010fc, align 1
  %v0_8001100.pre = load i32, i32* @r5, align 4
  br label %dec_label_pc_80010fe

dec_label_pc_80010fe:                             ; preds = %entry, %dec_label_pc_80010e8
  %v0_8001114 = phi i32 [ %v1_80010e2, %entry ], [ %v0_8001100.pre, %dec_label_pc_80010e8 ]
  store i32 0, i32* @r6, align 4
  %v1_8001100 = inttoptr i32 %v0_8001114 to i32*
  %v2_8001100 = load i32, i32* %v1_8001100, align 4
  store i32 %v2_8001100, i32* %r0.global-to-local, align 4
  %v1_8001102 = add i32 %v2_8001100, 5
  %v2_8001102 = inttoptr i32 %v1_8001102 to i8*
  %v3_8001102 = load i8, i8* %v2_8001102, align 1
  %v4_8001102 = zext i8 %v3_8001102 to i32
  store i32 %v4_8001102, i32* %r0.global-to-local, align 4
  %v2_8001104 = icmp eq i8 %v3_8001102, 0
  br i1 %v2_8001104, label %dec_label_pc_800110c, label %dec_label_pc_8001108

dec_label_pc_8001108:                             ; preds = %dec_label_pc_80010fe
  store i32 1, i32* %r0.global-to-local, align 4
  store i32 1, i32* @r6, align 4
  br label %dec_label_pc_800110c

dec_label_pc_800110c:                             ; preds = %dec_label_pc_80010fe, %dec_label_pc_8001108
  %v0_800111e = phi i32 [ 0, %dec_label_pc_80010fe ], [ 1, %dec_label_pc_8001108 ]
  %v2_800110c = load i32, i32* %v1_8001100, align 4
  store i32 %v2_800110c, i32* %r0.global-to-local, align 4
  %v1_800110e = add i32 %v2_800110c, 2
  %v2_800110e = inttoptr i32 %v1_800110e to i8*
  %v3_800110e = load i8, i8* %v2_800110e, align 1
  %v4_800110e = zext i8 %v3_800110e to i32
  store i32 %v4_800110e, i32* %r0.global-to-local, align 4
  %v2_8001110 = icmp eq i8 %v3_800110e, 0
  br i1 %v2_8001110, label %dec_label_pc_8001114, label %dec_label_pc_800111c

dec_label_pc_8001114:                             ; preds = %dec_label_pc_800110c
  %v2_8001114 = load i32, i32* %v1_8001100, align 4
  store i32 %v2_8001114, i32* %r0.global-to-local, align 4
  %v1_8001116 = add i32 %v2_8001114, 3
  %v2_8001116 = inttoptr i32 %v1_8001116 to i8*
  %v3_8001116 = load i8, i8* %v2_8001116, align 1
  %v4_8001116 = zext i8 %v3_8001116 to i32
  store i32 %v4_8001116, i32* %r0.global-to-local, align 4
  %v2_8001118 = icmp eq i8 %v3_8001116, 0
  br i1 %v2_8001118, label %dec_label_pc_8001120, label %dec_label_pc_800111c

dec_label_pc_800111c:                             ; preds = %dec_label_pc_800110c, %dec_label_pc_8001114
  store i32 16, i32* %r0.global-to-local, align 4
  %v2_800111e = or i32 %v0_800111e, 16
  store i32 %v2_800111e, i32* @r6, align 4
  br label %dec_label_pc_8001120

dec_label_pc_8001120:                             ; preds = %dec_label_pc_8001114, %dec_label_pc_800111c
  %v1_8001128 = phi i32 [ %v0_800111e, %dec_label_pc_8001114 ], [ %v2_800111e, %dec_label_pc_800111c ]
  %v0_8001120 = load i32, i32* @r4, align 4
  %v1_8001120 = inttoptr i32 %v0_8001120 to i32*
  %v2_8001120 = load i32, i32* %v1_8001120, align 4
  store i32 %v2_8001120, i32* %r0.global-to-local, align 4
  %v1_8001122 = inttoptr i32 %v2_8001120 to i8*
  %v2_8001122 = load i8, i8* %v1_8001122, align 1
  %v3_8001122 = zext i8 %v2_8001122 to i32
  %v2_8001126 = and i32 %v3_8001122, 238
  %v2_8001128 = or i32 %v2_8001126, %v1_8001128
  store i32 %v2_8001128, i32* %r0.global-to-local, align 4
  %v2_800112a = load i32, i32* %v1_8001120, align 4
  %v1_800112c = trunc i32 %v2_8001128 to i8
  %v3_800112c = inttoptr i32 %v2_800112a to i8*
  store i8 %v1_800112c, i8* %v3_800112c, align 1
  %v0_800112e = load i32, i32* @r4, align 4
  %v1_800112e = add i32 %v0_800112e, 10
  %v2_800112e = inttoptr i32 %v1_800112e to i16*
  %v3_800112e = load i16, i16* %v2_800112e, align 2
  %v4_800112e = zext i16 %v3_800112e to i32
  store i32 %v4_800112e, i32* %r0.global-to-local, align 4
  %v1_8001130 = load i32, i32* @r7, align 4
  %v3_8001130 = trunc i32 %v1_8001130 to i16
  %v8_8001132 = icmp slt i16 %v3_800112e, %v3_8001130
  br i1 %v8_8001132, label %dec_label_pc_8001134, label %dec_label_pc_800113c

dec_label_pc_8001134:                             ; preds = %dec_label_pc_8001120
  %v3_8001134 = load i16, i16* %v2_800112e, align 2
  %v4_8001134 = zext i16 %v3_8001134 to i32
  %v2_8001138 = add nsw i32 %v4_8001134, %tmp18
  store i32 %v2_8001138, i32* %r0.global-to-local, align 4
  %v1_800113a = trunc i32 %v2_8001138 to i16
  store i16 %v1_800113a, i16* %v2_800112e, align 2
  br label %dec_label_pc_800113c

dec_label_pc_800113c:                             ; preds = %dec_label_pc_8001120, %dec_label_pc_8001134
  store i32 %tmp19, i32* %r0.global-to-local, align 4
  %v2_800113e = icmp eq i8 %NMTisPreOrOperational, 0
  br i1 %v2_800113e, label %dec_label_pc_80011fa, label %dec_label_pc_8001142

dec_label_pc_8001142:                             ; preds = %dec_label_pc_800113c
  %v0_8001142 = load i32, i32* @r4, align 4
  %v1_8001142 = add i32 %v0_8001142, 20
  %v2_8001142 = inttoptr i32 %v1_8001142 to i32*
  %v3_8001142 = load i32, i32* %v2_8001142, align 4
  store i32 %v3_8001142, i32* %r0.global-to-local, align 4
  %v1_8001144 = add i32 %v3_8001142, 13
  %v2_8001144 = inttoptr i32 %v1_8001144 to i8*
  %v3_8001144 = load i8, i8* %v2_8001144, align 1
  %v4_8001144 = zext i8 %v3_8001144 to i32
  store i32 %v4_8001144, i32* %r0.global-to-local, align 4
  %v2_8001146 = icmp eq i8 %v3_8001144, 0
  br i1 %v2_8001146, label %dec_label_pc_800114a, label %dec_label_pc_80011fa

dec_label_pc_800114a:                             ; preds = %dec_label_pc_8001142
  %v1_800114a = add i32 %v0_8001142, 10
  %v2_800114a = inttoptr i32 %v1_800114a to i16*
  %v3_800114a = load i16, i16* %v2_800114a, align 2
  %v4_800114a = zext i16 %v3_800114a to i32
  store i32 %v4_800114a, i32* %r0.global-to-local, align 4
  %v1_800114c = load i32, i32* @r7, align 4
  %v3_800114c = trunc i32 %v1_800114c to i16
  %v7_800114e = icmp slt i16 %v3_800114a, %v3_800114c
  br i1 %v7_800114e, label %dec_label_pc_80011fa, label %dec_label_pc_8001150

dec_label_pc_8001150:                             ; preds = %dec_label_pc_800114a
  %v0_8001150 = load i32, i32* @r5, align 4
  %v1_8001150 = add i32 %v0_8001150, 92
  %v2_8001150 = inttoptr i32 %v1_8001150 to i32*
  %v3_8001150 = load i32, i32* %v2_8001150, align 4
  %v1_8001152 = add i32 %v0_8001150, 96
  %v2_8001152 = inttoptr i32 %v1_8001152 to i32*
  %v3_8001152 = load i32, i32* %v2_8001152, align 4
  store i32 %v3_8001152, i32* %r0.global-to-local, align 4
  %v9_8001154 = icmp eq i32 %v3_8001152, %v3_8001150
  br i1 %v9_8001154, label %dec_label_pc_8001158, label %dec_label_pc_8001160

dec_label_pc_8001158:                             ; preds = %dec_label_pc_8001150
  store i32 100, i32* %r0.global-to-local, align 4
  %v2_800115a = add i32 %v0_8001150, 100
  %v3_800115a = inttoptr i32 %v2_800115a to i8*
  %v4_800115a = load i8, i8* %v3_800115a, align 1
  %v6_800115a = zext i8 %v4_800115a to i32
  store i32 %v6_800115a, i32* %r0.global-to-local, align 4
  %v2_800115c = icmp eq i8 %v4_800115a, 0
  br i1 %v2_800115c, label %dec_label_pc_80011fa, label %dec_label_pc_8001160

dec_label_pc_8001160:                             ; preds = %dec_label_pc_8001150, %dec_label_pc_8001158
  %v1_8001160 = inttoptr i32 %v0_8001142 to i32*
  %v2_8001160 = load i32, i32* %v1_8001160, align 4
  store i32 %v2_8001160, i32* %r0.global-to-local, align 4
  %v1_8001162 = inttoptr i32 %v2_8001160 to i8*
  %v2_8001162 = load i8, i8* %v1_8001162, align 1
  %v3_8001162 = zext i8 %v2_8001162 to i32
  store i32 %v3_8001162, i32* %r0.global-to-local, align 4
  %v3_8001164 = load i32, i32* %v2_8001152, align 4
  %v3_8001166 = add i32 %v3_8001164, 2
  %v4_8001166 = inttoptr i32 %v3_8001166 to i8*
  store i8 %v2_8001162, i8* %v4_8001166, align 1
  %v0_8001168 = load i32, i32* @r5, align 4
  %v1_8001168 = add i32 %v0_8001168, 96
  %v2_8001168 = inttoptr i32 %v1_8001168 to i32*
  %v3_8001168 = load i32, i32* %v2_8001168, align 4
  %v4_8001168 = inttoptr i32 %v3_8001168 to i8*
  %v0_800116a = load i32, i32* @r4, align 4
  %v1_800116a = add i32 %v0_800116a, 20
  %v2_800116a = inttoptr i32 %v1_800116a to i32*
  %v3_800116a = load i32, i32* %v2_800116a, align 4
  %v1_800116c = add i32 %v3_800116a, 5
  %v2_800116c = inttoptr i32 %v1_800116c to i8*
  store i32 %v1_800116c, i32* %r0.global-to-local, align 4
  call void @CO_memcpy(i8* %v2_800116c, i8* %v4_8001168, i16 8)
  %tmp31 = bitcast i32* %preDEF_-40 to i8*
  store i32 %v2_80010d2, i32* %r0.global-to-local, align 4
  %v0_8001178 = load i32, i32* @r5, align 4
  %v1_8001178 = add i32 %v0_8001178, 96
  %v2_8001178 = inttoptr i32 %v1_8001178 to i32*
  %v3_8001178 = load i32, i32* %v2_8001178, align 4
  %v4_8001178 = inttoptr i32 %v3_8001178 to i8*
  call void @CO_memcpy(i8* %tmp31, i8* %v4_8001178, i16 4)
  store i32 ptrtoint (i32* @0 to i32), i32* %r0.global-to-local, align 4
  %v0_800117e = load i32, i32* @r5, align 4
  %v1_800117e = add i32 %v0_800117e, 96
  %v2_800117e = inttoptr i32 %v1_800117e to i32*
  %v3_800117e = load i32, i32* %v2_800117e, align 4
  %v1_8001180 = add i32 %v3_800117e, 8
  store i32 %v1_8001180, i32* %r0.global-to-local, align 4
  store i32 %v1_8001180, i32* %v2_800117e, align 4
  %v0_8001184 = load i32, i32* @r5, align 4
  %v1_8001184 = add i32 %v0_8001184, 88
  %v2_8001184 = inttoptr i32 %v1_8001184 to i32*
  %v3_8001184 = load i32, i32* %v2_8001184, align 4
  %v1_8001186 = add i32 %v0_8001184, 96
  %v2_8001186 = inttoptr i32 %v1_8001186 to i32*
  %v3_8001186 = load i32, i32* %v2_8001186, align 4
  store i32 %v3_8001186, i32* %r0.global-to-local, align 4
  %v9_8001188 = icmp eq i32 %v3_8001186, %v3_8001184
  br i1 %v9_8001188, label %dec_label_pc_800118c, label %dec_label_pc_8001190

dec_label_pc_800118c:                             ; preds = %dec_label_pc_8001160
  %v1_800118c = add i32 %v0_8001184, 5
  store i32 %v1_800118c, i32* %r0.global-to-local, align 4
  store i32 %v1_800118c, i32* %v2_8001186, align 4
  br label %dec_label_pc_8001190

dec_label_pc_8001190:                             ; preds = %dec_label_pc_8001160, %dec_label_pc_800118c
  %v2_8001192 = load i32, i32* @r4, align 4
  %v3_8001192 = add i32 %v2_8001192, 10
  %v4_8001192 = inttoptr i32 %v3_8001192 to i16*
  store i16 0, i16* %v4_8001192, align 2
  store i32 100, i32* %r0.global-to-local, align 4
  %v1_8001196 = load i32, i32* @r5, align 4
  %v2_8001196 = add i32 %v1_8001196, 100
  %v3_8001196 = inttoptr i32 %v2_8001196 to i8*
  %v4_8001196 = load i8, i8* %v3_8001196, align 1
  %v7_8001198 = icmp eq i8 %v4_8001196, 2
  store i32 100, i32* %r0.global-to-local, align 4
  store i8 0, i8* %v3_8001196, align 1
  br i1 %v7_8001198, label %dec_label_pc_800119c, label %dec_label_pc_80011b8

dec_label_pc_800119c:                             ; preds = %dec_label_pc_8001190
  %v0_80011aa = load i32, i32* @r5, align 4
  store i32 %v0_80011aa, i32* %r0.global-to-local, align 4
  call void @CO_errorReport(i32 %v0_80011aa, i8 32, i16 4096, i32 0)
  store i32 ptrtoint (i32* @0 to i32), i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80011b8

dec_label_pc_80011b8:                             ; preds = %dec_label_pc_8001190, %dec_label_pc_800119c
  %v0_80011b8 = load i32, i32* @r4, align 4
  %v1_80011b8 = add i32 %v0_80011b8, 4
  %v2_80011b8 = inttoptr i32 %v1_80011b8 to i32*
  %v3_80011b8 = load i32, i32* %v2_80011b8, align 4
  store i32 %v3_80011b8, i32* %r0.global-to-local, align 4
  %v2_80011ba = icmp eq i32 %v3_80011b8, 0
  br i1 %v2_80011ba, label %dec_label_pc_80011f0, label %dec_label_pc_80011be

dec_label_pc_80011be:                             ; preds = %dec_label_pc_80011b8
  %v1_80011be = add i32 %v0_80011b8, 9
  %v2_80011be = inttoptr i32 %v1_80011be to i8*
  %v3_80011be = load i8, i8* %v2_80011be, align 1
  %v1_80011c0 = add i32 %v0_80011b8, 8
  %v2_80011c0 = inttoptr i32 %v1_80011c0 to i8*
  %v3_80011c0 = load i8, i8* %v2_80011c0, align 1
  %v6_80011c4 = icmp ult i8 %v3_80011be, %v3_80011c0
  br i1 %v6_80011c4, label %dec_label_pc_80011c6, label %dec_label_pc_80011cc

dec_label_pc_80011c6:                             ; preds = %dec_label_pc_80011be
  %v3_80011c6 = load i8, i8* %v2_80011be, align 1
  %v1_80011c8 = add i8 %v3_80011c6, 1
  store i8 %v1_80011c8, i8* %v2_80011be, align 1
  %v0_80011cc.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80011cc

dec_label_pc_80011cc:                             ; preds = %dec_label_pc_80011be, %dec_label_pc_80011c6
  %v0_80011cc = phi i32 [ %v0_80011b8, %dec_label_pc_80011be ], [ %v0_80011cc.pre, %dec_label_pc_80011c6 ]
  %v1_80011cc = add i32 %v0_80011cc, 9
  %v2_80011cc = inttoptr i32 %v1_80011cc to i8*
  %v3_80011cc = load i8, i8* %v2_80011cc, align 1
  %v4_80011cc = zext i8 %v3_80011cc to i32
  %v1_80011ce = add nsw i32 %v4_80011cc, -1
  %storemerge8 = urem i32 %v1_80011ce, 256
  store i32 %storemerge8, i32* %r0.global-to-local, align 4
  %v2_80011e49 = icmp eq i32 %storemerge8, 0
  br i1 %v2_80011e49, label %dec_label_pc_80011e8, label %dec_label_pc_80011d4

dec_label_pc_80011d4:                             ; preds = %dec_label_pc_80011cc, %dec_label_pc_80011d4
  %v0_80011d8 = phi i32 [ %v0_80011ea.pre, %dec_label_pc_80011d4 ], [ %v0_80011cc, %dec_label_pc_80011cc ]
  %v0_80011dc = phi i32 [ %storemerge, %dec_label_pc_80011d4 ], [ %storemerge8, %dec_label_pc_80011cc ]
  %v1_80011d4 = mul nuw nsw i32 %v0_80011dc, 4
  %v3_80011d6 = add nsw i32 %v1_80011d4, -4
  %v1_80011d8 = add i32 %v0_80011d8, 4
  %v2_80011d8 = inttoptr i32 %v1_80011d8 to i32*
  %v3_80011d8 = load i32, i32* %v2_80011d8, align 4
  %v2_80011da = add i32 %v3_80011d6, %v3_80011d8
  %v3_80011da = inttoptr i32 %v2_80011da to i32*
  %v4_80011da = load i32, i32* %v3_80011da, align 4
  %v3_80011de = add i32 %v3_80011d8, %v1_80011d4
  %v4_80011de = inttoptr i32 %v3_80011de to i32*
  store i32 %v4_80011da, i32* %v4_80011de, align 4
  %v0_80011e0 = load i32, i32* %r0.global-to-local, align 4
  %v1_80011e0 = add i32 %v0_80011e0, -1
  %storemerge = urem i32 %v1_80011e0, 256
  store i32 %storemerge, i32* %r0.global-to-local, align 4
  %v2_80011e4 = icmp eq i32 %storemerge, 0
  %v0_80011ea.pre = load i32, i32* @r4, align 4
  br i1 %v2_80011e4, label %dec_label_pc_80011e8, label %dec_label_pc_80011d4

dec_label_pc_80011e8:                             ; preds = %dec_label_pc_80011d4, %dec_label_pc_80011cc
  %v0_80011ea = phi i32 [ %v0_80011cc, %dec_label_pc_80011cc ], [ %v0_80011ea.pre, %dec_label_pc_80011d4 ]
  %v2_80011e8 = load i32, i32* %preDEF_-40, align 4
  %v1_80011ea = add i32 %v0_80011ea, 4
  %v2_80011ea = inttoptr i32 %v1_80011ea to i32*
  %v3_80011ea = load i32, i32* %v2_80011ea, align 4
  %v2_80011ec = inttoptr i32 %v3_80011ea to i32*
  store i32 %v2_80011e8, i32* %v2_80011ec, align 4
  %v0_80011f0.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80011f0

dec_label_pc_80011f0:                             ; preds = %dec_label_pc_80011b8, %dec_label_pc_80011e8
  %v0_80011f0 = phi i32 [ %v0_80011b8, %dec_label_pc_80011b8 ], [ %v0_80011f0.pre, %dec_label_pc_80011e8 ]
  %v1_80011f0 = add i32 %v0_80011f0, 20
  %v2_80011f0 = inttoptr i32 %v1_80011f0 to i32*
  %v3_80011f0 = load i32, i32* %v2_80011f0, align 4
  %v1_80011f2 = add i32 %v0_80011f0, 16
  %v2_80011f2 = inttoptr i32 %v1_80011f2 to i32*
  %v3_80011f2 = load i32, i32* %v2_80011f2, align 4
  store i32 %v3_80011f2, i32* %r0.global-to-local, align 4
  %v2_80011f4 = call i32 @CO_CANsend(i32 %v3_80011f2, i32 %v3_80011f0)
  store i32 %v2_80011f4, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80011fa

dec_label_pc_80011fa:                             ; preds = %dec_label_pc_8001142, %dec_label_pc_8001158, %dec_label_pc_800114a, %dec_label_pc_800113c, %dec_label_pc_80011f0
  store i32 %v24_80010d0, i32* @r4, align 4
  store i32 %v27_80010d0, i32* @r5, align 4
  store i32 %v30_80010d0, i32* @r6, align 4
  store i32 %v33_80010d0, i32* @r7, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v0_80011f0, { 1, 0 }
  uselistorder i32 %storemerge, { 1, 0, 2 }
  uselistorder i32 %v1_80011d4, { 1, 0 }
  uselistorder i32 %storemerge8, { 2, 1, 0 }
  uselistorder i32 %v0_80011cc, { 1, 0, 2 }
  uselistorder i32 %v0_80011b8, { 0, 1, 3, 2, 4 }
  uselistorder i32 %v1_800116c, { 1, 0 }
  uselistorder i32 %v1_80010e2, { 0, 2, 1, 3 }
  uselistorder i32* %preDEF_-40, { 1, 0, 2 }
  uselistorder i32* %r0.global-to-local, { 6, 2, 4, 3, 1, 5, 13, 7, 8, 9, 10, 11, 12, 15, 14, 16, 17, 18, 19, 21, 20, 22, 23, 24, 25, 26, 27, 28, 29, 32, 30, 31, 33, 34, 38, 35, 36, 37, 39, 41, 40, 43, 42, 0 }
  uselistorder i32 %emPr, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_80011fa, { 4, 1, 2, 0, 3 }
  uselistorder label %dec_label_pc_80011f0, { 1, 0 }
  uselistorder label %dec_label_pc_80011d4, { 1, 0 }
  uselistorder label %dec_label_pc_80011cc, { 1, 0 }
  uselistorder label %dec_label_pc_80011b8, { 1, 0 }
  uselistorder label %dec_label_pc_8001190, { 1, 0 }
  uselistorder label %dec_label_pc_8001160, { 1, 0 }
  uselistorder label %dec_label_pc_800113c, { 1, 0 }
  uselistorder label %dec_label_pc_8001120, { 1, 0 }
  uselistorder label %dec_label_pc_800111c, { 1, 0 }
  uselistorder label %dec_label_pc_800110c, { 1, 0 }
  uselistorder label %dec_label_pc_80010fe, { 1, 0 }
}

define void @CO_HBcons_monitoredNodeConfig(i32 %HBcons, i8 %idx, i32 %HBconsTime) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %tmp = sext i8 %idx to i32
  store i32 %HBcons, i32* %r0.global-to-local, align 4
  %v3_8001200 = load i32, i32* @r4, align 4
  %v6_8001200 = load i32, i32* @r5, align 4
  %v9_8001200 = load i32, i32* @r6, align 4
  %v12_8001200 = load i32, i32* @r7, align 4
  store i32 %HBcons, i32* @r4, align 4
  store i32 %tmp, i32* @r6, align 4
  %v1_800120a = add i32 %HBcons, 12
  %v2_800120a = inttoptr i32 %v1_800120a to i8*
  %v3_800120a = load i8, i8* %v2_800120a, align 1
  %v4_800120a = zext i8 %v3_800120a to i32
  store i32 %v4_800120a, i32* %r0.global-to-local, align 4
  %v10_800120e = icmp sgt i8 %v3_800120a, %idx
  br i1 %v10_800120e, label %dec_label_pc_8001214, label %dec_label_pc_8001210

dec_label_pc_8001210:                             ; preds = %entry, %dec_label_pc_8001248
  store i32 %v3_8001200, i32* @r4, align 4
  store i32 %v6_8001200, i32* @r5, align 4
  store i32 %v9_8001200, i32* @r6, align 4
  store i32 %v12_8001200, i32* @r7, align 4
  ret void

dec_label_pc_8001214:                             ; preds = %entry
  %tmp18 = udiv i32 %HBconsTime, 65536
  %v3_8001216 = urem i32 %tmp18, 256
  store i32 %v3_8001216, i32* %r0.global-to-local, align 4
  %v4_8001216 = icmp eq i32 %v3_8001216, 0
  %v3_800121a = mul nsw i32 %tmp, 8
  %v1_800121c = add i32 %HBcons, 8
  %v2_800121c = inttoptr i32 %v1_800121c to i32*
  %v3_800121c = load i32, i32* %v2_800121c, align 4
  %v2_800121e = add i32 %v3_800121c, %v3_800121a
  store i32 %v2_800121e, i32* @r5, align 4
  %v1_8001220 = trunc i32 %HBconsTime to i16
  %v3_8001220 = add i32 %v2_800121e, 4
  %v4_8001220 = inttoptr i32 %v3_8001220 to i16*
  store i16 %v1_8001220, i16* %v4_8001220, align 2
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8001224 = load i32, i32* @r5, align 4
  %v3_8001224 = inttoptr i32 %v2_8001224 to i8*
  store i8 0, i8* %v3_8001224, align 1
  %v0_8001226 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001226 = trunc i32 %v0_8001226 to i8
  %v2_8001226 = load i32, i32* @r5, align 4
  %v3_8001226 = add i32 %v2_8001226, 1
  %v4_8001226 = inttoptr i32 %v3_8001226 to i8*
  store i8 %v1_8001226, i8* %v4_8001226, align 1
  store i32 %v3_8001216, i32* %r0.global-to-local, align 4
  %v2_8001246.pre = load i32, i32* @r5, align 4
  %.pre = add i32 %v2_8001246.pre, 4
  %.pre19 = inttoptr i32 %.pre to i16*
  br i1 %v4_8001216, label %dec_label_pc_8001242, label %dec_label_pc_800122e

dec_label_pc_800122e:                             ; preds = %dec_label_pc_8001214
  %v3_800122e = load i16, i16* %.pre19, align 2
  %v4_800122e = zext i16 %v3_800122e to i32
  store i32 %v4_800122e, i32* %r0.global-to-local, align 4
  %v2_8001230 = icmp eq i16 %v3_800122e, 0
  br i1 %v2_8001230, label %dec_label_pc_8001242, label %dec_label_pc_8001234

dec_label_pc_8001234:                             ; preds = %dec_label_pc_800122e
  %v2_800123a = or i32 %v3_8001216, 1792
  store i32 %v2_800123a, i32* %r0.global-to-local, align 4
  %extract.t = trunc i32 %v2_800123a to i16
  br label %dec_label_pc_8001248

dec_label_pc_8001242:                             ; preds = %dec_label_pc_8001214, %dec_label_pc_800122e
  store i32 0, i32* %r0.global-to-local, align 4
  store i16 0, i16* %.pre19, align 2
  br label %dec_label_pc_8001248

dec_label_pc_8001248:                             ; preds = %dec_label_pc_8001234, %dec_label_pc_8001242
  %stack_var_-24.0.off0 = phi i16 [ 0, %dec_label_pc_8001242 ], [ %extract.t, %dec_label_pc_8001234 ]
  %v0_800124a = load i32, i32* @r6, align 4
  %v3_800124a = mul i32 %v0_800124a, 8
  %v0_800124c = load i32, i32* @r4, align 4
  %v1_800124c = add i32 %v0_800124c, 8
  %v2_800124c = inttoptr i32 %v1_800124c to i32*
  %v3_800124c = load i32, i32* %v2_800124c, align 4
  %v2_800124e = add i32 %v3_800124c, %v3_800124a
  store i32 %v2_800124e, i32* %r0.global-to-local, align 4
  %v5_8001256 = inttoptr i32 %v2_800124e to i8*
  %v1_8001258 = add i32 %v0_800124c, 20
  %v2_8001258 = inttoptr i32 %v1_8001258 to i16*
  %v3_8001258 = load i16, i16* %v2_8001258, align 2
  %v4_8001258 = zext i16 %v3_8001258 to i32
  %v2_800125a = add i32 %v4_8001258, %v0_800124a
  store i32 %v2_800125a, i32* %r0.global-to-local, align 4
  %v2_800125c = trunc i32 %v2_800125a to i16
  %v1_800125e = add i32 %v0_800124c, 16
  %v2_800125e = inttoptr i32 %v1_800125e to i32*
  %v3_800125e = load i32, i32* %v2_800125e, align 4
  store i32 %v3_800125e, i32* %r0.global-to-local, align 4
  %v20_8001266 = call i32 @CO_CANrxBufferInit(i32 %v3_800125e, i16 %v2_800125c, i16 %stack_var_-24.0.off0, i16 2047, i8 0, i8* %v5_8001256, void (i8*, %anon_struct_31*)* inttoptr (i32 134222457 to void (i8*, %anon_struct_31*)*))
  store i32 %v20_8001266, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8001210

; uselistorder directives
  uselistorder i32 %v0_800124a, { 1, 0 }
  uselistorder i32 %v3_8001216, { 3, 2, 0, 1 }
  uselistorder i32* %r0.global-to-local, { 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 0 }
  uselistorder i32 %HBconsTime, { 1, 0 }
  uselistorder i32 %HBcons, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_8001248, { 1, 0 }
  uselistorder label %dec_label_pc_8001242, { 1, 0 }
  uselistorder label %dec_label_pc_8001210, { 1, 0 }
}

define i32 @CO_HBconsumer_init(i32 %HBcons, i32 %em, i32 %SDO, i32* %HBconsTime, i32 %monitoredNodes, i8 %numberOfMonitoredNodes, i32 %CANdevRx, i16 %CANdevRxIdxStart) local_unnamed_addr {
entry:
  %tmp = ptrtoint i32* %HBconsTime to i32
  %v15_800128c = load i32, i32* @r4, align 4
  store i32 %HBcons, i32* @r4, align 4
  store i32 %em, i32* @r6, align 4
  store i32 %tmp, i32* @r7, align 4
  %v2_8001296 = icmp eq i32 %HBcons, 0
  %v2_800129a = icmp eq i32 %em, 0
  %or.cond = or i1 %v2_8001296, %v2_800129a
  br i1 %or.cond, label %dec_label_pc_80012b4, label %dec_label_pc_800129e

dec_label_pc_800129e:                             ; preds = %entry
  %v2_80012a0 = icmp eq i32 %SDO, 0
  %v2_80012a4 = icmp eq i32* %HBconsTime, null
  %or.cond35 = or i1 %v2_80012a0, %v2_80012a4
  br i1 %or.cond35, label %dec_label_pc_80012b4, label %dec_label_pc_80012a8

dec_label_pc_80012a8:                             ; preds = %dec_label_pc_800129e
  %v2_80012aa = icmp eq i32 %monitoredNodes, 0
  br i1 %v2_80012aa, label %dec_label_pc_80012b4, label %dec_label_pc_80012ae

dec_label_pc_80012ae:                             ; preds = %dec_label_pc_80012a8
  %v2_80012b0 = icmp eq i32 %CANdevRx, 0
  br i1 %v2_80012b0, label %dec_label_pc_80012b4, label %dec_label_pc_80012bc

dec_label_pc_80012b4:                             ; preds = %dec_label_pc_80012ae, %dec_label_pc_80012a8, %dec_label_pc_800129e, %entry
  br label %dec_label_pc_80012b8

dec_label_pc_80012b8:                             ; preds = %dec_label_pc_80012f0, %dec_label_pc_80012b4
  %storemerge6 = phi i32 [ 0, %dec_label_pc_80012f0 ], [ -1, %dec_label_pc_80012b4 ]
  store i32 %v15_800128c, i32* @r4, align 4
  ret i32 %storemerge6

dec_label_pc_80012bc:                             ; preds = %dec_label_pc_80012ae
  %v2_80012bc = inttoptr i32 %HBcons to i32*
  store i32 %em, i32* %v2_80012bc, align 4
  %v0_80012be = load i32, i32* @r7, align 4
  %v1_80012be = load i32, i32* @r4, align 4
  %v2_80012be = add i32 %v1_80012be, 4
  %v3_80012be = inttoptr i32 %v2_80012be to i32*
  store i32 %v0_80012be, i32* %v3_80012be, align 4
  %v1_80012c2 = load i32, i32* @r4, align 4
  %v2_80012c2 = add i32 %v1_80012c2, 8
  %v3_80012c2 = inttoptr i32 %v2_80012c2 to i32*
  store i32 %monitoredNodes, i32* %v3_80012c2, align 4
  %v2_80012c6 = load i32, i32* @r4, align 4
  %v3_80012c6 = add i32 %v2_80012c6, 12
  %v4_80012c6 = inttoptr i32 %v3_80012c6 to i8*
  store i8 %numberOfMonitoredNodes, i8* %v4_80012c6, align 1
  %v2_80012ca = load i32, i32* @r4, align 4
  %v3_80012ca = add i32 %v2_80012ca, 13
  %v4_80012ca = inttoptr i32 %v3_80012ca to i8*
  store i8 0, i8* %v4_80012ca, align 1
  %v1_80012ce = load i32, i32* @r4, align 4
  %v2_80012ce = add i32 %v1_80012ce, 16
  %v3_80012ce = inttoptr i32 %v2_80012ce to i32*
  store i32 %CANdevRx, i32* %v3_80012ce, align 4
  %v2_80012d2 = load i32, i32* @r4, align 4
  %v3_80012d2 = add i32 %v2_80012d2, 20
  %v4_80012d2 = inttoptr i32 %v3_80012d2 to i16*
  store i16 %CANdevRxIdxStart, i16* %v4_80012d2, align 2
  store i32 0, i32* @r5, align 4
  %v0_80012ea7 = load i32, i32* @r4, align 4
  %v1_80012ea8 = add i32 %v0_80012ea7, 12
  %v2_80012ea9 = inttoptr i32 %v1_80012ea8 to i8*
  %v3_80012ea10 = load i8, i8* %v2_80012ea9, align 1
  %v9_80012ec14 = icmp eq i8 %v3_80012ea10, 0
  br i1 %v9_80012ec14, label %dec_label_pc_80012f0, label %dec_label_pc_80012d8

dec_label_pc_80012d8:                             ; preds = %dec_label_pc_80012bc, %dec_label_pc_80012d8
  %v0_80012e0 = phi i32 [ %v0_80012ea, %dec_label_pc_80012d8 ], [ %v0_80012ea7, %dec_label_pc_80012bc ]
  %v0_80012de = phi i32 [ %v1_80012e8, %dec_label_pc_80012d8 ], [ 0, %dec_label_pc_80012bc ]
  %v3_80012d8 = mul nuw nsw i32 %v0_80012de, 4
  %v1_80012da = add i32 %v0_80012e0, 4
  %v2_80012da = inttoptr i32 %v1_80012da to i32*
  %v3_80012da = load i32, i32* %v2_80012da, align 4
  %v2_80012dc = add i32 %v3_80012da, %v3_80012d8
  %v3_80012dc = inttoptr i32 %v2_80012dc to i32*
  %v4_80012dc = load i32, i32* %v3_80012dc, align 4
  %v1_80012de = trunc i32 %v0_80012de to i8
  call void @CO_HBcons_monitoredNodeConfig(i32 %v0_80012e0, i8 %v1_80012de, i32 %v4_80012dc)
  %v0_80012e6 = load i32, i32* @r5, align 4
  %v1_80012e6 = add i32 %v0_80012e6, 1
  %v1_80012e8 = urem i32 %v1_80012e6, 256
  store i32 %v1_80012e8, i32* @r5, align 4
  %v0_80012ea = load i32, i32* @r4, align 4
  %v1_80012ea = add i32 %v0_80012ea, 12
  %v2_80012ea = inttoptr i32 %v1_80012ea to i8*
  %v3_80012ea = load i8, i8* %v2_80012ea, align 1
  %v4_80012ea = zext i8 %v3_80012ea to i32
  %v8_80012ee = icmp ugt i32 %v4_80012ea, %v1_80012e8
  br i1 %v8_80012ee, label %dec_label_pc_80012d8, label %dec_label_pc_80012f0

dec_label_pc_80012f0:                             ; preds = %dec_label_pc_80012d8, %dec_label_pc_80012bc
  %v0_80012f4 = phi i32 [ %v0_80012ea7, %dec_label_pc_80012bc ], [ %v0_80012ea, %dec_label_pc_80012d8 ]
  %v10_80012fe = inttoptr i32 %v0_80012f4 to i8*
  call void @CO_OD_configure(i32 %SDO, i16 4118, i32 134224245, i8* %v10_80012fe, i8* null, i8 0)
  br label %dec_label_pc_80012b8

; uselistorder directives
  uselistorder i32 %v0_80012ea, { 0, 2, 1 }
  uselistorder i32 %v1_80012e8, { 1, 0, 2 }
  uselistorder i32 %v0_80012de, { 1, 0 }
  uselistorder i32 %v0_80012ea7, { 1, 0, 2 }
  uselistorder i32 %CANdevRx, { 1, 0 }
  uselistorder i32 %em, { 1, 0, 2 }
  uselistorder i32 %HBcons, { 0, 2, 1 }
  uselistorder label %dec_label_pc_80012d8, { 1, 0 }
}

define void @CO_HBconsumer_process(i32 %HBcons, i8 %NMTisPreOrOperational, i16 %timeDifference_ms) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  store i32 %HBcons, i32* %r0.global-to-local, align 4
  store i32 %HBcons, i32* @r5, align 4
  store i32 5, i32* %r0.global-to-local, align 4
  %v1_800131c = add i32 %HBcons, 8
  %v2_800131c = inttoptr i32 %v1_800131c to i32*
  %v3_800131c = load i32, i32* %v2_800131c, align 4
  store i32 %v3_800131c, i32* @r4, align 4
  %v2_800131e = icmp eq i8 %NMTisPreOrOperational, 0
  store i32 0, i32* @r6, align 4
  %v1_80013b27 = add i32 %HBcons, 12
  %v2_80013b28 = inttoptr i32 %v1_80013b27 to i8*
  %v3_80013b29 = load i8, i8* %v2_80013b28, align 1
  br i1 %v2_800131e, label %dec_label_pc_80013b2.preheader, label %dec_label_pc_8001398.preheader

dec_label_pc_8001398.preheader:                   ; preds = %entry
  %v4_800139819 = zext i8 %v3_80013b29 to i32
  store i32 %v4_800139819, i32* %r0.global-to-local, align 4
  %v9_800139a22 = icmp eq i8 %v3_80013b29, 0
  br i1 %v9_800139a22, label %dec_label_pc_80013bc, label %dec_label_pc_8001326

dec_label_pc_80013b2.preheader:                   ; preds = %entry
  %v8_80013b614 = icmp eq i8 %v3_80013b29, 0
  store i32 0, i32* %r0.global-to-local, align 4
  br i1 %v8_80013b614, label %dec_label_pc_80013bc, label %dec_label_pc_80013a4

dec_label_pc_8001326:                             ; preds = %dec_label_pc_8001398.preheader, %dec_label_pc_8001392
  %v0_800139850 = phi i32 [ %v0_8001398, %dec_label_pc_8001392 ], [ %HBcons, %dec_label_pc_8001398.preheader ]
  %v0_800139448 = phi i32 [ %v1_8001396, %dec_label_pc_8001392 ], [ 0, %dec_label_pc_8001398.preheader ]
  %v2_800133a = phi i32 [ %v1_8001392, %dec_label_pc_8001392 ], [ %v3_800131c, %dec_label_pc_8001398.preheader ]
  %stack_var_-24.325 = phi i16 [ %stack_var_-24.2, %dec_label_pc_8001392 ], [ %timeDifference_ms, %dec_label_pc_8001398.preheader ]
  %AllMonitoredOperationalCopy_-36.124 = phi i8 [ %AllMonitoredOperationalCopy_-36.0, %dec_label_pc_8001392 ], [ 5, %dec_label_pc_8001398.preheader ]
  %v1_8001326 = add i32 %v2_800133a, 4
  %v2_8001326 = inttoptr i32 %v1_8001326 to i16*
  %v3_8001326 = load i16, i16* %v2_8001326, align 2
  %v4_8001326 = zext i16 %v3_8001326 to i32
  store i32 %v4_8001326, i32* %r0.global-to-local, align 4
  %v2_8001328 = icmp eq i16 %v3_8001326, 0
  br i1 %v2_8001328, label %dec_label_pc_8001392, label %dec_label_pc_800132c

dec_label_pc_800132c:                             ; preds = %dec_label_pc_8001326
  %v1_800132c = add i32 %v2_800133a, 6
  %v2_800132c = inttoptr i32 %v1_800132c to i8*
  %v3_800132c = load i8, i8* %v2_800132c, align 1
  %v4_800132c = zext i8 %v3_800132c to i32
  store i32 %v4_800132c, i32* %r0.global-to-local, align 4
  %v2_800132e = icmp eq i8 %v3_800132c, 0
  br i1 %v2_800132e, label %dec_label_pc_8001346, label %dec_label_pc_8001332

dec_label_pc_8001332:                             ; preds = %dec_label_pc_800132c
  %v1_8001332 = inttoptr i32 %v2_800133a to i8*
  %v2_8001332 = load i8, i8* %v1_8001332, align 1
  %v3_8001332 = zext i8 %v2_8001332 to i32
  store i32 %v3_8001332, i32* %r0.global-to-local, align 4
  %v2_8001334 = icmp eq i8 %v2_8001332, 0
  br i1 %v2_8001334, label %dec_label_pc_8001342, label %dec_label_pc_8001338

dec_label_pc_8001338:                             ; preds = %dec_label_pc_8001332
  %v3_800133a = add i32 %v2_800133a, 1
  %v4_800133a = inttoptr i32 %v3_800133a to i8*
  store i8 1, i8* %v4_800133a, align 1
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_800133e = load i32, i32* @r4, align 4
  %v3_800133e = add i32 %v2_800133e, 2
  %v4_800133e = inttoptr i32 %v3_800133e to i16*
  store i16 0, i16* %v4_800133e, align 2
  %v0_8001340 = load i32, i32* %r0.global-to-local, align 4
  %v5_8001340 = trunc i32 %v0_8001340 to i16
  %v2_8001344.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8001342

dec_label_pc_8001342:                             ; preds = %dec_label_pc_8001332, %dec_label_pc_8001338
  %v2_8001344 = phi i32 [ %v2_800133a, %dec_label_pc_8001332 ], [ %v2_8001344.pre, %dec_label_pc_8001338 ]
  %stack_var_-24.0 = phi i16 [ %stack_var_-24.325, %dec_label_pc_8001332 ], [ %v5_8001340, %dec_label_pc_8001338 ]
  store i32 0, i32* %r0.global-to-local, align 4
  %v3_8001344 = add i32 %v2_8001344, 6
  %v4_8001344 = inttoptr i32 %v3_8001344 to i8*
  store i8 0, i8* %v4_8001344, align 1
  %v0_8001346.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8001346

dec_label_pc_8001346:                             ; preds = %dec_label_pc_800132c, %dec_label_pc_8001342
  %v2_8001354 = phi i32 [ %v2_800133a, %dec_label_pc_800132c ], [ %v0_8001346.pre, %dec_label_pc_8001342 ]
  %stack_var_-24.1 = phi i16 [ %stack_var_-24.325, %dec_label_pc_800132c ], [ %stack_var_-24.0, %dec_label_pc_8001342 ]
  %v1_8001346 = add i32 %v2_8001354, 2
  %v2_8001346 = inttoptr i32 %v1_8001346 to i16*
  %v3_8001346 = load i16, i16* %v2_8001346, align 2
  %v4_8001346 = zext i16 %v3_8001346 to i32
  store i32 %v4_8001346, i32* %r0.global-to-local, align 4
  %v1_8001348 = add i32 %v2_8001354, 4
  %v2_8001348 = inttoptr i32 %v1_8001348 to i16*
  %v3_8001348 = load i16, i16* %v2_8001348, align 2
  %v6_800134c = icmp ult i16 %v3_8001346, %v3_8001348
  br i1 %v6_800134c, label %dec_label_pc_800134e, label %dec_label_pc_8001356

dec_label_pc_800134e:                             ; preds = %dec_label_pc_8001346
  %v3_800134e = load i16, i16* %v2_8001346, align 2
  %v4_800134e = zext i16 %v3_800134e to i32
  %v4_8001350 = sext i16 %stack_var_-24.1 to i32
  %v2_8001352 = add nsw i32 %v4_800134e, %v4_8001350
  store i32 %v2_8001352, i32* %r0.global-to-local, align 4
  %v1_8001354 = trunc i32 %v2_8001352 to i16
  store i16 %v1_8001354, i16* %v2_8001346, align 2
  %v0_8001356.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8001356

dec_label_pc_8001356:                             ; preds = %dec_label_pc_8001346, %dec_label_pc_800134e
  %v0_8001376 = phi i32 [ %v2_8001354, %dec_label_pc_8001346 ], [ %v0_8001356.pre, %dec_label_pc_800134e ]
  %v1_8001356 = add i32 %v0_8001376, 1
  %v2_8001356 = inttoptr i32 %v1_8001356 to i8*
  %v3_8001356 = load i8, i8* %v2_8001356, align 1
  %v4_8001356 = zext i8 %v3_8001356 to i32
  store i32 %v4_8001356, i32* %r0.global-to-local, align 4
  %v2_8001358 = icmp eq i8 %v3_8001356, 0
  br i1 %v2_8001358, label %dec_label_pc_8001388, label %dec_label_pc_800135c

dec_label_pc_800135c:                             ; preds = %dec_label_pc_8001356
  %v1_800135c = add i32 %v0_8001376, 2
  %v2_800135c = inttoptr i32 %v1_800135c to i16*
  %v3_800135c = load i16, i16* %v2_800135c, align 2
  %v4_800135c = zext i16 %v3_800135c to i32
  store i32 %v4_800135c, i32* %r0.global-to-local, align 4
  %v1_800135e = add i32 %v0_8001376, 4
  %v2_800135e = inttoptr i32 %v1_800135e to i16*
  %v3_800135e = load i16, i16* %v2_800135e, align 2
  %v5_8001362 = icmp ult i16 %v3_800135c, %v3_800135e
  br i1 %v5_8001362, label %dec_label_pc_8001376, label %dec_label_pc_8001364

dec_label_pc_8001364:                             ; preds = %dec_label_pc_800135c
  %v0_8001364 = load i32, i32* @r6, align 4
  %v0_800136a = load i32, i32* @r5, align 4
  %v1_800136a = inttoptr i32 %v0_800136a to i32*
  %v2_800136a = load i32, i32* %v1_800136a, align 4
  store i32 %v2_800136a, i32* %r0.global-to-local, align 4
  call void @CO_errorReport(i32 %v2_800136a, i8 27, i16 -32464, i32 %v0_8001364)
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8001372 = load i32, i32* @r4, align 4
  %v3_8001372 = inttoptr i32 %v2_8001372 to i8*
  store i8 0, i8* %v3_8001372, align 1
  br label %dec_label_pc_8001388

dec_label_pc_8001376:                             ; preds = %dec_label_pc_800135c
  %v1_8001376 = inttoptr i32 %v0_8001376 to i8*
  %v2_8001376 = load i8, i8* %v1_8001376, align 1
  %v3_8001376 = zext i8 %v2_8001376 to i32
  store i32 %v3_8001376, i32* %r0.global-to-local, align 4
  %v2_8001378 = icmp eq i8 %v2_8001376, 0
  br i1 %v2_8001378, label %dec_label_pc_800137c, label %dec_label_pc_8001388

dec_label_pc_800137c:                             ; preds = %dec_label_pc_8001376
  %v0_800137c = load i32, i32* @r6, align 4
  %v0_8001382 = load i32, i32* @r5, align 4
  %v1_8001382 = inttoptr i32 %v0_8001382 to i32*
  %v2_8001382 = load i32, i32* %v1_8001382, align 4
  store i32 %v2_8001382, i32* %r0.global-to-local, align 4
  call void @CO_errorReport(i32 %v2_8001382, i8 28, i16 -32464, i32 %v0_800137c)
  store i32 ptrtoint (i32* @0 to i32), i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8001388

dec_label_pc_8001388:                             ; preds = %dec_label_pc_8001376, %dec_label_pc_8001356, %dec_label_pc_8001364, %dec_label_pc_800137c
  %v0_8001388 = load i32, i32* @r4, align 4
  %v1_8001388 = inttoptr i32 %v0_8001388 to i8*
  %v2_8001388 = load i8, i8* %v1_8001388, align 1
  %v3_8001388 = zext i8 %v2_8001388 to i32
  %v7_800138a = icmp eq i8 %v2_8001388, 5
  %v3_8001388. = select i1 %v7_800138a, i32 %v3_8001388, i32 0
  store i32 %v3_8001388., i32* %r0.global-to-local, align 4
  %AllMonitoredOperationalCopy_-36.124. = select i1 %v7_800138a, i8 %AllMonitoredOperationalCopy_-36.124, i8 0
  %v0_8001394.pre = load i32, i32* @r6, align 4
  %v0_8001398.pre = load i32, i32* @r5, align 4
  br label %dec_label_pc_8001392

dec_label_pc_8001392:                             ; preds = %dec_label_pc_8001388, %dec_label_pc_8001326
  %v0_8001398 = phi i32 [ %v0_800139850, %dec_label_pc_8001326 ], [ %v0_8001398.pre, %dec_label_pc_8001388 ]
  %v0_8001394 = phi i32 [ %v0_800139448, %dec_label_pc_8001326 ], [ %v0_8001394.pre, %dec_label_pc_8001388 ]
  %v0_8001392 = phi i32 [ %v2_800133a, %dec_label_pc_8001326 ], [ %v0_8001388, %dec_label_pc_8001388 ]
  %AllMonitoredOperationalCopy_-36.0 = phi i8 [ %AllMonitoredOperationalCopy_-36.124, %dec_label_pc_8001326 ], [ %AllMonitoredOperationalCopy_-36.124., %dec_label_pc_8001388 ]
  %stack_var_-24.2 = phi i16 [ %stack_var_-24.325, %dec_label_pc_8001326 ], [ %stack_var_-24.1, %dec_label_pc_8001388 ]
  %v1_8001392 = add i32 %v0_8001392, 8
  store i32 %v1_8001392, i32* @r4, align 4
  %v1_8001394 = add i32 %v0_8001394, 1
  store i32 %v1_8001394, i32* %r0.global-to-local, align 4
  %v1_8001396 = urem i32 %v1_8001394, 256
  store i32 %v1_8001396, i32* @r6, align 4
  %v1_8001398 = add i32 %v0_8001398, 12
  %v2_8001398 = inttoptr i32 %v1_8001398 to i8*
  %v3_8001398 = load i8, i8* %v2_8001398, align 1
  %v4_8001398 = zext i8 %v3_8001398 to i32
  store i32 %v4_8001398, i32* %r0.global-to-local, align 4
  %v8_800139c = icmp ugt i32 %v4_8001398, %v1_8001396
  br i1 %v8_800139c, label %dec_label_pc_8001326, label %dec_label_pc_80013bc

dec_label_pc_80013a4:                             ; preds = %dec_label_pc_80013b2.preheader, %dec_label_pc_80013a4
  %v2_80013a6 = phi i32 [ %v1_80013ac, %dec_label_pc_80013a4 ], [ %v3_800131c, %dec_label_pc_80013b2.preheader ]
  %v3_80013a6 = inttoptr i32 %v2_80013a6 to i8*
  store i8 0, i8* %v3_80013a6, align 1
  %v0_80013a8 = load i32, i32* %r0.global-to-local, align 4
  %v1_80013a8 = trunc i32 %v0_80013a8 to i8
  %v2_80013a8 = load i32, i32* @r4, align 4
  %v3_80013a8 = add i32 %v2_80013a8, 6
  %v4_80013a8 = inttoptr i32 %v3_80013a8 to i8*
  store i8 %v1_80013a8, i8* %v4_80013a8, align 1
  %v0_80013aa = load i32, i32* %r0.global-to-local, align 4
  %v1_80013aa = trunc i32 %v0_80013aa to i8
  %v2_80013aa = load i32, i32* @r4, align 4
  %v3_80013aa = add i32 %v2_80013aa, 1
  %v4_80013aa = inttoptr i32 %v3_80013aa to i8*
  store i8 %v1_80013aa, i8* %v4_80013aa, align 1
  %v0_80013ac = load i32, i32* @r4, align 4
  %v1_80013ac = add i32 %v0_80013ac, 8
  store i32 %v1_80013ac, i32* @r4, align 4
  %v0_80013ae = load i32, i32* @r6, align 4
  %v1_80013ae = add i32 %v0_80013ae, 1
  store i32 %v1_80013ae, i32* %r0.global-to-local, align 4
  %v1_80013b0 = urem i32 %v1_80013ae, 256
  store i32 %v1_80013b0, i32* @r6, align 4
  %v0_80013b2 = load i32, i32* @r5, align 4
  %v1_80013b2 = add i32 %v0_80013b2, 12
  %v2_80013b2 = inttoptr i32 %v1_80013b2 to i8*
  %v3_80013b2 = load i8, i8* %v2_80013b2, align 1
  %v4_80013b2 = zext i8 %v3_80013b2 to i32
  %v8_80013b6 = icmp ugt i32 %v4_80013b2, %v1_80013b0
  store i32 0, i32* %r0.global-to-local, align 4
  br i1 %v8_80013b6, label %dec_label_pc_80013a4, label %dec_label_pc_80013bc

dec_label_pc_80013bc:                             ; preds = %dec_label_pc_8001392, %dec_label_pc_80013a4, %dec_label_pc_8001398.preheader, %dec_label_pc_80013b2.preheader
  %v2_80013be = phi i32 [ %HBcons, %dec_label_pc_80013b2.preheader ], [ %HBcons, %dec_label_pc_8001398.preheader ], [ %v0_80013b2, %dec_label_pc_80013a4 ], [ %v0_8001398, %dec_label_pc_8001392 ]
  %AllMonitoredOperationalCopy_-36.2 = phi i8 [ 0, %dec_label_pc_80013b2.preheader ], [ 5, %dec_label_pc_8001398.preheader ], [ 0, %dec_label_pc_80013a4 ], [ %AllMonitoredOperationalCopy_-36.0, %dec_label_pc_8001392 ]
  %v4_80013bc = sext i8 %AllMonitoredOperationalCopy_-36.2 to i32
  store i32 %v4_80013bc, i32* %r0.global-to-local, align 4
  %v3_80013be = add i32 %v2_80013be, 13
  %v4_80013be = inttoptr i32 %v3_80013be to i8*
  store i8 %AllMonitoredOperationalCopy_-36.2, i8* %v4_80013be, align 1
  ret void

; uselistorder directives
  uselistorder i8 %AllMonitoredOperationalCopy_-36.2, { 1, 0 }
  uselistorder i32 %v1_80013b0, { 1, 0 }
  uselistorder i32 %v1_80013ac, { 1, 0 }
  uselistorder i32 %v1_8001396, { 1, 0, 2 }
  uselistorder i32 %v1_8001392, { 1, 0 }
  uselistorder i32 %v0_8001376, { 0, 2, 1, 3 }
  uselistorder i32 %v2_8001354, { 0, 2, 1 }
  uselistorder i8 %AllMonitoredOperationalCopy_-36.124, { 1, 0 }
  uselistorder i8 %v3_80013b29, { 2, 1, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 3, 2, 23, 24, 21, 4, 5, 9, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 25, 26, 22, 0 }
  uselistorder i16 -32464, { 1, 0 }
  uselistorder i32 %HBcons, { 1, 2, 0, 3, 4, 5, 6 }
  uselistorder label %dec_label_pc_80013bc, { 1, 0, 3, 2 }
  uselistorder label %dec_label_pc_80013a4, { 1, 0 }
  uselistorder label %dec_label_pc_8001388, { 3, 0, 2, 1 }
  uselistorder label %dec_label_pc_8001356, { 1, 0 }
  uselistorder label %dec_label_pc_8001346, { 1, 0 }
  uselistorder label %dec_label_pc_8001342, { 1, 0 }
  uselistorder label %dec_label_pc_8001326, { 1, 0 }
}

define void @CO_NMT_blinkingProcess50ms(i32 %NMT) local_unnamed_addr {
entry:
  %v1_80013c8 = add i32 %NMT, 1
  %v2_80013c8 = inttoptr i32 %v1_80013c8 to i8*
  %v3_80013c8 = load i8, i8* %v2_80013c8, align 1
  %v4_80013c8 = zext i8 %v3_80013c8 to i32
  %v1_80013ca = add nuw nsw i32 %v4_80013c8, 1
  %v1_80013cc = call i32 @__asm_sxtb.i32(i32 %v1_80013ca)
  %v2_80013cc = trunc i32 %v1_80013cc to i8
  %v6_80013d2 = icmp slt i8 %v2_80013cc, 1
  br i1 %v6_80013d2, label %dec_label_pc_80013da, label %dec_label_pc_80013d4

dec_label_pc_80013d4:                             ; preds = %entry
  br label %dec_label_pc_80013da

dec_label_pc_80013da:                             ; preds = %entry, %dec_label_pc_80013d4
  %storemerge = phi i8 [ -1, %dec_label_pc_80013d4 ], [ %v2_80013cc, %entry ]
  store i8 %storemerge, i8* %v2_80013c8, align 1
  %v1_80013da = add i32 %NMT, 2
  %v2_80013da = inttoptr i32 %v1_80013da to i8*
  %v3_80013da = load i8, i8* %v2_80013da, align 1
  %v4_80013da = zext i8 %v3_80013da to i32
  %v1_80013dc = add nuw nsw i32 %v4_80013da, 1
  %v1_80013de = call i32 @__asm_sxtb.i32(i32 %v1_80013dc)
  %v2_80013de = trunc i32 %v1_80013de to i8
  %v6_80013e4 = icmp slt i8 %v2_80013de, 4
  br i1 %v6_80013e4, label %dec_label_pc_80013ec, label %dec_label_pc_80013e6

dec_label_pc_80013e6:                             ; preds = %dec_label_pc_80013da
  br label %dec_label_pc_80013ec

dec_label_pc_80013ec:                             ; preds = %dec_label_pc_80013da, %dec_label_pc_80013e6
  %storemerge7 = phi i8 [ -4, %dec_label_pc_80013e6 ], [ %v2_80013de, %dec_label_pc_80013da ]
  store i8 %storemerge7, i8* %v2_80013da, align 1
  %v1_80013ec = add i32 %NMT, 3
  %v2_80013ec = inttoptr i32 %v1_80013ec to i8*
  %v3_80013ec = load i8, i8* %v2_80013ec, align 1
  %v4_80013ec = zext i8 %v3_80013ec to i32
  %v1_80013ee = add nuw nsw i32 %v4_80013ec, 1
  %v1_80013f0 = call i32 @__asm_sxtb.i32(i32 %v1_80013ee)
  %v2_80013f0 = trunc i32 %v1_80013f0 to i8
  %v6_80013f6 = icmp slt i8 %v2_80013f0, 4
  br i1 %v6_80013f6, label %dec_label_pc_80013fe, label %dec_label_pc_80013f8

dec_label_pc_80013f8:                             ; preds = %dec_label_pc_80013ec
  br label %dec_label_pc_80013fe

dec_label_pc_80013fe:                             ; preds = %dec_label_pc_80013ec, %dec_label_pc_80013f8
  %storemerge8 = phi i8 [ -20, %dec_label_pc_80013f8 ], [ %v2_80013f0, %dec_label_pc_80013ec ]
  store i8 %storemerge8, i8* %v2_80013ec, align 1
  %v1_80013fe = add i32 %NMT, 4
  %v2_80013fe = inttoptr i32 %v1_80013fe to i8*
  %v3_80013fe = load i8, i8* %v2_80013fe, align 1
  %v4_80013fe = zext i8 %v3_80013fe to i32
  %v1_8001400 = add nuw nsw i32 %v4_80013fe, 1
  %v1_8001402 = call i32 @__asm_sxtb.i32(i32 %v1_8001400)
  %v2_8001402 = trunc i32 %v1_8001402 to i8
  store i8 %v2_8001402, i8* %v2_80013fe, align 1
  switch i32 %v1_8001402, label %dec_label_pc_800142c [
    i32 -100, label %dec_label_pc_800141e
    i32 4, label %dec_label_pc_8001416
    i32 104, label %dec_label_pc_8001424
  ]

dec_label_pc_8001416:                             ; preds = %dec_label_pc_80013fe
  store i8 -104, i8* %v2_80013fe, align 1
  br label %dec_label_pc_800142c

dec_label_pc_800141e:                             ; preds = %dec_label_pc_80013fe
  store i8 100, i8* %v2_80013fe, align 1
  br label %dec_label_pc_800142c

dec_label_pc_8001424:                             ; preds = %dec_label_pc_80013fe
  store i8 -20, i8* %v2_80013fe, align 1
  br label %dec_label_pc_800142c

dec_label_pc_800142c:                             ; preds = %dec_label_pc_80013fe, %dec_label_pc_800141e, %dec_label_pc_8001416, %dec_label_pc_8001424
  %v1_800142e = add i32 %NMT, 5
  %v2_800142e = inttoptr i32 %v1_800142e to i8*
  %v3_800142e = load i8, i8* %v2_800142e, align 1
  %v4_800142e = zext i8 %v3_800142e to i32
  %v1_8001430 = add nuw nsw i32 %v4_800142e, 1
  %v1_8001432 = call i32 @__asm_sxtb.i32(i32 %v1_8001430)
  %v2_8001432 = trunc i32 %v1_8001432 to i8
  store i8 %v2_8001432, i8* %v2_800142e, align 1
  %v9_8001436 = icmp eq i8 %v2_8001432, 4
  br i1 %v9_8001436, label %dec_label_pc_8001452, label %dec_label_pc_800143a

dec_label_pc_800143a:                             ; preds = %dec_label_pc_800142c
  %v9_800143a = icmp sgt i8 %v2_8001432, 4
  br i1 %v9_800143a, label %dec_label_pc_8001448, label %dec_label_pc_800143c

dec_label_pc_800143c:                             ; preds = %dec_label_pc_800143a
  %v1_8001448 = sext i8 %v2_8001432 to i32
  switch i32 %v1_8001448, label %dec_label_pc_8001476 [
    i32 -110, label %dec_label_pc_8001468
    i32 -100, label %dec_label_pc_800145a
  ]

dec_label_pc_8001448:                             ; preds = %dec_label_pc_800143a
  switch i8 %v2_8001432, label %dec_label_pc_8001476 [
    i8 104, label %dec_label_pc_8001460
    i8 114, label %dec_label_pc_800146e
  ]

dec_label_pc_8001452:                             ; preds = %dec_label_pc_800142c
  store i8 -104, i8* %v2_800142e, align 1
  br label %dec_label_pc_8001476

dec_label_pc_800145a:                             ; preds = %dec_label_pc_800143c
  store i8 100, i8* %v2_800142e, align 1
  br label %dec_label_pc_8001476

dec_label_pc_8001460:                             ; preds = %dec_label_pc_8001448
  store i8 -114, i8* %v2_800142e, align 1
  br label %dec_label_pc_8001476

dec_label_pc_8001468:                             ; preds = %dec_label_pc_800143c
  store i8 110, i8* %v2_800142e, align 1
  br label %dec_label_pc_8001476

dec_label_pc_800146e:                             ; preds = %dec_label_pc_8001448
  store i8 -20, i8* %v2_800142e, align 1
  br label %dec_label_pc_8001476

dec_label_pc_8001476:                             ; preds = %dec_label_pc_8001448, %dec_label_pc_800143c, %dec_label_pc_8001468, %dec_label_pc_8001460, %dec_label_pc_800145a, %dec_label_pc_8001452, %dec_label_pc_800146e
  %v1_8001478 = add i32 %NMT, 6
  %v2_8001478 = inttoptr i32 %v1_8001478 to i8*
  %v3_8001478 = load i8, i8* %v2_8001478, align 1
  %v4_8001478 = zext i8 %v3_8001478 to i32
  %v1_800147a = add nuw nsw i32 %v4_8001478, 1
  %v1_800147c = call i32 @__asm_sxtb.i32(i32 %v1_800147a)
  %v2_800147c = trunc i32 %v1_800147c to i8
  store i8 %v2_800147c, i8* %v2_8001478, align 1
  %v9_8001480 = icmp eq i8 %v2_800147c, 4
  br i1 %v9_8001480, label %dec_label_pc_80014a4, label %dec_label_pc_8001484

dec_label_pc_8001484:                             ; preds = %dec_label_pc_8001476
  %v9_8001484 = icmp sgt i8 %v2_800147c, 4
  br i1 %v9_8001484, label %dec_label_pc_8001496, label %dec_label_pc_8001486

dec_label_pc_8001486:                             ; preds = %dec_label_pc_8001484
  %v1_8001496 = sext i8 %v2_800147c to i32
  switch i32 %v1_8001496, label %dec_label_pc_80014d6 [
    i32 -120, label %dec_label_pc_80014c8
    i32 -110, label %dec_label_pc_80014ba
    i32 -100, label %dec_label_pc_80014ac
  ]

dec_label_pc_8001496:                             ; preds = %dec_label_pc_8001484
  switch i8 %v2_800147c, label %dec_label_pc_80014d6 [
    i8 104, label %dec_label_pc_80014b2
    i8 114, label %dec_label_pc_80014c0
    i8 124, label %dec_label_pc_80014ce
  ]

dec_label_pc_80014a4:                             ; preds = %dec_label_pc_8001476
  store i8 -104, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014ac:                             ; preds = %dec_label_pc_8001486
  store i8 100, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014b2:                             ; preds = %dec_label_pc_8001496
  store i8 -114, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014ba:                             ; preds = %dec_label_pc_8001486
  store i8 110, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014c0:                             ; preds = %dec_label_pc_8001496
  store i8 -124, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014c8:                             ; preds = %dec_label_pc_8001486
  store i8 120, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014ce:                             ; preds = %dec_label_pc_8001496
  store i8 -20, i8* %v2_8001478, align 1
  br label %dec_label_pc_80014d6

dec_label_pc_80014d6:                             ; preds = %dec_label_pc_8001496, %dec_label_pc_8001486, %dec_label_pc_80014c8, %dec_label_pc_80014c0, %dec_label_pc_80014ba, %dec_label_pc_80014b2, %dec_label_pc_80014ac, %dec_label_pc_80014a4, %dec_label_pc_80014ce
  ret void

; uselistorder directives
  uselistorder i8 %v2_800147c, { 0, 3, 1, 2, 4 }
  uselistorder i8* %v2_8001478, { 3, 2, 4, 1, 5, 0, 6, 7, 8 }
  uselistorder i8 %v2_8001432, { 0, 3, 1, 2, 4 }
  uselistorder i8* %v2_800142e, { 2, 1, 3, 0, 4, 5, 6 }
  uselistorder i8* %v2_80013fe, { 0, 2, 1, 3, 4 }
  uselistorder i8 110, { 1, 0 }
  uselistorder i8 -114, { 1, 0 }
  uselistorder i8 100, { 1, 2, 0 }
  uselistorder i8 -104, { 2, 1, 0 }
  uselistorder i8 -20, { 2, 1, 3, 0 }
  uselistorder i32 %NMT, { 3, 4, 5, 0, 2, 1 }
  uselistorder label %dec_label_pc_80014d6, { 8, 2, 3, 4, 5, 6, 7, 0, 1 }
  uselistorder label %dec_label_pc_8001476, { 6, 2, 3, 4, 5, 0, 1 }
  uselistorder label %dec_label_pc_800142c, { 3, 1, 2, 0 }
  uselistorder label %dec_label_pc_80013fe, { 1, 0 }
  uselistorder label %dec_label_pc_80013ec, { 1, 0 }
  uselistorder label %dec_label_pc_80013da, { 1, 0 }
}

define i32 @CO_NMT_init(i32 %NMT, i32 %emPr, i8 %nodeId, i16 %firstHBTime, i32 %NMT_CANdev, i16 %NMT_rxIdx, i16 %CANidRxNMT, i32 %HB_CANdev, i16 %HB_txIdx, i16 %CANidTxHB) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %tmp12 = sext i8 %nodeId to i32
  store i32 %NMT, i32* %r0.global-to-local, align 4
  %v21_80014dc = load i32, i32* @r4, align 4
  %v24_80014dc = load i32, i32* @r5, align 4
  store i32 %NMT, i32* @r4, align 4
  store i32 %emPr, i32* @r5, align 4
  store i32 %tmp12, i32* @r7, align 4
  store i32 %HB_CANdev, i32* @r6, align 4
  %v2_80014e8 = icmp eq i32 %NMT, 0
  %v2_80014ec = icmp eq i32 %emPr, 0
  %or.cond = or i1 %v2_80014e8, %v2_80014ec
  br i1 %or.cond, label %dec_label_pc_80014fa, label %dec_label_pc_80014f0

dec_label_pc_80014f0:                             ; preds = %entry
  store i32 %NMT_CANdev, i32* %r0.global-to-local, align 4
  %v2_80014f2 = icmp eq i32 %NMT_CANdev, 0
  %v2_80014f6 = icmp eq i32 %HB_CANdev, 0
  %or.cond31 = or i1 %v2_80014f2, %v2_80014f6
  br i1 %or.cond31, label %dec_label_pc_80014fa, label %dec_label_pc_8001502

dec_label_pc_80014fa:                             ; preds = %dec_label_pc_80014f0, %entry
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80014fe

dec_label_pc_80014fe:                             ; preds = %dec_label_pc_8001502, %dec_label_pc_80014fa
  %storemerge10 = phi i32 [ 0, %dec_label_pc_8001502 ], [ -1, %dec_label_pc_80014fa ]
  store i32 %storemerge10, i32* %r0.global-to-local, align 4
  store i32 %v21_80014dc, i32* @r4, align 4
  store i32 %v24_80014dc, i32* @r5, align 4
  ret i32 %storemerge10

dec_label_pc_8001502:                             ; preds = %dec_label_pc_80014f0
  store i32 0, i32* %r0.global-to-local, align 4
  %v3_8001504 = add i32 %NMT, 1
  %v4_8001504 = inttoptr i32 %v3_8001504 to i8*
  store i8 0, i8* %v4_8001504, align 1
  %v0_8001506 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001506 = trunc i32 %v0_8001506 to i8
  %v2_8001506 = load i32, i32* @r4, align 4
  %v3_8001506 = add i32 %v2_8001506, 2
  %v4_8001506 = inttoptr i32 %v3_8001506 to i8*
  store i8 %v1_8001506, i8* %v4_8001506, align 1
  %v0_8001508 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001508 = trunc i32 %v0_8001508 to i8
  %v2_8001508 = load i32, i32* @r4, align 4
  %v3_8001508 = add i32 %v2_8001508, 3
  %v4_8001508 = inttoptr i32 %v3_8001508 to i8*
  store i8 %v1_8001508, i8* %v4_8001508, align 1
  %v0_800150a = load i32, i32* %r0.global-to-local, align 4
  %v1_800150a = trunc i32 %v0_800150a to i8
  %v2_800150a = load i32, i32* @r4, align 4
  %v3_800150a = add i32 %v2_800150a, 4
  %v4_800150a = inttoptr i32 %v3_800150a to i8*
  store i8 %v1_800150a, i8* %v4_800150a, align 1
  %v0_800150c = load i32, i32* %r0.global-to-local, align 4
  %v1_800150c = trunc i32 %v0_800150c to i8
  %v2_800150c = load i32, i32* @r4, align 4
  %v3_800150c = add i32 %v2_800150c, 5
  %v4_800150c = inttoptr i32 %v3_800150c to i8*
  store i8 %v1_800150c, i8* %v4_800150c, align 1
  %v0_800150e = load i32, i32* %r0.global-to-local, align 4
  %v1_800150e = trunc i32 %v0_800150e to i8
  %v2_800150e = load i32, i32* @r4, align 4
  %v3_800150e = add i32 %v2_800150e, 6
  %v4_800150e = inttoptr i32 %v3_800150e to i8*
  store i8 %v1_800150e, i8* %v4_800150e, align 1
  %v0_8001510 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001510 = trunc i32 %v0_8001510 to i8
  %v2_8001510 = load i32, i32* @r4, align 4
  %v3_8001510 = inttoptr i32 %v2_8001510 to i8*
  store i8 %v1_8001510, i8* %v3_8001510, align 1
  %v0_8001512 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001512 = add i32 %v0_8001512, 255
  %v1_8001514 = trunc i32 %v1_8001512 to i8
  %v2_8001514 = load i32, i32* @r4, align 4
  %v3_8001514 = add i32 %v2_8001514, 7
  %v4_8001514 = inttoptr i32 %v3_8001514 to i8*
  store i8 %v1_8001514, i8* %v4_8001514, align 1
  %v2_8001518 = load i32, i32* @r4, align 4
  %v3_8001518 = add i32 %v2_8001518, 8
  %v4_8001518 = inttoptr i32 %v3_8001518 to i8*
  store i8 1, i8* %v4_8001518, align 1
  %v0_800151a = load i32, i32* @r7, align 4
  %v1_800151a = trunc i32 %v0_800151a to i8
  %v2_800151a = load i32, i32* @r4, align 4
  %v3_800151a = add i32 %v2_800151a, 10
  %v4_800151a = inttoptr i32 %v3_800151a to i8*
  store i8 %v1_800151a, i8* %v4_800151a, align 1
  %v2_800151e = load i32, i32* @r4, align 4
  %v3_800151e = add i32 %v2_800151e, 14
  %v4_800151e = inttoptr i32 %v3_800151e to i16*
  store i16 %firstHBTime, i16* %v4_800151e, align 2
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8001522 = load i32, i32* @r4, align 4
  %v3_8001522 = add i32 %v2_8001522, 9
  %v4_8001522 = inttoptr i32 %v3_8001522 to i8*
  store i8 0, i8* %v4_8001522, align 1
  %v0_8001524 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001524 = add i32 %v0_8001524, 65535
  %v1_8001526 = trunc i32 %v1_8001524 to i16
  %v2_8001526 = load i32, i32* @r4, align 4
  %v3_8001526 = add i32 %v2_8001526, 12
  %v4_8001526 = inttoptr i32 %v3_8001526 to i16*
  store i16 %v1_8001526, i16* %v4_8001526, align 2
  %v0_8001528 = load i32, i32* @r5, align 4
  %v1_8001528 = load i32, i32* @r4, align 4
  %v2_8001528 = add i32 %v1_8001528, 16
  %v3_8001528 = inttoptr i32 %v2_8001528 to i32*
  store i32 %v0_8001528, i32* %v3_8001528, align 4
  %v0_8001530 = load i32, i32* @r4, align 4
  store i32 %NMT_CANdev, i32* %r0.global-to-local, align 4
  %v22_800153a = inttoptr i32 %v0_8001530 to i8*
  %v24_800153a = call i32 @CO_CANrxBufferInit(i32 %NMT_CANdev, i16 %NMT_rxIdx, i16 %CANidRxNMT, i16 2047, i8 0, i8* %v22_800153a, void (i8*, %anon_struct_31*)* inttoptr (i32 134223783 to void (i8*, %anon_struct_31*)*))
  %v0_800153e = load i32, i32* @r6, align 4
  %v1_800153e = load i32, i32* @r4, align 4
  %v2_800153e = add i32 %v1_800153e, 20
  %v3_800153e = inttoptr i32 %v2_800153e to i32*
  store i32 %v0_800153e, i32* %v3_800153e, align 4
  %v0_800154a = load i32, i32* @r6, align 4
  store i32 %v0_800154a, i32* %r0.global-to-local, align 4
  %v15_8001550 = call i32 @CO_CANtxBufferInit(i32 %v0_800154a, i16 %HB_txIdx, i16 %CANidTxHB, i8 0, i8 1, i8 0)
  store i32 %v15_8001550, i32* %r0.global-to-local, align 4
  %v1_8001554 = load i32, i32* @r4, align 4
  %v2_8001554 = add i32 %v1_8001554, 24
  %v3_8001554 = inttoptr i32 %v2_8001554 to i32*
  store i32 %v15_8001550, i32* %v3_8001554, align 4
  br label %dec_label_pc_80014fe

; uselistorder directives
  uselistorder i32* %r0.global-to-local, { 3, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 1, 15, 16, 0 }
  uselistorder i32 %NMT_CANdev, { 1, 0, 3, 2 }
}

define i32 @CO_NMT_process(i32 %NMT, i16 %timeDifference_ms, i16 %HBtime, i32 %NMTstartup, i8 %errorRegister, i8* %errorBehavior, i16* %timerNext_ms) local_unnamed_addr {
entry:
  %tmp = sext i16 %HBtime to i32
  %v21_8001564 = load i32, i32* @r4, align 4
  %v24_8001564 = load i32, i32* @r5, align 4
  %v27_8001564 = load i32, i32* @r6, align 4
  %v30_8001564 = load i32, i32* @r7, align 4
  store i32 %NMT, i32* @r4, align 4
  store i32 %tmp, i32* @r6, align 4
  %v4_800156c = sext i8 %errorRegister to i32
  store i32 %v4_800156c, i32* @r7, align 4
  %v4_800156e = ptrtoint i8* %errorBehavior to i32
  store i32 %v4_800156e, i32* @r5, align 4
  %v1_8001570 = add i32 %NMT, 12
  %v2_8001570 = inttoptr i32 %v1_8001570 to i16*
  %v3_8001570 = load i16, i16* %v2_8001570, align 2
  %v2_8001574 = add i16 %v3_8001570, %timeDifference_ms
  store i16 %v2_8001574, i16* %v2_8001570, align 2
  %v0_8001578 = load i32, i32* @r6, align 4
  %v2_8001578 = icmp eq i32 %v0_8001578, 0
  %v0_8001582.pre = load i32, i32* @r4, align 4
  br i1 %v2_8001578, label %dec_label_pc_8001582, label %dec_label_pc_800157c

dec_label_pc_800157c:                             ; preds = %entry
  %v1_800157c = add i32 %v0_8001582.pre, 12
  %v2_800157c = inttoptr i32 %v1_800157c to i16*
  %v3_800157c = load i16, i16* %v2_800157c, align 2
  %v3_800157e = trunc i32 %v0_8001578 to i16
  %v8_8001580 = icmp slt i16 %v3_800157c, %v3_800157e
  br i1 %v8_8001580, label %dec_label_pc_8001582, label %dec_label_pc_8001588

dec_label_pc_8001582:                             ; preds = %entry, %dec_label_pc_800157c
  %v1_8001582 = inttoptr i32 %v0_8001582.pre to i8*
  %v2_8001582 = load i8, i8* %v1_8001582, align 1
  %v2_8001584 = icmp eq i8 %v2_8001582, 0
  br i1 %v2_8001584, label %dec_label_pc_8001582.dec_label_pc_8001588_crit_edge, label %dec_label_pc_80015c6

dec_label_pc_8001582.dec_label_pc_8001588_crit_edge: ; preds = %dec_label_pc_8001582
  %.pre = add i32 %v0_8001582.pre, 12
  %.pre28 = inttoptr i32 %.pre to i16*
  br label %dec_label_pc_8001588

dec_label_pc_8001588:                             ; preds = %dec_label_pc_8001582.dec_label_pc_8001588_crit_edge, %dec_label_pc_800157c
  %v4_800158a.pre-phi = phi i16* [ %.pre28, %dec_label_pc_8001582.dec_label_pc_8001588_crit_edge ], [ %v2_800157c, %dec_label_pc_800157c ]
  store i16 0, i16* %v4_800158a.pre-phi, align 2
  %v0_800158c = load i32, i32* @r4, align 4
  %v1_800158c = inttoptr i32 %v0_800158c to i8*
  %v2_800158c = load i8, i8* %v1_800158c, align 1
  %v1_800158e = add i32 %v0_800158c, 24
  %v2_800158e = inttoptr i32 %v1_800158e to i32*
  %v3_800158e = load i32, i32* %v2_800158e, align 4
  %v3_8001590 = add i32 %v3_800158e, 5
  %v4_8001590 = inttoptr i32 %v3_8001590 to i8*
  store i8 %v2_800158c, i8* %v4_8001590, align 1
  %v0_8001592 = load i32, i32* @r4, align 4
  %v1_8001592 = add i32 %v0_8001592, 24
  %v2_8001592 = inttoptr i32 %v1_8001592 to i32*
  %v3_8001592 = load i32, i32* %v2_8001592, align 4
  %v1_8001594 = add i32 %v0_8001592, 20
  %v2_8001594 = inttoptr i32 %v1_8001594 to i32*
  %v3_8001594 = load i32, i32* %v2_8001594, align 4
  %v2_8001596 = call i32 @CO_CANsend(i32 %v3_8001594, i32 %v3_8001592)
  %v0_800159a = load i32, i32* @r4, align 4
  %v1_800159a = inttoptr i32 %v0_800159a to i8*
  %v2_800159a = load i8, i8* %v1_800159a, align 1
  %v2_800159c = icmp eq i8 %v2_800159a, 0
  br i1 %v2_800159c, label %dec_label_pc_80015a0, label %dec_label_pc_80015c6

dec_label_pc_80015a0:                             ; preds = %dec_label_pc_8001588
  %v1_80015a0 = add i32 %v0_800159a, 14
  %v2_80015a0 = inttoptr i32 %v1_80015a0 to i16*
  %v3_80015a0 = load i16, i16* %v2_80015a0, align 2
  %v1_80015a2 = load i32, i32* @r6, align 4
  %v3_80015a2 = trunc i32 %v1_80015a2 to i16
  %v8_80015a4 = icmp slt i16 %v3_80015a0, %v3_80015a2
  br i1 %v8_80015a4, label %dec_label_pc_80015a6, label %dec_label_pc_80015ae

dec_label_pc_80015a6:                             ; preds = %dec_label_pc_80015a0
  %v3_80015a6 = load i16, i16* %v2_80015a0, align 2
  %v4_80015a6 = zext i16 %v3_80015a6 to i32
  %v2_80015a8 = sub i32 %v1_80015a2, %v4_80015a6
  %v1_80015aa = trunc i32 %v2_80015a8 to i16
  %v3_80015aa = add i32 %v0_800159a, 12
  %v4_80015aa = inttoptr i32 %v3_80015aa to i16*
  store i16 %v1_80015aa, i16* %v4_80015aa, align 2
  br label %dec_label_pc_80015b2

dec_label_pc_80015ae:                             ; preds = %dec_label_pc_80015a0
  %v3_80015b0 = add i32 %v0_800159a, 12
  %v4_80015b0 = inttoptr i32 %v3_80015b0 to i16*
  store i16 0, i16* %v4_80015b0, align 2
  br label %dec_label_pc_80015b2

dec_label_pc_80015b2:                             ; preds = %dec_label_pc_80015a6, %dec_label_pc_80015ae
  %v2_80015b6 = and i32 %NMTstartup, 4
  %v4_80015b6 = icmp eq i32 %v2_80015b6, 0
  br i1 %v4_80015b6, label %dec_label_pc_80015bc, label %dec_label_pc_80015c2

dec_label_pc_80015bc:                             ; preds = %dec_label_pc_80015b2
  %v2_80015be = load i32, i32* @r4, align 4
  %v3_80015be = inttoptr i32 %v2_80015be to i8*
  store i8 5, i8* %v3_80015be, align 1
  br label %dec_label_pc_80015c6

dec_label_pc_80015c2:                             ; preds = %dec_label_pc_80015b2
  %v2_80015c4 = load i32, i32* @r4, align 4
  %v3_80015c4 = inttoptr i32 %v2_80015c4 to i8*
  store i8 127, i8* %v3_80015c4, align 1
  br label %dec_label_pc_80015c6

dec_label_pc_80015c6:                             ; preds = %dec_label_pc_8001588, %dec_label_pc_8001582, %dec_label_pc_80015bc, %dec_label_pc_80015c2
  %v0_80015c6 = load i32, i32* @r6, align 4
  %v2_80015c6 = icmp eq i32 %v0_80015c6, 0
  br i1 %v2_80015c6, label %dec_label_pc_80015f0, label %dec_label_pc_80015ca

dec_label_pc_80015ca:                             ; preds = %dec_label_pc_80015c6
  %v2_80015cc = icmp eq i16* %timerNext_ms, null
  br i1 %v2_80015cc, label %dec_label_pc_80015f0, label %dec_label_pc_80015d0

dec_label_pc_80015d0:                             ; preds = %dec_label_pc_80015ca
  %v0_80015d0 = load i32, i32* @r4, align 4
  %v1_80015d0 = add i32 %v0_80015d0, 12
  %v2_80015d0 = inttoptr i32 %v1_80015d0 to i16*
  %v3_80015d0 = load i16, i16* %v2_80015d0, align 2
  %v3_80015d2 = trunc i32 %v0_80015c6 to i16
  %v8_80015d4 = icmp slt i16 %v3_80015d0, %v3_80015d2
  br i1 %v8_80015d4, label %dec_label_pc_80015d6, label %dec_label_pc_80015ea

dec_label_pc_80015d6:                             ; preds = %dec_label_pc_80015d0
  %v3_80015d6 = load i16, i16* %v2_80015d0, align 2
  %v4_80015d6 = zext i16 %v3_80015d6 to i32
  %v2_80015d8 = sub i32 %v0_80015c6, %v4_80015d6
  %v1_80015da = urem i32 %v2_80015d8, 65536
  %v2_80015de = load i16, i16* %timerNext_ms, align 2
  %v3_80015de = zext i16 %v2_80015de to i32
  %v7_80015e2 = icmp ugt i32 %v3_80015de, %v1_80015da
  br i1 %v7_80015e2, label %dec_label_pc_80015e4, label %dec_label_pc_80015f0

dec_label_pc_80015e4:                             ; preds = %dec_label_pc_80015d6
  %v1_80015e6 = trunc i32 %v2_80015d8 to i16
  store i16 %v1_80015e6, i16* %timerNext_ms, align 2
  br label %dec_label_pc_80015f0

dec_label_pc_80015ea:                             ; preds = %dec_label_pc_80015d0
  store i16 0, i16* %timerNext_ms, align 2
  br label %dec_label_pc_80015f0

dec_label_pc_80015f0:                             ; preds = %dec_label_pc_80015e4, %dec_label_pc_80015d6, %dec_label_pc_80015ca, %dec_label_pc_80015c6, %dec_label_pc_80015ea
  %v0_80015f4 = load i32, i32* @r4, align 4
  %v1_80015f4 = add i32 %v0_80015f4, 16
  %v2_80015f4 = inttoptr i32 %v1_80015f4 to i32*
  %v3_80015f4 = load i32, i32* %v2_80015f4, align 4
  %v1_80015f6 = add i32 %v3_80015f4, 12
  %v2_80015f6 = inttoptr i32 %v1_80015f6 to i32*
  %v3_80015f6 = load i32, i32* %v2_80015f6, align 4
  %v4_80015fa = call i8 @CO_isError(i32 %v3_80015f6, i8 7)
  %v2_80015fe = icmp eq i8 %v4_80015fa, 0
  br i1 %v2_80015fe, label %dec_label_pc_8001602, label %dec_label_pc_8001610

dec_label_pc_8001602:                             ; preds = %dec_label_pc_80015f0
  %v0_8001602 = load i32, i32* @r4, align 4
  %v1_8001602 = add i32 %v0_8001602, 16
  %v2_8001602 = inttoptr i32 %v1_8001602 to i32*
  %v3_8001602 = load i32, i32* %v2_8001602, align 4
  %v1_8001604 = add i32 %v3_8001602, 12
  %v2_8001604 = inttoptr i32 %v1_8001604 to i32*
  %v3_8001604 = load i32, i32* %v2_8001604, align 4
  %v4_8001608 = call i8 @CO_isError(i32 %v3_8001604, i8 6)
  %v2_800160c = icmp eq i8 %v4_8001608, 0
  br i1 %v2_800160c, label %dec_label_pc_8001614, label %dec_label_pc_8001610

dec_label_pc_8001610:                             ; preds = %dec_label_pc_80015f0, %dec_label_pc_8001602
  br label %dec_label_pc_8001614

dec_label_pc_8001614:                             ; preds = %dec_label_pc_8001602, %dec_label_pc_8001610
  %CANpassive_-40.0 = phi i8 [ 1, %dec_label_pc_8001610 ], [ 0, %dec_label_pc_8001602 ]
  %v0_8001614 = load i32, i32* @r4, align 4
  %v1_8001614 = inttoptr i32 %v0_8001614 to i8*
  %v2_8001614 = load i8, i8* %v1_8001614, align 1
  switch i8 %v2_8001614, label %dec_label_pc_8001636 [
    i8 4, label %dec_label_pc_8001624
    i8 5, label %dec_label_pc_8001630
    i8 127, label %dec_label_pc_800162a
  ]

dec_label_pc_8001624:                             ; preds = %dec_label_pc_8001614
  %v1_8001624 = add i32 %v0_8001614, 3
  %v2_8001624 = inttoptr i32 %v1_8001624 to i8*
  %v3_8001624 = load i8, i8* %v2_8001624, align 1
  %v3_8001626 = add i32 %v0_8001614, 7
  %v4_8001626 = inttoptr i32 %v3_8001626 to i8*
  store i8 %v3_8001624, i8* %v4_8001626, align 1
  br label %dec_label_pc_8001636

dec_label_pc_800162a:                             ; preds = %dec_label_pc_8001614
  %v1_800162a = add i32 %v0_8001614, 2
  %v2_800162a = inttoptr i32 %v1_800162a to i8*
  %v3_800162a = load i8, i8* %v2_800162a, align 1
  %v3_800162c = add i32 %v0_8001614, 7
  %v4_800162c = inttoptr i32 %v3_800162c to i8*
  store i8 %v3_800162a, i8* %v4_800162c, align 1
  br label %dec_label_pc_8001636

dec_label_pc_8001630:                             ; preds = %dec_label_pc_8001614
  %v3_8001632 = add i32 %v0_8001614, 7
  %v4_8001632 = inttoptr i32 %v3_8001632 to i8*
  store i8 1, i8* %v4_8001632, align 1
  br label %dec_label_pc_8001636

dec_label_pc_8001636:                             ; preds = %dec_label_pc_8001614, %dec_label_pc_800162a, %dec_label_pc_8001624, %dec_label_pc_8001630
  %v0_8001638 = load i32, i32* @r4, align 4
  %v1_8001638 = add i32 %v0_8001638, 16
  %v2_8001638 = inttoptr i32 %v1_8001638 to i32*
  %v3_8001638 = load i32, i32* %v2_8001638, align 4
  %v1_800163a = add i32 %v3_8001638, 12
  %v2_800163a = inttoptr i32 %v1_800163a to i32*
  %v3_800163a = load i32, i32* %v2_800163a, align 4
  %v4_800163e = call i8 @CO_isError(i32 %v3_800163a, i8 18)
  %v2_8001642 = icmp eq i8 %v4_800163e, 0
  br i1 %v2_8001642, label %dec_label_pc_800164c, label %dec_label_pc_8001646

dec_label_pc_8001646:                             ; preds = %dec_label_pc_8001636
  %v2_8001648 = load i32, i32* @r4, align 4
  %v3_8001648 = add i32 %v2_8001648, 8
  %v4_8001648 = inttoptr i32 %v3_8001648 to i8*
  store i8 1, i8* %v4_8001648, align 1
  br label %dec_label_pc_80016ba

dec_label_pc_800164c:                             ; preds = %dec_label_pc_8001636
  %v0_800164c = load i32, i32* @r4, align 4
  %v1_800164c = add i32 %v0_800164c, 16
  %v2_800164c = inttoptr i32 %v1_800164c to i32*
  %v3_800164c = load i32, i32* %v2_800164c, align 4
  %v1_800164e = add i32 %v3_800164c, 12
  %v2_800164e = inttoptr i32 %v1_800164e to i32*
  %v3_800164e = load i32, i32* %v2_800164e, align 4
  %v4_8001652 = call i8 @CO_isError(i32 %v3_800164e, i8 24)
  %v2_8001656 = icmp eq i8 %v4_8001652, 0
  %v0_8001660 = load i32, i32* @r4, align 4
  br i1 %v2_8001656, label %dec_label_pc_8001660, label %dec_label_pc_800165a

dec_label_pc_800165a:                             ; preds = %dec_label_pc_800164c
  %v1_800165a = add i32 %v0_8001660, 5
  %v2_800165a = inttoptr i32 %v1_800165a to i8*
  %v3_800165a = load i8, i8* %v2_800165a, align 1
  %v3_800165c = add i32 %v0_8001660, 8
  %v4_800165c = inttoptr i32 %v3_800165c to i8*
  store i8 %v3_800165a, i8* %v4_800165c, align 1
  br label %dec_label_pc_80016ba

dec_label_pc_8001660:                             ; preds = %dec_label_pc_800164c
  %v1_8001660 = add i32 %v0_8001660, 16
  %v2_8001660 = inttoptr i32 %v1_8001660 to i32*
  %v3_8001660 = load i32, i32* %v2_8001660, align 4
  %v1_8001662 = add i32 %v3_8001660, 12
  %v2_8001662 = inttoptr i32 %v1_8001662 to i32*
  %v3_8001662 = load i32, i32* %v2_8001662, align 4
  %v4_8001666 = call i8 @CO_isError(i32 %v3_8001662, i8 27)
  %v2_800166a = icmp eq i8 %v4_8001666, 0
  br i1 %v2_800166a, label %dec_label_pc_800166e, label %dec_label_pc_800167c

dec_label_pc_800166e:                             ; preds = %dec_label_pc_8001660
  %v0_800166e = load i32, i32* @r4, align 4
  %v1_800166e = add i32 %v0_800166e, 16
  %v2_800166e = inttoptr i32 %v1_800166e to i32*
  %v3_800166e = load i32, i32* %v2_800166e, align 4
  %v1_8001670 = add i32 %v3_800166e, 12
  %v2_8001670 = inttoptr i32 %v1_8001670 to i32*
  %v3_8001670 = load i32, i32* %v2_8001670, align 4
  %v4_8001674 = call i8 @CO_isError(i32 %v3_8001670, i8 28)
  %v2_8001678 = icmp eq i8 %v4_8001674, 0
  br i1 %v2_8001678, label %dec_label_pc_8001682, label %dec_label_pc_800167c

dec_label_pc_800167c:                             ; preds = %dec_label_pc_8001660, %dec_label_pc_800166e
  %v0_800167c = load i32, i32* @r4, align 4
  %v1_800167c = add i32 %v0_800167c, 4
  %v2_800167c = inttoptr i32 %v1_800167c to i8*
  %v3_800167c = load i8, i8* %v2_800167c, align 1
  %v3_800167e = add i32 %v0_800167c, 8
  %v4_800167e = inttoptr i32 %v3_800167e to i8*
  store i8 %v3_800167c, i8* %v4_800167e, align 1
  br label %dec_label_pc_80016ba

dec_label_pc_8001682:                             ; preds = %dec_label_pc_800166e
  %v2_8001684 = icmp eq i8 %CANpassive_-40.0, 0
  br i1 %v2_8001684, label %dec_label_pc_8001688, label %dec_label_pc_8001696

dec_label_pc_8001688:                             ; preds = %dec_label_pc_8001682
  %v0_8001688 = load i32, i32* @r4, align 4
  %v1_8001688 = add i32 %v0_8001688, 16
  %v2_8001688 = inttoptr i32 %v1_8001688 to i32*
  %v3_8001688 = load i32, i32* %v2_8001688, align 4
  %v1_800168a = add i32 %v3_8001688, 12
  %v2_800168a = inttoptr i32 %v1_800168a to i32*
  %v3_800168a = load i32, i32* %v2_800168a, align 4
  %v4_800168e = call i8 @CO_isError(i32 %v3_800168a, i8 1)
  %v2_8001692 = icmp eq i8 %v4_800168e, 0
  br i1 %v2_8001692, label %dec_label_pc_800169c, label %dec_label_pc_8001696

dec_label_pc_8001696:                             ; preds = %dec_label_pc_8001682, %dec_label_pc_8001688
  %v0_8001696 = load i32, i32* @r4, align 4
  %v1_8001696 = add i32 %v0_8001696, 3
  %v2_8001696 = inttoptr i32 %v1_8001696 to i8*
  %v3_8001696 = load i8, i8* %v2_8001696, align 1
  %v3_8001698 = add i32 %v0_8001696, 8
  %v4_8001698 = inttoptr i32 %v3_8001698 to i8*
  store i8 %v3_8001696, i8* %v4_8001698, align 1
  br label %dec_label_pc_80016ba

dec_label_pc_800169c:                             ; preds = %dec_label_pc_8001688
  %v0_800169c = load i32, i32* @r7, align 4
  %v2_800169c = icmp eq i32 %v0_800169c, 0
  br i1 %v2_800169c, label %dec_label_pc_80016b4, label %dec_label_pc_80016a0

dec_label_pc_80016a0:                             ; preds = %dec_label_pc_800169c
  %v0_80016a2 = load i32, i32* @r4, align 4
  %v2_80016a2 = add i32 %v0_80016a2, 2
  %v3_80016a2 = inttoptr i32 %v2_80016a2 to i8*
  %v4_80016a2 = load i8, i8* %v3_80016a2, align 1
  %tmp30 = ashr i8 %v4_80016a2, 7
  %tmp31 = and i8 %tmp30, 2
  %tmp32 = add nsw i8 %tmp31, -1
  %v3_80016b0 = add i32 %v0_80016a2, 8
  %v4_80016b0 = inttoptr i32 %v3_80016b0 to i8*
  store i8 %tmp32, i8* %v4_80016b0, align 1
  br label %dec_label_pc_80016ba

dec_label_pc_80016b4:                             ; preds = %dec_label_pc_800169c
  %v2_80016b8 = load i32, i32* @r4, align 4
  %v3_80016b8 = add i32 %v2_80016b8, 8
  %v4_80016b8 = inttoptr i32 %v3_80016b8 to i8*
  store i8 -1, i8* %v4_80016b8, align 1
  br label %dec_label_pc_80016ba

dec_label_pc_80016ba:                             ; preds = %dec_label_pc_80016a0, %dec_label_pc_8001696, %dec_label_pc_800167c, %dec_label_pc_800165a, %dec_label_pc_8001646, %dec_label_pc_80016b4
  %v0_80016ba = load i32, i32* @r5, align 4
  %v2_80016ba = icmp eq i32 %v0_80016ba, 0
  br i1 %v2_80016ba, label %dec_label_pc_80017a0, label %dec_label_pc_80016be

dec_label_pc_80016be:                             ; preds = %dec_label_pc_80016ba
  %v0_80016be = load i32, i32* @r4, align 4
  %v1_80016be = inttoptr i32 %v0_80016be to i8*
  %v2_80016be = load i8, i8* %v1_80016be, align 1
  %v7_80016c0 = icmp eq i8 %v2_80016be, 5
  br i1 %v7_80016c0, label %dec_label_pc_80016c4, label %dec_label_pc_80017a0

dec_label_pc_80016c4:                             ; preds = %dec_label_pc_80016be
  %v2_80016c6 = icmp eq i8 %CANpassive_-40.0, 0
  br i1 %v2_80016c6, label %dec_label_pc_80016da, label %dec_label_pc_80016ca

dec_label_pc_80016ca:                             ; preds = %dec_label_pc_80016c4
  %v1_80016ca = add i32 %v0_80016ba, 2
  %v2_80016ca = inttoptr i32 %v1_80016ca to i8*
  %v3_80016ca = load i8, i8* %v2_80016ca, align 1
  %v2_80016cc = icmp eq i8 %v3_80016ca, 0
  br i1 %v2_80016cc, label %dec_label_pc_80016da.thread, label %dec_label_pc_80016d0

dec_label_pc_80016d0:                             ; preds = %dec_label_pc_80016ca
  %v3_80016d0 = load i8, i8* %v2_80016ca, align 1
  %v7_80016d2 = icmp eq i8 %v3_80016d0, 2
  br i1 %v7_80016d2, label %dec_label_pc_80016da.thread, label %dec_label_pc_80016da

dec_label_pc_80016da.thread:                      ; preds = %dec_label_pc_80016ca, %dec_label_pc_80016d0
  %v0_80016d8 = load i32, i32* @r7, align 4
  %v2_80016d8 = or i32 %v0_80016d8, 16
  store i32 %v2_80016d8, i32* @r7, align 4
  br label %dec_label_pc_80016de

dec_label_pc_80016da:                             ; preds = %dec_label_pc_80016d0, %dec_label_pc_80016c4
  %v0_80016da.pr = load i32, i32* @r7, align 4
  %v2_80016da = icmp eq i32 %v0_80016da.pr, 0
  br i1 %v2_80016da, label %dec_label_pc_80017a0, label %dec_label_pc_80016de

dec_label_pc_80016de:                             ; preds = %dec_label_pc_80016da.thread, %dec_label_pc_80016da
  %v1_80016e0 = phi i32 [ %v2_80016d8, %dec_label_pc_80016da.thread ], [ %v0_80016da.pr, %dec_label_pc_80016da ]
  %v2_80016e0 = and i32 %v1_80016e0, 16
  %v4_80016e0 = icmp eq i32 %v2_80016e0, 0
  br i1 %v4_80016e0, label %dec_label_pc_800173e, label %dec_label_pc_80016e6

dec_label_pc_80016e6:                             ; preds = %dec_label_pc_80016de
  %v1_80016e6 = add i32 %v0_80016ba, 1
  %v2_80016e6 = inttoptr i32 %v1_80016e6 to i8*
  %v3_80016e6 = load i8, i8* %v2_80016e6, align 1
  %v2_80016e8 = icmp eq i8 %v3_80016e6, 0
  br i1 %v2_80016e8, label %dec_label_pc_80016ec, label %dec_label_pc_80016f2

dec_label_pc_80016ec:                             ; preds = %dec_label_pc_80016e6
  store i8 127, i8* %v1_80016be, align 1
  br label %dec_label_pc_800173e

dec_label_pc_80016f2:                             ; preds = %dec_label_pc_80016e6
  %v3_80016f2 = load i8, i8* %v2_80016e6, align 1
  %v7_80016f4 = icmp eq i8 %v3_80016f2, 2
  br i1 %v7_80016f4, label %dec_label_pc_80016f8, label %dec_label_pc_80016fe

dec_label_pc_80016f8:                             ; preds = %dec_label_pc_80016f2
  store i8 4, i8* %v1_80016be, align 1
  br label %dec_label_pc_800173e

dec_label_pc_80016fe:                             ; preds = %dec_label_pc_80016f2
  %v1_80016fe = add i32 %v0_80016be, 16
  %v2_80016fe = inttoptr i32 %v1_80016fe to i32*
  %v3_80016fe = load i32, i32* %v2_80016fe, align 4
  %v1_8001700 = add i32 %v3_80016fe, 12
  %v2_8001700 = inttoptr i32 %v1_8001700 to i32*
  %v3_8001700 = load i32, i32* %v2_8001700, align 4
  %v4_8001704 = call i8 @CO_isError(i32 %v3_8001700, i8 18)
  %v2_8001708 = icmp eq i8 %v4_8001704, 0
  br i1 %v2_8001708, label %dec_label_pc_800170c, label %dec_label_pc_8001728

dec_label_pc_800170c:                             ; preds = %dec_label_pc_80016fe
  %v0_800170c = load i32, i32* @r4, align 4
  %v1_800170c = add i32 %v0_800170c, 16
  %v2_800170c = inttoptr i32 %v1_800170c to i32*
  %v3_800170c = load i32, i32* %v2_800170c, align 4
  %v1_800170e = add i32 %v3_800170c, 12
  %v2_800170e = inttoptr i32 %v1_800170e to i32*
  %v3_800170e = load i32, i32* %v2_800170e, align 4
  %v4_8001712 = call i8 @CO_isError(i32 %v3_800170e, i8 27)
  %v2_8001716 = icmp eq i8 %v4_8001712, 0
  br i1 %v2_8001716, label %dec_label_pc_800171a, label %dec_label_pc_8001728

dec_label_pc_800171a:                             ; preds = %dec_label_pc_800170c
  %v0_800171a = load i32, i32* @r4, align 4
  %v1_800171a = add i32 %v0_800171a, 16
  %v2_800171a = inttoptr i32 %v1_800171a to i32*
  %v3_800171a = load i32, i32* %v2_800171a, align 4
  %v1_800171c = add i32 %v3_800171a, 12
  %v2_800171c = inttoptr i32 %v1_800171c to i32*
  %v3_800171c = load i32, i32* %v2_800171c, align 4
  %v4_8001720 = call i8 @CO_isError(i32 %v3_800171c, i8 28)
  %v2_8001724 = icmp eq i8 %v4_8001720, 0
  br i1 %v2_8001724, label %dec_label_pc_800173e, label %dec_label_pc_8001728

dec_label_pc_8001728:                             ; preds = %dec_label_pc_800170c, %dec_label_pc_80016fe, %dec_label_pc_800171a
  %v0_8001728 = load i32, i32* @r5, align 4
  %v1_8001728 = inttoptr i32 %v0_8001728 to i8*
  %v2_8001728 = load i8, i8* %v1_8001728, align 1
  %v2_800172a = icmp eq i8 %v2_8001728, 0
  br i1 %v2_800172a, label %dec_label_pc_800172e, label %dec_label_pc_8001734

dec_label_pc_800172e:                             ; preds = %dec_label_pc_8001728
  %v2_8001730 = load i32, i32* @r4, align 4
  %v3_8001730 = inttoptr i32 %v2_8001730 to i8*
  store i8 127, i8* %v3_8001730, align 1
  br label %dec_label_pc_800173e

dec_label_pc_8001734:                             ; preds = %dec_label_pc_8001728
  %v2_8001734 = load i8, i8* %v1_8001728, align 1
  %v7_8001736 = icmp eq i8 %v2_8001734, 2
  br i1 %v7_8001736, label %dec_label_pc_800173a, label %dec_label_pc_800173e

dec_label_pc_800173a:                             ; preds = %dec_label_pc_8001734
  %v2_800173c = load i32, i32* @r4, align 4
  %v3_800173c = inttoptr i32 %v2_800173c to i8*
  store i8 4, i8* %v3_800173c, align 1
  br label %dec_label_pc_800173e

dec_label_pc_800173e:                             ; preds = %dec_label_pc_8001734, %dec_label_pc_800171a, %dec_label_pc_80016de, %dec_label_pc_800172e, %dec_label_pc_80016f8, %dec_label_pc_80016ec, %dec_label_pc_800173a
  %v0_800173e = load i32, i32* @r7, align 4
  %v3_8001740 = urem i32 %v0_800173e, 2
  %v4_8001740 = icmp eq i32 %v3_8001740, 0
  br i1 %v4_8001740, label %dec_label_pc_800175c, label %dec_label_pc_8001746

dec_label_pc_8001746:                             ; preds = %dec_label_pc_800173e
  %v0_8001746 = load i32, i32* @r5, align 4
  %v1_8001746 = add i32 %v0_8001746, 3
  %v2_8001746 = inttoptr i32 %v1_8001746 to i8*
  %v3_8001746 = load i8, i8* %v2_8001746, align 1
  %v2_8001748 = icmp eq i8 %v3_8001746, 0
  br i1 %v2_8001748, label %dec_label_pc_800174c, label %dec_label_pc_8001752

dec_label_pc_800174c:                             ; preds = %dec_label_pc_8001746
  %v2_800174e = load i32, i32* @r4, align 4
  %v3_800174e = inttoptr i32 %v2_800174e to i8*
  store i8 127, i8* %v3_800174e, align 1
  br label %dec_label_pc_800175c

dec_label_pc_8001752:                             ; preds = %dec_label_pc_8001746
  %v3_8001752 = load i8, i8* %v2_8001746, align 1
  %v7_8001754 = icmp eq i8 %v3_8001752, 2
  br i1 %v7_8001754, label %dec_label_pc_8001758, label %dec_label_pc_800175c

dec_label_pc_8001758:                             ; preds = %dec_label_pc_8001752
  %v2_800175a = load i32, i32* @r4, align 4
  %v3_800175a = inttoptr i32 %v2_800175a to i8*
  store i8 4, i8* %v3_800175a, align 1
  br label %dec_label_pc_800175c

dec_label_pc_800175c:                             ; preds = %dec_label_pc_8001752, %dec_label_pc_800173e, %dec_label_pc_800174c, %dec_label_pc_8001758
  %v1_800175e = load i32, i32* @r7, align 4
  %v2_800175e = and i32 %v1_800175e, 32
  %v4_800175e = icmp eq i32 %v2_800175e, 0
  br i1 %v4_800175e, label %dec_label_pc_800177a, label %dec_label_pc_8001764

dec_label_pc_8001764:                             ; preds = %dec_label_pc_800175c
  %v0_8001764 = load i32, i32* @r5, align 4
  %v1_8001764 = add i32 %v0_8001764, 4
  %v2_8001764 = inttoptr i32 %v1_8001764 to i8*
  %v3_8001764 = load i8, i8* %v2_8001764, align 1
  %v2_8001766 = icmp eq i8 %v3_8001764, 0
  br i1 %v2_8001766, label %dec_label_pc_800176a, label %dec_label_pc_8001770

dec_label_pc_800176a:                             ; preds = %dec_label_pc_8001764
  %v2_800176c = load i32, i32* @r4, align 4
  %v3_800176c = inttoptr i32 %v2_800176c to i8*
  store i8 127, i8* %v3_800176c, align 1
  br label %dec_label_pc_800177a

dec_label_pc_8001770:                             ; preds = %dec_label_pc_8001764
  %v3_8001770 = load i8, i8* %v2_8001764, align 1
  %v7_8001772 = icmp eq i8 %v3_8001770, 2
  br i1 %v7_8001772, label %dec_label_pc_8001776, label %dec_label_pc_800177a

dec_label_pc_8001776:                             ; preds = %dec_label_pc_8001770
  %v2_8001778 = load i32, i32* @r4, align 4
  %v3_8001778 = inttoptr i32 %v2_8001778 to i8*
  store i8 4, i8* %v3_8001778, align 1
  br label %dec_label_pc_800177a

dec_label_pc_800177a:                             ; preds = %dec_label_pc_8001770, %dec_label_pc_800175c, %dec_label_pc_800176a, %dec_label_pc_8001776
  %v1_800177c = load i32, i32* @r7, align 4
  %v2_800177c = and i32 %v1_800177c, 128
  %v4_800177c = icmp eq i32 %v2_800177c, 0
  br i1 %v4_800177c, label %dec_label_pc_8001798, label %dec_label_pc_8001782

dec_label_pc_8001782:                             ; preds = %dec_label_pc_800177a
  %v0_8001782 = load i32, i32* @r5, align 4
  %v1_8001782 = add i32 %v0_8001782, 5
  %v2_8001782 = inttoptr i32 %v1_8001782 to i8*
  %v3_8001782 = load i8, i8* %v2_8001782, align 1
  %v2_8001784 = icmp eq i8 %v3_8001782, 0
  br i1 %v2_8001784, label %dec_label_pc_8001788, label %dec_label_pc_800178e

dec_label_pc_8001788:                             ; preds = %dec_label_pc_8001782
  %v2_800178a = load i32, i32* @r4, align 4
  %v3_800178a = inttoptr i32 %v2_800178a to i8*
  store i8 127, i8* %v3_800178a, align 1
  br label %dec_label_pc_8001798

dec_label_pc_800178e:                             ; preds = %dec_label_pc_8001782
  %v3_800178e = load i8, i8* %v2_8001782, align 1
  %v7_8001790 = icmp eq i8 %v3_800178e, 2
  br i1 %v7_8001790, label %dec_label_pc_8001794, label %dec_label_pc_8001798

dec_label_pc_8001794:                             ; preds = %dec_label_pc_800178e
  %v2_8001796 = load i32, i32* @r4, align 4
  %v3_8001796 = inttoptr i32 %v2_8001796 to i8*
  store i8 4, i8* %v3_8001796, align 1
  br label %dec_label_pc_8001798

dec_label_pc_8001798:                             ; preds = %dec_label_pc_800178e, %dec_label_pc_800177a, %dec_label_pc_8001788, %dec_label_pc_8001794
  %v0_8001798 = load i32, i32* @r4, align 4
  %v1_8001798 = inttoptr i32 %v0_8001798 to i8*
  %v2_8001798 = load i8, i8* %v1_8001798, align 1
  %v7_800179a = icmp eq i8 %v2_8001798, 5
  br i1 %v7_800179a, label %dec_label_pc_80017a0, label %dec_label_pc_800179e

dec_label_pc_800179e:                             ; preds = %dec_label_pc_8001798
  %v0_800179e = load i32, i32* @r6, align 4
  %v1_800179e = trunc i32 %v0_800179e to i16
  %v3_800179e = add i32 %v0_8001798, 12
  %v4_800179e = inttoptr i32 %v3_800179e to i16*
  store i16 %v1_800179e, i16* %v4_800179e, align 2
  br label %dec_label_pc_80017a0

dec_label_pc_80017a0:                             ; preds = %dec_label_pc_80016be, %dec_label_pc_8001798, %dec_label_pc_80016da, %dec_label_pc_80016ba, %dec_label_pc_800179e
  %v0_80017a0 = load i32, i32* @r4, align 4
  %v1_80017a0 = add i32 %v0_80017a0, 9
  %v2_80017a0 = inttoptr i32 %v1_80017a0 to i8*
  %v3_80017a0 = load i8, i8* %v2_80017a0, align 1
  %v4_80017a0 = zext i8 %v3_80017a0 to i32
  store i32 %v21_8001564, i32* @r4, align 4
  store i32 %v24_8001564, i32* @r5, align 4
  store i32 %v27_8001564, i32* @r6, align 4
  store i32 %v30_8001564, i32* @r7, align 4
  ret i32 %v4_80017a0

; uselistorder directives
  uselistorder i8* %v1_80016be, { 1, 0, 2 }
  uselistorder i32 %v0_8001660, { 2, 1, 0 }
  uselistorder i32 %v0_8001614, { 2, 4, 3, 1, 0, 5 }
  uselistorder i32 %v2_80015d8, { 1, 0 }
  uselistorder i32 %v0_800159a, { 1, 0, 2, 3 }
  uselistorder i8 28, { 2, 1, 0 }
  uselistorder i8 27, { 2, 1, 0 }
  uselistorder i8 (i32, i8)* @CO_isError, { 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder label %dec_label_pc_80017a0, { 4, 1, 2, 0, 3 }
  uselistorder label %dec_label_pc_8001798, { 3, 0, 2, 1 }
  uselistorder label %dec_label_pc_800177a, { 3, 0, 2, 1 }
  uselistorder label %dec_label_pc_800175c, { 3, 0, 2, 1 }
  uselistorder label %dec_label_pc_800173e, { 6, 0, 3, 1, 4, 5, 2 }
  uselistorder label %dec_label_pc_8001728, { 2, 0, 1 }
  uselistorder label %dec_label_pc_80016de, { 1, 0 }
  uselistorder label %dec_label_pc_80016da.thread, { 1, 0 }
  uselistorder label %dec_label_pc_80016ba, { 5, 0, 1, 2, 3, 4 }
  uselistorder label %dec_label_pc_8001696, { 1, 0 }
  uselistorder label %dec_label_pc_800167c, { 1, 0 }
  uselistorder label %dec_label_pc_8001636, { 3, 1, 2, 0 }
  uselistorder label %dec_label_pc_8001614, { 1, 0 }
  uselistorder label %dec_label_pc_8001610, { 1, 0 }
  uselistorder label %dec_label_pc_80015f0, { 4, 0, 1, 2, 3 }
  uselistorder label %dec_label_pc_80015c6, { 3, 2, 0, 1 }
  uselistorder label %dec_label_pc_80015b2, { 1, 0 }
  uselistorder label %dec_label_pc_8001582, { 1, 0 }
}

define void @CO_OD_configure(i32 %SDO, i16 %index, i32 %pODFunc, i8* %object, i8* %flags, i8 %flagsSize) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r1.global-to-local = alloca i32, align 4
  %r2.global-to-local = alloca i32, align 4
  store i32 %pODFunc, i32* %r2.global-to-local, align 4
  %tmp12 = sext i16 %index to i32
  store i32 %tmp12, i32* %r1.global-to-local, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v21_8001e28 = load i32, i32* @r4, align 4
  %v27_8001e28 = load i32, i32* @r6, align 4
  store i32 %SDO, i32* @r4, align 4
  %v4_8001e2c = sext i8 %flagsSize to i32
  store i32 %v4_8001e2c, i32* @r6, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  store i32 %tmp12, i32* %r1.global-to-local, align 4
  %v4_8001e32 = call i16 @CO_OD_find(i32 %SDO, i16 %index)
  store i32 65535, i32* %r0.global-to-local, align 4
  %v3_8001e3a = icmp slt i16 %v4_8001e32, 0
  br i1 %v3_8001e3a, label %dec_label_pc_8001e84, label %dec_label_pc_8001e3e

dec_label_pc_8001e3e:                             ; preds = %entry
  %v6_8001e32 = sext i16 %v4_8001e32 to i32
  %tmp = ptrtoint i8* %object to i32
  %v2_8001e40 = mul nsw i32 %v6_8001e32, 12
  store i32 %v2_8001e40, i32* %r1.global-to-local, align 4
  %v0_8001e42 = load i32, i32* @r4, align 4
  %v1_8001e42 = add i32 %v0_8001e42, 52
  %v2_8001e42 = inttoptr i32 %v1_8001e42 to i32*
  %v3_8001e42 = load i32, i32* %v2_8001e42, align 4
  %v2_8001e44 = add i32 %v3_8001e42, %v2_8001e40
  store i32 %v2_8001e44, i32* %r0.global-to-local, align 4
  store i32 %v2_8001e40, i32* %r1.global-to-local, align 4
  %v1_8001e4a = add i32 %v0_8001e42, 44
  %v2_8001e4a = inttoptr i32 %v1_8001e4a to i32*
  %v3_8001e4a = load i32, i32* %v2_8001e4a, align 4
  %v2_8001e4c = add i32 %v3_8001e4a, %v2_8001e40
  store i32 %v2_8001e4c, i32* %r1.global-to-local, align 4
  %v1_8001e4e = add i32 %v2_8001e4c, 2
  %v2_8001e4e = inttoptr i32 %v1_8001e4e to i8*
  %v3_8001e4e = load i8, i8* %v2_8001e4e, align 1
  %v4_8001e4e = zext i8 %v3_8001e4e to i32
  store i32 %v4_8001e4e, i32* %r2.global-to-local, align 4
  %v2_8001e52 = inttoptr i32 %v2_8001e44 to i32*
  store i32 %pODFunc, i32* %v2_8001e52, align 4
  %v1_8001e56 = load i32, i32* %r0.global-to-local, align 4
  %v2_8001e56 = add i32 %v1_8001e56, 4
  %v3_8001e56 = inttoptr i32 %v2_8001e56 to i32*
  store i32 %tmp, i32* %v3_8001e56, align 4
  %v4_8001e58 = ptrtoint i8* %flags to i32
  store i32 %v4_8001e58, i32* %r1.global-to-local, align 4
  %v2_8001e5a = icmp eq i8* %flags, null
  br i1 %v2_8001e5a, label %dec_label_pc_8001e7e, label %dec_label_pc_8001e5e

dec_label_pc_8001e5e:                             ; preds = %dec_label_pc_8001e3e
  %v0_8001e5e = load i32, i32* @r6, align 4
  %v2_8001e5e = icmp ne i32 %v0_8001e5e, 0
  %v1_8001e62 = load i32, i32* %r2.global-to-local, align 4
  %v9_8001e62 = icmp eq i32 %v0_8001e5e, %v1_8001e62
  %or.cond = and i1 %v2_8001e5e, %v9_8001e62
  br i1 %or.cond, label %dec_label_pc_8001e66, label %dec_label_pc_8001e7e

dec_label_pc_8001e66:                             ; preds = %dec_label_pc_8001e5e
  %v1_8001e68 = load i32, i32* %r0.global-to-local, align 4
  %v2_8001e68 = add i32 %v1_8001e68, 8
  %v3_8001e68 = inttoptr i32 %v2_8001e68 to i32*
  store i32 %v4_8001e58, i32* %v3_8001e68, align 4
  store i32 0, i32* %r1.global-to-local, align 4
  %v1_8001e787 = load i32, i32* %r2.global-to-local, align 4
  %v7_8001e7a10 = icmp slt i32 %v1_8001e787, 0
  br i1 %v7_8001e7a10, label %dec_label_pc_8001e84, label %dec_label_pc_8001e6e

dec_label_pc_8001e6e:                             ; preds = %dec_label_pc_8001e66, %dec_label_pc_8001e6e
  %v3_8001e72 = phi i32 [ %v1_8001e76, %dec_label_pc_8001e6e ], [ 0, %dec_label_pc_8001e66 ]
  %v0_8001e70 = load i32, i32* %r0.global-to-local, align 4
  %v1_8001e70 = add i32 %v0_8001e70, 8
  %v2_8001e70 = inttoptr i32 %v1_8001e70 to i32*
  %v3_8001e70 = load i32, i32* %v2_8001e70, align 4
  %v4_8001e72 = add i32 %v3_8001e70, %v3_8001e72
  %v5_8001e72 = inttoptr i32 %v4_8001e72 to i8*
  store i8 0, i8* %v5_8001e72, align 1
  %v0_8001e74 = load i32, i32* %r1.global-to-local, align 4
  %v1_8001e74 = add i32 %v0_8001e74, 1
  %v1_8001e76 = urem i32 %v1_8001e74, 65536
  store i32 %v1_8001e76, i32* %r1.global-to-local, align 4
  %v1_8001e78 = load i32, i32* %r2.global-to-local, align 4
  %v7_8001e7a = icmp sgt i32 %v1_8001e76, %v1_8001e78
  br i1 %v7_8001e7a, label %dec_label_pc_8001e84, label %dec_label_pc_8001e6e

dec_label_pc_8001e7e:                             ; preds = %dec_label_pc_8001e5e, %dec_label_pc_8001e3e
  store i32 0, i32* %r1.global-to-local, align 4
  %v1_8001e80 = load i32, i32* %r0.global-to-local, align 4
  %v2_8001e80 = add i32 %v1_8001e80, 8
  %v3_8001e80 = inttoptr i32 %v2_8001e80 to i32*
  store i32 0, i32* %v3_8001e80, align 4
  br label %dec_label_pc_8001e84

dec_label_pc_8001e84:                             ; preds = %dec_label_pc_8001e6e, %dec_label_pc_8001e66, %dec_label_pc_8001e7e, %entry
  store i32 %SDO, i32* %r0.global-to-local, align 4
  store i32 %tmp12, i32* %r1.global-to-local, align 4
  store i32 %pODFunc, i32* %r2.global-to-local, align 4
  store i32 %v21_8001e28, i32* @r4, align 4
  store i32 %v27_8001e28, i32* @r6, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v1_8001e76, { 1, 0, 2 }
  uselistorder i32 %v2_8001e40, { 0, 2, 1, 3 }
  uselistorder i16 %v4_8001e32, { 1, 0 }
  uselistorder i32* %r2.global-to-local, { 1, 4, 2, 3, 5, 0 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder i8* %flags, { 1, 0 }
  uselistorder i32 %pODFunc, { 1, 0, 2 }
  uselistorder i32 %SDO, { 0, 3, 2, 1, 4 }
  uselistorder label %dec_label_pc_8001e84, { 2, 0, 1, 3 }
  uselistorder label %dec_label_pc_8001e6e, { 1, 0 }
}

define i16 @CO_OD_find(i32 %SDO, i16 %index) local_unnamed_addr {
entry:
  %tmp = sext i16 %index to i32
  %v1_8001e94 = add i32 %SDO, 48
  %v2_8001e94 = inttoptr i32 %v1_8001e94 to i16*
  %v3_8001e94 = load i16, i16* %v2_8001e94, align 2
  %v4_8001e94 = zext i16 %v3_8001e94 to i32
  %v1_8001e96 = add nsw i32 %v4_8001e94, -1
  %v1_8001e98 = urem i32 %v1_8001e96, 65536
  %v3_8001ece5 = icmp eq i32 %v1_8001e98, 0
  %.pre = add i32 %SDO, 44
  %.pre36 = inttoptr i32 %.pre to i32*
  br i1 %v3_8001ece5, label %dec_label_pc_8001ed6, label %dec_label_pc_8001e9c

dec_label_pc_8001e9c:                             ; preds = %entry, %dec_label_pc_8001ece.backedge
  %v1_8001e9c11 = phi i32 [ %v1_8001ece, %dec_label_pc_8001ece.backedge ], [ %v1_8001e98, %entry ]
  %v0_8001e9c10 = phi i32 [ %v0_8001ece, %dec_label_pc_8001ece.backedge ], [ 0, %entry ]
  %v2_8001e9c = add i32 %v0_8001e9c10, %v1_8001e9c11
  %tmp37 = icmp slt i32 %v2_8001e9c, 0
  %v3_8001e9e = zext i1 %tmp37 to i32
  %v2_8001ea0 = add i32 %v3_8001e9e, %v2_8001e9c
  %tmp29 = udiv i32 %v2_8001ea0, 2
  %v3_8001ea4 = urem i32 %tmp29, 65536
  %v2_8001ea8 = mul nuw nsw i32 %v3_8001ea4, 12
  %v3_8001eaa = load i32, i32* %.pre36, align 4
  %v2_8001eac = add i32 %v2_8001ea8, %v3_8001eaa
  %v1_8001eae = inttoptr i32 %v2_8001eac to i16*
  %v2_8001eae = load i16, i16* %v1_8001eae, align 2
  %v3_8001eae = zext i16 %v2_8001eae to i32
  %v9_8001eb0 = icmp eq i32 %v3_8001eae, %tmp
  br i1 %v9_8001eb0, label %dec_label_pc_8001eb4, label %dec_label_pc_8001eb8

dec_label_pc_8001eb4:                             ; preds = %dec_label_pc_8001e9c
  %extract.t21 = trunc i32 %tmp29 to i16
  br label %dec_label_pc_8001eb6

dec_label_pc_8001eb6:                             ; preds = %dec_label_pc_8001ee8, %dec_label_pc_8001ee4, %dec_label_pc_8001eb4
  %v17_8001eb6.off0 = phi i16 [ -1, %dec_label_pc_8001ee8 ], [ %extract.t, %dec_label_pc_8001ee4 ], [ %extract.t21, %dec_label_pc_8001eb4 ]
  ret i16 %v17_8001eb6.off0

dec_label_pc_8001eb8:                             ; preds = %dec_label_pc_8001e9c
  %v2_8001eb8 = load i16, i16* %v1_8001eae, align 2
  %v3_8001eb8 = zext i16 %v2_8001eb8 to i32
  %v2_8001eba = sub nsw i32 %v3_8001eb8, %tmp
  %v6_8001eba = and i32 %v2_8001eba, %tmp
  %v7_8001eba = icmp slt i32 %v6_8001eba, 0
  %v8_8001eba = icmp slt i32 %v2_8001eba, 0
  %v9_8001eba = icmp eq i32 %v3_8001eb8, %tmp
  %v3_8001ebc = xor i1 %v8_8001eba, %v7_8001eba
  %v4_8001ebc = or i1 %v9_8001eba, %v3_8001ebc
  br i1 %v4_8001ebc, label %dec_label_pc_8001eca, label %dec_label_pc_8001ebe

dec_label_pc_8001ebe:                             ; preds = %dec_label_pc_8001eb8
  %v2_8001ec0 = icmp eq i32 %v3_8001ea4, 0
  br i1 %v2_8001ec0, label %dec_label_pc_8001ece.backedge, label %dec_label_pc_8001ec4

dec_label_pc_8001ec4:                             ; preds = %dec_label_pc_8001ebe
  %fold = add nuw i32 %tmp29, 65535
  %v1_8001ec6 = urem i32 %fold, 65536
  br label %dec_label_pc_8001ece.backedge

dec_label_pc_8001eca:                             ; preds = %dec_label_pc_8001eb8
  %fold22 = add nuw i32 %tmp29, 1
  %v1_8001ecc = urem i32 %fold22, 65536
  br label %dec_label_pc_8001ece.backedge

dec_label_pc_8001ece.backedge:                    ; preds = %dec_label_pc_8001eca, %dec_label_pc_8001ec4, %dec_label_pc_8001ebe
  %v1_8001ece = phi i32 [ %v1_8001e9c11, %dec_label_pc_8001eca ], [ %v1_8001ec6, %dec_label_pc_8001ec4 ], [ 0, %dec_label_pc_8001ebe ]
  %v0_8001ece = phi i32 [ %v1_8001ecc, %dec_label_pc_8001eca ], [ %v0_8001e9c10, %dec_label_pc_8001ec4 ], [ %v0_8001e9c10, %dec_label_pc_8001ebe ]
  %v5_8001ed0 = icmp slt i32 %v0_8001ece, %v1_8001ece
  br i1 %v5_8001ed0, label %dec_label_pc_8001e9c, label %dec_label_pc_8001ed2

dec_label_pc_8001ed2:                             ; preds = %dec_label_pc_8001ece.backedge
  %v9_8001ed2 = icmp eq i32 %v0_8001ece, %v1_8001ece
  br i1 %v9_8001ed2, label %dec_label_pc_8001ed6, label %dec_label_pc_8001ee8

dec_label_pc_8001ed6:                             ; preds = %entry, %dec_label_pc_8001ed2
  %v0_8001ee431 = phi i32 [ %v1_8001ece, %dec_label_pc_8001ed2 ], [ 0, %entry ]
  %v2_8001ed8 = mul i32 %v0_8001ee431, 12
  %v3_8001eda = load i32, i32* %.pre36, align 4
  %v2_8001edc = add i32 %v3_8001eda, %v2_8001ed8
  %v1_8001ede = inttoptr i32 %v2_8001edc to i16*
  %v2_8001ede = load i16, i16* %v1_8001ede, align 2
  %v3_8001ede = zext i16 %v2_8001ede to i32
  %v9_8001ee0 = icmp eq i32 %v3_8001ede, %tmp
  br i1 %v9_8001ee0, label %dec_label_pc_8001ee4, label %dec_label_pc_8001ee8

dec_label_pc_8001ee4:                             ; preds = %dec_label_pc_8001ed6
  %extract.t = trunc i32 %v0_8001ee431 to i16
  br label %dec_label_pc_8001eb6

dec_label_pc_8001ee8:                             ; preds = %dec_label_pc_8001ed6, %dec_label_pc_8001ed2
  br label %dec_label_pc_8001eb6

; uselistorder directives
  uselistorder i32 %v0_8001ece, { 0, 2, 1 }
  uselistorder i32 %v1_8001ece, { 0, 1, 3, 2 }
  uselistorder i32 %v2_8001eba, { 1, 0 }
  uselistorder i32 %v3_8001eb8, { 1, 0 }
  uselistorder i32 %v3_8001ea4, { 1, 0 }
  uselistorder i32 %tmp29, { 1, 0, 2, 3 }
  uselistorder i32 %v2_8001e9c, { 1, 0 }
  uselistorder i32 %v0_8001e9c10, { 1, 2, 0 }
  uselistorder i32 %v1_8001e9c11, { 1, 0 }
  uselistorder i32 %v1_8001e98, { 1, 0 }
  uselistorder i32 %tmp, { 4, 2, 0, 3, 1 }
  uselistorder label %dec_label_pc_8001ed6, { 1, 0 }
  uselistorder label %dec_label_pc_8001e9c, { 1, 0 }
}

define i16 @CO_OD_getAttribute(i32 %SDO, i16 %entryNo, i8 %subIndex) local_unnamed_addr {
dec_label_pc_8001f08:
  %tmp = sext i8 %subIndex to i32
  %tmp6 = sext i16 %entryNo to i32
  %v2_8001ef8 = mul nsw i32 %tmp6, 12
  %v1_8001efa = add i32 %SDO, 44
  %v2_8001efa = inttoptr i32 %v1_8001efa to i32*
  %v3_8001efa = load i32, i32* %v2_8001efa, align 4
  %v2_8001efc = add i32 %v3_8001efa, %v2_8001ef8
  %v1_8001f08 = add i32 %v2_8001efc, 2
  %v2_8001f08 = inttoptr i32 %v1_8001f08 to i8*
  %v3_8001f08 = load i8, i8* %v2_8001f08, align 1
  %v2_8001f0a = icmp eq i8 %v3_8001f08, 0
  %v1_8001f0e = add i32 %v2_8001efc, 4
  %v2_8001f0e = inttoptr i32 %v1_8001f0e to i16*
  %v3_8001f0e = load i16, i16* %v2_8001f0e, align 2
  br i1 %v2_8001f0a, label %dec_label_pc_8001f06, label %dec_label_pc_8001f12

dec_label_pc_8001f06:                             ; preds = %dec_label_pc_8001f1e, %dec_label_pc_8001f18, %dec_label_pc_8001f08, %dec_label_pc_8001f2c
  %v14_8001f06.off0 = phi i16 [ %v2_8001f28, %dec_label_pc_8001f1e ], [ %v3_8001f18, %dec_label_pc_8001f18 ], [ %v3_8001f0e, %dec_label_pc_8001f08 ], [ %v3_8001f32, %dec_label_pc_8001f2c ]
  ret i16 %v14_8001f06.off0

dec_label_pc_8001f12:                             ; preds = %dec_label_pc_8001f08
  %v2_8001f14 = icmp eq i16 %v3_8001f0e, 0
  br i1 %v2_8001f14, label %dec_label_pc_8001f2c, label %dec_label_pc_8001f18

dec_label_pc_8001f18:                             ; preds = %dec_label_pc_8001f12
  %v3_8001f18 = load i16, i16* %v2_8001f0e, align 2
  %v3_8001f1a = icmp eq i8 %subIndex, 0
  br i1 %v3_8001f1a, label %dec_label_pc_8001f1e, label %dec_label_pc_8001f06

dec_label_pc_8001f1e:                             ; preds = %dec_label_pc_8001f18
  %v3_8001f22 = and i16 %v3_8001f18, -29
  %v2_8001f28 = or i16 %v3_8001f22, 4
  br label %dec_label_pc_8001f06

dec_label_pc_8001f2c:                             ; preds = %dec_label_pc_8001f12
  %v4_8001f2c = mul nsw i32 %tmp, 8
  %v1_8001f2e = add i32 %v2_8001efc, 8
  %v2_8001f2e = inttoptr i32 %v1_8001f2e to i32*
  %v3_8001f2e = load i32, i32* %v2_8001f2e, align 4
  %v2_8001f30 = add i32 %v3_8001f2e, %v4_8001f2c
  %v1_8001f32 = add i32 %v2_8001f30, 4
  %v2_8001f32 = inttoptr i32 %v1_8001f32 to i16*
  %v3_8001f32 = load i16, i16* %v2_8001f32, align 2
  br label %dec_label_pc_8001f06

; uselistorder directives
  uselistorder i16 %v3_8001f0e, { 1, 0 }
  uselistorder label %dec_label_pc_8001f06, { 3, 0, 1, 2 }
}

define i8* @CO_OD_getDataPointer(i32 %SDO, i16 %entryNo, i8 %subIndex) local_unnamed_addr {
dec_label_pc_8001f54:
  %tmp = sext i8 %subIndex to i32
  %tmp3 = sext i16 %entryNo to i32
  %v2_8001f44 = mul nsw i32 %tmp3, 12
  %v1_8001f46 = add i32 %SDO, 44
  %v2_8001f46 = inttoptr i32 %v1_8001f46 to i32*
  %v3_8001f46 = load i32, i32* %v2_8001f46, align 4
  %v2_8001f48 = add i32 %v3_8001f46, %v2_8001f44
  %v1_8001f54 = add i32 %v2_8001f48, 2
  %v2_8001f54 = inttoptr i32 %v1_8001f54 to i8*
  %v3_8001f54 = load i8, i8* %v2_8001f54, align 1
  %v2_8001f56 = icmp eq i8 %v3_8001f54, 0
  br i1 %v2_8001f56, label %dec_label_pc_8001f5a, label %dec_label_pc_8001f5e

dec_label_pc_8001f52:                             ; preds = %dec_label_pc_8001f6c, %dec_label_pc_8001f80, %dec_label_pc_8001f74, %dec_label_pc_8001f68, %dec_label_pc_8001f5a
  %v11_8001f52 = phi i32 [ 0, %dec_label_pc_8001f6c ], [ %v4_8001f84, %dec_label_pc_8001f80 ], [ %v2_8001f7c, %dec_label_pc_8001f74 ], [ %v1_8001f54, %dec_label_pc_8001f68 ], [ %v3_8001f5a, %dec_label_pc_8001f5a ]
  %v12_8001f52 = inttoptr i32 %v11_8001f52 to i8*
  ret i8* %v12_8001f52

dec_label_pc_8001f5a:                             ; preds = %dec_label_pc_8001f54
  %v1_8001f5a = add i32 %v2_8001f48, 8
  %v2_8001f5a = inttoptr i32 %v1_8001f5a to i32*
  %v3_8001f5a = load i32, i32* %v2_8001f5a, align 4
  br label %dec_label_pc_8001f52

dec_label_pc_8001f5e:                             ; preds = %dec_label_pc_8001f54
  %v1_8001f5e = add i32 %v2_8001f48, 4
  %v2_8001f5e = inttoptr i32 %v1_8001f5e to i16*
  %v3_8001f5e = load i16, i16* %v2_8001f5e, align 2
  %v2_8001f60 = icmp eq i16 %v3_8001f5e, 0
  br i1 %v2_8001f60, label %dec_label_pc_8001f80, label %dec_label_pc_8001f64

dec_label_pc_8001f64:                             ; preds = %dec_label_pc_8001f5e
  %v3_8001f64 = icmp eq i8 %subIndex, 0
  br i1 %v3_8001f64, label %dec_label_pc_8001f68, label %dec_label_pc_8001f6c

dec_label_pc_8001f68:                             ; preds = %dec_label_pc_8001f64
  br label %dec_label_pc_8001f52

dec_label_pc_8001f6c:                             ; preds = %dec_label_pc_8001f64
  %v1_8001f6c = add i32 %v2_8001f48, 8
  %v2_8001f6c = inttoptr i32 %v1_8001f6c to i32*
  %v3_8001f6c = load i32, i32* %v2_8001f6c, align 4
  %v2_8001f6e = icmp eq i32 %v3_8001f6c, 0
  br i1 %v2_8001f6e, label %dec_label_pc_8001f52, label %dec_label_pc_8001f74

dec_label_pc_8001f74:                             ; preds = %dec_label_pc_8001f6c
  %v2_8001f74 = add nsw i32 %tmp, -1
  %v1_8001f76 = add i32 %v2_8001f48, 6
  %v2_8001f76 = inttoptr i32 %v1_8001f76 to i16*
  %v3_8001f76 = load i16, i16* %v2_8001f76, align 2
  %v4_8001f76 = zext i16 %v3_8001f76 to i32
  %v2_8001f78 = mul nsw i32 %v4_8001f76, %v2_8001f74
  %v3_8001f7a = load i32, i32* %v2_8001f6c, align 4
  %v2_8001f7c = add i32 %v3_8001f7a, %v2_8001f78
  br label %dec_label_pc_8001f52

dec_label_pc_8001f80:                             ; preds = %dec_label_pc_8001f5e
  %v4_8001f80 = mul nsw i32 %tmp, 8
  %v1_8001f82 = add i32 %v2_8001f48, 8
  %v2_8001f82 = inttoptr i32 %v1_8001f82 to i32*
  %v3_8001f82 = load i32, i32* %v2_8001f82, align 4
  %v2_8001f84 = add i32 %v3_8001f82, %v4_8001f80
  %v3_8001f84 = inttoptr i32 %v2_8001f84 to i32*
  %v4_8001f84 = load i32, i32* %v3_8001f84, align 4
  br label %dec_label_pc_8001f52

; uselistorder directives
  uselistorder i32 %v2_8001f48, { 0, 1, 2, 4, 3, 5 }
  uselistorder label %dec_label_pc_8001f52, { 1, 2, 0, 3, 4 }
}

define i8* @CO_OD_getFlagsPointer(i32 %SDO, i16 %entryNo, i8 %subIndex) local_unnamed_addr {
entry:
  %v1_8001f96 = add i32 %SDO, 52
  %v2_8001f96 = inttoptr i32 %v1_8001f96 to i32*
  %v3_8001f96 = load i32, i32* %v2_8001f96, align 4
  %v2_8001f98 = icmp eq i32 %v3_8001f96, 0
  br i1 %v2_8001f98, label %dec_label_pc_8001f9c, label %dec_label_pc_8001fa0

dec_label_pc_8001f9c:                             ; preds = %entry
  br label %dec_label_pc_8001f9e

dec_label_pc_8001f9e:                             ; preds = %dec_label_pc_8001fa0, %dec_label_pc_8001f9c
  %v11_8001f9e = phi i8* [ null, %dec_label_pc_8001f9c ], [ %phitmp, %dec_label_pc_8001fa0 ]
  ret i8* %v11_8001f9e

dec_label_pc_8001fa0:                             ; preds = %entry
  %tmp3 = sext i16 %entryNo to i32
  %tmp = sext i8 %subIndex to i32
  %v3_8001fa2 = mul nsw i32 %tmp3, 12
  %v3_8001fa4 = load i32, i32* %v2_8001f96, align 4
  %v2_8001fa6 = add i32 %v3_8001fa4, %v3_8001fa2
  %v1_8001fa8 = add i32 %v2_8001fa6, 8
  %v2_8001fa8 = inttoptr i32 %v1_8001fa8 to i32*
  %v3_8001fa8 = load i32, i32* %v2_8001fa8, align 4
  %v3_8001faa = add i32 %v3_8001fa8, %tmp
  %phitmp = inttoptr i32 %v3_8001faa to i8*
  br label %dec_label_pc_8001f9e
}

define i16 @CO_OD_getLength(i32 %SDO, i16 %entryNo, i8 %subIndex) local_unnamed_addr {
dec_label_pc_8001fcc:
  %tmp = sext i8 %subIndex to i32
  %tmp5 = sext i16 %entryNo to i32
  %v2_8001fbc = mul nsw i32 %tmp5, 12
  %v1_8001fbe = add i32 %SDO, 44
  %v2_8001fbe = inttoptr i32 %v1_8001fbe to i32*
  %v3_8001fbe = load i32, i32* %v2_8001fbe, align 4
  %v2_8001fc0 = add i32 %v3_8001fbe, %v2_8001fbc
  %v1_8001fcc = add i32 %v2_8001fc0, 2
  %v2_8001fcc = inttoptr i32 %v1_8001fcc to i8*
  %v3_8001fcc = load i8, i8* %v2_8001fcc, align 1
  %v2_8001fce = icmp eq i8 %v3_8001fcc, 0
  br i1 %v2_8001fce, label %dec_label_pc_8001fd2, label %dec_label_pc_8001fe0

dec_label_pc_8001fca:                             ; preds = %dec_label_pc_800200a, %dec_label_pc_8002006, %dec_label_pc_8001ff8, %dec_label_pc_8001ff4, %dec_label_pc_8001fea, %dec_label_pc_8001fdc, %dec_label_pc_8001fd8
  %v11_8001fca.off0 = phi i16 [ %v3_8002010, %dec_label_pc_800200a ], [ 32, %dec_label_pc_8002006 ], [ %v3_8001ff8, %dec_label_pc_8001ff8 ], [ 32, %dec_label_pc_8001ff4 ], [ 1, %dec_label_pc_8001fea ], [ %v3_8001fdc, %dec_label_pc_8001fdc ], [ 32, %dec_label_pc_8001fd8 ]
  ret i16 %v11_8001fca.off0

dec_label_pc_8001fd2:                             ; preds = %dec_label_pc_8001fcc
  %v1_8001fd2 = add i32 %v2_8001fc0, 8
  %v2_8001fd2 = inttoptr i32 %v1_8001fd2 to i32*
  %v3_8001fd2 = load i32, i32* %v2_8001fd2, align 4
  %v2_8001fd4 = icmp eq i32 %v3_8001fd2, 0
  br i1 %v2_8001fd4, label %dec_label_pc_8001fd8, label %dec_label_pc_8001fdc

dec_label_pc_8001fd8:                             ; preds = %dec_label_pc_8001fd2
  br label %dec_label_pc_8001fca

dec_label_pc_8001fdc:                             ; preds = %dec_label_pc_8001fd2
  %v1_8001fdc = add i32 %v2_8001fc0, 6
  %v2_8001fdc = inttoptr i32 %v1_8001fdc to i16*
  %v3_8001fdc = load i16, i16* %v2_8001fdc, align 2
  br label %dec_label_pc_8001fca

dec_label_pc_8001fe0:                             ; preds = %dec_label_pc_8001fcc
  %v1_8001fe0 = add i32 %v2_8001fc0, 4
  %v2_8001fe0 = inttoptr i32 %v1_8001fe0 to i16*
  %v3_8001fe0 = load i16, i16* %v2_8001fe0, align 2
  %v2_8001fe2 = icmp eq i16 %v3_8001fe0, 0
  br i1 %v2_8001fe2, label %dec_label_pc_8001ffc, label %dec_label_pc_8001fe6

dec_label_pc_8001fe6:                             ; preds = %dec_label_pc_8001fe0
  %v3_8001fe6 = icmp eq i8 %subIndex, 0
  br i1 %v3_8001fe6, label %dec_label_pc_8001fea, label %dec_label_pc_8001fee

dec_label_pc_8001fea:                             ; preds = %dec_label_pc_8001fe6
  br label %dec_label_pc_8001fca

dec_label_pc_8001fee:                             ; preds = %dec_label_pc_8001fe6
  %v1_8001fee = add i32 %v2_8001fc0, 8
  %v2_8001fee = inttoptr i32 %v1_8001fee to i32*
  %v3_8001fee = load i32, i32* %v2_8001fee, align 4
  %v2_8001ff0 = icmp eq i32 %v3_8001fee, 0
  br i1 %v2_8001ff0, label %dec_label_pc_8001ff4, label %dec_label_pc_8001ff8

dec_label_pc_8001ff4:                             ; preds = %dec_label_pc_8001fee
  br label %dec_label_pc_8001fca

dec_label_pc_8001ff8:                             ; preds = %dec_label_pc_8001fee
  %v1_8001ff8 = add i32 %v2_8001fc0, 6
  %v2_8001ff8 = inttoptr i32 %v1_8001ff8 to i16*
  %v3_8001ff8 = load i16, i16* %v2_8001ff8, align 2
  br label %dec_label_pc_8001fca

dec_label_pc_8001ffc:                             ; preds = %dec_label_pc_8001fe0
  %v4_8001ffc = mul nsw i32 %tmp, 8
  %v1_8001ffe = add i32 %v2_8001fc0, 8
  %v2_8001ffe = inttoptr i32 %v1_8001ffe to i32*
  %v3_8001ffe = load i32, i32* %v2_8001ffe, align 4
  %v2_8002000 = add i32 %v3_8001ffe, %v4_8001ffc
  %v3_8002000 = inttoptr i32 %v2_8002000 to i32*
  %v4_8002000 = load i32, i32* %v3_8002000, align 4
  %v2_8002002 = icmp eq i32 %v4_8002000, 0
  br i1 %v2_8002002, label %dec_label_pc_8002006, label %dec_label_pc_800200a

dec_label_pc_8002006:                             ; preds = %dec_label_pc_8001ffc
  br label %dec_label_pc_8001fca

dec_label_pc_800200a:                             ; preds = %dec_label_pc_8001ffc
  %v3_800200c = load i32, i32* %v2_8001ffe, align 4
  %v2_800200e = add i32 %v3_800200c, %v4_8001ffc
  %v1_8002010 = add i32 %v2_800200e, 6
  %v2_8002010 = inttoptr i32 %v1_8002010 to i16*
  %v3_8002010 = load i16, i16* %v2_8002010, align 2
  br label %dec_label_pc_8001fca

; uselistorder directives
  uselistorder i32 %v4_8001ffc, { 1, 0 }
  uselistorder i32 %v2_8001fc0, { 1, 2, 3, 5, 0, 4, 6 }
}

define i32 @CO_PDOfindMap(i32 %SDO, i32 %map, i8 %R_T, i8** %ppData, i8* %pLength, i8* %pSendIfCOSFlags, i8* %pIsMultibyteVar) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r7.global-to-local = alloca i32, align 4
  %tmp = ptrtoint i8** %ppData to i32
  %tmp20 = sext i8 %R_T to i32
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v21_800206c = load i32, i32* @r4, align 4
  %v27_800206c = load i32, i32* @r6, align 4
  %v3_8002072 = udiv i32 %map, 65536
  store i32 %v3_8002072, i32* @r4, align 4
  %tmp36 = udiv i32 %map, 256
  %v3_8002078 = urem i32 %tmp36, 256
  %v4_8002078 = icmp eq i32 %v3_8002078, 0
  %v3_8002082 = urem i32 %map, 8
  store i32 %v3_8002082, i32* %r0.global-to-local, align 4
  %v4_8002082 = icmp eq i32 %v3_8002082, 0
  br i1 %v4_8002082, label %dec_label_pc_800208e, label %dec_label_pc_8002088

dec_label_pc_8002088:                             ; preds = %entry
  store i32 100925505, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_800208a:                             ; preds = %dec_label_pc_80021b8, %dec_label_pc_800216e, %dec_label_pc_8002156, %dec_label_pc_800213c, %dec_label_pc_8002116, %dec_label_pc_80020f0, %dec_label_pc_80020d8, %dec_label_pc_80020a4, %dec_label_pc_8002088
  %v17_800208c = phi i32 [ 0, %dec_label_pc_80021b8 ], [ 100925505, %dec_label_pc_800216e ], [ 100925505, %dec_label_pc_8002156 ], [ 100925505, %dec_label_pc_800213c ], [ 100794368, %dec_label_pc_8002116 ], [ 0, %dec_label_pc_80020f0 ], [ 100925505, %dec_label_pc_80020d8 ], [ 100925506, %dec_label_pc_80020a4 ], [ 100925505, %dec_label_pc_8002088 ]
  store i32 %v21_800206c, i32* @r4, align 4
  store i32 %v27_800206c, i32* @r6, align 4
  ret i32 %v17_800208c

dec_label_pc_800208e:                             ; preds = %entry
  %v1_800207e = urem i32 %map, 256
  %v3_800208e19 = udiv i32 %v1_800207e, 8
  store i32 %v3_800208e19, i32* @r6, align 4
  %v4_8002090 = ptrtoint i8* %pLength to i32
  store i32 %v4_8002090, i32* %r0.global-to-local, align 4
  %v2_8002092 = load i8, i8* %pLength, align 1
  %v3_8002092 = zext i8 %v2_8002092 to i32
  %v2_8002094 = add nuw nsw i32 %v3_8002092, %v3_800208e19
  %v1_800209a = trunc i32 %v2_8002094 to i8
  store i8 %v1_800209a, i8* %pLength, align 1
  %v3_800209e = and i32 %v2_8002094, 255
  store i32 %v3_800209e, i32* %r0.global-to-local, align 4
  %v7_80020a2 = icmp ult i8 %v1_800209a, 9
  br i1 %v7_80020a2, label %dec_label_pc_80020aa, label %dec_label_pc_80020a4

dec_label_pc_80020a4:                             ; preds = %dec_label_pc_800208e
  store i32 100925506, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_80020aa:                             ; preds = %dec_label_pc_800208e
  %v0_80020aa = load i32, i32* @r4, align 4
  %v8_80020ac = icmp sgt i32 %v0_80020aa, 7
  br i1 %v8_80020ac, label %dec_label_pc_80020f4, label %dec_label_pc_80020ae

dec_label_pc_80020ae:                             ; preds = %dec_label_pc_80020aa
  store i32 %v3_8002078, i32* %r0.global-to-local, align 4
  br i1 %v4_8002078, label %dec_label_pc_80020b4, label %dec_label_pc_80020f4

dec_label_pc_80020b4:                             ; preds = %dec_label_pc_80020ae
  %v6_80020b8 = icmp slt i32 %v0_80020aa, 2
  br i1 %v6_80020b8, label %dec_label_pc_80020ba, label %dec_label_pc_80020be

dec_label_pc_80020ba:                             ; preds = %dec_label_pc_80020b4
  br label %dec_label_pc_80020d4

dec_label_pc_80020be:                             ; preds = %dec_label_pc_80020b4
  switch i32 %v0_80020aa, label %dec_label_pc_80020d4 [
    i32 2, label %dec_label_pc_80020c6
    i32 5, label %dec_label_pc_80020c6
    i32 3, label %dec_label_pc_80020d2
    i32 6, label %dec_label_pc_80020d2
  ]

dec_label_pc_80020c6:                             ; preds = %dec_label_pc_80020be, %dec_label_pc_80020be
  br label %dec_label_pc_80020d4

dec_label_pc_80020d2:                             ; preds = %dec_label_pc_80020be, %dec_label_pc_80020be
  br label %dec_label_pc_80020d4

dec_label_pc_80020d4:                             ; preds = %dec_label_pc_80020be, %dec_label_pc_80020c6, %dec_label_pc_80020ba, %dec_label_pc_80020d2
  %v0_80020d4 = phi i32 [ 1, %dec_label_pc_80020c6 ], [ 0, %dec_label_pc_80020ba ], [ 2, %dec_label_pc_80020d2 ], [ 4, %dec_label_pc_80020be ]
  %v1_80020d4 = load i32, i32* @r6, align 4
  %v6_80020d6 = icmp slt i32 %v0_80020d4, %v1_80020d4
  br i1 %v6_80020d6, label %dec_label_pc_80020d8, label %dec_label_pc_80020dc

dec_label_pc_80020d8:                             ; preds = %dec_label_pc_80020d4
  store i32 100925505, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_80020dc:                             ; preds = %dec_label_pc_80020d4
  store i32 %tmp20, i32* %r0.global-to-local, align 4
  %v2_80020de = icmp eq i8 %R_T, 0
  br i1 %v2_80020de, label %dec_label_pc_80020e2, label %dec_label_pc_80020ea

dec_label_pc_80020e2:                             ; preds = %dec_label_pc_80020dc
  store i32 %tmp, i32* %r0.global-to-local, align 4
  %v2_80020e6 = bitcast i8** %ppData to i32*
  store i32 536871900, i32* %v2_80020e6, align 4
  br label %dec_label_pc_80020f0

dec_label_pc_80020ea:                             ; preds = %dec_label_pc_80020dc
  store i32 %tmp, i32* %r0.global-to-local, align 4
  %v2_80020ee = bitcast i8** %ppData to i32*
  store i32 536871896, i32* %v2_80020ee, align 4
  br label %dec_label_pc_80020f0

dec_label_pc_80020f0:                             ; preds = %dec_label_pc_80020e2, %dec_label_pc_80020ea
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_80020f4:                             ; preds = %dec_label_pc_80020ae, %dec_label_pc_80020aa
  %v1_80020f4 = trunc i32 %v0_80020aa to i16
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v4_80020f8 = call i16 @CO_OD_find(i32 %SDO, i16 %v1_80020f4)
  %v6_80020f8 = sext i16 %v4_80020f8 to i32
  store i32 %v6_80020f8, i32* %r7.global-to-local, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v1_8002106 = add i32 %SDO, 44
  %v2_8002106 = inttoptr i32 %v1_8002106 to i32*
  %v3_8002106 = load i32, i32* %v2_8002106, align 4
  %v2_800210a = mul nsw i32 %v6_80020f8, 12
  %v2_800210c = add i32 %v3_8002106, %v2_800210a
  store i32 %v2_800210c, i32* %r0.global-to-local, align 4
  %v1_800210e = add i32 %v2_800210c, 2
  %v2_800210e = inttoptr i32 %v1_800210e to i8*
  %v3_800210e = load i8, i8* %v2_800210e, align 1
  %v4_800210e = zext i8 %v3_800210e to i32
  store i32 %v3_8002078, i32* %r0.global-to-local, align 4
  %v6_8002114 = icmp ult i32 %v4_800210e, %v3_8002078
  br i1 %v6_8002114, label %dec_label_pc_8002116, label %dec_label_pc_800211a

dec_label_pc_8002116:                             ; preds = %dec_label_pc_80020f4
  store i32 100794368, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_800211a:                             ; preds = %dec_label_pc_80020f4
  %v4_800211c = trunc i32 %tmp36 to i8
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v7_8002120 = call i16 @CO_OD_getAttribute(i32 %SDO, i16 %v4_80020f8, i8 %v4_800211c)
  %v9_8002120 = sext i16 %v7_8002120 to i32
  %v1_8002124 = urem i32 %v9_8002120, 256
  store i32 %v1_8002124, i32* @r5, align 4
  store i32 %tmp20, i32* %r0.global-to-local, align 4
  %v2_8002128 = icmp eq i8 %R_T, 0
  br i1 %v2_8002128, label %dec_label_pc_800212c, label %dec_label_pc_8002146

dec_label_pc_800212c:                             ; preds = %dec_label_pc_800211a
  %v2_800212e = and i32 %v9_8002120, 16
  store i32 %v2_800212e, i32* %r0.global-to-local, align 4
  %v4_800212e = icmp eq i32 %v2_800212e, 0
  br i1 %v4_800212e, label %dec_label_pc_800213c, label %dec_label_pc_8002134

dec_label_pc_8002134:                             ; preds = %dec_label_pc_800212c
  %v2_8002136 = and i32 %v9_8002120, 8
  store i32 %v2_8002136, i32* %r0.global-to-local, align 4
  %v4_8002136 = icmp eq i32 %v2_8002136, 0
  br i1 %v4_8002136, label %dec_label_pc_800213c, label %dec_label_pc_8002140.thread

dec_label_pc_8002140.thread:                      ; preds = %dec_label_pc_8002134
  store i32 %tmp20, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800215a

dec_label_pc_800213c:                             ; preds = %dec_label_pc_8002134, %dec_label_pc_800212c
  store i32 100925505, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_8002146:                             ; preds = %dec_label_pc_800211a
  %v2_8002148 = and i32 %v9_8002120, 32
  store i32 %v2_8002148, i32* %r0.global-to-local, align 4
  %v4_8002148 = icmp eq i32 %v2_8002148, 0
  br i1 %v4_8002148, label %dec_label_pc_8002156, label %dec_label_pc_800214e

dec_label_pc_800214e:                             ; preds = %dec_label_pc_8002146
  %v2_8002150 = and i32 %v9_8002120, 4
  store i32 %v2_8002150, i32* %r0.global-to-local, align 4
  %v4_8002150 = icmp eq i32 %v2_8002150, 0
  br i1 %v4_8002150, label %dec_label_pc_8002156, label %dec_label_pc_800215a

dec_label_pc_8002156:                             ; preds = %dec_label_pc_800214e, %dec_label_pc_8002146
  store i32 100925505, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_800215a:                             ; preds = %dec_label_pc_8002140.thread, %dec_label_pc_800214e
  %v0_800215a = load i32, i32* %r7.global-to-local, align 4
  %v1_800215a = trunc i32 %v0_800215a to i16
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v7_8002160 = call i16 @CO_OD_getLength(i32 %SDO, i16 %v1_800215a, i8 %v4_800211c)
  %tmp37 = urem i16 %v7_8002160, 256
  %v1_8002164 = zext i16 %tmp37 to i32
  store i32 %v1_8002164, i32* %r0.global-to-local, align 4
  %v1_800216a = load i32, i32* @r6, align 4
  %v6_800216c = icmp slt i32 %v1_8002164, %v1_800216a
  br i1 %v6_800216c, label %dec_label_pc_800216e, label %dec_label_pc_8002172

dec_label_pc_800216e:                             ; preds = %dec_label_pc_800215a
  store i32 100925505, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

dec_label_pc_8002172:                             ; preds = %dec_label_pc_800215a
  %v1_8002174 = load i32, i32* @r5, align 4
  %v2_8002174 = udiv i32 %v1_8002174, 128
  %v2_8002174.tr = trunc i32 %v2_8002174 to i8
  %v1_800217a = urem i8 %v2_8002174.tr, 2
  store i8 %v1_800217a, i8* %pIsMultibyteVar, align 1
  %v0_800217c = load i32, i32* %r7.global-to-local, align 4
  %v1_800217c = trunc i32 %v0_800217c to i16
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v7_8002182 = call i8* @CO_OD_getDataPointer(i32 %SDO, i16 %v1_800217c, i8 %v4_800211c)
  %v9_8002182 = ptrtoint i8* %v7_8002182 to i32
  %v2_8002188 = bitcast i8** %ppData to i32*
  store i32 %v9_8002182, i32* %v2_8002188, align 4
  %v1_800218c = load i32, i32* @r5, align 4
  %v2_800218c = and i32 %v1_800218c, 64
  store i32 %v2_800218c, i32* %r0.global-to-local, align 4
  %v4_800218c = icmp eq i32 %v2_800218c, 0
  br i1 %v4_800218c, label %dec_label_pc_80021b8, label %dec_label_pc_8002192

dec_label_pc_8002192:                             ; preds = %dec_label_pc_8002172
  %v2_8002194 = load i8, i8* %pLength, align 1
  %v3_8002194 = zext i8 %v2_8002194 to i32
  %v1_8002196 = load i32, i32* @r6, align 4
  %v2_8002196 = sub i32 %v3_8002194, %v1_8002196
  store i32 %v2_8002196, i32* %r0.global-to-local, align 4
  %v3_80021b011 = zext i8 %v2_8002194 to i32
  %v8_80021b415 = icmp sgt i32 %v3_80021b011, %v2_8002196
  br i1 %v8_80021b415, label %dec_label_pc_800219a.lr.ph, label %dec_label_pc_80021b8

dec_label_pc_800219a.lr.ph:                       ; preds = %dec_label_pc_8002192
  br label %dec_label_pc_800219a

dec_label_pc_800219a:                             ; preds = %dec_label_pc_800219a.lr.ph, %dec_label_pc_800219a
  %v1_80021a0 = phi i32 [ %v2_8002196, %dec_label_pc_800219a.lr.ph ], [ %v1_80021ac, %dec_label_pc_800219a ]
  %v2_800219c = load i8, i8* %pSendIfCOSFlags, align 1
  %v3_800219c = zext i8 %v2_800219c to i32
  %v6_80021a0 = shl i32 1, %v1_80021a0
  %v2_80021a2 = or i32 %v3_800219c, %v6_80021a0
  %v1_80021a8 = trunc i32 %v2_80021a2 to i8
  store i8 %v1_80021a8, i8* %pSendIfCOSFlags, align 1
  %v0_80021aa = load i32, i32* %r0.global-to-local, align 4
  %v1_80021aa = add i32 %v0_80021aa, 1
  %v1_80021ac = call i32 @__asm_sxth.i32(i32 %v1_80021aa)
  store i32 %v1_80021ac, i32* %r0.global-to-local, align 4
  %v2_80021b0 = load i8, i8* %pLength, align 1
  %v3_80021b0 = zext i8 %v2_80021b0 to i32
  %v8_80021b4 = icmp sgt i32 %v3_80021b0, %v1_80021ac
  br i1 %v8_80021b4, label %dec_label_pc_800219a, label %dec_label_pc_80021b8

dec_label_pc_80021b8:                             ; preds = %dec_label_pc_800219a, %dec_label_pc_8002192, %dec_label_pc_8002172
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_800208a

; uselistorder directives
  uselistorder i32 %v1_80021ac, { 1, 2, 0 }
  uselistorder i32 %v9_8002120, { 3, 4, 1, 2, 0 }
  uselistorder i32 %v0_80020aa, { 1, 0, 2, 3 }
  uselistorder i32 %v3_800208e19, { 1, 0 }
  uselistorder i32 %v3_8002078, { 3, 1, 2, 0 }
  uselistorder i32 %tmp20, { 0, 2, 1 }
  uselistorder i32* %r0.global-to-local, { 2, 1, 3, 4, 5, 6, 8, 7, 9, 11, 10, 12, 14, 34, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 0 }
  uselistorder i32 100925506, { 1, 0 }
  uselistorder i32 100925505, { 5, 6, 7, 8, 0, 1, 2, 3, 4, 9 }
  uselistorder i8* %pLength, { 0, 1, 2, 4, 3 }
  uselistorder i8** %ppData, { 2, 0, 1, 3 }
  uselistorder i8 %R_T, { 1, 0, 2 }
  uselistorder i32 %map, { 3, 2, 0, 1 }
  uselistorder i32 %SDO, { 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 10 }
  uselistorder label %dec_label_pc_800219a, { 1, 0 }
  uselistorder label %dec_label_pc_800215a, { 1, 0 }
  uselistorder label %dec_label_pc_80020f0, { 1, 0 }
  uselistorder label %dec_label_pc_80020d4, { 3, 1, 0, 2 }
}

define i32 @CO_RPDO_init(i32 %RPDO, i32 %em, i32 %SDO, i8* %operatingState, i8 %nodeId, i16 %defaultCOB_ID, i8 %restrictionFlags, i32 %RPDOCommPar, i32 %RPDOMapPar, i16 %idx_RPDOCommPar, i16 %idx_RPDOMapPar, i32 %CANdevRx, i16 %CANdevRxIdx) local_unnamed_addr {
entry:
  %tmp = ptrtoint i8* %operatingState to i32
  %v15_80021d0 = load i32, i32* @r4, align 4
  %v18_80021d0 = load i32, i32* @r5, align 4
  store i32 %RPDO, i32* @r4, align 4
  store i32 %em, i32* @r6, align 4
  store i32 %SDO, i32* @r5, align 4
  store i32 %tmp, i32* @r7, align 4
  %v2_80021da = icmp eq i32 %RPDO, 0
  %v2_80021de = icmp eq i32 %em, 0
  %or.cond = or i1 %v2_80021da, %v2_80021de
  %v2_80021e2 = icmp eq i32 %SDO, 0
  %or.cond28 = or i1 %or.cond, %v2_80021e2
  %v2_80021e6 = icmp eq i8* %operatingState, null
  %or.cond29 = or i1 %or.cond28, %v2_80021e6
  br i1 %or.cond29, label %dec_label_pc_80021fc, label %dec_label_pc_80021ea

dec_label_pc_80021ea:                             ; preds = %entry
  %v2_80021ec = icmp eq i32 %RPDOCommPar, 0
  br i1 %v2_80021ec, label %dec_label_pc_80021fc, label %dec_label_pc_80021f0

dec_label_pc_80021f0:                             ; preds = %dec_label_pc_80021ea
  %v2_80021f2 = icmp eq i32 %RPDOMapPar, 0
  br i1 %v2_80021f2, label %dec_label_pc_80021fc, label %dec_label_pc_80021f6

dec_label_pc_80021f6:                             ; preds = %dec_label_pc_80021f0
  %v2_80021f8 = icmp eq i32 %CANdevRx, 0
  br i1 %v2_80021f8, label %dec_label_pc_80021fc, label %dec_label_pc_8002202

dec_label_pc_80021fc:                             ; preds = %dec_label_pc_80021f6, %dec_label_pc_80021f0, %dec_label_pc_80021ea, %entry
  br label %dec_label_pc_8002200

dec_label_pc_8002200:                             ; preds = %dec_label_pc_8002202, %dec_label_pc_80021fc
  %storemerge9 = phi i32 [ -1, %dec_label_pc_80021fc ], [ 0, %dec_label_pc_8002202 ]
  store i32 %v15_80021d0, i32* @r4, align 4
  store i32 %v18_80021d0, i32* @r5, align 4
  ret i32 %storemerge9

dec_label_pc_8002202:                             ; preds = %dec_label_pc_80021f6
  %v2_8002202 = inttoptr i32 %RPDO to i32*
  store i32 %em, i32* %v2_8002202, align 4
  %v0_8002204 = load i32, i32* @r5, align 4
  %v1_8002204 = load i32, i32* @r4, align 4
  %v2_8002204 = add i32 %v1_8002204, 4
  %v3_8002204 = inttoptr i32 %v2_8002204 to i32*
  store i32 %v0_8002204, i32* %v3_8002204, align 4
  %v1_8002208 = load i32, i32* @r4, align 4
  %v2_8002208 = add i32 %v1_8002208, 8
  %v3_8002208 = inttoptr i32 %v2_8002208 to i32*
  store i32 %RPDOCommPar, i32* %v3_8002208, align 4
  %v1_800220c = load i32, i32* @r4, align 4
  %v2_800220c = add i32 %v1_800220c, 12
  %v3_800220c = inttoptr i32 %v2_800220c to i32*
  store i32 %RPDOMapPar, i32* %v3_800220c, align 4
  %v0_800220e = load i32, i32* @r7, align 4
  %v1_800220e = load i32, i32* @r4, align 4
  %v2_800220e = add i32 %v1_800220e, 16
  %v3_800220e = inttoptr i32 %v2_800220e to i32*
  store i32 %v0_800220e, i32* %v3_800220e, align 4
  %v2_8002212 = load i32, i32* @r4, align 4
  %v3_8002212 = add i32 %v2_8002212, 20
  %v4_8002212 = inttoptr i32 %v3_8002212 to i8*
  store i8 %nodeId, i8* %v4_8002212, align 1
  %v2_8002216 = load i32, i32* @r4, align 4
  %v3_8002216 = add i32 %v2_8002216, 22
  %v4_8002216 = inttoptr i32 %v3_8002216 to i16*
  store i16 %defaultCOB_ID, i16* %v4_8002216, align 2
  %v2_800221a = load i32, i32* @r4, align 4
  %v3_800221a = add i32 %v2_800221a, 24
  %v4_800221a = inttoptr i32 %v3_800221a to i8*
  store i8 %restrictionFlags, i8* %v4_800221a, align 1
  %v0_8002220 = load i32, i32* @r4, align 4
  %v0_8002226 = load i32, i32* @r5, align 4
  %v13_800222a = inttoptr i32 %v0_8002220 to i8*
  call void @CO_OD_configure(i32 %v0_8002226, i16 %idx_RPDOCommPar, i32 134224513, i8* %v13_800222a, i8* null, i8 0)
  %v0_8002232 = load i32, i32* @r4, align 4
  %v0_8002238 = load i32, i32* @r5, align 4
  %v8_800223c = inttoptr i32 %v0_8002232 to i8*
  call void @CO_OD_configure(i32 %v0_8002238, i16 %idx_RPDOMapPar, i32 134224749, i8* %v8_800223c, i8* null, i8 0)
  %v3_8002244 = load i32, i32* @r4, align 4
  %v4_8002244 = add i32 %v3_8002244, 60
  %v5_8002244 = inttoptr i32 %v4_8002244 to i8*
  store i8 0, i8* %v5_8002244, align 1
  %v1_8002248 = load i32, i32* @r4, align 4
  %v2_8002248 = add i32 %v1_8002248, 72
  %v3_8002248 = inttoptr i32 %v2_8002248 to i32*
  store i32 %CANdevRx, i32* %v3_8002248, align 4
  %v3_800224e = load i32, i32* @r4, align 4
  %v4_800224e = add i32 %v3_800224e, 76
  %v5_800224e = inttoptr i32 %v4_800224e to i16*
  store i16 %CANdevRxIdx, i16* %v5_800224e, align 2
  %v1_8002252 = inttoptr i32 %RPDOMapPar to i8*
  %v2_8002252 = load i8, i8* %v1_8002252, align 1
  %v0_8002254 = load i32, i32* @r4, align 4
  %v4_8002256 = call i32 @CO_RPDOconfigMap(i32 %v0_8002254, i8 %v2_8002252)
  %v1_800225c = add i32 %RPDOCommPar, 4
  %v2_800225c = inttoptr i32 %v1_800225c to i32*
  %v3_800225c = load i32, i32* %v2_800225c, align 4
  %v0_800225e = load i32, i32* @r4, align 4
  call void @CO_RPDOconfigCom(i32 %v0_800225e, i32 %v3_800225c)
  br label %dec_label_pc_8002200

; uselistorder directives
  uselistorder i32 %CANdevRx, { 1, 0 }
  uselistorder i32 %RPDOMapPar, { 2, 1, 0 }
  uselistorder i32 %RPDOCommPar, { 2, 1, 0 }
  uselistorder i32 %em, { 1, 0, 2 }
}

define void @CO_RPDOconfigCom(i32 %RPDO, i32 %COB_IDUsedByRPDO) local_unnamed_addr {
entry:
  store i32 %RPDO, i32* @r4, align 4
  %v1_80022ce = urem i32 %COB_IDUsedByRPDO, 65536
  store i32 %v1_80022ce, i32* @r5, align 4
  %v2_80022d2 = and i32 %COB_IDUsedByRPDO, -1073743872
  %v4_80022d2 = icmp eq i32 %v2_80022d2, 0
  br i1 %v4_80022d2, label %dec_label_pc_80022d8, label %dec_label_pc_8002304

dec_label_pc_80022d8:                             ; preds = %entry
  %v1_80022d8 = add i32 %RPDO, 27
  %v2_80022d8 = inttoptr i32 %v1_80022d8 to i8*
  %v3_80022d8 = load i8, i8* %v2_80022d8, align 1
  %v2_80022da = icmp eq i8 %v3_80022d8, 0
  %v2_80022de = icmp eq i32 %v1_80022ce, 0
  %or.cond = or i1 %v2_80022de, %v2_80022da
  br i1 %or.cond, label %dec_label_pc_8002304, label %dec_label_pc_80022e2

dec_label_pc_80022e2:                             ; preds = %dec_label_pc_80022d8
  %v1_80022e2 = add i32 %RPDO, 22
  %v2_80022e2 = inttoptr i32 %v1_80022e2 to i16*
  %v3_80022e2 = load i16, i16* %v2_80022e2, align 2
  %v4_80022e2 = zext i16 %v3_80022e2 to i32
  %v9_80022e4 = icmp eq i32 %v4_80022e2, %v1_80022ce
  br i1 %v9_80022e4, label %dec_label_pc_80022e8, label %dec_label_pc_80022ee

dec_label_pc_80022e8:                             ; preds = %dec_label_pc_80022e2
  %v1_80022e8 = add i32 %RPDO, 20
  %v2_80022e8 = inttoptr i32 %v1_80022e8 to i8*
  %v3_80022e8 = load i8, i8* %v2_80022e8, align 1
  %v4_80022e8 = zext i8 %v3_80022e8 to i32
  %fold = add i32 %v4_80022e8, %COB_IDUsedByRPDO
  %v1_80022ec = urem i32 %fold, 65536
  store i32 %v1_80022ec, i32* @r5, align 4
  br label %dec_label_pc_80022ee

dec_label_pc_80022ee:                             ; preds = %dec_label_pc_80022e2, %dec_label_pc_80022e8
  %v3_80022f0 = add i32 %RPDO, 25
  %v4_80022f0 = inttoptr i32 %v3_80022f0 to i8*
  store i8 1, i8* %v4_80022f0, align 1
  %v0_80022f2 = load i32, i32* @r4, align 4
  %v1_80022f2 = add i32 %v0_80022f2, 8
  %v2_80022f2 = inttoptr i32 %v1_80022f2 to i32*
  %v3_80022f2 = load i32, i32* %v2_80022f2, align 4
  %v1_80022f4 = add i32 %v3_80022f2, 8
  %v2_80022f4 = inttoptr i32 %v1_80022f4 to i8*
  %v3_80022f4 = load i8, i8* %v2_80022f4, align 1
  %v8_80022f8 = icmp ult i8 %v3_80022f4, -15
  %v1_8002300 = zext i1 %v8_80022f8 to i8
  %v3_8002300 = add i32 %v0_80022f2, 26
  %v4_8002300 = inttoptr i32 %v3_8002300 to i8*
  store i8 %v1_8002300, i8* %v4_8002300, align 1
  br label %dec_label_pc_8002310

dec_label_pc_8002304:                             ; preds = %entry, %dec_label_pc_80022d8
  store i32 0, i32* @r5, align 4
  %v3_8002308 = add i32 %RPDO, 25
  %v4_8002308 = inttoptr i32 %v3_8002308 to i8*
  store i8 0, i8* %v4_8002308, align 1
  %v3_800230e = load i32, i32* @r4, align 4
  %v4_800230e = add i32 %v3_800230e, 60
  %v5_800230e = inttoptr i32 %v4_800230e to i8*
  store i8 0, i8* %v5_800230e, align 1
  br label %dec_label_pc_8002310

dec_label_pc_8002310:                             ; preds = %dec_label_pc_80022ee, %dec_label_pc_8002304
  %v0_8002316 = load i32, i32* @r4, align 4
  %v2_800231c = add i32 %v0_8002316, 76
  %v3_800231c = inttoptr i32 %v2_800231c to i16*
  %v4_800231c = load i16, i16* %v3_800231c, align 2
  %v0_8002320 = load i32, i32* @r5, align 4
  %v1_8002320 = trunc i32 %v0_8002320 to i16
  %v1_8002322 = add i32 %v0_8002316, 72
  %v2_8002322 = inttoptr i32 %v1_8002322 to i32*
  %v3_8002322 = load i32, i32* %v2_8002322, align 4
  %v15_8002324 = inttoptr i32 %v0_8002316 to i8*
  %v17_8002324 = call i32 @CO_CANrxBufferInit(i32 %v3_8002322, i16 %v4_800231c, i16 %v1_8002320, i16 2047, i8 0, i8* %v15_8002324, void (i8*, %anon_struct_31*)* inttoptr (i32 134225945 to void (i8*, %anon_struct_31*)*))
  %v2_800232a = icmp eq i32 %v17_8002324, 0
  br i1 %v2_800232a, label %dec_label_pc_8002338, label %dec_label_pc_800232e

dec_label_pc_800232e:                             ; preds = %dec_label_pc_8002310
  %v2_8002330 = load i32, i32* @r4, align 4
  %v3_8002330 = add i32 %v2_8002330, 25
  %v4_8002330 = inttoptr i32 %v3_8002330 to i8*
  store i8 0, i8* %v4_8002330, align 1
  %v3_8002336 = load i32, i32* @r4, align 4
  %v4_8002336 = add i32 %v3_8002336, 60
  %v5_8002336 = inttoptr i32 %v4_8002336 to i8*
  store i8 0, i8* %v5_8002336, align 1
  br label %dec_label_pc_8002338

dec_label_pc_8002338:                             ; preds = %dec_label_pc_8002310, %dec_label_pc_800232e
  ret void

; uselistorder directives
  uselistorder i32 %v0_8002316, { 2, 0, 1 }
  uselistorder i32 %v1_80022ce, { 1, 2, 0 }
  uselistorder i32 %COB_IDUsedByRPDO, { 1, 2, 0 }
  uselistorder label %dec_label_pc_8002338, { 1, 0 }
  uselistorder label %dec_label_pc_8002310, { 1, 0 }
  uselistorder label %dec_label_pc_8002304, { 1, 0 }
  uselistorder label %dec_label_pc_80022ee, { 1, 0 }
}

define i32 @CO_RPDOconfigMap(i32 %RPDO, i8 %noOfMappedObjects) local_unnamed_addr {
entry:
  %tmp = sext i8 %noOfMappedObjects to i32
  %pData_-36 = alloca i8*, align 4
  %length_-24 = alloca i8, align 1
  %MBvar_-48 = alloca i8, align 1
  %dummy_-40 = alloca i8, align 1
  %v3_8002348 = load i32, i32* @r4, align 4
  %v6_8002348 = load i32, i32* @r5, align 4
  %v9_8002348 = load i32, i32* @r6, align 4
  store i32 %RPDO, i32* @r4, align 4
  store i32 %tmp, i32* @r6, align 4
  store i8 0, i8* %length_-24, align 1
  %v1_8002356 = add i32 %RPDO, 12
  %v2_8002356 = inttoptr i32 %v1_8002356 to i32*
  %v3_8002356 = load i32, i32* %v2_8002356, align 4
  store i32 %tmp, i32* @r7, align 4
  %v5_80023d413 = icmp sgt i8 %noOfMappedObjects, 0
  br i1 %v5_80023d413, label %dec_label_pc_8002360.lr.ph, label %dec_label_pc_80023d6

dec_label_pc_8002360.lr.ph:                       ; preds = %entry
  br label %dec_label_pc_8002360

dec_label_pc_8002360:                             ; preds = %dec_label_pc_80023ce.dec_label_pc_8002360_crit_edge, %dec_label_pc_8002360.lr.ph
  %v0_8002382 = phi i32 [ %RPDO, %dec_label_pc_8002360.lr.ph ], [ %v0_8002382.pre, %dec_label_pc_80023ce.dec_label_pc_8002360_crit_edge ]
  %v3_8002366 = phi i8 [ 0, %dec_label_pc_8002360.lr.ph ], [ %v3_8002366.pre, %dec_label_pc_80023ce.dec_label_pc_8002360_crit_edge ]
  %pMap_-32.0.in14.in = phi i32 [ %v3_8002356, %dec_label_pc_8002360.lr.ph ], [ %pMap_-32.0.in14, %dec_label_pc_80023ce.dec_label_pc_8002360_crit_edge ]
  %pMap_-32.0.in14 = add i32 %pMap_-32.0.in14.in, 4
  %pMap_-32.015 = inttoptr i32 %pMap_-32.0.in14 to i32*
  store i8 0, i8* %dummy_-40, align 1
  %v2_800236c = load i32, i32* %pMap_-32.015, align 4
  %v1_8002382 = add i32 %v0_8002382, 4
  %v2_8002382 = inttoptr i32 %v1_8002382 to i32*
  %v3_8002382 = load i32, i32* %v2_8002382, align 4
  %v21_800238c = call i32 @CO_PDOfindMap(i32 %v3_8002382, i32 %v2_800236c, i8 0, i8** nonnull %pData_-36, i8* nonnull %length_-24, i8* nonnull %dummy_-40, i8* nonnull %MBvar_-48)
  %v2_8002394 = icmp eq i32 %v21_800238c, 0
  br i1 %v2_8002394, label %dec_label_pc_80023ae, label %dec_label_pc_8002398

dec_label_pc_8002398:                             ; preds = %dec_label_pc_8002360
  store i8 0, i8* %length_-24, align 1
  %v0_800239c = load i32, i32* @r4, align 4
  %v1_800239c = inttoptr i32 %v0_800239c to i32*
  %v2_800239c = load i32, i32* %v1_800239c, align 4
  call void @CO_errorReport(i32 %v2_800239c, i8 26, i16 -32256, i32 %v2_800236c)
  br label %dec_label_pc_80023d6

dec_label_pc_80023ae:                             ; preds = %dec_label_pc_8002360
  %v4_8002366 = zext i8 %v3_8002366 to i32
  store i32 %v4_8002366, i32* @r5, align 4
  %v3_80023c86 = load i8, i8* %length_-24, align 1
  %v5_80023cc10 = icmp ult i8 %v3_8002366, %v3_80023c86
  br i1 %v5_80023cc10, label %dec_label_pc_80023b2, label %dec_label_pc_80023ce

dec_label_pc_80023b2:                             ; preds = %dec_label_pc_80023ae, %dec_label_pc_80023b2
  %v0_80023b2 = phi i32 [ %v1_80023c4, %dec_label_pc_80023b2 ], [ %v4_8002366, %dec_label_pc_80023ae ]
  %v3_80023b2 = mul i32 %v0_80023b2, 4
  %v0_80023b4 = load i32, i32* @r4, align 4
  %v3_80023b8 = load i8*, i8** %pData_-36, align 4
  %v4_80023b8 = ptrtoint i8* %v3_80023b8 to i32
  %v1_80023b6 = add i32 %v3_80023b2, 28
  %v3_80023ba = add i32 %v1_80023b6, %v0_80023b4
  %v4_80023ba = inttoptr i32 %v3_80023ba to i32*
  store i32 %v4_80023b8, i32* %v4_80023ba, align 4
  %v3_80023bc = load i8*, i8** %pData_-36, align 4
  %v4_80023bc = ptrtoint i8* %v3_80023bc to i32
  %v1_80023be = add i32 %v4_80023bc, 1
  %v4_80023c0 = inttoptr i32 %v1_80023be to i8*
  store i8* %v4_80023c0, i8** %pData_-36, align 4
  %v0_80023c2 = load i32, i32* @r5, align 4
  %v1_80023c2 = add i32 %v0_80023c2, 1
  %v1_80023c4 = call i32 @__asm_sxth.i32(i32 %v1_80023c2)
  store i32 %v1_80023c4, i32* @r5, align 4
  %v3_80023c8 = load i8, i8* %length_-24, align 1
  %v4_80023c8 = zext i8 %v3_80023c8 to i32
  %v5_80023cc = icmp slt i32 %v1_80023c4, %v4_80023c8
  br i1 %v5_80023cc, label %dec_label_pc_80023b2, label %dec_label_pc_80023ce

dec_label_pc_80023ce:                             ; preds = %dec_label_pc_80023b2, %dec_label_pc_80023ae
  %v0_80023ce = load i32, i32* @r7, align 4
  %v1_80023ce = add i32 %v0_80023ce, -1
  %v1_80023d0 = call i32 @__asm_sxth.i32(i32 %v1_80023ce)
  store i32 %v1_80023d0, i32* @r7, align 4
  %v5_80023d4 = icmp sgt i32 %v1_80023d0, 0
  br i1 %v5_80023d4, label %dec_label_pc_80023ce.dec_label_pc_8002360_crit_edge, label %dec_label_pc_80023d6

dec_label_pc_80023ce.dec_label_pc_8002360_crit_edge: ; preds = %dec_label_pc_80023ce
  %v3_8002366.pre = load i8, i8* %length_-24, align 1
  %v0_8002382.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8002360

dec_label_pc_80023d6:                             ; preds = %dec_label_pc_80023ce, %entry, %dec_label_pc_8002398
  %ret_-28.1 = phi i32 [ %v21_800238c, %dec_label_pc_8002398 ], [ 0, %entry ], [ 0, %dec_label_pc_80023ce ]
  %v3_80023da = load i8, i8* %length_-24, align 1
  %v2_80023dc = load i32, i32* @r4, align 4
  %v3_80023dc = add i32 %v2_80023dc, 27
  %v4_80023dc = inttoptr i32 %v3_80023dc to i8*
  store i8 %v3_80023da, i8* %v4_80023dc, align 1
  store i32 %v3_8002348, i32* @r4, align 4
  store i32 %v6_8002348, i32* @r5, align 4
  store i32 %v9_8002348, i32* @r6, align 4
  ret i32 %ret_-28.1

; uselistorder directives
  uselistorder i32 %v1_80023d0, { 1, 0 }
  uselistorder i32 %v1_80023c4, { 2, 1, 0 }
  uselistorder i8 %v3_8002366, { 1, 0 }
  uselistorder i8* %length_-24, { 3, 1, 4, 2, 5, 0, 6 }
  uselistorder i8** %pData_-36, { 1, 2, 3, 0 }
  uselistorder label %dec_label_pc_80023d6, { 0, 2, 1 }
  uselistorder label %dec_label_pc_80023b2, { 1, 0 }
}

define void @CO_SDO_abort(i32 %SDO, i32 %code) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  store i32 %code, i32* %r1.global-to-local, align 4
  %stack_var_-12 = alloca i32, align 4
  store i32 %code, i32* %stack_var_-12, align 4
  store i32 %SDO, i32* @r4, align 4
  %v1_80023ea = add i32 %SDO, 120
  %v2_80023ea = inttoptr i32 %v1_80023ea to i32*
  %v3_80023ea = load i32, i32* %v2_80023ea, align 4
  store i32 %v3_80023ea, i32* %r1.global-to-local, align 4
  %v3_80023ec = add i32 %v3_80023ea, 5
  %v4_80023ec = inttoptr i32 %v3_80023ec to i8*
  store i8 -128, i8* %v4_80023ec, align 1
  %v1_80023f0 = load i32, i32* @r4, align 4
  %v2_80023f0 = add i32 %v1_80023f0, 80
  %v3_80023f0 = inttoptr i32 %v2_80023f0 to i8*
  %v4_80023f0 = load i8, i8* %v3_80023f0, align 1
  %v6_80023f0 = zext i8 %v4_80023f0 to i32
  store i32 %v6_80023f0, i32* %r1.global-to-local, align 4
  %v1_80023f2 = add i32 %v1_80023f0, 120
  %v2_80023f2 = inttoptr i32 %v1_80023f2 to i32*
  %v3_80023f2 = load i32, i32* %v2_80023f2, align 4
  %v3_80023f4 = add i32 %v3_80023f2, 6
  %v4_80023f4 = inttoptr i32 %v3_80023f4 to i8*
  store i8 %v4_80023f0, i8* %v4_80023f4, align 1
  %v1_80023f8 = load i32, i32* @r4, align 4
  %v2_80023f8 = add i32 %v1_80023f8, 80
  %v3_80023f8 = inttoptr i32 %v2_80023f8 to i16*
  %v4_80023f8 = load i16, i16* %v3_80023f8, align 2
  %div = udiv i16 %v4_80023f8, 256
  %v1_80023fc = add i32 %v1_80023f8, 120
  %v2_80023fc = inttoptr i32 %v1_80023fc to i32*
  %v3_80023fc = load i32, i32* %v2_80023fc, align 4
  store i32 %v3_80023fc, i32* %r1.global-to-local, align 4
  %v1_80023fe = trunc i16 %div to i8
  %v3_80023fe = add i32 %v3_80023fc, 7
  %v4_80023fe = inttoptr i32 %v3_80023fe to i8*
  store i8 %v1_80023fe, i8* %v4_80023fe, align 1
  %v1_8002402 = load i32, i32* @r4, align 4
  %v2_8002402 = add i32 %v1_8002402, 82
  %v3_8002402 = inttoptr i32 %v2_8002402 to i8*
  %v4_8002402 = load i8, i8* %v3_8002402, align 1
  %v6_8002402 = zext i8 %v4_8002402 to i32
  store i32 %v6_8002402, i32* %r1.global-to-local, align 4
  %v1_8002404 = add i32 %v1_8002402, 120
  %v2_8002404 = inttoptr i32 %v1_8002404 to i32*
  %v3_8002404 = load i32, i32* %v2_8002404, align 4
  %v3_8002406 = add i32 %v3_8002404, 8
  %v4_8002406 = inttoptr i32 %v3_8002406 to i8*
  store i8 %v4_8002402, i8* %v4_8002406, align 1
  %v0_8002408 = load i32, i32* @r4, align 4
  %v1_8002408 = add i32 %v0_8002408, 120
  %v2_8002408 = inttoptr i32 %v1_8002408 to i32*
  %v3_8002408 = load i32, i32* %v2_8002408, align 4
  %v1_800240c = add i32 %v3_8002408, 9
  %v2_800240c = inttoptr i32 %v1_800240c to i8*
  %v2_800240e = ptrtoint i32* %stack_var_-12 to i32
  %tmp6 = bitcast i32* %stack_var_-12 to i8*
  store i32 %v2_800240e, i32* %r1.global-to-local, align 4
  call void @CO_memcpySwap4(i8* %v2_800240c, i8* %tmp6)
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_8002418 = load i32, i32* @r4, align 4
  %v4_8002418 = add i32 %v3_8002418, 97
  %v5_8002418 = inttoptr i32 %v4_8002418 to i8*
  store i8 0, i8* %v5_8002418, align 1
  %v0_800241c = load i32, i32* %r1.global-to-local, align 4
  %v1_800241c = trunc i32 %v0_800241c to i8
  %v3_800241c = load i32, i32* @r4, align 4
  %v4_800241c = add i32 %v3_800241c, 108
  %v5_800241c = inttoptr i32 %v4_800241c to i8*
  store i8 %v1_800241c, i8* %v5_800241c, align 1
  %v0_800241e = load i32, i32* @r4, align 4
  %v1_800241e = add i32 %v0_800241e, 120
  %v2_800241e = inttoptr i32 %v1_800241e to i32*
  %v3_800241e = load i32, i32* %v2_800241e, align 4
  store i32 %v3_800241e, i32* %r1.global-to-local, align 4
  %v1_8002420 = add i32 %v0_800241e, 116
  %v2_8002420 = inttoptr i32 %v1_8002420 to i32*
  %v3_8002420 = load i32, i32* %v2_8002420, align 4
  %v2_8002422 = call i32 @CO_CANsend(i32 %v3_8002420, i32 %v3_800241e)
  ret void

; uselistorder directives
  uselistorder i32* %stack_var_-12, { 0, 2, 1 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder i32 (i32, i32)* @CO_CANsend, { 2, 1, 0 }
  uselistorder i32 %SDO, { 1, 0 }
}

define i32 @CO_SDO_init(i32 %SDO, i32 %COB_IDClientToServer, i32 %COB_IDServerToClient, i16 %ObjDictIndex_SDOServerParameter, i32 %parentSDO, i32 %OD, i16 %ODSize, i32 %ODExtensions, i8 %nodeId, i32 %CANdevRx, i16 %CANdevRxIdx, i32 %CANdevTx, i16 %CANdevTxIdx) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r1.global-to-local = alloca i32, align 4
  %tmp = sext i16 %ObjDictIndex_SDOServerParameter to i32
  store i32 %COB_IDClientToServer, i32* %r1.global-to-local, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v18_8002428 = load i32, i32* @r4, align 4
  %v21_8002428 = load i32, i32* @r5, align 4
  %v27_8002428 = load i32, i32* @r7, align 4
  store i32 %SDO, i32* @r4, align 4
  store i32 %COB_IDClientToServer, i32* @r6, align 4
  store i32 %COB_IDServerToClient, i32* @r7, align 4
  store i32 %parentSDO, i32* @r5, align 4
  %v2_8002434 = icmp eq i32 %SDO, 0
  br i1 %v2_8002434, label %dec_label_pc_8002444, label %dec_label_pc_8002438

dec_label_pc_8002438:                             ; preds = %entry
  store i32 %CANdevRx, i32* %r0.global-to-local, align 4
  %v2_800243a = icmp eq i32 %CANdevRx, 0
  br i1 %v2_800243a, label %dec_label_pc_8002444, label %dec_label_pc_800243e

dec_label_pc_800243e:                             ; preds = %dec_label_pc_8002438
  store i32 %CANdevTx, i32* %r0.global-to-local, align 4
  %v2_8002440 = icmp eq i32 %CANdevTx, 0
  br i1 %v2_8002440, label %dec_label_pc_8002444, label %dec_label_pc_800244c

dec_label_pc_8002444:                             ; preds = %dec_label_pc_800243e, %dec_label_pc_8002438, %entry
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8002448

dec_label_pc_8002448:                             ; preds = %dec_label_pc_80024e8, %dec_label_pc_8002444
  %storemerge9 = phi i32 [ 0, %dec_label_pc_80024e8 ], [ -1, %dec_label_pc_8002444 ]
  store i32 %storemerge9, i32* %r0.global-to-local, align 4
  store i32 %v18_8002428, i32* @r4, align 4
  store i32 %v21_8002428, i32* @r5, align 4
  store i32 %v27_8002428, i32* @r7, align 4
  ret i32 %storemerge9

dec_label_pc_800244c:                             ; preds = %dec_label_pc_800243e
  %v2_800244c = icmp eq i32 %parentSDO, 0
  br i1 %v2_800244c, label %dec_label_pc_8002450, label %dec_label_pc_8002490

dec_label_pc_8002450:                             ; preds = %dec_label_pc_800244c
  %v4_8002454 = add i32 %SDO, 40
  %v5_8002454 = inttoptr i32 %v4_8002454 to i8*
  store i8 1, i8* %v5_8002454, align 1
  %v1_8002458 = load i32, i32* @r4, align 4
  %v2_8002458 = add i32 %v1_8002458, 44
  %v3_8002458 = inttoptr i32 %v2_8002458 to i32*
  store i32 %OD, i32* %v3_8002458, align 4
  %v4_800245a = sext i16 %ODSize to i32
  %v2_800245c = load i32, i32* @r4, align 4
  %v3_800245c = add i32 %v2_800245c, 48
  %v4_800245c = inttoptr i32 %v3_800245c to i16*
  store i16 %ODSize, i16* %v4_800245c, align 2
  %v1_8002460 = load i32, i32* @r4, align 4
  %v2_8002460 = add i32 %v1_8002460, 52
  %v3_8002460 = inttoptr i32 %v2_8002460 to i32*
  store i32 %ODExtensions, i32* %v3_8002460, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  store i32 %v4_800245a, i32* %r1.global-to-local, align 4
  %v7_800248c14 = icmp sgt i16 %ODSize, 0
  br i1 %v7_800248c14, label %dec_label_pc_8002466, label %dec_label_pc_80024a2

dec_label_pc_8002466:                             ; preds = %dec_label_pc_8002450, %dec_label_pc_8002466
  %v0_800246a = phi i32 [ %v1_8002486, %dec_label_pc_8002466 ], [ 0, %dec_label_pc_8002450 ]
  store i32 0, i32* %r1.global-to-local, align 4
  %v2_800246a = mul nuw nsw i32 %v0_800246a, 12
  %v0_800246c = load i32, i32* @r4, align 4
  %v1_800246c = add i32 %v0_800246c, 52
  %v2_800246c = inttoptr i32 %v1_800246c to i32*
  %v3_800246c = load i32, i32* %v2_800246c, align 4
  %v3_800246e = add i32 %v3_800246c, %v2_800246a
  %v4_800246e = inttoptr i32 %v3_800246e to i32*
  store i32 0, i32* %v4_800246e, align 4
  %v0_8002472 = load i32, i32* %r0.global-to-local, align 4
  %v2_8002472 = mul i32 %v0_8002472, 12
  %v0_8002474 = load i32, i32* @r4, align 4
  %v1_8002474 = add i32 %v0_8002474, 52
  %v2_8002474 = inttoptr i32 %v1_8002474 to i32*
  %v3_8002474 = load i32, i32* %v2_8002474, align 4
  %v2_8002476 = add i32 %v3_8002474, %v2_8002472
  %v0_8002478 = load i32, i32* %r1.global-to-local, align 4
  %v2_8002478 = add i32 %v2_8002476, 4
  %v3_8002478 = inttoptr i32 %v2_8002478 to i32*
  store i32 %v0_8002478, i32* %v3_8002478, align 4
  %v0_800247c = load i32, i32* %r0.global-to-local, align 4
  %v2_800247c = mul i32 %v0_800247c, 12
  %v0_800247e = load i32, i32* @r4, align 4
  %v1_800247e = add i32 %v0_800247e, 52
  %v2_800247e = inttoptr i32 %v1_800247e to i32*
  %v3_800247e = load i32, i32* %v2_800247e, align 4
  %v2_8002480 = add i32 %v3_800247e, %v2_800247c
  %v0_8002482 = load i32, i32* %r1.global-to-local, align 4
  %v2_8002482 = add i32 %v2_8002480, 8
  %v3_8002482 = inttoptr i32 %v2_8002482 to i32*
  store i32 %v0_8002482, i32* %v3_8002482, align 4
  %v0_8002484 = load i32, i32* %r0.global-to-local, align 4
  %v1_8002484 = add i32 %v0_8002484, 1
  %v1_8002486 = urem i32 %v1_8002484, 65536
  store i32 %v1_8002486, i32* %r0.global-to-local, align 4
  store i32 %v4_800245a, i32* %r1.global-to-local, align 4
  %v2_800248a = trunc i32 %v1_8002484 to i16
  %v7_800248c = icmp slt i16 %v2_800248a, %ODSize
  br i1 %v7_800248c, label %dec_label_pc_8002466, label %dec_label_pc_80024a2

dec_label_pc_8002490:                             ; preds = %dec_label_pc_800244c
  store i32 0, i32* %r1.global-to-local, align 4
  store i32 40, i32* %r0.global-to-local, align 4
  %v4_8002494 = add i32 %SDO, 40
  %v5_8002494 = inttoptr i32 %v4_8002494 to i8*
  store i8 0, i8* %v5_8002494, align 1
  %v0_8002496 = load i32, i32* @r5, align 4
  %v1_8002496 = add i32 %v0_8002496, 44
  %v2_8002496 = inttoptr i32 %v1_8002496 to i32*
  %v3_8002496 = load i32, i32* %v2_8002496, align 4
  store i32 %v3_8002496, i32* %r0.global-to-local, align 4
  %v1_8002498 = load i32, i32* @r4, align 4
  %v2_8002498 = add i32 %v1_8002498, 44
  %v3_8002498 = inttoptr i32 %v2_8002498 to i32*
  store i32 %v3_8002496, i32* %v3_8002498, align 4
  %v0_800249a = load i32, i32* @r5, align 4
  %v1_800249a = add i32 %v0_800249a, 48
  %v2_800249a = inttoptr i32 %v1_800249a to i16*
  %v3_800249a = load i16, i16* %v2_800249a, align 2
  %v4_800249a = zext i16 %v3_800249a to i32
  store i32 %v4_800249a, i32* %r0.global-to-local, align 4
  %v2_800249c = load i32, i32* @r4, align 4
  %v3_800249c = add i32 %v2_800249c, 48
  %v4_800249c = inttoptr i32 %v3_800249c to i16*
  store i16 %v3_800249a, i16* %v4_800249c, align 2
  %v0_800249e = load i32, i32* @r5, align 4
  %v1_800249e = add i32 %v0_800249e, 52
  %v2_800249e = inttoptr i32 %v1_800249e to i32*
  %v3_800249e = load i32, i32* %v2_800249e, align 4
  store i32 %v3_800249e, i32* %r0.global-to-local, align 4
  %v1_80024a0 = load i32, i32* @r4, align 4
  %v2_80024a0 = add i32 %v1_80024a0, 52
  %v3_80024a0 = inttoptr i32 %v2_80024a0 to i32*
  store i32 %v3_800249e, i32* %v3_80024a0, align 4
  br label %dec_label_pc_80024a2

dec_label_pc_80024a2:                             ; preds = %dec_label_pc_8002466, %dec_label_pc_8002450, %dec_label_pc_8002490
  %v3_80024a6 = load i32, i32* @r4, align 4
  %v4_80024a6 = add i32 %v3_80024a6, 96
  %v5_80024a6 = inttoptr i32 %v4_80024a6 to i8*
  store i8 %nodeId, i8* %v5_80024a6, align 1
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_80024ac = load i32, i32* @r4, align 4
  %v4_80024ac = add i32 %v3_80024ac, 97
  %v5_80024ac = inttoptr i32 %v4_80024ac to i8*
  store i8 0, i8* %v5_80024ac, align 1
  %v0_80024b0 = load i32, i32* %r1.global-to-local, align 4
  %v1_80024b0 = trunc i32 %v0_80024b0 to i8
  %v3_80024b0 = load i32, i32* @r4, align 4
  %v4_80024b0 = add i32 %v3_80024b0, 108
  %v5_80024b0 = inttoptr i32 %v4_80024b0 to i8*
  store i8 %v1_80024b0, i8* %v5_80024b0, align 1
  %v1_80024b4 = load i32, i32* @r4, align 4
  %v2_80024b4 = add i32 %v1_80024b4, 112
  %v3_80024b4 = inttoptr i32 %v2_80024b4 to i32*
  store i32 0, i32* %v3_80024b4, align 4
  store i32 4608, i32* %r1.global-to-local, align 4
  store i32 %tmp, i32* %r0.global-to-local, align 4
  %v9_80024bc = icmp eq i16 %ObjDictIndex_SDOServerParameter, 4608
  br i1 %v9_80024bc, label %dec_label_pc_80024c0, label %dec_label_pc_80024d4

dec_label_pc_80024c0:                             ; preds = %dec_label_pc_80024a2
  %v0_80024c4 = load i32, i32* @r4, align 4
  %v1_80024c6 = add i32 %v0_80024c4, 96
  %v2_80024c6 = inttoptr i32 %v1_80024c6 to i8*
  store i32 %v0_80024c4, i32* %r0.global-to-local, align 4
  store i32 %tmp, i32* %r1.global-to-local, align 4
  call void @CO_OD_configure(i32 %v0_80024c4, i16 4608, i32 134224469, i8* %v2_80024c6, i8* null, i8 0)
  store i32 ptrtoint (i32* @0 to i32), i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80024d4

dec_label_pc_80024d4:                             ; preds = %dec_label_pc_80024a2, %dec_label_pc_80024c0
  %v0_80024d4 = load i32, i32* @r6, align 4
  %tmp39 = icmp slt i32 %v0_80024d4, 0
  %v3_80024d4 = zext i1 %tmp39 to i32
  %v4_80024d4 = icmp eq i1 %tmp39, false
  %v3_80024d6 = shl nuw i32 %v3_80024d4, 31
  store i32 %v3_80024d6, i32* %r0.global-to-local, align 4
  br i1 %v4_80024d4, label %dec_label_pc_80024dc, label %dec_label_pc_80024e4

dec_label_pc_80024dc:                             ; preds = %dec_label_pc_80024d4
  %v0_80024dc = load i32, i32* @r7, align 4
  %tmp40 = icmp slt i32 %v0_80024dc, 0
  %v3_80024dc = zext i1 %tmp40 to i32
  %v4_80024dc = icmp eq i1 %tmp40, false
  %v3_80024de = shl nuw i32 %v3_80024dc, 31
  store i32 %v3_80024de, i32* %r0.global-to-local, align 4
  %extract.t = trunc i32 %v0_80024d4 to i16
  br i1 %v4_80024dc, label %dec_label_pc_80024e8, label %dec_label_pc_80024e4

dec_label_pc_80024e4:                             ; preds = %dec_label_pc_80024d4, %dec_label_pc_80024dc
  store i32 0, i32* @r7, align 4
  br label %dec_label_pc_80024e8

dec_label_pc_80024e8:                             ; preds = %dec_label_pc_80024dc, %dec_label_pc_80024e4
  %v0_80024ec.off0 = phi i16 [ %extract.t, %dec_label_pc_80024dc ], [ 0, %dec_label_pc_80024e4 ]
  %v0_80024f0 = load i32, i32* @r4, align 4
  %v4_80024f6 = sext i16 %CANdevRxIdx to i32
  store i32 %v4_80024f6, i32* %r1.global-to-local, align 4
  store i32 %CANdevRx, i32* %r0.global-to-local, align 4
  %v16_80024fa = inttoptr i32 %v0_80024f0 to i8*
  %v18_80024fa = call i32 @CO_CANrxBufferInit(i32 %CANdevRx, i16 %CANdevRxIdx, i16 %v0_80024ec.off0, i16 2047, i8 0, i8* %v16_80024fa, void (i8*, %anon_struct_31*)* inttoptr (i32 134230521 to void (i8*, %anon_struct_31*)*))
  %v1_8002500 = load i32, i32* @r4, align 4
  %v2_8002500 = add i32 %v1_8002500, 116
  %v3_8002500 = inttoptr i32 %v2_8002500 to i32*
  store i32 %CANdevTx, i32* %v3_8002500, align 4
  %v0_8002506 = load i32, i32* @r7, align 4
  %v2_8002506 = trunc i32 %v0_8002506 to i16
  %v4_800250e = sext i16 %CANdevTxIdx to i32
  store i32 %v4_800250e, i32* %r1.global-to-local, align 4
  store i32 %CANdevTx, i32* %r0.global-to-local, align 4
  %v15_8002512 = call i32 @CO_CANtxBufferInit(i32 %CANdevTx, i16 %CANdevTxIdx, i16 %v2_8002506, i8 0, i8 8, i8 0)
  store i32 %v15_8002512, i32* %r0.global-to-local, align 4
  %v1_8002516 = load i32, i32* @r4, align 4
  %v2_8002516 = add i32 %v1_8002516, 120
  %v3_8002516 = inttoptr i32 %v2_8002516 to i32*
  store i32 %v15_8002512, i32* %v3_8002516, align 4
  br label %dec_label_pc_8002448

; uselistorder directives
  uselistorder i32 %v0_80024c4, { 1, 0, 2 }
  uselistorder i32 %v1_8002484, { 1, 0 }
  uselistorder i32 %v4_800245a, { 1, 0 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 11, 8, 9, 10, 12, 0 }
  uselistorder i32* %r0.global-to-local, { 2, 1, 3, 4, 5, 20, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 18, 17, 19, 21 }
  uselistorder i16 %CANdevTxIdx, { 1, 0 }
  uselistorder i32 %CANdevTx, { 4, 3, 2, 1, 0 }
  uselistorder i16 %CANdevRxIdx, { 1, 0 }
  uselistorder i32 %CANdevRx, { 3, 2, 1, 0 }
  uselistorder i16 %ODSize, { 1, 0, 3, 2 }
  uselistorder i32 %SDO, { 1, 0, 2, 3, 4 }
  uselistorder label %dec_label_pc_80024e8, { 1, 0 }
  uselistorder label %dec_label_pc_80024e4, { 1, 0 }
  uselistorder label %dec_label_pc_80024d4, { 1, 0 }
  uselistorder label %dec_label_pc_80024a2, { 2, 0, 1 }
  uselistorder label %dec_label_pc_8002466, { 1, 0 }
}

define i32 @CO_SDO_initTransfer(i32 %SDO, i16 %index, i8 %subIndex) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  %tmp = sext i8 %subIndex to i32
  %tmp4 = sext i16 %index to i32
  store i32 %tmp4, i32* %r1.global-to-local, align 4
  %v3_8002528 = load i32, i32* @r4, align 4
  %v6_8002528 = load i32, i32* @r5, align 4
  store i32 %SDO, i32* @r4, align 4
  store i32 %tmp4, i32* @r6, align 4
  store i32 %tmp, i32* @r5, align 4
  %v4_8002532 = add i32 %SDO, 80
  %v5_8002532 = inttoptr i32 %v4_8002532 to i16*
  store i16 %index, i16* %v5_8002532, align 2
  %v0_8002536 = load i32, i32* @r5, align 4
  %v1_8002536 = trunc i32 %v0_8002536 to i8
  %v3_8002536 = load i32, i32* @r4, align 4
  %v4_8002536 = add i32 %v3_8002536, 82
  %v5_8002536 = inttoptr i32 %v4_8002536 to i8*
  store i8 %v1_8002536, i8* %v5_8002536, align 1
  %v0_8002538 = load i32, i32* @r6, align 4
  %v1_8002538 = trunc i32 %v0_8002538 to i16
  store i32 %v0_8002538, i32* %r1.global-to-local, align 4
  %v0_800253a = load i32, i32* @r4, align 4
  %v4_800253c = call i16 @CO_OD_find(i32 %v0_800253a, i16 %v1_8002538)
  %v3_8002540 = load i32, i32* @r4, align 4
  %v4_8002540 = add i32 %v3_8002540, 58
  %v5_8002540 = inttoptr i32 %v4_8002540 to i16*
  store i16 %v4_800253c, i16* %v5_8002540, align 2
  %v0_8002542 = load i32, i32* @r4, align 4
  %v1_8002542 = add i32 %v0_8002542, 58
  %v2_8002542 = inttoptr i32 %v1_8002542 to i16*
  %v3_8002542 = load i16, i16* %v2_8002542, align 2
  store i32 65535, i32* %r1.global-to-local, align 4
  %v3_8002546 = icmp eq i16 %v3_8002542, -1
  br i1 %v3_8002546, label %dec_label_pc_800254a, label %dec_label_pc_800254e

dec_label_pc_800254a:                             ; preds = %entry
  br label %dec_label_pc_800254c

dec_label_pc_800254c:                             ; preds = %dec_label_pc_80025ee, %dec_label_pc_80025ea, %dec_label_pc_800256c, %dec_label_pc_800254a
  %v14_800254c = phi i32 [ 0, %dec_label_pc_80025ee ], [ 100925511, %dec_label_pc_80025ea ], [ 101253137, %dec_label_pc_800256c ], [ 100794368, %dec_label_pc_800254a ]
  store i32 %v3_8002528, i32* @r4, align 4
  store i32 %v6_8002528, i32* @r5, align 4
  ret i32 %v14_800254c

dec_label_pc_800254e:                             ; preds = %entry
  %v3_800254e = load i16, i16* %v2_8002542, align 2
  %v4_800254e = zext i16 %v3_800254e to i32
  %v2_8002552 = mul nuw nsw i32 %v4_800254e, 12
  %v1_8002554 = add i32 %v0_8002542, 44
  %v2_8002554 = inttoptr i32 %v1_8002554 to i32*
  %v3_8002554 = load i32, i32* %v2_8002554, align 4
  store i32 %v3_8002554, i32* %r1.global-to-local, align 4
  %v2_8002556 = add i32 %v3_8002554, %v2_8002552
  %v1_8002558 = add i32 %v2_8002556, 2
  %v2_8002558 = inttoptr i32 %v1_8002558 to i8*
  %v3_8002558 = load i8, i8* %v2_8002558, align 1
  %v1_800255a = load i32, i32* @r5, align 4
  %v3_800255a = trunc i32 %v1_800255a to i8
  %v8_800255c = icmp slt i8 %v3_8002558, %v3_800255a
  br i1 %v8_800255c, label %dec_label_pc_800255e, label %dec_label_pc_8002570

dec_label_pc_800255e:                             ; preds = %dec_label_pc_800254e
  %v3_800255e = load i16, i16* %v2_8002542, align 2
  %v4_800255e = zext i16 %v3_800255e to i32
  %v2_8002560 = mul nuw nsw i32 %v4_800255e, 12
  %v3_8002562 = load i32, i32* %v2_8002554, align 4
  store i32 %v3_8002562, i32* %r1.global-to-local, align 4
  %v2_8002564 = add i32 %v2_8002560, %v3_8002562
  %v1_8002566 = add i32 %v2_8002564, 8
  %v2_8002566 = inttoptr i32 %v1_8002566 to i32*
  %v3_8002566 = load i32, i32* %v2_8002566, align 4
  %v2_8002568 = icmp eq i32 %v3_8002566, 0
  br i1 %v2_8002568, label %dec_label_pc_8002570, label %dec_label_pc_800256c

dec_label_pc_800256c:                             ; preds = %dec_label_pc_800255e
  br label %dec_label_pc_800254c

dec_label_pc_8002570:                             ; preds = %dec_label_pc_800254e, %dec_label_pc_800255e
  %v3_8002570 = load i16, i16* %v2_8002542, align 2
  %v4_8002570 = zext i16 %v3_8002570 to i32
  store i32 %v4_8002570, i32* %r1.global-to-local, align 4
  %v7_8002576 = call i8* @CO_OD_getDataPointer(i32 %v0_8002542, i16 %v3_8002570, i8 %v3_800255a)
  %v9_8002576 = ptrtoint i8* %v7_8002576 to i32
  %v1_800257a = load i32, i32* @r4, align 4
  %v2_800257a = add i32 %v1_800257a, 68
  %v3_800257a = inttoptr i32 %v2_800257a to i32*
  store i32 %v9_8002576, i32* %v3_800257a, align 4
  %v1_800257e = load i32, i32* @r4, align 4
  %v2_800257e = add i32 %v1_800257e, 60
  %v3_800257e = inttoptr i32 %v2_800257e to i32*
  store i32 0, i32* %v3_800257e, align 4
  %v0_8002580 = load i32, i32* @r4, align 4
  %v1_8002580 = add i32 %v0_8002580, 52
  %v2_8002580 = inttoptr i32 %v1_8002580 to i32*
  %v3_8002580 = load i32, i32* %v2_8002580, align 4
  %v2_8002582 = icmp eq i32 %v3_8002580, 0
  br i1 %v2_8002582, label %dec_label_pc_8002596, label %dec_label_pc_8002586

dec_label_pc_8002586:                             ; preds = %dec_label_pc_8002570
  %v1_8002586 = add i32 %v0_8002580, 58
  %v2_8002586 = inttoptr i32 %v1_8002586 to i16*
  %v3_8002586 = load i16, i16* %v2_8002586, align 2
  %v4_8002586 = zext i16 %v3_8002586 to i32
  %v2_800258a = mul nuw nsw i32 %v4_8002586, 12
  store i32 %v2_800258a, i32* %r1.global-to-local, align 4
  %v3_800258c = load i32, i32* %v2_8002580, align 4
  %v2_800258e = add i32 %v3_800258c, %v2_800258a
  %v1_8002590 = add i32 %v2_800258e, 4
  %v2_8002590 = inttoptr i32 %v1_8002590 to i32*
  %v3_8002590 = load i32, i32* %v2_8002590, align 4
  store i32 %v3_8002590, i32* %r1.global-to-local, align 4
  %v2_8002592 = add i32 %v0_8002580, 60
  %v3_8002592 = inttoptr i32 %v2_8002592 to i32*
  store i32 %v3_8002590, i32* %v3_8002592, align 4
  %v0_8002596.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8002596

dec_label_pc_8002596:                             ; preds = %dec_label_pc_8002570, %dec_label_pc_8002586
  %v1_800259a = phi i32 [ %v0_8002580, %dec_label_pc_8002570 ], [ %v0_8002596.pre, %dec_label_pc_8002586 ]
  %v1_8002598 = add i32 %v1_800259a, 8
  %v2_800259a = add i32 %v1_800259a, 64
  %v3_800259a = inttoptr i32 %v2_800259a to i32*
  store i32 %v1_8002598, i32* %v3_800259a, align 4
  %v0_800259c = load i32, i32* @r4, align 4
  %v1_800259c = add i32 %v0_800259c, 58
  %v2_800259c = inttoptr i32 %v1_800259c to i16*
  %v3_800259c = load i16, i16* %v2_800259c, align 2
  %v4_800259c = zext i16 %v3_800259c to i32
  store i32 %v4_800259c, i32* %r1.global-to-local, align 4
  %v0_800259e = load i32, i32* @r5, align 4
  %v1_800259e = trunc i32 %v0_800259e to i8
  %v7_80025a2 = call i16 @CO_OD_getLength(i32 %v0_800259c, i16 %v3_800259c, i8 %v1_800259e)
  store i32 72, i32* %r1.global-to-local, align 4
  %v4_80025a8 = load i32, i32* @r4, align 4
  %v5_80025a8 = add i32 %v4_80025a8, 72
  %v6_80025a8 = inttoptr i32 %v5_80025a8 to i16*
  store i16 %v7_80025a2, i16* %v6_80025a8, align 2
  %v0_80025aa = load i32, i32* @r4, align 4
  %v1_80025aa = add i32 %v0_80025aa, 58
  %v2_80025aa = inttoptr i32 %v1_80025aa to i16*
  %v3_80025aa = load i16, i16* %v2_80025aa, align 2
  %v4_80025aa = zext i16 %v3_80025aa to i32
  store i32 %v4_80025aa, i32* %r1.global-to-local, align 4
  %v0_80025ac = load i32, i32* @r5, align 4
  %v1_80025ac = trunc i32 %v0_80025ac to i8
  %v7_80025b0 = call i16 @CO_OD_getAttribute(i32 %v0_80025aa, i16 %v3_80025aa, i8 %v1_80025ac)
  store i32 74, i32* %r1.global-to-local, align 4
  %v4_80025b6 = load i32, i32* @r4, align 4
  %v5_80025b6 = add i32 %v4_80025b6, 74
  %v6_80025b6 = inttoptr i32 %v5_80025b6 to i16*
  store i16 %v7_80025b0, i16* %v6_80025b6, align 2
  %v0_80025b8 = load i32, i32* @r4, align 4
  %v1_80025b8 = add i32 %v0_80025b8, 58
  %v2_80025b8 = inttoptr i32 %v1_80025b8 to i16*
  %v3_80025b8 = load i16, i16* %v2_80025b8, align 2
  %v4_80025b8 = zext i16 %v3_80025b8 to i32
  store i32 %v4_80025b8, i32* %r1.global-to-local, align 4
  %v0_80025ba = load i32, i32* @r5, align 4
  %v1_80025ba = trunc i32 %v0_80025ba to i8
  %v7_80025be = call i8* @CO_OD_getFlagsPointer(i32 %v0_80025b8, i16 %v3_80025b8, i8 %v1_80025ba)
  %v9_80025be = ptrtoint i8* %v7_80025be to i32
  %v1_80025c2 = load i32, i32* @r4, align 4
  %v2_80025c2 = add i32 %v1_80025c2, 76
  %v3_80025c2 = inttoptr i32 %v2_80025c2 to i32*
  store i32 %v9_80025be, i32* %v3_80025c2, align 4
  store i32 1, i32* %r1.global-to-local, align 4
  %v3_80025c8 = load i32, i32* @r4, align 4
  %v4_80025c8 = add i32 %v3_80025c8, 84
  %v5_80025c8 = inttoptr i32 %v4_80025c8 to i8*
  store i8 1, i8* %v5_80025c8, align 1
  %v0_80025cc = load i32, i32* %r1.global-to-local, align 4
  %v1_80025cc = trunc i32 %v0_80025cc to i8
  %v3_80025cc = load i32, i32* @r4, align 4
  %v4_80025cc = add i32 %v3_80025cc, 85
  %v5_80025cc = inttoptr i32 %v4_80025cc to i8*
  store i8 %v1_80025cc, i8* %v5_80025cc, align 1
  %v0_80025ce = load i32, i32* @r4, align 4
  %v1_80025ce = add i32 %v0_80025ce, 68
  %v2_80025ce = inttoptr i32 %v1_80025ce to i32*
  %v3_80025ce = load i32, i32* %v2_80025ce, align 4
  %v2_80025d0 = icmp eq i32 %v3_80025ce, 0
  br i1 %v2_80025d0, label %dec_label_pc_80025dc, label %dec_label_pc_80025d4

dec_label_pc_80025d4:                             ; preds = %dec_label_pc_8002596
  %v2_80025d6 = add i32 %v0_80025ce, 72
  %v3_80025d6 = inttoptr i32 %v2_80025d6 to i16*
  %v4_80025d6 = load i16, i16* %v3_80025d6, align 2
  %v6_80025d6 = zext i16 %v4_80025d6 to i32
  br label %dec_label_pc_80025dc

dec_label_pc_80025dc:                             ; preds = %dec_label_pc_8002596, %dec_label_pc_80025d4
  %storemerge = phi i32 [ %v6_80025d6, %dec_label_pc_80025d4 ], [ 0, %dec_label_pc_8002596 ]
  %v2_80025dc = add i32 %v0_80025ce, 88
  %v3_80025dc = inttoptr i32 %v2_80025dc to i32*
  store i32 %storemerge, i32* %v3_80025dc, align 4
  store i32 0, i32* %r1.global-to-local, align 4
  %v1_80025e0 = load i32, i32* @r4, align 4
  %v2_80025e0 = add i32 %v1_80025e0, 92
  %v3_80025e0 = inttoptr i32 %v2_80025e0 to i32*
  store i32 0, i32* %v3_80025e0, align 4
  %v1_80025e4 = load i32, i32* @r4, align 4
  %v2_80025e4 = add i32 %v1_80025e4, 72
  %v3_80025e4 = inttoptr i32 %v2_80025e4 to i16*
  %v4_80025e4 = load i16, i16* %v3_80025e4, align 2
  %v7_80025e8 = icmp ult i16 %v4_80025e4, 33
  br i1 %v7_80025e8, label %dec_label_pc_80025ee, label %dec_label_pc_80025ea

dec_label_pc_80025ea:                             ; preds = %dec_label_pc_80025dc
  br label %dec_label_pc_800254c

dec_label_pc_80025ee:                             ; preds = %dec_label_pc_80025dc
  br label %dec_label_pc_800254c

; uselistorder directives
  uselistorder i32 %v0_8002538, { 1, 0 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13, 14, 15, 0 }
  uselistorder i16 (i32, i16, i8)* @CO_OD_getAttribute, { 1, 0 }
  uselistorder i16 (i32, i16, i8)* @CO_OD_getLength, { 1, 0 }
  uselistorder i8* (i32, i16, i8)* @CO_OD_getDataPointer, { 1, 0 }
  uselistorder i32 100794368, { 0, 2, 1 }
  uselistorder i16 -1, { 1, 0 }
  uselistorder i16 (i32, i16)* @CO_OD_find, { 2, 1, 0 }
  uselistorder label %dec_label_pc_80025dc, { 1, 0 }
  uselistorder label %dec_label_pc_8002596, { 1, 0 }
  uselistorder label %dec_label_pc_8002570, { 1, 0 }
}

define i8 @CO_SDO_process(i32 %SDO, i8 %NMTisPreOrOperational, i16 %timeDifference_ms, i16 %SDOtimeoutTime, i16* %timerNext_ms) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  %tmp18 = sext i16 %timeDifference_ms to i32
  %tmp19 = sext i8 %NMTisPreOrOperational to i32
  store i32 %tmp19, i32* %r1.global-to-local, align 4
  %v24_8002604 = load i32, i32* @r4, align 4
  %v27_8002604 = load i32, i32* @r5, align 4
  %v30_8002604 = load i32, i32* @r6, align 4
  %v33_8002604 = load i32, i32* @r7, align 4
  store i32 %SDO, i32* @r4, align 4
  %v2_8002614 = add i32 %SDO, 97
  %v3_8002614 = inttoptr i32 %v2_8002614 to i8*
  %v4_8002614 = load i8, i8* %v3_8002614, align 1
  %v2_8002616 = icmp eq i8 %v4_8002614, 0
  br i1 %v2_8002616, label %dec_label_pc_800261a, label %dec_label_pc_8002626

dec_label_pc_800261a:                             ; preds = %entry
  %v2_800261c = add i32 %SDO, 108
  %v3_800261c = inttoptr i32 %v2_800261c to i8*
  %v4_800261c = load i8, i8* %v3_800261c, align 1
  %v2_800261e = icmp eq i8 %v4_800261c, 0
  br i1 %v2_800261e, label %dec_label_pc_8002622, label %dec_label_pc_8002626

dec_label_pc_8002622:                             ; preds = %dec_label_pc_80027b6, %dec_label_pc_800261a, %dec_label_pc_8003108, %dec_label_pc_80027a6, %dec_label_pc_8002738, %dec_label_pc_800270a, %dec_label_pc_80026e8, %dec_label_pc_80026c0, %dec_label_pc_8002694, %dec_label_pc_800262c
  %v17_8002624.off0 = phi i8 [ 0, %dec_label_pc_80027b6 ], [ 0, %dec_label_pc_800261a ], [ -1, %dec_label_pc_8003108 ], [ -1, %dec_label_pc_80027a6 ], [ -1, %dec_label_pc_8002738 ], [ -1, %dec_label_pc_800270a ], [ -1, %dec_label_pc_80026e8 ], [ -1, %dec_label_pc_80026c0 ], [ %extract.t17, %dec_label_pc_8002694 ], [ 0, %dec_label_pc_800262c ]
  store i32 %v24_8002604, i32* @r4, align 4
  store i32 %v27_8002604, i32* @r5, align 4
  store i32 %v30_8002604, i32* @r6, align 4
  store i32 %v33_8002604, i32* @r7, align 4
  ret i8 %v17_8002624.off0

dec_label_pc_8002626:                             ; preds = %dec_label_pc_800261a, %entry
  %v2_8002628 = icmp eq i8 %NMTisPreOrOperational, 0
  br i1 %v2_8002628, label %dec_label_pc_800262c, label %dec_label_pc_800263a

dec_label_pc_800262c:                             ; preds = %dec_label_pc_8002626
  store i32 0, i32* %r1.global-to-local, align 4
  store i8 0, i8* %v3_8002614, align 1
  %v0_8002634 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002634 = trunc i32 %v0_8002634 to i8
  %v3_8002634 = load i32, i32* @r4, align 4
  %v4_8002634 = add i32 %v3_8002634, 108
  %v5_8002634 = inttoptr i32 %v4_8002634 to i8*
  store i8 %v1_8002634, i8* %v5_8002634, align 1
  br label %dec_label_pc_8002622

dec_label_pc_800263a:                             ; preds = %dec_label_pc_8002626
  %v1_800263a = add i32 %SDO, 120
  %v2_800263a = inttoptr i32 %v1_800263a to i32*
  %v3_800263a = load i32, i32* %v2_800263a, align 4
  %v1_800263c = add i32 %v3_800263a, 13
  %v2_800263c = inttoptr i32 %v1_800263c to i8*
  %v3_800263c = load i8, i8* %v2_800263c, align 1
  %v2_800263e = icmp eq i8 %v3_800263c, 0
  br i1 %v2_800263e, label %dec_label_pc_8002642, label %dec_label_pc_8002762

dec_label_pc_8002642:                             ; preds = %dec_label_pc_800263a
  %v2_8002644 = add i32 %SDO, 108
  %v3_8002644 = inttoptr i32 %v2_8002644 to i8*
  %v4_8002644 = load i8, i8* %v3_8002644, align 1
  %v2_8002646 = icmp eq i8 %v4_8002644, 0
  br i1 %v2_8002646, label %dec_label_pc_800264a, label %dec_label_pc_8002652

dec_label_pc_800264a:                             ; preds = %dec_label_pc_8002642
  %v4_800264c = load i8, i8* %v3_8002614, align 1
  %v7_800264e = icmp eq i8 %v4_800264c, 38
  br i1 %v7_800264e, label %dec_label_pc_8002652, label %dec_label_pc_8002762

dec_label_pc_8002652:                             ; preds = %dec_label_pc_800264a, %dec_label_pc_8002642
  %v1_8002652 = inttoptr i32 %SDO to i8*
  %v2_8002652 = load i8, i8* %v1_8002652, align 1
  %div = udiv i8 %v2_8002652, 32
  %v3_80026545 = zext i8 %div to i32
  store i32 %v3_80026545, i32* @r5, align 4
  %v4_8002658 = load i8, i8* %v3_8002614, align 1
  %v7_800265a = icmp eq i8 %v4_8002658, 38
  br i1 %v7_800265a, label %dec_label_pc_8002664, label %dec_label_pc_800265e

dec_label_pc_800265e:                             ; preds = %dec_label_pc_8002652
  store i32 0, i32* %r1.global-to-local, align 4
  %v4_8002662 = add i32 %SDO, 100
  %v5_8002662 = inttoptr i32 %v4_8002662 to i16*
  store i16 0, i16* %v5_8002662, align 2
  %v0_8002666.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8002664

dec_label_pc_8002664:                             ; preds = %dec_label_pc_8002652, %dec_label_pc_800265e
  %v0_8002666 = phi i32 [ %SDO, %dec_label_pc_8002652 ], [ %v0_8002666.pre, %dec_label_pc_800265e ]
  store i32 0, i32* %r1.global-to-local, align 4
  %v1_8002666 = add i32 %v0_8002666, 120
  %v2_8002666 = inttoptr i32 %v1_8002666 to i32*
  %v3_8002666 = load i32, i32* %v2_8002666, align 4
  %v3_8002668 = add i32 %v3_8002666, 8
  %v4_8002668 = inttoptr i32 %v3_8002668 to i8*
  store i8 0, i8* %v4_8002668, align 1
  %v0_800266a = load i32, i32* @r4, align 4
  %v1_800266a = add i32 %v0_800266a, 120
  %v2_800266a = inttoptr i32 %v1_800266a to i32*
  %v3_800266a = load i32, i32* %v2_800266a, align 4
  %v0_800266c = load i32, i32* %r1.global-to-local, align 4
  %v1_800266c = trunc i32 %v0_800266c to i8
  %v3_800266c = add i32 %v3_800266a, 7
  %v4_800266c = inttoptr i32 %v3_800266c to i8*
  store i8 %v1_800266c, i8* %v4_800266c, align 1
  %v0_800266e = load i32, i32* @r4, align 4
  %v1_800266e = add i32 %v0_800266e, 120
  %v2_800266e = inttoptr i32 %v1_800266e to i32*
  %v3_800266e = load i32, i32* %v2_800266e, align 4
  %v0_8002670 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002670 = trunc i32 %v0_8002670 to i8
  %v3_8002670 = add i32 %v3_800266e, 6
  %v4_8002670 = inttoptr i32 %v3_8002670 to i8*
  store i8 %v1_8002670, i8* %v4_8002670, align 1
  %v0_8002672 = load i32, i32* @r4, align 4
  %v1_8002672 = add i32 %v0_8002672, 120
  %v2_8002672 = inttoptr i32 %v1_8002672 to i32*
  %v3_8002672 = load i32, i32* %v2_8002672, align 4
  %v0_8002674 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002674 = trunc i32 %v0_8002674 to i8
  %v3_8002674 = add i32 %v3_8002672, 5
  %v4_8002674 = inttoptr i32 %v3_8002674 to i8*
  store i8 %v1_8002674, i8* %v4_8002674, align 1
  %v0_8002676 = load i32, i32* @r4, align 4
  %v1_8002676 = add i32 %v0_8002676, 120
  %v2_8002676 = inttoptr i32 %v1_8002676 to i32*
  %v3_8002676 = load i32, i32* %v2_8002676, align 4
  %v0_8002678 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002678 = trunc i32 %v0_8002678 to i8
  %v3_8002678 = add i32 %v3_8002676, 12
  %v4_8002678 = inttoptr i32 %v3_8002678 to i8*
  store i8 %v1_8002678, i8* %v4_8002678, align 1
  %v0_800267a = load i32, i32* @r4, align 4
  %v1_800267a = add i32 %v0_800267a, 120
  %v2_800267a = inttoptr i32 %v1_800267a to i32*
  %v3_800267a = load i32, i32* %v2_800267a, align 4
  %v0_800267c = load i32, i32* %r1.global-to-local, align 4
  %v1_800267c = trunc i32 %v0_800267c to i8
  %v3_800267c = add i32 %v3_800267a, 11
  %v4_800267c = inttoptr i32 %v3_800267c to i8*
  store i8 %v1_800267c, i8* %v4_800267c, align 1
  %v0_800267e = load i32, i32* @r4, align 4
  %v1_800267e = add i32 %v0_800267e, 120
  %v2_800267e = inttoptr i32 %v1_800267e to i32*
  %v3_800267e = load i32, i32* %v2_800267e, align 4
  %v0_8002680 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002680 = trunc i32 %v0_8002680 to i8
  %v3_8002680 = add i32 %v3_800267e, 10
  %v4_8002680 = inttoptr i32 %v3_8002680 to i8*
  store i8 %v1_8002680, i8* %v4_8002680, align 1
  %v0_8002682 = load i32, i32* @r4, align 4
  %v1_8002682 = add i32 %v0_8002682, 120
  %v2_8002682 = inttoptr i32 %v1_8002682 to i32*
  %v3_8002682 = load i32, i32* %v2_8002682, align 4
  %v0_8002684 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002684 = trunc i32 %v0_8002684 to i8
  %v3_8002684 = add i32 %v3_8002682, 9
  %v4_8002684 = inttoptr i32 %v3_8002684 to i8*
  store i8 %v1_8002684, i8* %v4_8002684, align 1
  %v1_8002688 = load i32, i32* @r4, align 4
  %v2_8002688 = add i32 %v1_8002688, 108
  %v3_8002688 = inttoptr i32 %v2_8002688 to i8*
  %v4_8002688 = load i8, i8* %v3_8002688, align 1
  %v2_800268a = icmp eq i8 %v4_8002688, 0
  br i1 %v2_800268a, label %dec_label_pc_80026a0, label %dec_label_pc_800268e

dec_label_pc_800268e:                             ; preds = %dec_label_pc_8002664
  %v1_800268e = inttoptr i32 %v1_8002688 to i8*
  %v2_800268e = load i8, i8* %v1_800268e, align 1
  %v7_8002690 = icmp eq i8 %v2_800268e, -128
  br i1 %v7_8002690, label %dec_label_pc_8002694, label %dec_label_pc_80026a0

dec_label_pc_8002694:                             ; preds = %dec_label_pc_800268e
  %v0_8002696 = load i32, i32* %r1.global-to-local, align 4
  %v1_8002696 = trunc i32 %v0_8002696 to i8
  %v4_8002696 = add i32 %v1_8002688, 97
  %v5_8002696 = inttoptr i32 %v4_8002696 to i8*
  store i8 %v1_8002696, i8* %v5_8002696, align 1
  %v0_800269a = load i32, i32* %r1.global-to-local, align 4
  %v1_800269a = trunc i32 %v0_800269a to i8
  %v3_800269a = load i32, i32* @r4, align 4
  %v4_800269a = add i32 %v3_800269a, 108
  %v5_800269a = inttoptr i32 %v4_800269a to i8*
  store i8 %v1_800269a, i8* %v5_800269a, align 1
  %v0_800269c = load i32, i32* %r1.global-to-local, align 4
  %v1_800269c = add i32 %v0_800269c, 255
  %extract.t17 = trunc i32 %v1_800269c to i8
  br label %dec_label_pc_8002622

dec_label_pc_80026a0:                             ; preds = %dec_label_pc_800268e, %dec_label_pc_8002664
  %v2_80026a2 = add i32 %v1_8002688, 97
  %v3_80026a2 = inttoptr i32 %v2_80026a2 to i8*
  %v4_80026a2 = load i8, i8* %v3_80026a2, align 1
  %v2_80026a4 = icmp eq i8 %v4_80026a2, 0
  br i1 %v2_80026a4, label %dec_label_pc_80026b0, label %dec_label_pc_80026a8

dec_label_pc_80026a8:                             ; preds = %dec_label_pc_80026a0
  %v4_80026aa = load i8, i8* %v3_80026a2, align 1
  br label %dec_label_pc_8002762

dec_label_pc_80026b0:                             ; preds = %dec_label_pc_80026a0
  %v0_80026b0 = load i32, i32* @r5, align 4
  switch i32 %v0_80026b0, label %dec_label_pc_80026c0 [
    i32 1, label %dec_label_pc_80026ce
    i32 2, label %dec_label_pc_80026ce
    i32 6, label %dec_label_pc_80026ce
    i32 5, label %dec_label_pc_80026ce
  ]

dec_label_pc_80026c0:                             ; preds = %dec_label_pc_80026b0
  store i32 84148225, i32* %r1.global-to-local, align 4
  call void @CO_SDO_abort(i32 %v1_8002688, i32 84148225)
  br label %dec_label_pc_8002622

dec_label_pc_80026ce:                             ; preds = %dec_label_pc_80026b0, %dec_label_pc_80026b0, %dec_label_pc_80026b0, %dec_label_pc_80026b0
  %v1_80026ce = add i32 %v1_8002688, 2
  %v2_80026ce = inttoptr i32 %v1_80026ce to i8*
  %v3_80026ce = load i8, i8* %v2_80026ce, align 1
  %v4_80026ce = zext i8 %v3_80026ce to i32
  %v3_80026d0 = mul nuw nsw i32 %v4_80026ce, 256
  %v1_80026d2 = add i32 %v1_8002688, 1
  %v2_80026d2 = inttoptr i32 %v1_80026d2 to i8*
  %v3_80026d2 = load i8, i8* %v2_80026d2, align 1
  %v4_80026d2 = zext i8 %v3_80026d2 to i32
  store i32 %v4_80026d2, i32* %r1.global-to-local, align 4
  %v2_80026d4 = or i32 %v4_80026d2, %v3_80026d0
  %v1_80026d8 = add i32 %v1_8002688, 3
  %v2_80026d8 = inttoptr i32 %v1_80026d8 to i8*
  %v3_80026d8 = load i8, i8* %v2_80026d8, align 1
  %v1_80026da = trunc i32 %v2_80026d4 to i16
  store i32 %v2_80026d4, i32* %r1.global-to-local, align 4
  %v7_80026de = call i32 @CO_SDO_initTransfer(i32 %v1_8002688, i16 %v1_80026da, i8 %v3_80026d8)
  store i32 %v7_80026de, i32* @r6, align 4
  %v2_80026e4 = icmp eq i32 %v7_80026de, 0
  br i1 %v2_80026e4, label %dec_label_pc_80026f6, label %dec_label_pc_80026e8

dec_label_pc_80026e8:                             ; preds = %dec_label_pc_80026ce
  store i32 %v7_80026de, i32* %r1.global-to-local, align 4
  %v0_80026ea = load i32, i32* @r4, align 4
  call void @CO_SDO_abort(i32 %v0_80026ea, i32 %v7_80026de)
  br label %dec_label_pc_8002622

dec_label_pc_80026f6:                             ; preds = %dec_label_pc_80026ce
  %v0_80026f6 = load i32, i32* @r5, align 4
  %v7_80026f6 = icmp eq i32 %v0_80026f6, 1
  switch i32 %v0_80026f6, label %dec_label_pc_800272a [
    i32 6, label %dec_label_pc_80026fe
    i32 1, label %dec_label_pc_80026fe
  ]

dec_label_pc_80026fe:                             ; preds = %dec_label_pc_80026f6, %dec_label_pc_80026f6
  %v1_8002700 = load i32, i32* @r4, align 4
  %v2_8002700 = add i32 %v1_8002700, 74
  %v3_8002700 = inttoptr i32 %v2_8002700 to i16*
  %v4_8002700 = load i16, i16* %v3_8002700, align 2
  store i32 8, i32* %r1.global-to-local, align 4
  %v2_8002704 = and i16 %v4_8002700, 8
  %v4_8002704 = icmp eq i16 %v2_8002704, 0
  br i1 %v4_8002704, label %dec_label_pc_800270a, label %dec_label_pc_8002718

dec_label_pc_800270a:                             ; preds = %dec_label_pc_80026fe
  store i32 100728834, i32* %r1.global-to-local, align 4
  call void @CO_SDO_abort(i32 %v1_8002700, i32 100728834)
  br label %dec_label_pc_8002622

dec_label_pc_8002718:                             ; preds = %dec_label_pc_80026fe
  br i1 %v7_80026f6, label %dec_label_pc_800271c, label %dec_label_pc_8002724

dec_label_pc_800271c:                             ; preds = %dec_label_pc_8002718
  br label %dec_label_pc_8002762

dec_label_pc_8002724:                             ; preds = %dec_label_pc_8002718
  br label %dec_label_pc_8002762

dec_label_pc_800272a:                             ; preds = %dec_label_pc_80026f6
  store i32 32, i32* %r1.global-to-local, align 4
  %v0_800272c = load i32, i32* @r4, align 4
  %v4_800272e = call i32 @CO_SDO_readOD(i32 %v0_800272c, i16 32)
  store i32 %v4_800272e, i32* @r6, align 4
  %v2_8002734 = icmp eq i32 %v4_800272e, 0
  br i1 %v2_8002734, label %dec_label_pc_8002746, label %dec_label_pc_8002738

dec_label_pc_8002738:                             ; preds = %dec_label_pc_800272a
  store i32 %v4_800272e, i32* %r1.global-to-local, align 4
  %v0_800273a = load i32, i32* @r4, align 4
  call void @CO_SDO_abort(i32 %v0_800273a, i32 %v4_800272e)
  br label %dec_label_pc_8002622

dec_label_pc_8002746:                             ; preds = %dec_label_pc_800272a
  %v0_8002746 = load i32, i32* @r5, align 4
  %v7_8002746 = icmp eq i32 %v0_8002746, 5
  br i1 %v7_8002746, label %dec_label_pc_800274a, label %dec_label_pc_8002746.dec_label_pc_800275a_crit_edge

dec_label_pc_8002746.dec_label_pc_800275a_crit_edge: ; preds = %dec_label_pc_8002746
  %v1_8002764.pre.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_800275a

dec_label_pc_800274a:                             ; preds = %dec_label_pc_8002746
  %v1_800274c = load i32, i32* @r4, align 4
  %v2_800274c = add i32 %v1_800274c, 72
  %v3_800274c = inttoptr i32 %v2_800274c to i16*
  %v4_800274c = load i16, i16* %v3_800274c, align 2
  %v6_800274c = zext i16 %v4_800274c to i32
  %v1_800274e = add i32 %v1_800274c, 5
  %v2_800274e = inttoptr i32 %v1_800274e to i8*
  %v3_800274e = load i8, i8* %v2_800274e, align 1
  %v4_800274e = zext i8 %v3_800274e to i32
  store i32 %v4_800274e, i32* %r1.global-to-local, align 4
  %v7_8002752 = icmp ugt i32 %v6_800274c, %v4_800274e
  br i1 %v7_8002752, label %dec_label_pc_8002754, label %dec_label_pc_800275a

dec_label_pc_8002754:                             ; preds = %dec_label_pc_800274a
  br label %dec_label_pc_8002762

dec_label_pc_800275a:                             ; preds = %dec_label_pc_8002746.dec_label_pc_800275a_crit_edge, %dec_label_pc_800274a
  %v1_8002764.pre = phi i32 [ %v1_8002764.pre.pre, %dec_label_pc_8002746.dec_label_pc_800275a_crit_edge ], [ %v1_800274c, %dec_label_pc_800274a ]
  br label %dec_label_pc_8002762

dec_label_pc_8002762:                             ; preds = %dec_label_pc_800264a, %dec_label_pc_80026a8, %dec_label_pc_8002754, %dec_label_pc_8002724, %dec_label_pc_800271c, %dec_label_pc_800275a, %dec_label_pc_800263a
  %v3_8002778 = phi i32 [ %v1_8002700, %dec_label_pc_800271c ], [ %v1_8002700, %dec_label_pc_8002724 ], [ %v1_800274c, %dec_label_pc_8002754 ], [ %v1_8002764.pre, %dec_label_pc_800275a ], [ %v1_8002688, %dec_label_pc_80026a8 ], [ %SDO, %dec_label_pc_800263a ], [ %SDO, %dec_label_pc_800264a ]
  %stack_var_-40.0 = phi i8 [ 17, %dec_label_pc_800271c ], [ 20, %dec_label_pc_8002724 ], [ 36, %dec_label_pc_8002754 ], [ 33, %dec_label_pc_800275a ], [ %v4_80026aa, %dec_label_pc_80026a8 ], [ 0, %dec_label_pc_800263a ], [ 0, %dec_label_pc_800264a ]
  %v2_8002764 = add i32 %v3_8002778, 100
  %v3_8002764 = inttoptr i32 %v2_8002764 to i16*
  %v4_8002764 = load i16, i16* %v3_8002764, align 2
  %v6_8002764 = zext i16 %v4_8002764 to i32
  store i32 %v6_8002764, i32* %r1.global-to-local, align 4
  %v8_800276a = icmp slt i16 %v4_8002764, %SDOtimeoutTime
  br i1 %v8_800276a, label %dec_label_pc_800276c, label %dec_label_pc_800277a

dec_label_pc_800276c:                             ; preds = %dec_label_pc_8002762
  %v4_800276e = load i16, i16* %v3_8002764, align 2
  %v6_800276e = zext i16 %v4_800276e to i32
  %v2_8002772 = add nsw i32 %v6_800276e, %tmp18
  %v1_8002774 = urem i32 %v2_8002772, 65536
  store i32 %v1_8002774, i32* %r1.global-to-local, align 4
  %v1_8002778 = trunc i32 %v2_8002772 to i16
  store i16 %v1_8002778, i16* %v3_8002764, align 2
  %v1_800277c.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_800277a

dec_label_pc_800277a:                             ; preds = %dec_label_pc_8002762, %dec_label_pc_800276c
  %v0_80027aa = phi i32 [ %v3_8002778, %dec_label_pc_8002762 ], [ %v1_800277c.pre, %dec_label_pc_800276c ]
  %v2_800277c = add i32 %v0_80027aa, 100
  %v3_800277c = inttoptr i32 %v2_800277c to i16*
  %v4_800277c = load i16, i16* %v3_800277c, align 2
  %v6_800277c = zext i16 %v4_800277c to i32
  store i32 %v6_800277c, i32* %r1.global-to-local, align 4
  %v7_8002782 = icmp slt i16 %v4_800277c, %SDOtimeoutTime
  br i1 %v7_8002782, label %dec_label_pc_80027b6, label %dec_label_pc_8002784

dec_label_pc_8002784:                             ; preds = %dec_label_pc_800277a
  %v2_8002786 = add i32 %v0_80027aa, 97
  %v3_8002786 = inttoptr i32 %v2_8002786 to i8*
  %v4_8002786 = load i8, i8* %v3_8002786, align 1
  %v7_8002788 = icmp eq i8 %v4_8002786, 21
  br i1 %v7_8002788, label %dec_label_pc_800278c, label %dec_label_pc_80027a6

dec_label_pc_800278c:                             ; preds = %dec_label_pc_8002784
  %v2_800278e = add i32 %v0_80027aa, 98
  %v3_800278e = inttoptr i32 %v2_800278e to i8*
  %v4_800278e = load i8, i8* %v3_800278e, align 1
  %v2_8002790 = icmp eq i8 %v4_800278e, 0
  br i1 %v2_8002790, label %dec_label_pc_80027a6, label %dec_label_pc_8002794

dec_label_pc_8002794:                             ; preds = %dec_label_pc_800278c
  %v1_8002794 = add i32 %v0_80027aa, 120
  %v2_8002794 = inttoptr i32 %v1_8002794 to i32*
  %v3_8002794 = load i32, i32* %v2_8002794, align 4
  %v1_8002796 = add i32 %v3_8002794, 13
  %v2_8002796 = inttoptr i32 %v1_8002796 to i8*
  %v3_8002796 = load i8, i8* %v2_8002796, align 1
  %v2_8002798 = icmp eq i8 %v3_8002796, 0
  br i1 %v2_8002798, label %dec_label_pc_80027be.thread, label %dec_label_pc_80027a6

dec_label_pc_80027be.thread:                      ; preds = %dec_label_pc_8002794
  br label %dec_label_pc_80027c6

dec_label_pc_80027a6:                             ; preds = %dec_label_pc_8002794, %dec_label_pc_8002784, %dec_label_pc_800278c
  store i32 84148224, i32* %r1.global-to-local, align 4
  call void @CO_SDO_abort(i32 %v0_80027aa, i32 84148224)
  br label %dec_label_pc_8002622

dec_label_pc_80027b6:                             ; preds = %dec_label_pc_800277a
  %v2_80027b8 = icmp eq i8 %stack_var_-40.0, 0
  br i1 %v2_80027b8, label %dec_label_pc_8002622, label %dec_label_pc_80027be

dec_label_pc_80027be:                             ; preds = %dec_label_pc_80027b6
  %v4_80027b6 = sext i8 %stack_var_-40.0 to i32
  %v1_80027c0 = add nsw i32 %v4_80027b6, -17
  %v2_80027c2 = icmp ugt i32 %v1_80027c0, 22
  br i1 %v2_80027c2, label %dec_label_pc_8003108, label %dec_label_pc_80027c6

dec_label_pc_80027c6:                             ; preds = %dec_label_pc_80027be.thread, %dec_label_pc_80027be
  %v1_80027c036 = phi i32 [ 5, %dec_label_pc_80027be.thread ], [ %v1_80027c0, %dec_label_pc_80027be ]
  %v2_80027c6 = mul nsw i32 %v1_80027c036, 2
  %v1_80027ca = add i32 %v2_80027c6, add (i32 ptrtoint (i32* @global_var_80027cc.86 to i32), i32 4)
  %v2_80027ca = inttoptr i32 %v1_80027ca to i16*
  %v3_80027ca = load i16, i16* %v2_80027ca, align 2
  %v4_80027ca = zext i16 %v3_80027ca to i32
  %v2_80027cc = mul nuw nsw i32 %v4_80027ca, 2
  %v1_80027ce = add i32 %v2_80027cc, ptrtoint (i32* @global_var_80027d0.87 to i32)
  call void @__pseudo_branch(i32 %v1_80027ce)
  %v0_800310a.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8003108

dec_label_pc_8003108:                             ; preds = %dec_label_pc_80027be, %dec_label_pc_80027c6
  %v0_800310a = phi i32 [ %v0_80027aa, %dec_label_pc_80027be ], [ %v0_800310a.pre, %dec_label_pc_80027c6 ]
  store i32 100925511, i32* %r1.global-to-local, align 4
  call void @CO_SDO_abort(i32 %v0_800310a, i32 100925511)
  br label %dec_label_pc_8002622

; uselistorder directives
  uselistorder i32 %v2_8002772, { 1, 0 }
  uselistorder i8 %stack_var_-40.0, { 1, 0 }
  uselistorder i32 %v1_800274c, { 1, 0, 2, 3 }
  uselistorder i32 %v4_800272e, { 1, 0, 2, 3 }
  uselistorder i32 %v1_8002700, { 1, 2, 0, 3 }
  uselistorder i32 %v7_80026de, { 1, 0, 2, 3 }
  uselistorder i8* %v3_8002614, { 1, 2, 0, 3 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 0 }
  uselistorder i8 20, { 0, 2, 1 }
  uselistorder void (i32, i32)* @CO_SDO_abort, { 5, 4, 3, 2, 1, 0 }
  uselistorder i8 -128, { 1, 0 }
  uselistorder label %dec_label_pc_8003108, { 1, 0 }
  uselistorder label %dec_label_pc_80027c6, { 1, 0 }
  uselistorder label %dec_label_pc_80027a6, { 0, 2, 1 }
  uselistorder label %dec_label_pc_800277a, { 1, 0 }
  uselistorder label %dec_label_pc_8002762, { 5, 2, 3, 4, 1, 0, 6 }
  uselistorder label %dec_label_pc_800275a, { 1, 0 }
  uselistorder label %dec_label_pc_8002664, { 1, 0 }
  uselistorder label %dec_label_pc_8002622, { 2, 0, 3, 4, 5, 6, 7, 8, 9, 1 }
}

define i32 @CO_SDO_readOD(i32 %SDO, i16 %SDOBufferSize) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  %r6.global-to-local = alloca i32, align 4
  %r7.global-to-local = alloca i32, align 4
  %tmp = sext i16 %SDOBufferSize to i32
  store i32 %SDO, i32* %r0.global-to-local, align 4
  store i32 %SDO, i32* %r4.global-to-local, align 4
  store i32 %tmp, i32* %r7.global-to-local, align 4
  %v1_800314a = add i32 %SDO, 64
  %v2_800314a = inttoptr i32 %v1_800314a to i32*
  %v3_800314a = load i32, i32* %v2_800314a, align 4
  store i32 %v3_800314a, i32* %r0.global-to-local, align 4
  %v1_800314e = add i32 %SDO, 68
  %v2_800314e = inttoptr i32 %v1_800314e to i32*
  %v3_800314e = load i32, i32* %v2_800314e, align 4
  store i32 %v3_800314e, i32* %r6.global-to-local, align 4
  store i32 72, i32* %r0.global-to-local, align 4
  %v2_8003152 = add i32 %SDO, 72
  %v3_8003152 = inttoptr i32 %v2_8003152 to i16*
  %v4_8003152 = load i16, i16* %v3_8003152, align 2
  %v6_8003152 = zext i16 %v4_8003152 to i32
  store i32 0, i32* %r5.global-to-local, align 4
  store i32 74, i32* %r0.global-to-local, align 4
  %v2_800315a = add i32 %SDO, 74
  %v3_800315a = inttoptr i32 %v2_800315a to i16*
  %v4_800315a = load i16, i16* %v3_800315a, align 2
  %v6_800315a = zext i16 %v4_800315a to i32
  %v2_800315e = and i32 %v6_800315a, 4
  store i32 %v2_800315e, i32* %r0.global-to-local, align 4
  %v4_800315e = icmp eq i32 %v2_800315e, 0
  br i1 %v4_800315e, label %dec_label_pc_8003164, label %dec_label_pc_8003168

dec_label_pc_8003164:                             ; preds = %entry
  store i32 100728833, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8003166

dec_label_pc_8003166:                             ; preds = %dec_label_pc_80031da, %dec_label_pc_80031d4, %dec_label_pc_80031c0, %dec_label_pc_80031a0, %dec_label_pc_8003164
  %v28_8003166 = phi i32 [ 100728833, %dec_label_pc_8003164 ], [ 100925511, %dec_label_pc_80031a0 ], [ 0, %dec_label_pc_80031da ], [ 100925511, %dec_label_pc_80031d4 ], [ %v0_80031b8, %dec_label_pc_80031c0 ]
  ret i32 %v28_8003166

dec_label_pc_8003168:                             ; preds = %entry
  %v1_8003168 = add i32 %SDO, 52
  %v2_8003168 = inttoptr i32 %v1_8003168 to i32*
  %v3_8003168 = load i32, i32* %v2_8003168, align 4
  store i32 %v3_8003168, i32* %r0.global-to-local, align 4
  %v2_800316a = icmp eq i32 %v3_8003168, 0
  br i1 %v2_800316a, label %dec_label_pc_8003178, label %dec_label_pc_800316e

dec_label_pc_800316e:                             ; preds = %dec_label_pc_8003168
  %v1_800316e = add i32 %SDO, 58
  %v2_800316e = inttoptr i32 %v1_800316e to i16*
  %v3_800316e = load i16, i16* %v2_800316e, align 2
  %v4_800316e = zext i16 %v3_800316e to i32
  %v2_8003172 = mul nuw nsw i32 %v4_800316e, 12
  store i32 %v2_8003172, i32* %r0.global-to-local, align 4
  %v3_8003174 = load i32, i32* %v2_8003168, align 4
  %v2_8003176 = add i32 %v3_8003174, %v2_8003172
  store i32 %v2_8003176, i32* %r5.global-to-local, align 4
  %phitmp = inttoptr i32 %v2_8003176 to i32*
  br label %dec_label_pc_8003178

dec_label_pc_8003178:                             ; preds = %dec_label_pc_8003168, %dec_label_pc_800316e
  %v0_800319a = phi i32* [ null, %dec_label_pc_8003168 ], [ %phitmp, %dec_label_pc_800316e ]
  %v2_8003178 = icmp eq i32 %v3_800314e, 0
  br i1 %v2_8003178, label %dec_label_pc_800319a, label %dec_label_pc_800318c.preheader

dec_label_pc_800318c.preheader:                   ; preds = %dec_label_pc_8003178
  store i32 %v6_8003152, i32* %r0.global-to-local, align 4
  %v2_80031948 = icmp eq i16 %v4_8003152, 0
  br i1 %v2_80031948, label %dec_label_pc_80031a4, label %dec_label_pc_800317e

dec_label_pc_800317e:                             ; preds = %dec_label_pc_800318c.preheader, %dec_label_pc_800317e
  %v0_800317e = phi i32 [ %v1_8003184, %dec_label_pc_800317e ], [ %v3_800314e, %dec_label_pc_800318c.preheader ]
  %v1_800319010.in.in = phi i32 [ %v1_800319010, %dec_label_pc_800317e ], [ %v6_8003152, %dec_label_pc_800318c.preheader ]
  %stack_var_-24.19.in = phi i32 [ %v1_8003188, %dec_label_pc_800317e ], [ %v3_800314a, %dec_label_pc_800318c.preheader ]
  %v1_800319010.in = add nuw nsw i32 %v1_800319010.in.in, 65535
  %stack_var_-24.19 = inttoptr i32 %stack_var_-24.19.in to i8*
  %v1_800319010 = urem i32 %v1_800319010.in, 65536
  %v1_800317e = inttoptr i32 %v0_800317e to i8*
  %v2_800317e = load i8, i8* %v1_800317e, align 1
  store i8 %v2_800317e, i8* %stack_var_-24.19, align 1
  %v0_8003184 = load i32, i32* %r6.global-to-local, align 4
  %v1_8003184 = add i32 %v0_8003184, 1
  store i32 %v1_8003184, i32* %r6.global-to-local, align 4
  %v1_8003188 = add i32 %stack_var_-24.19.in, 1
  store i32 %v1_800319010, i32* %r0.global-to-local, align 4
  %v2_8003194 = icmp eq i32 %v1_800319010, 0
  br i1 %v2_8003194, label %dec_label_pc_800318c.dec_label_pc_80031a4.loopexit_crit_edge, label %dec_label_pc_800317e

dec_label_pc_800319a:                             ; preds = %dec_label_pc_8003178
  %v2_800319a = load i32, i32* %v0_800319a, align 4
  store i32 %v2_800319a, i32* %r0.global-to-local, align 4
  %v2_800319c = icmp eq i32 %v2_800319a, 0
  br i1 %v2_800319c, label %dec_label_pc_80031a0, label %dec_label_pc_80031a4

dec_label_pc_80031a0:                             ; preds = %dec_label_pc_800319a
  store i32 100925511, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8003166

dec_label_pc_800318c.dec_label_pc_80031a4.loopexit_crit_edge: ; preds = %dec_label_pc_800317e
  %v3_80031a8.pre.pre = load i32, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_80031a4

dec_label_pc_80031a4:                             ; preds = %dec_label_pc_800318c.preheader, %dec_label_pc_800318c.dec_label_pc_80031a4.loopexit_crit_edge, %dec_label_pc_800319a
  %v3_80031a8 = phi i32 [ %SDO, %dec_label_pc_800319a ], [ %v3_80031a8.pre.pre, %dec_label_pc_800318c.dec_label_pc_80031a4.loopexit_crit_edge ], [ %SDO, %dec_label_pc_800318c.preheader ]
  store i32 83, i32* %r0.global-to-local, align 4
  %v4_80031a8 = add i32 %v3_80031a8, 83
  %v5_80031a8 = inttoptr i32 %v4_80031a8 to i8*
  store i8 1, i8* %v5_80031a8, align 1
  %v0_80031aa = load i32, i32* %r5.global-to-local, align 4
  %v1_80031aa = inttoptr i32 %v0_80031aa to i32*
  %v2_80031aa = load i32, i32* %v1_80031aa, align 4
  store i32 %v2_80031aa, i32* %r0.global-to-local, align 4
  %v2_80031ac = icmp eq i32 %v2_80031aa, 0
  %v1_80031dc.pre = load i32, i32* %r4.global-to-local, align 4
  br i1 %v2_80031ac, label %dec_label_pc_80031da, label %dec_label_pc_80031b0

dec_label_pc_80031b0:                             ; preds = %dec_label_pc_80031a4
  %v1_80031b2 = add i32 %v1_80031dc.pre, 60
  store i32 %v1_80031b2, i32* %r0.global-to-local, align 4
  %v2_80031b4 = load i32, i32* %v1_80031aa, align 4
  call void @__pseudo_call(i32 %v2_80031b4)
  %v0_80031b8 = load i32, i32* %r0.global-to-local, align 4
  %v4_80031b8 = trunc i32 %v0_80031b8 to i16
  %v2_80031bc = icmp eq i16 %v4_80031b8, 0
  br i1 %v2_80031bc, label %dec_label_pc_80031c4, label %dec_label_pc_80031c0

dec_label_pc_80031c0:                             ; preds = %dec_label_pc_80031b0
  store i32 %v0_80031b8, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8003166

dec_label_pc_80031c4:                             ; preds = %dec_label_pc_80031b0
  store i32 72, i32* %r0.global-to-local, align 4
  %v1_80031c6 = load i32, i32* %r4.global-to-local, align 4
  %v2_80031c6 = add i32 %v1_80031c6, 72
  %v3_80031c6 = inttoptr i32 %v2_80031c6 to i16*
  %v4_80031c6 = load i16, i16* %v3_80031c6, align 2
  %v6_80031c6 = zext i16 %v4_80031c6 to i32
  store i32 %v6_80031c6, i32* %r0.global-to-local, align 4
  %v2_80031c8 = icmp eq i16 %v4_80031c6, 0
  br i1 %v2_80031c8, label %dec_label_pc_80031d4, label %dec_label_pc_80031cc

dec_label_pc_80031cc:                             ; preds = %dec_label_pc_80031c4
  store i32 72, i32* %r0.global-to-local, align 4
  %v4_80031ce = load i16, i16* %v3_80031c6, align 2
  %v6_80031ce = zext i16 %v4_80031ce to i32
  store i32 %v6_80031ce, i32* %r0.global-to-local, align 4
  %v1_80031d0 = load i32, i32* %r7.global-to-local, align 4
  %v6_80031d2 = sext i16 %v4_80031ce to i32
  %sext = mul i32 %v1_80031d0, 65536
  %v8_80031d2 = sdiv i32 %sext, 65536
  %v9_80031d2 = icmp sgt i32 %v6_80031d2, %v8_80031d2
  br i1 %v9_80031d2, label %dec_label_pc_80031d4, label %dec_label_pc_80031da

dec_label_pc_80031d4:                             ; preds = %dec_label_pc_80031cc, %dec_label_pc_80031c4
  store i32 100925511, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8003166

dec_label_pc_80031da:                             ; preds = %dec_label_pc_80031a4, %dec_label_pc_80031cc
  %v1_80031e2 = phi i32 [ %v1_80031dc.pre, %dec_label_pc_80031a4 ], [ %v1_80031c6, %dec_label_pc_80031cc ]
  store i32 72, i32* %r0.global-to-local, align 4
  %v2_80031dc = add i32 %v1_80031e2, 72
  %v3_80031dc = inttoptr i32 %v2_80031dc to i16*
  %v4_80031dc = load i16, i16* %v3_80031dc, align 2
  %v6_80031dc = zext i16 %v4_80031dc to i32
  store i32 %v6_80031dc, i32* %r0.global-to-local, align 4
  %v1_80031de = add i32 %v1_80031e2, 92
  %v2_80031de = inttoptr i32 %v1_80031de to i32*
  %v3_80031de = load i32, i32* %v2_80031de, align 4
  %v2_80031e0 = add i32 %v3_80031de, %v6_80031dc
  store i32 %v2_80031e0, i32* %v2_80031de, align 4
  %v3_80031e8 = load i32, i32* %r4.global-to-local, align 4
  %v4_80031e8 = add i32 %v3_80031e8, 84
  %v5_80031e8 = inttoptr i32 %v4_80031e8 to i8*
  store i8 0, i8* %v5_80031e8, align 1
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8003166

; uselistorder directives
  uselistorder i32 %v1_80031e2, { 1, 0 }
  uselistorder i32 %v0_80031b8, { 0, 2, 1 }
  uselistorder i32 %v1_8003184, { 1, 0 }
  uselistorder i32 %v1_800319010, { 2, 1, 0 }
  uselistorder i32* %r5.global-to-local, { 1, 0, 2 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 24, 17, 18, 19, 20, 21, 22, 23, 0 }
  uselistorder i32 65535, { 0, 3, 2, 4, 1 }
  uselistorder i32* null, { 1, 0, 2 }
  uselistorder i32 100925511, { 4, 3, 0, 1, 5, 6, 2 }
  uselistorder i32 74, { 0, 3, 1, 2, 4 }
  uselistorder i32 %SDO, { 0, 1, 2, 3, 4, 5, 6, 8, 7, 9 }
  uselistorder label %dec_label_pc_80031da, { 1, 0 }
  uselistorder label %dec_label_pc_80031a4, { 1, 2, 0 }
  uselistorder label %dec_label_pc_800317e, { 1, 0 }
  uselistorder label %dec_label_pc_8003178, { 1, 0 }
}

define i32 @CO_SYNC_init(i32 %SYNC, i32 %em, i32 %SDO, i8* %operatingState, i32 %COB_ID_SYNCMessage, i32 %communicationCyclePeriod, i8 %synchronousCounterOverflowValue, i32 %CANdevRx, i16 %CANdevRxIdx, i32 %CANdevTx, i16 %CANdevTxIdx) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %tmp = ptrtoint i8* %operatingState to i32
  store i32 %SYNC, i32* %r0.global-to-local, align 4
  %v18_800338c = load i32, i32* @r4, align 4
  %v21_800338c = load i32, i32* @r5, align 4
  store i32 %SYNC, i32* @r4, align 4
  store i32 %em, i32* @r5, align 4
  store i32 %tmp, i32* @r6, align 4
  store i32 %communicationCyclePeriod, i32* @r7, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_800339c = icmp eq i32 %SYNC, 0
  %v2_80033a0 = icmp eq i32 %em, 0
  %or.cond = or i1 %v2_800339c, %v2_80033a0
  br i1 %or.cond, label %dec_label_pc_80033ba, label %dec_label_pc_80033a4

dec_label_pc_80033a4:                             ; preds = %entry
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v2_80033a6 = icmp eq i32 %SDO, 0
  %v2_80033aa = icmp eq i8* %operatingState, null
  %or.cond32 = or i1 %v2_80033a6, %v2_80033aa
  br i1 %or.cond32, label %dec_label_pc_80033ba, label %dec_label_pc_80033ae

dec_label_pc_80033ae:                             ; preds = %dec_label_pc_80033a4
  store i32 %CANdevRx, i32* %r0.global-to-local, align 4
  %v2_80033b0 = icmp eq i32 %CANdevRx, 0
  br i1 %v2_80033b0, label %dec_label_pc_80033ba, label %dec_label_pc_80033b4

dec_label_pc_80033b4:                             ; preds = %dec_label_pc_80033ae
  store i32 %CANdevTx, i32* %r0.global-to-local, align 4
  %v2_80033b6 = icmp eq i32 %CANdevTx, 0
  br i1 %v2_80033b6, label %dec_label_pc_80033ba, label %dec_label_pc_80033c2

dec_label_pc_80033ba:                             ; preds = %dec_label_pc_80033b4, %dec_label_pc_80033ae, %dec_label_pc_80033a4, %entry
  store i32 0, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80033be

dec_label_pc_80033be:                             ; preds = %dec_label_pc_80033ec, %dec_label_pc_80033ba
  %storemerge9 = phi i32 [ 0, %dec_label_pc_80033ec ], [ -1, %dec_label_pc_80033ba ]
  store i32 %storemerge9, i32* %r0.global-to-local, align 4
  store i32 %v18_800338c, i32* @r4, align 4
  store i32 %v21_800338c, i32* @r5, align 4
  ret i32 %storemerge9

dec_label_pc_80033c2:                             ; preds = %dec_label_pc_80033b4
  %v2_80033c8 = udiv i32 %COB_ID_SYNCMessage, 1073741824
  %v2_80033c8.tr = trunc i32 %v2_80033c8 to i8
  %v1_80033cc = urem i8 %v2_80033c8.tr, 2
  %v3_80033cc = add i32 %SYNC, 8
  %v4_80033cc = inttoptr i32 %v3_80033cc to i8*
  store i8 %v1_80033cc, i8* %v4_80033cc, align 1
  %v3_80033ce.tr = trunc i32 %COB_ID_SYNCMessage to i16
  %v1_80033d4 = urem i16 %v3_80033ce.tr, 2048
  %v2_80033d4 = load i32, i32* @r4, align 4
  %v3_80033d4 = add i32 %v2_80033d4, 10
  %v4_80033d4 = inttoptr i32 %v3_80033d4 to i16*
  store i16 %v1_80033d4, i16* %v4_80033d4, align 2
  %v0_80033d6 = load i32, i32* @r7, align 4
  %v1_80033d6 = load i32, i32* @r4, align 4
  %v2_80033d6 = add i32 %v1_80033d6, 12
  %v3_80033d6 = inttoptr i32 %v2_80033d6 to i32*
  store i32 %v0_80033d6, i32* %v3_80033d6, align 4
  %v0_80033d8 = load i32, i32* @r7, align 4
  %v3_80033d8 = udiv i32 %v0_80033d8, 2
  %v2_80033dc = mul i32 %v3_80033d8, 3
  store i32 %v2_80033dc, i32* %r0.global-to-local, align 4
  %v1_80033de = load i32, i32* @r4, align 4
  %v2_80033de = add i32 %v1_80033de, 16
  %v3_80033de = inttoptr i32 %v2_80033de to i32*
  store i32 %v2_80033dc, i32* %v3_80033de, align 4
  %v0_80033e0 = load i32, i32* @r4, align 4
  %v1_80033e0 = add i32 %v0_80033e0, 16
  %v2_80033e0 = inttoptr i32 %v1_80033e0 to i32*
  %v3_80033e0 = load i32, i32* %v2_80033e0, align 4
  store i32 %v3_80033e0, i32* %r0.global-to-local, align 4
  %v1_80033e2 = load i32, i32* @r7, align 4
  %v3_80033e2 = icmp ult i32 %v3_80033e0, %v1_80033e2
  br i1 %v3_80033e2, label %dec_label_pc_80033e6, label %dec_label_pc_80033ec

dec_label_pc_80033e6:                             ; preds = %dec_label_pc_80033c2
  store i32 -1, i32* %r0.global-to-local, align 4
  store i32 -1, i32* %v2_80033e0, align 4
  %v2_80033ee.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80033ec

dec_label_pc_80033ec:                             ; preds = %dec_label_pc_80033c2, %dec_label_pc_80033e6
  %v2_80033ee = phi i32 [ %v0_80033e0, %dec_label_pc_80033c2 ], [ %v2_80033ee.pre, %dec_label_pc_80033e6 ]
  %v3_80033ee = add i32 %v2_80033ee, 20
  %v4_80033ee = inttoptr i32 %v3_80033ee to i8*
  store i8 %synchronousCounterOverflowValue, i8* %v4_80033ee, align 1
  %v2_80033f2 = icmp ne i8 %synchronousCounterOverflowValue, 0
  %. = zext i1 %v2_80033f2 to i32
  %v2_80033fc = load i32, i32* @r4, align 4
  %v3_80033fc = add i32 %v2_80033fc, 21
  %v4_80033fc = inttoptr i32 %v3_80033fc to i8*
  store i8 1, i8* %v4_80033fc, align 1
  store i32 0, i32* %r0.global-to-local, align 4
  %v2_8003400 = load i32, i32* @r4, align 4
  %v3_8003400 = add i32 %v2_8003400, 22
  %v4_8003400 = inttoptr i32 %v3_8003400 to i8*
  store i8 0, i8* %v4_8003400, align 1
  %v0_8003402 = load i32, i32* %r0.global-to-local, align 4
  %v1_8003402 = load i32, i32* @r4, align 4
  %v2_8003402 = add i32 %v1_8003402, 24
  %v3_8003402 = inttoptr i32 %v2_8003402 to i32*
  store i32 %v0_8003402, i32* %v3_8003402, align 4
  %v0_8003404 = load i32, i32* %r0.global-to-local, align 4
  %v1_8003404 = trunc i32 %v0_8003404 to i8
  %v2_8003404 = load i32, i32* @r4, align 4
  %v3_8003404 = add i32 %v2_8003404, 23
  %v4_8003404 = inttoptr i32 %v3_8003404 to i8*
  store i8 %v1_8003404, i8* %v4_8003404, align 1
  %v0_8003406 = load i32, i32* %r0.global-to-local, align 4
  %v1_8003406 = trunc i32 %v0_8003406 to i16
  %v2_8003406 = load i32, i32* @r4, align 4
  %v3_8003406 = add i32 %v2_8003406, 28
  %v4_8003406 = inttoptr i32 %v3_8003406 to i16*
  store i16 %v1_8003406, i16* %v4_8003406, align 2
  %v0_8003408 = load i32, i32* @r5, align 4
  %v1_8003408 = load i32, i32* @r4, align 4
  %v2_8003408 = inttoptr i32 %v1_8003408 to i32*
  store i32 %v0_8003408, i32* %v2_8003408, align 4
  %v0_800340a = load i32, i32* @r6, align 4
  %v1_800340a = load i32, i32* @r4, align 4
  %v2_800340a = add i32 %v1_800340a, 4
  %v3_800340a = inttoptr i32 %v2_800340a to i32*
  store i32 %v0_800340a, i32* %v3_800340a, align 4
  %v0_800340c = load i32, i32* %r0.global-to-local, align 4
  %v1_800340c = load i32, i32* @r4, align 4
  %v2_800340c = add i32 %v1_800340c, 32
  %v3_800340c = inttoptr i32 %v2_800340c to i32*
  store i32 %v0_800340c, i32* %v3_800340c, align 4
  %v1_8003410 = load i32, i32* @r4, align 4
  %v2_8003410 = add i32 %v1_8003410, 36
  %v3_8003410 = inttoptr i32 %v2_8003410 to i32*
  store i32 %CANdevRx, i32* %v3_8003410, align 4
  %v2_8003414 = load i32, i32* @r4, align 4
  %v3_8003414 = add i32 %v2_8003414, 40
  %v4_8003414 = inttoptr i32 %v3_8003414 to i16*
  store i16 %CANdevRxIdx, i16* %v4_8003414, align 2
  %v0_800341a = load i32, i32* @r4, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v9_8003424 = inttoptr i32 %v0_800341a to i8*
  call void @CO_OD_configure(i32 %SDO, i16 4101, i32 134223965, i8* %v9_8003424, i8* null, i8 0)
  %v0_800342c = load i32, i32* @r4, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v9_8003438 = inttoptr i32 %v0_800342c to i8*
  call void @CO_OD_configure(i32 %SDO, i16 4102, i32 134224145, i8* %v9_8003438, i8* null, i8 0)
  %v0_8003440 = load i32, i32* @r4, align 4
  store i32 %SDO, i32* %r0.global-to-local, align 4
  %v9_800344c = inttoptr i32 %v0_8003440 to i8*
  call void @CO_OD_configure(i32 %SDO, i16 4121, i32 134224397, i8* %v9_800344c, i8* null, i8 0)
  store i32 134231441, i32* %r0.global-to-local, align 4
  %v0_8003454 = load i32, i32* @r4, align 4
  %v1_800345a = add i32 %v0_8003454, 10
  %v2_800345a = inttoptr i32 %v1_800345a to i16*
  %v3_800345a = load i16, i16* %v2_800345a, align 2
  store i32 %CANdevRx, i32* %r0.global-to-local, align 4
  %v16_8003462 = inttoptr i32 %v0_8003454 to i8*
  %v18_8003462 = call i32 @CO_CANrxBufferInit(i32 %CANdevRx, i16 %CANdevRxIdx, i16 %v3_800345a, i16 2047, i8 0, i8* %v16_8003462, void (i8*, %anon_struct_31*)* inttoptr (i32 134231441 to void (i8*, %anon_struct_31*)*))
  %v1_8003468 = load i32, i32* @r4, align 4
  %v2_8003468 = add i32 %v1_8003468, 44
  %v3_8003468 = inttoptr i32 %v2_8003468 to i32*
  store i32 %CANdevTx, i32* %v3_8003468, align 4
  %v2_800346c = load i32, i32* @r4, align 4
  %v3_800346c = add i32 %v2_800346c, 52
  %v4_800346c = inttoptr i32 %v3_800346c to i16*
  store i16 %CANdevTxIdx, i16* %v4_800346c, align 2
  store i32 %., i32* %r0.global-to-local, align 4
  %v0_8003476 = load i32, i32* @r4, align 4
  %v1_8003476 = add i32 %v0_8003476, 10
  %v2_8003476 = inttoptr i32 %v1_8003476 to i16*
  %v3_8003476 = load i16, i16* %v2_8003476, align 2
  store i32 %CANdevTx, i32* %r0.global-to-local, align 4
  %v13_800347e = zext i1 %v2_80033f2 to i8
  %v15_800347e = call i32 @CO_CANtxBufferInit(i32 %CANdevTx, i16 %CANdevTxIdx, i16 %v3_8003476, i8 0, i8 %v13_800347e, i8 0)
  store i32 %v15_800347e, i32* %r0.global-to-local, align 4
  %v1_8003482 = load i32, i32* @r4, align 4
  %v2_8003482 = add i32 %v1_8003482, 48
  %v3_8003482 = inttoptr i32 %v2_8003482 to i32*
  store i32 %v15_800347e, i32* %v3_8003482, align 4
  br label %dec_label_pc_80033be

; uselistorder directives
  uselistorder i32 %v2_80033dc, { 1, 0 }
  uselistorder i32* %r0.global-to-local, { 4, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 19, 18, 20, 21, 22, 0 }
  uselistorder i32 (i32, i16, i16, i16, i8, i8*, void (i8*, %anon_struct_31*)*)* @CO_CANrxBufferInit, { 4, 3, 2, 1, 0 }
  uselistorder i32 134231441, { 1, 0 }
  uselistorder i32 %CANdevTx, { 4, 3, 2, 1, 0 }
  uselistorder i32 %CANdevRx, { 4, 3, 2, 1, 0 }
  uselistorder i32 %COB_ID_SYNCMessage, { 1, 0 }
  uselistorder i32 %SDO, { 1, 0, 3, 2, 5, 4, 7, 6 }
  uselistorder label %dec_label_pc_80033ec, { 1, 0 }
}

define void @CO_SYNC_initCallback(i32 %SYNC, void (i8)* %cbSync) local_unnamed_addr {
entry:
  %v2_80034a0 = icmp eq i32 %SYNC, 0
  br i1 %v2_80034a0, label %dec_label_pc_80034a6, label %dec_label_pc_80034a4

dec_label_pc_80034a4:                             ; preds = %entry
  %tmp = ptrtoint void (i8)* %cbSync to i32
  %v3_80034a4 = add i32 %SYNC, 32
  %v4_80034a4 = inttoptr i32 %v3_80034a4 to i32*
  store i32 %tmp, i32* %v4_80034a4, align 4
  br label %dec_label_pc_80034a6

dec_label_pc_80034a6:                             ; preds = %entry, %dec_label_pc_80034a4
  ret void

; uselistorder directives
  uselistorder label %dec_label_pc_80034a6, { 1, 0 }
}

define i32 @CO_TPDO_init(i32 %TPDO, i32 %em, i32 %SDO, i8* %operatingState, i8 %nodeId, i16 %defaultCOB_ID, i8 %restrictionFlags, i32 %TPDOCommPar, i32 %TPDOMapPar, i16 %idx_TPDOCommPar, i16 %idx_TPDOMapPar, i32 %CANdevTx, i16 %CANdevTxIdx) local_unnamed_addr {
entry:
  %tmp = ptrtoint i8* %operatingState to i32
  %v18_80035f4 = load i32, i32* @r4, align 4
  %v21_80035f4 = load i32, i32* @r5, align 4
  %v27_80035f4 = load i32, i32* @r7, align 4
  store i32 %TPDO, i32* @r4, align 4
  store i32 %em, i32* @r7, align 4
  store i32 %SDO, i32* @r6, align 4
  store i32 %TPDOCommPar, i32* @r5, align 4
  %v2_8003600 = icmp eq i32 %TPDO, 0
  %v2_8003604 = icmp eq i32 %em, 0
  %or.cond = or i1 %v2_8003600, %v2_8003604
  %v2_8003608 = icmp eq i32 %SDO, 0
  %or.cond36 = or i1 %or.cond, %v2_8003608
  br i1 %or.cond36, label %dec_label_pc_8003622, label %dec_label_pc_800360c

dec_label_pc_800360c:                             ; preds = %entry
  %v2_800360e = icmp eq i8* %operatingState, null
  %v2_8003612 = icmp eq i32 %TPDOCommPar, 0
  %or.cond37 = or i1 %v2_800360e, %v2_8003612
  br i1 %or.cond37, label %dec_label_pc_8003622, label %dec_label_pc_8003616

dec_label_pc_8003616:                             ; preds = %dec_label_pc_800360c
  %v2_8003618 = icmp eq i32 %TPDOMapPar, 0
  br i1 %v2_8003618, label %dec_label_pc_8003622, label %dec_label_pc_800361c

dec_label_pc_800361c:                             ; preds = %dec_label_pc_8003616
  %v2_800361e = icmp eq i32 %CANdevTx, 0
  br i1 %v2_800361e, label %dec_label_pc_8003622, label %dec_label_pc_800362a

dec_label_pc_8003622:                             ; preds = %dec_label_pc_800361c, %dec_label_pc_8003616, %dec_label_pc_800360c, %entry
  br label %dec_label_pc_8003626

dec_label_pc_8003626:                             ; preds = %dec_label_pc_80036c2, %dec_label_pc_80036bc, %dec_label_pc_8003622
  %storemerge13 = phi i32 [ -1, %dec_label_pc_8003622 ], [ 0, %dec_label_pc_80036bc ], [ 0, %dec_label_pc_80036c2 ]
  store i32 %v18_80035f4, i32* @r4, align 4
  store i32 %v21_80035f4, i32* @r5, align 4
  store i32 %v27_80035f4, i32* @r7, align 4
  ret i32 %storemerge13

dec_label_pc_800362a:                             ; preds = %dec_label_pc_800361c
  %v2_800362a = inttoptr i32 %TPDO to i32*
  store i32 %em, i32* %v2_800362a, align 4
  %v0_800362c = load i32, i32* @r6, align 4
  %v1_800362c = load i32, i32* @r4, align 4
  %v2_800362c = add i32 %v1_800362c, 4
  %v3_800362c = inttoptr i32 %v2_800362c to i32*
  store i32 %v0_800362c, i32* %v3_800362c, align 4
  %v0_800362e = load i32, i32* @r5, align 4
  %v1_800362e = load i32, i32* @r4, align 4
  %v2_800362e = add i32 %v1_800362e, 8
  %v3_800362e = inttoptr i32 %v2_800362e to i32*
  store i32 %v0_800362e, i32* %v3_800362e, align 4
  %v1_8003632 = load i32, i32* @r4, align 4
  %v2_8003632 = add i32 %v1_8003632, 12
  %v3_8003632 = inttoptr i32 %v2_8003632 to i32*
  store i32 %TPDOMapPar, i32* %v3_8003632, align 4
  %v1_8003636 = load i32, i32* @r4, align 4
  %v2_8003636 = add i32 %v1_8003636, 16
  %v3_8003636 = inttoptr i32 %v2_8003636 to i32*
  store i32 %tmp, i32* %v3_8003636, align 4
  %v2_800363a = load i32, i32* @r4, align 4
  %v3_800363a = add i32 %v2_800363a, 20
  %v4_800363a = inttoptr i32 %v3_800363a to i8*
  store i8 %nodeId, i8* %v4_800363a, align 1
  %v2_800363e = load i32, i32* @r4, align 4
  %v3_800363e = add i32 %v2_800363e, 22
  %v4_800363e = inttoptr i32 %v3_800363e to i16*
  store i16 %defaultCOB_ID, i16* %v4_800363e, align 2
  %v2_8003642 = load i32, i32* @r4, align 4
  %v3_8003642 = add i32 %v2_8003642, 24
  %v4_8003642 = inttoptr i32 %v3_8003642 to i8*
  store i8 %restrictionFlags, i8* %v4_8003642, align 1
  %v0_8003648 = load i32, i32* @r4, align 4
  %v0_800364e = load i32, i32* @r6, align 4
  %v15_8003652 = inttoptr i32 %v0_8003648 to i8*
  call void @CO_OD_configure(i32 %v0_800364e, i16 %idx_TPDOCommPar, i32 134224917, i8* %v15_8003652, i8* null, i8 0)
  %v0_800365a = load i32, i32* @r4, align 4
  %v0_8003660 = load i32, i32* @r6, align 4
  %v10_8003664 = inttoptr i32 %v0_800365a to i8*
  call void @CO_OD_configure(i32 %v0_8003660, i16 %idx_TPDOMapPar, i32 134225281, i8* %v10_8003664, i8* null, i8 0)
  %v1_800366a = load i32, i32* @r4, align 4
  %v2_800366a = add i32 %v1_800366a, 72
  %v3_800366a = inttoptr i32 %v2_800366a to i32*
  store i32 %CANdevTx, i32* %v3_800366a, align 4
  %v3_8003670 = load i32, i32* @r4, align 4
  %v4_8003670 = add i32 %v3_8003670, 80
  %v5_8003670 = inttoptr i32 %v4_8003670 to i16*
  store i16 %CANdevTxIdx, i16* %v5_8003670, align 2
  %v3_8003676 = load i32, i32* @r4, align 4
  %v4_8003676 = add i32 %v3_8003676, 61
  %v5_8003676 = inttoptr i32 %v4_8003676 to i8*
  store i8 -1, i8* %v5_8003676, align 1
  %v1_800367a = load i32, i32* @r4, align 4
  %v2_800367a = add i32 %v1_800367a, 64
  %v3_800367a = inttoptr i32 %v2_800367a to i32*
  store i32 0, i32* %v3_800367a, align 4
  %v0_800367c = load i32, i32* @r5, align 4
  %v1_800367c = add i32 %v0_800367c, 14
  %v2_800367c = inttoptr i32 %v1_800367c to i16*
  %v3_800367c = load i16, i16* %v2_800367c, align 2
  %v4_800367c = zext i16 %v3_800367c to i32
  %v2_8003682 = mul nuw nsw i32 %v4_800367c, 1000
  %v1_8003684 = load i32, i32* @r4, align 4
  %v2_8003684 = add i32 %v1_8003684, 68
  %v3_8003684 = inttoptr i32 %v2_8003684 to i32*
  store i32 %v2_8003682, i32* %v3_8003684, align 4
  %v0_8003686 = load i32, i32* @r5, align 4
  %v1_8003686 = add i32 %v0_8003686, 8
  %v2_8003686 = inttoptr i32 %v1_8003686 to i8*
  %v3_8003686 = load i8, i8* %v2_8003686, align 1
  %v5_800368a = icmp ult i8 %v3_8003686, -2
  br i1 %v5_800368a, label %dec_label_pc_8003690, label %dec_label_pc_800368c

dec_label_pc_800368c:                             ; preds = %dec_label_pc_800362a
  %v2_800368e = load i32, i32* @r4, align 4
  %v3_800368e = add i32 %v2_800368e, 27
  %v4_800368e = inttoptr i32 %v3_800368e to i8*
  store i8 1, i8* %v4_800368e, align 1
  br label %dec_label_pc_8003690

dec_label_pc_8003690:                             ; preds = %dec_label_pc_800362a, %dec_label_pc_800368c
  %v1_8003692 = inttoptr i32 %TPDOMapPar to i8*
  %v2_8003692 = load i8, i8* %v1_8003692, align 1
  %v0_8003694 = load i32, i32* @r4, align 4
  %v4_8003696 = call i32 @CO_TPDOconfigMap(i32 %v0_8003694, i8 %v2_8003692)
  %v0_800369a = load i32, i32* @r5, align 4
  %v1_800369a = add i32 %v0_800369a, 8
  %v2_800369a = inttoptr i32 %v1_800369a to i8*
  %v3_800369a = load i8, i8* %v2_800369a, align 1
  %v8_800369e = icmp ult i8 %v3_800369a, -15
  %v1_80036a6 = zext i1 %v8_800369e to i8
  %v0_80036a8 = load i32, i32* @r4, align 4
  %v1_80036aa = add i32 %v0_800369a, 4
  %v2_80036aa = inttoptr i32 %v1_80036aa to i32*
  %v3_80036aa = load i32, i32* %v2_80036aa, align 4
  call void @CO_TPDOconfigCom(i32 %v0_80036a8, i32 %v3_80036aa, i8 %v1_80036a6)
  %v0_80036b0 = load i32, i32* @r5, align 4
  %v1_80036b0 = add i32 %v0_80036b0, 8
  %v2_80036b0 = inttoptr i32 %v1_80036b0 to i8*
  %v3_80036b0 = load i8, i8* %v2_80036b0, align 1
  %v7_80036b4 = icmp ult i8 %v3_80036b0, -15
  br i1 %v7_80036b4, label %dec_label_pc_80036bc, label %dec_label_pc_80036b6

dec_label_pc_80036b6:                             ; preds = %dec_label_pc_8003690
  %v3_80036b6 = load i8, i8* %v2_80036b0, align 1
  %v5_80036ba = icmp ult i8 %v3_80036b6, -2
  br i1 %v5_80036ba, label %dec_label_pc_80036c2, label %dec_label_pc_80036bc

dec_label_pc_80036bc:                             ; preds = %dec_label_pc_80036b6, %dec_label_pc_8003690
  %v1_80036bc = add i32 %v0_80036b0, 16
  %v2_80036bc = inttoptr i32 %v1_80036bc to i8*
  %v3_80036bc = load i8, i8* %v2_80036bc, align 1
  %v7_80036c0 = icmp ult i8 %v3_80036bc, -15
  br i1 %v7_80036c0, label %dec_label_pc_8003626, label %dec_label_pc_80036c2

dec_label_pc_80036c2:                             ; preds = %dec_label_pc_80036bc, %dec_label_pc_80036b6
  %v2_80036c4 = load i32, i32* @r4, align 4
  %v3_80036c4 = add i32 %v2_80036c4, 25
  %v4_80036c4 = inttoptr i32 %v3_80036c4 to i8*
  store i8 0, i8* %v4_80036c4, align 1
  br label %dec_label_pc_8003626

; uselistorder directives
  uselistorder i8 -15, { 2, 3, 0, 1 }
  uselistorder void (i32, i16, i32, i8*, i8*, i8)* @CO_OD_configure, { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i8* null, { 3, 4, 14, 5, 6, 7, 0, 8, 9, 10, 1, 2, 15, 11, 12, 13, 16, 17, 18 }
  uselistorder i32 %CANdevTx, { 1, 0 }
  uselistorder i32 %TPDOMapPar, { 2, 1, 0 }
  uselistorder i32 %em, { 1, 0, 2 }
  uselistorder label %dec_label_pc_8003690, { 1, 0 }
}

define void @CO_TPDOconfigCom(i32 %TPDO, i32 %COB_IDUsedByTPDO, i8 %syncFlag) local_unnamed_addr {
entry:
  %tmp = sext i8 %syncFlag to i32
  %v15_80037ec = load i32, i32* @r4, align 4
  %v18_80037ec = load i32, i32* @r5, align 4
  store i32 %TPDO, i32* @r4, align 4
  store i32 %tmp, i32* @r7, align 4
  %v1_80037f4 = urem i32 %COB_IDUsedByTPDO, 65536
  store i32 %v1_80037f4, i32* @r5, align 4
  %v2_80037f8 = and i32 %COB_IDUsedByTPDO, -1073743872
  %v4_80037f8 = icmp eq i32 %v2_80037f8, 0
  br i1 %v4_80037f8, label %dec_label_pc_80037fe, label %dec_label_pc_800381a

dec_label_pc_80037fe:                             ; preds = %entry
  %v1_80037fe = add i32 %TPDO, 26
  %v2_80037fe = inttoptr i32 %v1_80037fe to i8*
  %v3_80037fe = load i8, i8* %v2_80037fe, align 1
  %v2_8003800 = icmp eq i8 %v3_80037fe, 0
  %v2_8003804 = icmp eq i32 %v1_80037f4, 0
  %or.cond = or i1 %v2_8003804, %v2_8003800
  br i1 %or.cond, label %dec_label_pc_800381a, label %dec_label_pc_8003808

dec_label_pc_8003808:                             ; preds = %dec_label_pc_80037fe
  %v1_8003808 = add i32 %TPDO, 22
  %v2_8003808 = inttoptr i32 %v1_8003808 to i16*
  %v3_8003808 = load i16, i16* %v2_8003808, align 2
  %v4_8003808 = zext i16 %v3_8003808 to i32
  %v9_800380a = icmp eq i32 %v4_8003808, %v1_80037f4
  br i1 %v9_800380a, label %dec_label_pc_800380e, label %dec_label_pc_8003814

dec_label_pc_800380e:                             ; preds = %dec_label_pc_8003808
  %v1_800380e = add i32 %TPDO, 20
  %v2_800380e = inttoptr i32 %v1_800380e to i8*
  %v3_800380e = load i8, i8* %v2_800380e, align 1
  %v4_800380e = zext i8 %v3_800380e to i32
  %fold = add i32 %v4_800380e, %COB_IDUsedByTPDO
  %v1_8003812 = urem i32 %fold, 65536
  store i32 %v1_8003812, i32* @r5, align 4
  br label %dec_label_pc_8003814

dec_label_pc_8003814:                             ; preds = %dec_label_pc_8003808, %dec_label_pc_800380e
  %v3_8003816 = add i32 %TPDO, 25
  %v4_8003816 = inttoptr i32 %v3_8003816 to i8*
  store i8 1, i8* %v4_8003816, align 1
  br label %dec_label_pc_8003820

dec_label_pc_800381a:                             ; preds = %entry, %dec_label_pc_80037fe
  store i32 0, i32* @r5, align 4
  %v3_800381e = add i32 %TPDO, 25
  %v4_800381e = inttoptr i32 %v3_800381e to i8*
  store i8 0, i8* %v4_800381e, align 1
  br label %dec_label_pc_8003820

dec_label_pc_8003820:                             ; preds = %dec_label_pc_8003814, %dec_label_pc_800381a
  %v0_8003820 = load i32, i32* @r4, align 4
  %v1_8003820 = add i32 %v0_8003820, 26
  %v2_8003820 = inttoptr i32 %v1_8003820 to i8*
  %v3_8003820 = load i8, i8* %v2_8003820, align 1
  %v0_8003824 = load i32, i32* @r7, align 4
  %v5_8003824 = trunc i32 %v0_8003824 to i8
  %v2_8003828 = add i32 %v0_8003820, 80
  %v3_8003828 = inttoptr i32 %v2_8003828 to i16*
  %v4_8003828 = load i16, i16* %v3_8003828, align 2
  %v0_800382c = load i32, i32* @r5, align 4
  %v1_800382c = trunc i32 %v0_800382c to i16
  %v1_800382e = add i32 %v0_8003820, 72
  %v2_800382e = inttoptr i32 %v1_800382e to i32*
  %v3_800382e = load i32, i32* %v2_800382e, align 4
  %v15_8003830 = call i32 @CO_CANtxBufferInit(i32 %v3_800382e, i16 %v4_8003828, i16 %v1_800382c, i8 0, i8 %v3_8003820, i8 %v5_8003824)
  %v1_8003834 = load i32, i32* @r4, align 4
  %v2_8003834 = add i32 %v1_8003834, 76
  %v3_8003834 = inttoptr i32 %v2_8003834 to i32*
  store i32 %v15_8003830, i32* %v3_8003834, align 4
  %v0_8003836 = load i32, i32* @r4, align 4
  %v1_8003836 = add i32 %v0_8003836, 76
  %v2_8003836 = inttoptr i32 %v1_8003836 to i32*
  %v3_8003836 = load i32, i32* %v2_8003836, align 4
  %v2_8003838 = icmp eq i32 %v3_8003836, 0
  br i1 %v2_8003838, label %dec_label_pc_800383c, label %dec_label_pc_800383e

dec_label_pc_800383c:                             ; preds = %dec_label_pc_8003820
  %v3_800383c = add i32 %v0_8003836, 25
  %v4_800383c = inttoptr i32 %v3_800383c to i8*
  store i8 0, i8* %v4_800383c, align 1
  br label %dec_label_pc_800383e

dec_label_pc_800383e:                             ; preds = %dec_label_pc_8003820, %dec_label_pc_800383c
  store i32 %v15_80037ec, i32* @r4, align 4
  store i32 %v18_80037ec, i32* @r5, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v1_80037f4, { 1, 2, 0 }
  uselistorder i32 76, { 3, 4, 2, 0, 1 }
  uselistorder i32 (i32, i16, i16, i8, i8, i8)* @CO_CANtxBufferInit, { 2, 4, 3, 1, 0 }
  uselistorder i32 25, { 1, 2, 3, 0, 4, 5, 6, 7 }
  uselistorder i32 22, { 4, 1, 2, 0, 5, 3, 6, 7, 8, 9 }
  uselistorder i32 %COB_IDUsedByTPDO, { 1, 2, 0 }
  uselistorder label %dec_label_pc_800383e, { 1, 0 }
  uselistorder label %dec_label_pc_8003820, { 1, 0 }
  uselistorder label %dec_label_pc_800381a, { 1, 0 }
  uselistorder label %dec_label_pc_8003814, { 1, 0 }
}

define i32 @CO_TPDOconfigMap(i32 %TPDO, i8 %noOfMappedObjects) local_unnamed_addr {
entry:
  %tmp = sext i8 %noOfMappedObjects to i32
  %pData_-36 = alloca i8*, align 4
  %length_-24 = alloca i8, align 1
  %MBvar_-44 = alloca i8, align 1
  %v3_8003844 = load i32, i32* @r4, align 4
  %v6_8003844 = load i32, i32* @r5, align 4
  %v9_8003844 = load i32, i32* @r6, align 4
  %v12_8003844 = load i32, i32* @r7, align 4
  store i32 %TPDO, i32* @r4, align 4
  store i32 %tmp, i32* @r6, align 4
  store i8 0, i8* %length_-24, align 1
  %v1_8003852 = add i32 %TPDO, 12
  %v2_8003852 = inttoptr i32 %v1_8003852 to i32*
  %v3_8003852 = load i32, i32* %v2_8003852, align 4
  %v4_800385c = add i32 %TPDO, 60
  %v5_800385c = inttoptr i32 %v4_800385c to i8*
  store i8 0, i8* %v5_800385c, align 1
  %v0_800385e = load i32, i32* @r6, align 4
  store i32 %v0_800385e, i32* @r7, align 4
  %v5_80038d411 = icmp sgt i32 %v0_800385e, 0
  br i1 %v5_80038d411, label %dec_label_pc_8003862.lr.ph, label %dec_label_pc_80038d6

dec_label_pc_8003862.lr.ph:                       ; preds = %entry
  %v2_800387a = ptrtoint i8* %length_-24 to i32
  %tmp33 = urem i32 %v2_800387a, 256
  %v17_800388c = inttoptr i32 %tmp33 to i8*
  br label %dec_label_pc_8003862

dec_label_pc_8003862:                             ; preds = %dec_label_pc_8003862.lr.ph, %dec_label_pc_80038ce
  %pMap_-32.0.in.in = phi i32 [ %v3_8003852, %dec_label_pc_8003862.lr.ph ], [ %pMap_-32.0.in, %dec_label_pc_80038ce ]
  %pMap_-32.0.in = add i32 %pMap_-32.0.in.in, 4
  %pMap_-32.0 = inttoptr i32 %pMap_-32.0.in to i32*
  %v3_8003864 = load i8, i8* %length_-24, align 1
  %v4_8003864 = zext i8 %v3_8003864 to i32
  %v2_800386a = load i32, i32* %pMap_-32.0, align 4
  %v0_8003876 = load i32, i32* @r4, align 4
  %v1_8003878 = add i32 %v0_8003876, 60
  %v5_8003880 = inttoptr i32 %v1_8003878 to i8*
  %v1_8003882 = add i32 %v0_8003876, 4
  %v2_8003882 = inttoptr i32 %v1_8003882 to i32*
  %v3_8003882 = load i32, i32* %v2_8003882, align 4
  %v20_800388c = call i32 @CO_PDOfindMap(i32 %v3_8003882, i32 %v2_800386a, i8 1, i8** nonnull %pData_-36, i8* %v17_800388c, i8* %v5_8003880, i8* nonnull %MBvar_-44)
  %v2_8003894 = icmp eq i32 %v20_800388c, 0
  br i1 %v2_8003894, label %dec_label_pc_80038c6.preheader, label %dec_label_pc_8003898

dec_label_pc_80038c6.preheader:                   ; preds = %dec_label_pc_8003862
  store i32 %v4_8003864, i32* @r5, align 4
  %v3_80038c85 = load i8, i8* %length_-24, align 1
  %v5_80038cc9 = icmp ult i8 %v3_8003864, %v3_80038c85
  br i1 %v5_80038cc9, label %dec_label_pc_80038b2, label %dec_label_pc_80038ce

dec_label_pc_8003898:                             ; preds = %dec_label_pc_8003862
  store i8 0, i8* %length_-24, align 1
  %v0_800389c = load i32, i32* @r4, align 4
  %v1_800389c = inttoptr i32 %v0_800389c to i32*
  %v2_800389c = load i32, i32* %v1_800389c, align 4
  call void @CO_errorReport(i32 %v2_800389c, i8 26, i16 -32256, i32 %v2_800386a)
  br label %dec_label_pc_80038d6

dec_label_pc_80038b2:                             ; preds = %dec_label_pc_80038c6.preheader, %dec_label_pc_80038b2
  %v0_80038b2 = phi i32 [ %v1_80038c4, %dec_label_pc_80038b2 ], [ %v4_8003864, %dec_label_pc_80038c6.preheader ]
  %v3_80038b2 = mul i32 %v0_80038b2, 4
  %v0_80038b4 = load i32, i32* @r4, align 4
  %v3_80038b8 = load i8*, i8** %pData_-36, align 4
  %v4_80038b8 = ptrtoint i8* %v3_80038b8 to i32
  %v1_80038b6 = add i32 %v3_80038b2, 28
  %v3_80038ba = add i32 %v1_80038b6, %v0_80038b4
  %v4_80038ba = inttoptr i32 %v3_80038ba to i32*
  store i32 %v4_80038b8, i32* %v4_80038ba, align 4
  %v3_80038bc = load i8*, i8** %pData_-36, align 4
  %v4_80038bc = ptrtoint i8* %v3_80038bc to i32
  %v1_80038be = add i32 %v4_80038bc, 1
  %v4_80038c0 = inttoptr i32 %v1_80038be to i8*
  store i8* %v4_80038c0, i8** %pData_-36, align 4
  %v0_80038c2 = load i32, i32* @r5, align 4
  %v1_80038c2 = add i32 %v0_80038c2, 1
  %v1_80038c4 = call i32 @__asm_sxth.i32(i32 %v1_80038c2)
  store i32 %v1_80038c4, i32* @r5, align 4
  %v3_80038c8 = load i8, i8* %length_-24, align 1
  %v4_80038c8 = zext i8 %v3_80038c8 to i32
  %v5_80038cc = icmp slt i32 %v1_80038c4, %v4_80038c8
  br i1 %v5_80038cc, label %dec_label_pc_80038b2, label %dec_label_pc_80038ce

dec_label_pc_80038ce:                             ; preds = %dec_label_pc_80038b2, %dec_label_pc_80038c6.preheader
  %v0_80038ce = load i32, i32* @r7, align 4
  %v1_80038ce = add i32 %v0_80038ce, -1
  %v1_80038d0 = call i32 @__asm_sxth.i32(i32 %v1_80038ce)
  store i32 %v1_80038d0, i32* @r7, align 4
  %v5_80038d4 = icmp sgt i32 %v1_80038d0, 0
  br i1 %v5_80038d4, label %dec_label_pc_8003862, label %dec_label_pc_80038d6

dec_label_pc_80038d6:                             ; preds = %dec_label_pc_80038ce, %entry, %dec_label_pc_8003898
  %ret_-28.1 = phi i32 [ %v20_800388c, %dec_label_pc_8003898 ], [ 0, %entry ], [ 0, %dec_label_pc_80038ce ]
  %v3_80038da = load i8, i8* %length_-24, align 1
  %v2_80038dc = load i32, i32* @r4, align 4
  %v3_80038dc = add i32 %v2_80038dc, 26
  %v4_80038dc = inttoptr i32 %v3_80038dc to i8*
  store i8 %v3_80038da, i8* %v4_80038dc, align 1
  store i32 %v3_8003844, i32* @r4, align 4
  store i32 %v6_8003844, i32* @r5, align 4
  store i32 %v9_8003844, i32* @r6, align 4
  store i32 %v12_8003844, i32* @r7, align 4
  ret i32 %ret_-28.1

; uselistorder directives
  uselistorder i32 %v1_80038d0, { 1, 0 }
  uselistorder i32 %v1_80038c4, { 2, 1, 0 }
  uselistorder i8* %length_-24, { 1, 2, 3, 0, 4, 6, 5 }
  uselistorder i8** %pData_-36, { 1, 2, 3, 0 }
  uselistorder void (i32, i8, i16, i32)* @CO_errorReport, { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i32 (i32, i32, i8, i8**, i8*, i8*, i8*)* @CO_PDOfindMap, { 1, 0 }
  uselistorder label %dec_label_pc_80038d6, { 0, 2, 1 }
  uselistorder label %dec_label_pc_80038b2, { 1, 0 }
  uselistorder label %dec_label_pc_8003862, { 1, 0 }
}

define void @CO_delete(i32 %CANbaseAddress) local_unnamed_addr {
entry:
  store i32 %CANbaseAddress, i32* @r4, align 4
  call void @CO_CANsetConfigurationMode(i32 %CANbaseAddress)
  %v2_8003a6c = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003a6e = inttoptr i32 %v2_8003a6c to i32*
  %v2_8003a6e = load i32, i32* %v1_8003a6e, align 4
  call void @CO_CANmodule_disable(i32 %v2_8003a6e)
  ret void

; uselistorder directives
  uselistorder i32 %CANbaseAddress, { 1, 0 }
}

define void @CO_errorReport(i32 %em, i8 %errorBit, i16 %errorCode, i32 %infoCode) local_unnamed_addr {
entry:
  %tmp7 = sext i8 %errorBit to i32
  %stack_var_-48 = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %bufCopy_-52 = alloca [8 x i8], align 1
  %stack_var_-28 = alloca i16, align 2
  store i16 %errorCode, i16* %stack_var_-28, align 2
  store i32 %infoCode, i32* %stack_var_-24, align 4
  %v21_8003a7c = load i32, i32* @r4, align 4
  store i32 %em, i32* @r4, align 4
  %v3_8003a84 = sdiv i32 %tmp7, 8
  %v3_8003a88 = urem i32 %tmp7, 8
  %v6_8003a8c = shl i32 1, %v3_8003a88
  %v2_8003a98 = icmp eq i32 %em, 0
  br i1 %v2_8003a98, label %dec_label_pc_8003a9c, label %dec_label_pc_8003aa2

dec_label_pc_8003a9c:                             ; preds = %entry
  br label %dec_label_pc_8003ac4.thread

dec_label_pc_8003aa2:                             ; preds = %entry
  %v1_8003aa2 = add i32 %em, 4
  %v2_8003aa2 = inttoptr i32 %v1_8003aa2 to i8*
  %v3_8003aa2 = load i8, i8* %v2_8003aa2, align 1
  %v4_8003aa2 = zext i8 %v3_8003aa2 to i32
  %v8_8003aa6 = icmp sgt i32 %v4_8003aa2, %v3_8003a84
  br i1 %v8_8003aa6, label %dec_label_pc_8003ab2, label %dec_label_pc_8003aa8

dec_label_pc_8003aa8:                             ; preds = %dec_label_pc_8003aa2
  %v4_8003aaa = add i32 %em, 101
  %v5_8003aaa = inttoptr i32 %v4_8003aaa to i8*
  store i8 %errorBit, i8* %v5_8003aaa, align 1
  br label %dec_label_pc_8003ac4.thread

dec_label_pc_8003ab2:                             ; preds = %dec_label_pc_8003aa2
  %v1_8003ab2 = inttoptr i32 %em to i32*
  %v2_8003ab2 = load i32, i32* %v1_8003ab2, align 4
  %v2_8003ab4 = add i32 %v2_8003ab2, %v3_8003a84
  %v1_8003ab6 = inttoptr i32 %v2_8003ab4 to i8*
  %v2_8003ab6 = load i8, i8* %v1_8003ab6, align 1
  %v3_8003ab6 = zext i8 %v2_8003ab6 to i32
  %v2_8003aba = and i32 %v3_8003ab6, %v6_8003a8c
  %v4_8003aba = icmp eq i32 %v2_8003aba, 0
  br i1 %v4_8003aba, label %dec_label_pc_8003aca, label %dec_label_pc_8003ac0

dec_label_pc_8003ac0:                             ; preds = %dec_label_pc_8003ab2
  br label %dec_label_pc_8003ac4.thread

dec_label_pc_8003ac4.thread:                      ; preds = %dec_label_pc_8003a9c, %dec_label_pc_8003ac0, %dec_label_pc_8003aa8
  br label %dec_label_pc_8003b34

dec_label_pc_8003aca:                             ; preds = %dec_label_pc_8003ab2
  %v2_8003aca = icmp eq i8 %errorBit, 0
  br i1 %v2_8003aca, label %dec_label_pc_8003ad6, label %dec_label_pc_8003ace

dec_label_pc_8003ace:                             ; preds = %dec_label_pc_8003aca
  %v2_8003ace = load i8, i8* %v1_8003ab6, align 1
  %v3_8003ace = zext i8 %v2_8003ace to i32
  %v2_8003ad2 = or i32 %v3_8003ace, %v6_8003a8c
  %v1_8003ad4 = trunc i32 %v2_8003ad2 to i8
  store i8 %v1_8003ad4, i8* %v1_8003ab6, align 1
  %v1_8003ad8.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8003ad6

dec_label_pc_8003ad6:                             ; preds = %dec_label_pc_8003aca, %dec_label_pc_8003ace
  %v3_8003ae2 = phi i32 [ %em, %dec_label_pc_8003aca ], [ %v1_8003ad8.pre, %dec_label_pc_8003ace ]
  %v2_8003ad8 = add i32 %v3_8003ae2, 100
  %v3_8003ad8 = inttoptr i32 %v2_8003ad8 to i8*
  %v4_8003ad8 = load i8, i8* %v3_8003ad8, align 1
  %v2_8003ada = icmp eq i8 %v4_8003ad8, 0
  br i1 %v2_8003ada, label %dec_label_pc_8003ae6, label %dec_label_pc_8003ade

dec_label_pc_8003ade:                             ; preds = %dec_label_pc_8003ad6
  store i8 2, i8* %v3_8003ad8, align 1
  br label %dec_label_pc_8003b34

dec_label_pc_8003ae6:                             ; preds = %dec_label_pc_8003ad6
  %tmp25 = bitcast i16* %stack_var_-28 to i8*
  %tmp26 = getelementptr inbounds [8 x i8], [8 x i8]* %bufCopy_-52, i32 0, i32 0
  call void @CO_memcpySwap2(i8* %tmp26, i8* %tmp25)
  %tmp27 = bitcast i32* %stack_var_-24 to i8*
  %tmp28 = bitcast i32* %stack_var_-48 to i8*
  call void @CO_memcpySwap4(i8* %tmp28, i8* %tmp27)
  %v0_8003b02 = load i32, i32* @r4, align 4
  %v1_8003b02 = add i32 %v0_8003b02, 92
  %v2_8003b02 = inttoptr i32 %v1_8003b02 to i32*
  %v3_8003b02 = load i32, i32* %v2_8003b02, align 4
  %v4_8003b02 = inttoptr i32 %v3_8003b02 to i8*
  call void @CO_memcpy(i8* %v4_8003b02, i8* %tmp26, i16 8)
  %v0_8003b08 = load i32, i32* @r4, align 4
  %v1_8003b08 = add i32 %v0_8003b08, 92
  %v2_8003b08 = inttoptr i32 %v1_8003b08 to i32*
  %v3_8003b08 = load i32, i32* %v2_8003b08, align 4
  %v1_8003b0a = add i32 %v3_8003b08, 8
  store i32 %v1_8003b0a, i32* %v2_8003b08, align 4
  %v0_8003b0e = load i32, i32* @r4, align 4
  %v1_8003b0e = add i32 %v0_8003b0e, 88
  %v2_8003b0e = inttoptr i32 %v1_8003b0e to i32*
  %v3_8003b0e = load i32, i32* %v2_8003b0e, align 4
  %v1_8003b10 = add i32 %v0_8003b0e, 92
  %v2_8003b10 = inttoptr i32 %v1_8003b10 to i32*
  %v3_8003b10 = load i32, i32* %v2_8003b10, align 4
  %v9_8003b12 = icmp eq i32 %v3_8003b10, %v3_8003b0e
  br i1 %v9_8003b12, label %dec_label_pc_8003b16, label %dec_label_pc_8003b1a

dec_label_pc_8003b16:                             ; preds = %dec_label_pc_8003ae6
  %v1_8003b16 = add i32 %v0_8003b0e, 5
  store i32 %v1_8003b16, i32* %v2_8003b10, align 4
  %v0_8003b1a.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8003b1a

dec_label_pc_8003b1a:                             ; preds = %dec_label_pc_8003ae6, %dec_label_pc_8003b16
  %v3_8003b26 = phi i32 [ %v0_8003b0e, %dec_label_pc_8003ae6 ], [ %v0_8003b1a.pre, %dec_label_pc_8003b16 ]
  %v1_8003b1a = add i32 %v3_8003b26, 96
  %v2_8003b1a = inttoptr i32 %v1_8003b1a to i32*
  %v3_8003b1a = load i32, i32* %v2_8003b1a, align 4
  %v1_8003b1c = add i32 %v3_8003b26, 92
  %v2_8003b1c = inttoptr i32 %v1_8003b1c to i32*
  %v3_8003b1c = load i32, i32* %v2_8003b1c, align 4
  %v9_8003b1e = icmp eq i32 %v3_8003b1c, %v3_8003b1a
  br i1 %v9_8003b1e, label %dec_label_pc_8003b22, label %dec_label_pc_8003b28

dec_label_pc_8003b22:                             ; preds = %dec_label_pc_8003b1a
  %v4_8003b26 = add i32 %v3_8003b26, 100
  %v5_8003b26 = inttoptr i32 %v4_8003b26 to i8*
  store i8 1, i8* %v5_8003b26, align 1
  %v0_8003b28.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8003b28

dec_label_pc_8003b28:                             ; preds = %dec_label_pc_8003b1a, %dec_label_pc_8003b22
  %v0_8003b2e = phi i32 [ %v3_8003b26, %dec_label_pc_8003b1a ], [ %v0_8003b28.pre, %dec_label_pc_8003b22 ]
  %v1_8003b28 = add i32 %v0_8003b2e, 104
  %v2_8003b28 = inttoptr i32 %v1_8003b28 to i32*
  %v3_8003b28 = load i32, i32* %v2_8003b28, align 4
  %v2_8003b2a = icmp eq i32 %v3_8003b28, 0
  br i1 %v2_8003b2a, label %dec_label_pc_8003b34, label %dec_label_pc_8003b2e

dec_label_pc_8003b2e:                             ; preds = %dec_label_pc_8003b28
  %v3_8003b2e = load i32, i32* %v2_8003b28, align 4
  call void @__pseudo_call(i32 %v3_8003b2e)
  br label %dec_label_pc_8003b34

dec_label_pc_8003b34:                             ; preds = %dec_label_pc_8003ac4.thread, %dec_label_pc_8003b2e, %dec_label_pc_8003b28, %dec_label_pc_8003ade
  store i32 %v21_8003a7c, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v3_8003b26, { 0, 1, 3, 2 }
  uselistorder i32 %v3_8003a84, { 1, 0 }
  uselistorder i32 %tmp7, { 1, 0 }
  uselistorder label %dec_label_pc_8003b34, { 1, 2, 3, 0 }
  uselistorder label %dec_label_pc_8003b28, { 1, 0 }
  uselistorder label %dec_label_pc_8003b1a, { 1, 0 }
  uselistorder label %dec_label_pc_8003ad6, { 1, 0 }
  uselistorder label %dec_label_pc_8003ac4.thread, { 1, 2, 0 }
}

define void @CO_errorReset(i32 %em, i8 %errorBit, i32 %infoCode) local_unnamed_addr {
entry:
  %tmp = sext i8 %errorBit to i32
  %stack_var_-44 = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %bufCopy_-48 = alloca [8 x i8], align 1
  store i32 %infoCode, i32* %stack_var_-24, align 4
  %v15_8003b38 = load i32, i32* @r4, align 4
  store i32 %em, i32* @r4, align 4
  %v3_8003b40 = sdiv i32 %tmp, 8
  %v3_8003b44 = urem i32 %tmp, 8
  %v6_8003b48 = shl i32 1, %v3_8003b44
  %v2_8003b54 = icmp eq i32 %em, 0
  br i1 %v2_8003b54, label %dec_label_pc_8003b7e.thread, label %dec_label_pc_8003b5e

dec_label_pc_8003b5e:                             ; preds = %entry
  %v1_8003b5e = add i32 %em, 4
  %v2_8003b5e = inttoptr i32 %v1_8003b5e to i8*
  %v3_8003b5e = load i8, i8* %v2_8003b5e, align 1
  %v4_8003b5e = zext i8 %v3_8003b5e to i32
  %v8_8003b62 = icmp sgt i32 %v4_8003b5e, %v3_8003b40
  br i1 %v8_8003b62, label %dec_label_pc_8003b6e, label %dec_label_pc_8003b64

dec_label_pc_8003b64:                             ; preds = %dec_label_pc_8003b5e
  %v4_8003b66 = add i32 %em, 101
  %v5_8003b66 = inttoptr i32 %v4_8003b66 to i8*
  store i8 %errorBit, i8* %v5_8003b66, align 1
  br label %dec_label_pc_8003b7e.thread

dec_label_pc_8003b6e:                             ; preds = %dec_label_pc_8003b5e
  %v1_8003b6e = inttoptr i32 %em to i32*
  %v2_8003b6e = load i32, i32* %v1_8003b6e, align 4
  %v2_8003b70 = add i32 %v2_8003b6e, %v3_8003b40
  %v1_8003b72 = inttoptr i32 %v2_8003b70 to i8*
  %v2_8003b72 = load i8, i8* %v1_8003b72, align 1
  %v3_8003b72 = zext i8 %v2_8003b72 to i32
  %v2_8003b76 = and i32 %v3_8003b72, %v6_8003b48
  %v4_8003b76 = icmp eq i32 %v2_8003b76, 0
  br i1 %v4_8003b76, label %dec_label_pc_8003b7e, label %dec_label_pc_8003b7e.thread3

dec_label_pc_8003b7e.thread3:                     ; preds = %dec_label_pc_8003b6e
  %v2_8003b84 = load i8, i8* %v1_8003b72, align 1
  %v3_8003b84 = zext i8 %v2_8003b84 to i32
  %v2_8003b88 = sub nuw nsw i32 -1, %v6_8003b48
  %v3_8003b88 = and i32 %v3_8003b84, %v2_8003b88
  %v1_8003b8a = trunc i32 %v3_8003b88 to i8
  store i8 %v1_8003b8a, i8* %v1_8003b72, align 1
  %v1_8003b8e = load i32, i32* @r4, align 4
  %v2_8003b8e = add i32 %v1_8003b8e, 100
  %v3_8003b8e = inttoptr i32 %v2_8003b8e to i8*
  %v4_8003b8e = load i8, i8* %v3_8003b8e, align 1
  %v2_8003b90 = icmp eq i8 %v4_8003b8e, 0
  br i1 %v2_8003b90, label %dec_label_pc_8003b9c, label %dec_label_pc_8003b94

dec_label_pc_8003b7e.thread:                      ; preds = %entry, %dec_label_pc_8003b64
  br label %dec_label_pc_8003be6

dec_label_pc_8003b7e:                             ; preds = %dec_label_pc_8003b6e
  br label %dec_label_pc_8003be6

dec_label_pc_8003b94:                             ; preds = %dec_label_pc_8003b7e.thread3
  store i8 2, i8* %v3_8003b8e, align 1
  br label %dec_label_pc_8003be6

dec_label_pc_8003b9c:                             ; preds = %dec_label_pc_8003b7e.thread3
  %v4_8003ba0 = getelementptr inbounds [8 x i8], [8 x i8]* %bufCopy_-48, i32 0, i32 0
  store i8 0, i8* %v4_8003ba0, align 1
  %tmp23 = bitcast i32* %stack_var_-24 to i8*
  %tmp24 = bitcast i32* %stack_var_-44 to i8*
  call void @CO_memcpySwap4(i8* %tmp24, i8* %tmp23)
  %v0_8003bb4 = load i32, i32* @r4, align 4
  %v1_8003bb4 = add i32 %v0_8003bb4, 92
  %v2_8003bb4 = inttoptr i32 %v1_8003bb4 to i32*
  %v3_8003bb4 = load i32, i32* %v2_8003bb4, align 4
  %v4_8003bb4 = inttoptr i32 %v3_8003bb4 to i8*
  call void @CO_memcpy(i8* %v4_8003bb4, i8* %v4_8003ba0, i16 8)
  %v0_8003bba = load i32, i32* @r4, align 4
  %v1_8003bba = add i32 %v0_8003bba, 92
  %v2_8003bba = inttoptr i32 %v1_8003bba to i32*
  %v3_8003bba = load i32, i32* %v2_8003bba, align 4
  %v1_8003bbc = add i32 %v3_8003bba, 8
  store i32 %v1_8003bbc, i32* %v2_8003bba, align 4
  %v0_8003bc0 = load i32, i32* @r4, align 4
  %v1_8003bc0 = add i32 %v0_8003bc0, 88
  %v2_8003bc0 = inttoptr i32 %v1_8003bc0 to i32*
  %v3_8003bc0 = load i32, i32* %v2_8003bc0, align 4
  %v1_8003bc2 = add i32 %v0_8003bc0, 92
  %v2_8003bc2 = inttoptr i32 %v1_8003bc2 to i32*
  %v3_8003bc2 = load i32, i32* %v2_8003bc2, align 4
  %v9_8003bc4 = icmp eq i32 %v3_8003bc2, %v3_8003bc0
  br i1 %v9_8003bc4, label %dec_label_pc_8003bc8, label %dec_label_pc_8003bcc

dec_label_pc_8003bc8:                             ; preds = %dec_label_pc_8003b9c
  %v1_8003bc8 = add i32 %v0_8003bc0, 5
  store i32 %v1_8003bc8, i32* %v2_8003bc2, align 4
  %v0_8003bcc.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8003bcc

dec_label_pc_8003bcc:                             ; preds = %dec_label_pc_8003b9c, %dec_label_pc_8003bc8
  %v3_8003bd8 = phi i32 [ %v0_8003bc0, %dec_label_pc_8003b9c ], [ %v0_8003bcc.pre, %dec_label_pc_8003bc8 ]
  %v1_8003bcc = add i32 %v3_8003bd8, 96
  %v2_8003bcc = inttoptr i32 %v1_8003bcc to i32*
  %v3_8003bcc = load i32, i32* %v2_8003bcc, align 4
  %v1_8003bce = add i32 %v3_8003bd8, 92
  %v2_8003bce = inttoptr i32 %v1_8003bce to i32*
  %v3_8003bce = load i32, i32* %v2_8003bce, align 4
  %v9_8003bd0 = icmp eq i32 %v3_8003bce, %v3_8003bcc
  br i1 %v9_8003bd0, label %dec_label_pc_8003bd4, label %dec_label_pc_8003bda

dec_label_pc_8003bd4:                             ; preds = %dec_label_pc_8003bcc
  %v4_8003bd8 = add i32 %v3_8003bd8, 100
  %v5_8003bd8 = inttoptr i32 %v4_8003bd8 to i8*
  store i8 1, i8* %v5_8003bd8, align 1
  %v0_8003bda.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8003bda

dec_label_pc_8003bda:                             ; preds = %dec_label_pc_8003bcc, %dec_label_pc_8003bd4
  %v0_8003be0 = phi i32 [ %v3_8003bd8, %dec_label_pc_8003bcc ], [ %v0_8003bda.pre, %dec_label_pc_8003bd4 ]
  %v1_8003bda = add i32 %v0_8003be0, 104
  %v2_8003bda = inttoptr i32 %v1_8003bda to i32*
  %v3_8003bda = load i32, i32* %v2_8003bda, align 4
  %v2_8003bdc = icmp eq i32 %v3_8003bda, 0
  br i1 %v2_8003bdc, label %dec_label_pc_8003be6, label %dec_label_pc_8003be0

dec_label_pc_8003be0:                             ; preds = %dec_label_pc_8003bda
  %v3_8003be0 = load i32, i32* %v2_8003bda, align 4
  call void @__pseudo_call(i32 %v3_8003be0)
  br label %dec_label_pc_8003be6

dec_label_pc_8003be6:                             ; preds = %dec_label_pc_8003b7e, %dec_label_pc_8003b7e.thread, %dec_label_pc_8003be0, %dec_label_pc_8003bda, %dec_label_pc_8003b94
  store i32 %v15_8003b38, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v3_8003bd8, { 0, 1, 3, 2 }
  uselistorder i32 %v3_8003b40, { 1, 0 }
  uselistorder i32 %tmp, { 1, 0 }
  uselistorder void (i32)* @__pseudo_call, { 1, 2, 0 }
  uselistorder i32 88, { 3, 4, 0, 1, 2 }
  uselistorder void (i8*, i8*, i16)* @CO_memcpy, { 0, 1, 3, 2 }
  uselistorder i32 92, { 4, 5, 6, 7, 8, 9, 10, 11, 0, 1, 2, 3 }
  uselistorder i32 100, { 0, 1, 2, 3, 4, 5, 6, 10, 7, 11, 8, 12, 9 }
  uselistorder label %dec_label_pc_8003be6, { 2, 3, 4, 0, 1 }
  uselistorder label %dec_label_pc_8003bda, { 1, 0 }
  uselistorder label %dec_label_pc_8003bcc, { 1, 0 }
  uselistorder label %dec_label_pc_8003b7e.thread, { 1, 0 }
}

define i32 @CO_init(i32 %CANbaseAddress, i8 %nodeId, i16 %bitRate) local_unnamed_addr {
entry:
  %r4.global-to-local = alloca i32, align 4
  %tmp47 = sext i8 %nodeId to i32
  %v18_8003c04 = load i32, i32* @r4, align 4
  store i32 %tmp47, i32* @r5, align 4
  store i32 536872396, i32* inttoptr (i32 536871904 to i32*), align 32
  store i32 536872456, i32* inttoptr (i32 536872396 to i32*), align 4
  store i32 536872488, i32* inttoptr (i32 536871908 to i32*), align 4
  store i32 536872620, i32* inttoptr (i32 536871912 to i32*), align 8
  store i32 0, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_8003c26

dec_label_pc_8003c26:                             ; preds = %entry, %dec_label_pc_8003c26
  %v0_8003c2e = phi i32 [ 0, %entry ], [ %v1_8003c3a, %dec_label_pc_8003c26 ]
  %v2_8003c28 = mul i32 %v0_8003c2e, 124
  %v2_8003c2c = add i32 %v2_8003c28, 536872748
  %v3_8003c2e = mul i32 %v0_8003c2e, 4
  %v2_8003c32 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003c34 = add i32 %v3_8003c2e, 4
  %v3_8003c36 = add i32 %v1_8003c34, %v2_8003c32
  %v4_8003c36 = inttoptr i32 %v3_8003c36 to i32*
  store i32 %v2_8003c2c, i32* %v4_8003c36, align 4
  %v0_8003c38 = load i32, i32* %r4.global-to-local, align 4
  %v1_8003c38 = add i32 %v0_8003c38, 1
  %v1_8003c3a = call i32 @__asm_sxth.i32(i32 %v1_8003c38)
  store i32 %v1_8003c3a, i32* %r4.global-to-local, align 4
  %v5_8003c3e = icmp slt i32 %v1_8003c3a, 1
  br i1 %v5_8003c3e, label %dec_label_pc_8003c26, label %dec_label_pc_8003c40

dec_label_pc_8003c40:                             ; preds = %dec_label_pc_8003c26
  store i32 536872872, i32* inttoptr (i32 536871916 to i32*), align 4
  %v2_8003c4a = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v2_8003c4c = add i32 %v2_8003c4a, 8
  %v3_8003c4c = inttoptr i32 %v2_8003c4c to i32*
  store i32 2608, i32* %v3_8003c4c, align 4
  %v2_8003c52 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v2_8003c54 = add i32 %v2_8003c52, 12
  %v3_8003c54 = inttoptr i32 %v2_8003c54 to i32*
  store i32 536873628, i32* %v3_8003c54, align 4
  %v2_8003c5a = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v2_8003c5c = add i32 %v2_8003c5a, 16
  %v3_8003c5c = inttoptr i32 %v2_8003c5c to i32*
  store i32 536873652, i32* %v3_8003c5c, align 4
  %v2_8003c62 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v2_8003c64 = add i32 %v2_8003c62, 20
  %v3_8003c64 = inttoptr i32 %v2_8003c64 to i32*
  store i32 536873680, i32* %v3_8003c64, align 4
  store i32 0, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_8003c6a

dec_label_pc_8003c6a:                             ; preds = %dec_label_pc_8003c40, %dec_label_pc_8003c6a
  %v0_8003c72 = phi i32 [ 0, %dec_label_pc_8003c40 ], [ %v1_8003c7e, %dec_label_pc_8003c6a ]
  %v2_8003c6c = mul i32 %v0_8003c72, 80
  %v2_8003c70 = add i32 %v2_8003c6c, 2824
  %v3_8003c72 = mul i32 %v0_8003c72, 4
  %v2_8003c76 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003c78 = add i32 %v3_8003c72, 24
  %v3_8003c7a = add i32 %v1_8003c78, %v2_8003c76
  %v4_8003c7a = inttoptr i32 %v3_8003c7a to i32*
  store i32 %v2_8003c70, i32* %v4_8003c7a, align 4
  %v0_8003c7c = load i32, i32* %r4.global-to-local, align 4
  %v1_8003c7c = add i32 %v0_8003c7c, 1
  %v1_8003c7e = call i32 @__asm_sxth.i32(i32 %v1_8003c7c)
  store i32 %v1_8003c7e, i32* %r4.global-to-local, align 4
  %v5_8003c82 = icmp slt i32 %v1_8003c7e, 4
  br i1 %v5_8003c82, label %dec_label_pc_8003c6a, label %dec_label_pc_8003c84

dec_label_pc_8003c84:                             ; preds = %dec_label_pc_8003c6a
  store i32 0, i32* @r4, align 4
  br label %dec_label_pc_8003c88

dec_label_pc_8003c88:                             ; preds = %dec_label_pc_8003c84, %dec_label_pc_8003c88
  %v0_8003c90 = phi i32 [ 0, %dec_label_pc_8003c84 ], [ %v1_8003c9c, %dec_label_pc_8003c88 ]
  %v2_8003c8a = mul i32 %v0_8003c90, 84
  %v2_8003c8e = add i32 %v2_8003c8a, 3144
  %v3_8003c90 = mul i32 %v0_8003c90, 4
  %v2_8003c94 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003c96 = add i32 %v3_8003c90, 40
  %v3_8003c98 = add i32 %v1_8003c96, %v2_8003c94
  %v4_8003c98 = inttoptr i32 %v3_8003c98 to i32*
  store i32 %v2_8003c8e, i32* %v4_8003c98, align 4
  %v0_8003c9a = load i32, i32* @r4, align 4
  %v1_8003c9a = add i32 %v0_8003c9a, 1
  %v1_8003c9c = call i32 @__asm_sxth.i32(i32 %v1_8003c9a)
  store i32 %v1_8003c9c, i32* @r4, align 4
  %v5_8003ca0 = icmp slt i32 %v1_8003c9c, 4
  br i1 %v5_8003ca0, label %dec_label_pc_8003c88, label %dec_label_pc_8003ca2

dec_label_pc_8003ca2:                             ; preds = %dec_label_pc_8003c88
  %v2_8003ca6 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v2_8003ca8 = add i32 %v2_8003ca6, 56
  %v3_8003ca8 = inttoptr i32 %v2_8003ca8 to i32*
  store i32 536874392, i32* %v3_8003ca8, align 4
  store i32 536874416, i32* inttoptr (i32 536871920 to i32*), align 16
  %v2_8003cb4 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003cb6 = inttoptr i32 %v2_8003cb4 to i32*
  %v2_8003cb6 = load i32, i32* %v1_8003cb6, align 4
  %v3_8003cb8 = add i32 %v2_8003cb6, 18
  %v4_8003cb8 = inttoptr i32 %v3_8003cb8 to i8*
  store i8 0, i8* %v4_8003cb8, align 1
  call void @CO_CANsetConfigurationMode(i32 %CANbaseAddress)
  %v0_8003cc0 = load i32, i32* @r5, align 4
  %tmp69 = trunc i32 %v0_8003cc0 to i8
  %v6_8003cc2 = icmp slt i8 %tmp69, 1
  br i1 %v6_8003cc2, label %dec_label_pc_8003cc8, label %dec_label_pc_8003cca

dec_label_pc_8003cc8:                             ; preds = %dec_label_pc_8003ca2
  store i32 16, i32* @r5, align 4
  br label %dec_label_pc_8003cca

dec_label_pc_8003cca:                             ; preds = %dec_label_pc_8003ca2, %dec_label_pc_8003cc8
  %v2_8003cd0 = load i32, i32* inttoptr (i32 536871912 to i32*), align 8
  %v2_8003cda = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003cde = inttoptr i32 %v2_8003cda to i32*
  %v2_8003cde = load i32, i32* %v1_8003cde, align 4
  %v2_8003ce2 = load i32, i32* inttoptr (i32 536871908 to i32*), align 4
  %sext40 = mul i32 %v2_8003cd0, 16777216
  %v6_8003ce6 = sdiv i32 %sext40, 16777216
  %v13_8003ce6 = call i32 @CO_CANmodule_init(i32 %v2_8003cde, i32 %CANbaseAddress, i32 %v2_8003ce2, i16 11, i32 %v6_8003ce6, i16 8, i16 %bitRate)
  store i32 %v13_8003ce6, i32* @r6, align 4
  %v2_8003cec = icmp eq i32 %v13_8003ce6, 0
  br i1 %v2_8003cec, label %dec_label_pc_8003cfc, label %dec_label_pc_8003cf0

dec_label_pc_8003cf0:                             ; preds = %dec_label_pc_8003cca
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003cf6 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003cf8:                             ; preds = %dec_label_pc_800404c, %dec_label_pc_8003fe4, %dec_label_pc_8003f9c, %dec_label_pc_8003f0e, %dec_label_pc_8003e7c, %dec_label_pc_8003e22, %dec_label_pc_8003dda, %dec_label_pc_8003d8e, %dec_label_pc_8003cf0
  %v17_8003cfa = phi i32 [ 0, %dec_label_pc_800404c ], [ %v0_8003fea, %dec_label_pc_8003fe4 ], [ %v0_8003fa2, %dec_label_pc_8003f9c ], [ %v0_8003f14, %dec_label_pc_8003f0e ], [ %v0_8003e82, %dec_label_pc_8003e7c ], [ %v0_8003e28, %dec_label_pc_8003e22 ], [ %v0_8003de0, %dec_label_pc_8003dda ], [ %v0_8003d94, %dec_label_pc_8003d8e ], [ %v0_8003cf6, %dec_label_pc_8003cf0 ]
  store i32 %v18_8003c04, i32* %r4.global-to-local, align 4
  ret i32 %v17_8003cfa

dec_label_pc_8003cfc:                             ; preds = %dec_label_pc_8003cca
  store i32 0, i32* @r4, align 4
  br label %dec_label_pc_8003d00

dec_label_pc_8003d00:                             ; preds = %dec_label_pc_8003cfc, %dec_label_pc_8003d62
  %v0_8003d6c = phi i32 [ 0, %dec_label_pc_8003cfc ], [ %v1_8003d84, %dec_label_pc_8003d62 ]
  %v2_8003d00 = icmp eq i32 %v0_8003d6c, 0
  br i1 %v2_8003d00, label %dec_label_pc_8003d04, label %dec_label_pc_8003d14

dec_label_pc_8003d04:                             ; preds = %dec_label_pc_8003d00
  %v0_8003d08 = load i32, i32* @r5, align 4
  %v2_8003d08 = add i32 %v0_8003d08, 1536
  store i32 %v2_8003d08, i32* @r7, align 4
  %v2_8003d0e = add i32 %v0_8003d08, 128
  %extract.t = trunc i32 %v2_8003d0e to i8
  br label %dec_label_pc_8003d28

dec_label_pc_8003d14:                             ; preds = %dec_label_pc_8003d00
  %v2_8003d16 = mul i32 %v0_8003d6c, 12
  %v1_8003d1c = add i32 %v2_8003d16, 536871396
  %v2_8003d1c = inttoptr i32 %v1_8003d1c to i32*
  %v3_8003d1c = load i32, i32* %v2_8003d1c, align 4
  store i32 %v3_8003d1c, i32* @r7, align 4
  %v1_8003d24 = add i32 %v2_8003d16, 536871400
  %v2_8003d24 = inttoptr i32 %v1_8003d24 to i32*
  %v3_8003d24 = load i32, i32* %v2_8003d24, align 4
  %extract.t74 = trunc i32 %v3_8003d24 to i8
  br label %dec_label_pc_8003d28

dec_label_pc_8003d28:                             ; preds = %dec_label_pc_8003d04, %dec_label_pc_8003d14
  %v2_8003d0e.sink.off0 = phi i8 [ %extract.t, %dec_label_pc_8003d04 ], [ %extract.t74, %dec_label_pc_8003d14 ]
  %v0_8003d78 = phi i32 [ %v2_8003d08, %dec_label_pc_8003d04 ], [ %v3_8003d1c, %dec_label_pc_8003d14 ]
  br i1 %v2_8003d00, label %dec_label_pc_8003d58, label %dec_label_pc_8003d5c

dec_label_pc_8003d58:                             ; preds = %dec_label_pc_8003d28
  br label %dec_label_pc_8003d62

dec_label_pc_8003d5c:                             ; preds = %dec_label_pc_8003d28
  %v2_8003d5e = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003d60 = add i32 %v2_8003d5e, 4
  %v2_8003d60 = inttoptr i32 %v1_8003d60 to i32*
  %v3_8003d60 = load i32, i32* %v2_8003d60, align 4
  %extract.t41 = trunc i32 %v3_8003d60 to i8
  br label %dec_label_pc_8003d62

dec_label_pc_8003d62:                             ; preds = %dec_label_pc_8003d58, %dec_label_pc_8003d5c
  %v0_8003d62.off0 = phi i8 [ 0, %dec_label_pc_8003d58 ], [ %extract.t41, %dec_label_pc_8003d5c ]
  %v2_8003d68 = add i32 %v0_8003d6c, 4608
  %v2_8003d6a = trunc i32 %v2_8003d68 to i16
  %v3_8003d6c = mul i32 %v0_8003d6c, 4
  %v2_8003d70 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003d72 = add i32 %v2_8003d70, 4
  %v2_8003d74 = add i32 %v1_8003d72, %v3_8003d6c
  %v3_8003d74 = inttoptr i32 %v2_8003d74 to i32*
  %v4_8003d74 = load i32, i32* %v3_8003d74, align 4
  %v4_8003d7a = sext i8 %v2_8003d0e.sink.off0 to i32
  %sext = mul i32 %v0_8003d78, 16777216
  %v2_8003d7c = sdiv i32 %sext, 16777216
  %v8_8003d7c = sext i8 %v0_8003d62.off0 to i32
  %v18_8003d7c = call i32 @CO_SDO_init(i32 %v4_8003d74, i32 %v2_8003d7c, i32 %v4_8003d7a, i16 %v2_8003d6a, i32 %v8_8003d7c, i32 ptrtoint (i32* @0 to i32), i16 ptrtoint (i32* @0 to i16), i32 ptrtoint (i32* @0 to i32), i8 ptrtoint (i32* @0 to i8), i32 ptrtoint (i32* @0 to i32), i16 ptrtoint (i32* @0 to i16), i32 ptrtoint (i32* @0 to i32), i16 ptrtoint (i32* @0 to i16))
  store i32 %v18_8003d7c, i32* @r6, align 4
  %v0_8003d82 = load i32, i32* @r4, align 4
  %v1_8003d82 = add i32 %v0_8003d82, 1
  %v1_8003d84 = call i32 @__asm_sxth.i32(i32 %v1_8003d82)
  store i32 %v1_8003d84, i32* @r4, align 4
  %v5_8003d88 = icmp slt i32 %v1_8003d84, 1
  br i1 %v5_8003d88, label %dec_label_pc_8003d00, label %dec_label_pc_8003d8a

dec_label_pc_8003d8a:                             ; preds = %dec_label_pc_8003d62
  %v0_8003d8a = load i32, i32* @r6, align 4
  %v2_8003d8a = icmp eq i32 %v0_8003d8a, 0
  br i1 %v2_8003d8a, label %dec_label_pc_8003d98, label %dec_label_pc_8003d8e

dec_label_pc_8003d8e:                             ; preds = %dec_label_pc_8003d8a
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003d94 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003d98:                             ; preds = %dec_label_pc_8003d8a
  %v0_8003d98 = load i32, i32* @r5, align 4
  %v1_8003d9a = add i32 %v0_8003d98, 128
  %v2_8003da0 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003da2 = inttoptr i32 %v2_8003da0 to i32*
  %v2_8003da2 = load i32, i32* %v1_8003da2, align 4
  %v5_8003dac = trunc i32 %v1_8003d9a to i16
  %v1_8003dbe = add i32 %v2_8003da0, 4
  %v2_8003dbe = inttoptr i32 %v1_8003dbe to i32*
  %v3_8003dbe = load i32, i32* %v2_8003dbe, align 4
  %v2_8003dc2 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003dc4 = add i32 %v2_8003dc2, 12
  %v2_8003dc4 = inttoptr i32 %v1_8003dc4 to i32*
  %v3_8003dc4 = load i32, i32* %v2_8003dc4, align 4
  %v1_8003dca = add i32 %v2_8003dc2, 8
  %v2_8003dca = inttoptr i32 %v1_8003dca to i32*
  %v3_8003dca = load i32, i32* %v2_8003dca, align 4
  %sext16 = mul i32 %v2_8003da2, 65536
  %v13_8003dd0 = sdiv i32 %sext16, 65536
  %v25_8003dd0 = call i32 @CO_EM_init(i32 %v3_8003dca, i32 %v3_8003dc4, i32 %v3_8003dbe, i8* inttoptr (i32 536871012 to i8*), i8 10, i8* inttoptr (i32 536870964 to i8*), i32* inttoptr (i32 536870972 to i32*), i8 8, i32 %v13_8003dd0, i16 1, i16 %v5_8003dac)
  store i32 %v25_8003dd0, i32* @r6, align 4
  %v2_8003dd6 = icmp eq i32 %v25_8003dd0, 0
  br i1 %v2_8003dd6, label %dec_label_pc_8003de4, label %dec_label_pc_8003dda

dec_label_pc_8003dda:                             ; preds = %dec_label_pc_8003d98
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003de0 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003de4:                             ; preds = %dec_label_pc_8003d98
  %v0_8003de8 = load i32, i32* @r5, align 4
  %v2_8003dee = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003df0 = inttoptr i32 %v2_8003dee to i32*
  %v2_8003df0 = load i32, i32* %v1_8003df0, align 4
  %v5_8003dfa = trunc i32 %v0_8003de8 to i8
  %v1_8003e0a = add i32 %v2_8003dee, 12
  %v2_8003e0a = inttoptr i32 %v1_8003e0a to i32*
  %v3_8003e0a = load i32, i32* %v2_8003e0a, align 4
  %v2_8003e0e = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003e14 = add i32 %v2_8003e0e, 16
  %v2_8003e14 = inttoptr i32 %v1_8003e14 to i32*
  %v3_8003e14 = load i32, i32* %v2_8003e14, align 4
  %v1_8003e16 = trunc i32 %v0_8003de8 to i8
  %sext42 = mul i32 %v2_8003df0, 16777216
  %v7_8003e18 = sdiv i32 %sext42, 16777216
  %sext17 = mul i32 %v2_8003df0, 65536
  %v12_8003e18 = sdiv i32 %sext17, 65536
  %v22_8003e18 = sext i8 %v5_8003dfa to i16
  %v23_8003e18 = call i32 @CO_NMT_init(i32 %v3_8003e14, i32 %v3_8003e0a, i8 %v1_8003e16, i16 500, i32 %v7_8003e18, i16 0, i16 0, i32 %v12_8003e18, i16 7, i16 %v22_8003e18)
  store i32 %v23_8003e18, i32* @r6, align 4
  %v2_8003e1e = icmp eq i32 %v23_8003e18, 0
  br i1 %v2_8003e1e, label %dec_label_pc_8003e2c, label %dec_label_pc_8003e22

dec_label_pc_8003e22:                             ; preds = %dec_label_pc_8003de4
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003e28 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003e2c:                             ; preds = %dec_label_pc_8003de4
  %v2_8003e30 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003e34 = inttoptr i32 %v2_8003e30 to i32*
  %v2_8003e34 = load i32, i32* %v1_8003e34, align 4
  %v3_8003e48 = load i8, i8* inttoptr (i32 536871384 to i8*), align 8
  %v3_8003e4c = load i32, i32* inttoptr (i32 536871304 to i32*), align 8
  %v3_8003e52 = load i32, i32* inttoptr (i32 536871300 to i32*), align 4
  %v1_8003e5e = add i32 %v2_8003e30, 16
  %v2_8003e5e = inttoptr i32 %v1_8003e5e to i32*
  %v3_8003e5e = load i32, i32* %v2_8003e5e, align 4
  %v4_8003e5e = inttoptr i32 %v3_8003e5e to i8*
  %v2_8003e62 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003e64 = add i32 %v2_8003e62, 4
  %v2_8003e64 = inttoptr i32 %v1_8003e64 to i32*
  %v3_8003e64 = load i32, i32* %v2_8003e64, align 4
  %v1_8003e6a = add i32 %v2_8003e62, 8
  %v2_8003e6a = inttoptr i32 %v1_8003e6a to i32*
  %v3_8003e6a = load i32, i32* %v2_8003e6a, align 4
  %v2_8003e6e = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  store i32 %v2_8003e6e, i32* @r7, align 4
  %v1_8003e70 = add i32 %v2_8003e6e, 20
  %v2_8003e70 = inttoptr i32 %v1_8003e70 to i32*
  %v3_8003e70 = load i32, i32* %v2_8003e70, align 4
  %sext43 = mul i32 %v3_8003e52, 16777216
  %v6_8003e72 = sdiv i32 %sext43, 16777216
  %sext18 = mul i32 %v2_8003e34, 65536
  %v11_8003e72 = sdiv i32 %sext18, 65536
  %sext19 = mul i32 %v2_8003e34, 16777216
  %v15_8003e72 = sdiv i32 %sext19, 16777216
  %v22_8003e72 = call i32 @CO_SYNC_init(i32 %v3_8003e70, i32 %v3_8003e6a, i32 %v3_8003e64, i8* %v4_8003e5e, i32 %v6_8003e72, i32 %v3_8003e4c, i8 %v3_8003e48, i32 %v11_8003e72, i16 1, i32 %v15_8003e72, i16 0)
  store i32 %v22_8003e72, i32* @r6, align 4
  %v2_8003e78 = icmp eq i32 %v22_8003e72, 0
  br i1 %v2_8003e78, label %dec_label_pc_8003e86, label %dec_label_pc_8003e7c

dec_label_pc_8003e7c:                             ; preds = %dec_label_pc_8003e2c
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003e82 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003e86:                             ; preds = %dec_label_pc_8003e2c
  store i32 0, i32* @r4, align 4
  br label %dec_label_pc_8003eda

dec_label_pc_8003eda:                             ; preds = %dec_label_pc_8003e86, %dec_label_pc_8003f18
  %v0_8003ef6 = phi i32 [ 0, %dec_label_pc_8003e86 ], [ %v1_8003f1a, %dec_label_pc_8003f18 ]
  %v3_8003ece = mul i32 %v0_8003ef6, 256
  %v1_8003ed0 = or i32 %v3_8003ece, 255
  %v1_8003ed4 = add i32 %v1_8003ed0, 257
  %v0_8003edc = load i32, i32* @r5, align 4
  %v4_8003edc = trunc i32 %v0_8003edc to i8
  %v2_8003ee8 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003eea = add i32 %v2_8003ee8, 16
  %v2_8003eea = inttoptr i32 %v1_8003eea to i32*
  %v3_8003eea = load i32, i32* %v2_8003eea, align 4
  %v4_8003eea = inttoptr i32 %v3_8003eea to i8*
  %v1_8003ef0 = add i32 %v2_8003ee8, 4
  %v2_8003ef0 = inttoptr i32 %v1_8003ef0 to i32*
  %v3_8003ef0 = load i32, i32* %v2_8003ef0, align 4
  %v2_8003ef4 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v3_8003ef6 = mul i32 %v0_8003ef6, 4
  store i32 %v3_8003ef6, i32* @r7, align 4
  %v1_8003ef8 = add i32 %v2_8003ef4, 8
  %v2_8003ef8 = inttoptr i32 %v1_8003ef8 to i32*
  %v3_8003ef8 = load i32, i32* %v2_8003ef8, align 4
  %v2_8003efc = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003efe = add i32 %v2_8003efc, 24
  %v2_8003f00 = add i32 %v1_8003efe, %v3_8003ef6
  %v3_8003f00 = inttoptr i32 %v2_8003f00 to i32*
  %v4_8003f00 = load i32, i32* %v3_8003f00, align 4
  %tmp = mul i32 %v0_8003ef6, 786432
  %sext23 = add i32 %tmp, 32243712
  %v11_8003f04 = sdiv i32 %sext23, 65536
  %tmp75 = mul i32 %v0_8003ef6, 2359296
  %sext24 = add i32 %tmp75, 35389440
  %v13_8003f04 = sdiv i32 %sext24, 65536
  %v16_8003f04 = trunc i32 %v1_8003ed4 to i16
  %v22_8003f04 = call i32 @CO_RPDO_init(i32 %v4_8003f00, i32 %v3_8003ef8, i32 %v3_8003ef0, i8* %v4_8003eea, i8 %v4_8003edc, i16 %v16_8003f04, i8 0, i32 %v11_8003f04, i32 %v13_8003f04, i16 ptrtoint (i32* @0 to i16), i16 ptrtoint (i32* @0 to i16), i32 ptrtoint (i32* @0 to i32), i16 ptrtoint (i32* @0 to i16))
  store i32 %v22_8003f04, i32* @r6, align 4
  %v2_8003f0a = icmp eq i32 %v22_8003f04, 0
  br i1 %v2_8003f0a, label %dec_label_pc_8003f18, label %dec_label_pc_8003f0e

dec_label_pc_8003f0e:                             ; preds = %dec_label_pc_8003eda
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003f14 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003f18:                             ; preds = %dec_label_pc_8003eda
  %v0_8003f18 = load i32, i32* @r4, align 4
  %v1_8003f18 = add i32 %v0_8003f18, 1
  %v1_8003f1a = call i32 @__asm_sxth.i32(i32 %v1_8003f18)
  store i32 %v1_8003f1a, i32* @r4, align 4
  %v5_8003f1e = icmp slt i32 %v1_8003f1a, 4
  br i1 %v5_8003f1e, label %dec_label_pc_8003eda, label %dec_label_pc_8003f20

dec_label_pc_8003f20:                             ; preds = %dec_label_pc_8003f18
  store i32 0, i32* @r4, align 4
  br label %dec_label_pc_8003f68

dec_label_pc_8003f68:                             ; preds = %dec_label_pc_8003f20, %dec_label_pc_8003fa6
  %v0_8003f84 = phi i32 [ 0, %dec_label_pc_8003f20 ], [ %v1_8003fa8, %dec_label_pc_8003fa6 ]
  %v3_8003f5e = mul i32 %v0_8003f84, 256
  %v1_8003f60 = or i32 %v3_8003f5e, 255
  %v1_8003f62 = add i32 %v1_8003f60, 129
  %v0_8003f6a = load i32, i32* @r5, align 4
  %v4_8003f6a = trunc i32 %v0_8003f6a to i8
  %v2_8003f76 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003f78 = add i32 %v2_8003f76, 16
  %v2_8003f78 = inttoptr i32 %v1_8003f78 to i32*
  %v3_8003f78 = load i32, i32* %v2_8003f78, align 4
  %v4_8003f78 = inttoptr i32 %v3_8003f78 to i8*
  %v1_8003f7e = add i32 %v2_8003f76, 4
  %v2_8003f7e = inttoptr i32 %v1_8003f7e to i32*
  %v3_8003f7e = load i32, i32* %v2_8003f7e, align 4
  %v2_8003f82 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v3_8003f84 = mul i32 %v0_8003f84, 4
  store i32 %v3_8003f84, i32* @r7, align 4
  %v1_8003f86 = add i32 %v2_8003f82, 8
  %v2_8003f86 = inttoptr i32 %v1_8003f86 to i32*
  %v3_8003f86 = load i32, i32* %v2_8003f86, align 4
  %v2_8003f8a = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003f8c = add i32 %v2_8003f8a, 40
  %v2_8003f8e = add i32 %v1_8003f8c, %v3_8003f84
  %v3_8003f8e = inttoptr i32 %v2_8003f8e to i32*
  %v4_8003f8e = load i32, i32* %v3_8003f8e, align 4
  %tmp76 = mul i32 %v0_8003f84, 1310720
  %sext20 = add i32 %tmp76, 44826624
  %v11_8003f92 = sdiv i32 %sext20, 65536
  %tmp77 = mul i32 %v0_8003f84, 2359296
  %sext21 = add i32 %tmp77, 50069504
  %v13_8003f92 = sdiv i32 %sext21, 65536
  %v16_8003f92 = trunc i32 %v1_8003f62 to i16
  %v22_8003f92 = call i32 @CO_TPDO_init(i32 %v4_8003f8e, i32 %v3_8003f86, i32 %v3_8003f7e, i8* %v4_8003f78, i8 %v4_8003f6a, i16 %v16_8003f92, i8 0, i32 %v11_8003f92, i32 %v13_8003f92, i16 ptrtoint (i32* @0 to i16), i16 ptrtoint (i32* @0 to i16), i32 ptrtoint (i32* @0 to i32), i16 ptrtoint (i32* @0 to i16))
  store i32 %v22_8003f92, i32* @r6, align 4
  %v2_8003f98 = icmp eq i32 %v22_8003f92, 0
  br i1 %v2_8003f98, label %dec_label_pc_8003fa6, label %dec_label_pc_8003f9c

dec_label_pc_8003f9c:                             ; preds = %dec_label_pc_8003f68
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003fa2 = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_8003fa6:                             ; preds = %dec_label_pc_8003f68
  %v0_8003fa6 = load i32, i32* @r4, align 4
  %v1_8003fa6 = add i32 %v0_8003fa6, 1
  %v1_8003fa8 = call i32 @__asm_sxth.i32(i32 %v1_8003fa6)
  store i32 %v1_8003fa8, i32* @r4, align 4
  %v5_8003fac = icmp slt i32 %v1_8003fa8, 4
  br i1 %v5_8003fac, label %dec_label_pc_8003f68, label %dec_label_pc_8003fae

dec_label_pc_8003fae:                             ; preds = %dec_label_pc_8003fa6
  %v2_8003fb2 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003fb4 = inttoptr i32 %v2_8003fb2 to i32*
  %v2_8003fb4 = load i32, i32* %v1_8003fb4, align 4
  %v2_8003fba = load i32, i32* inttoptr (i32 536871920 to i32*), align 16
  %v1_8003fc8 = add i32 %v2_8003fb2, 4
  %v2_8003fc8 = inttoptr i32 %v1_8003fc8 to i32*
  %v3_8003fc8 = load i32, i32* %v2_8003fc8, align 4
  %v2_8003fcc = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8003fce = add i32 %v2_8003fcc, 8
  %v2_8003fce = inttoptr i32 %v1_8003fce to i32*
  %v3_8003fce = load i32, i32* %v2_8003fce, align 4
  %v1_8003fd4 = add i32 %v2_8003fcc, 56
  %v2_8003fd4 = inttoptr i32 %v1_8003fd4 to i32*
  %v3_8003fd4 = load i32, i32* %v2_8003fd4, align 4
  %sext44 = mul i32 %v2_8003fba, 16777216
  %v5_8003fda = sdiv i32 %sext44, 16777216
  %v14_8003fda = call i32 @CO_HBconsumer_init(i32 %v3_8003fd4, i32 %v3_8003fce, i32 %v3_8003fc8, i32* inttoptr (i32 536871344 to i32*), i32 %v5_8003fda, i8 4, i32 %v2_8003fb4, i16 7)
  store i32 %v14_8003fda, i32* @r6, align 4
  %v2_8003fe0 = icmp eq i32 %v14_8003fda, 0
  br i1 %v2_8003fe0, label %dec_label_pc_800404c, label %dec_label_pc_8003fe4

dec_label_pc_8003fe4:                             ; preds = %dec_label_pc_8003fae
  call void @CO_delete(i32 %CANbaseAddress)
  %v0_8003fea = load i32, i32* @r6, align 4
  br label %dec_label_pc_8003cf8

dec_label_pc_800404c:                             ; preds = %dec_label_pc_8003fae
  br label %dec_label_pc_8003cf8

; uselistorder directives
  uselistorder i32 %v1_8003fa8, { 1, 2, 0 }
  uselistorder i32 %v3_8003f84, { 1, 0 }
  uselistorder i32 %v1_8003f1a, { 1, 2, 0 }
  uselistorder i32 %v3_8003ef6, { 1, 0 }
  uselistorder i32 %v2_8003e34, { 1, 0 }
  uselistorder i32 %v2_8003df0, { 1, 0 }
  uselistorder i32 %v0_8003de8, { 1, 0 }
  uselistorder i32 %v1_8003d84, { 1, 2, 0 }
  uselistorder i32 %v1_8003c9c, { 1, 2, 0 }
  uselistorder i32 %v1_8003c7e, { 1, 2, 0 }
  uselistorder i32 %v1_8003c3a, { 1, 2, 0 }
  uselistorder i16 1, { 2, 3, 1, 0 }
  uselistorder i16 ptrtoint (i32* @0 to i16), { 6, 7, 8, 3, 4, 5, 0, 1, 2 }
  uselistorder void (i32)* @CO_CANsetConfigurationMode, { 1, 0 }
  uselistorder i32 %CANbaseAddress, { 5, 6, 7, 4, 3, 2, 1, 0, 8, 9 }
  uselistorder label %dec_label_pc_8003f68, { 1, 0 }
  uselistorder label %dec_label_pc_8003eda, { 1, 0 }
  uselistorder label %dec_label_pc_8003d62, { 1, 0 }
  uselistorder label %dec_label_pc_8003d28, { 1, 0 }
  uselistorder label %dec_label_pc_8003d00, { 1, 0 }
  uselistorder label %dec_label_pc_8003cca, { 1, 0 }
  uselistorder label %dec_label_pc_8003c88, { 1, 0 }
  uselistorder label %dec_label_pc_8003c6a, { 1, 0 }
  uselistorder label %dec_label_pc_8003c26, { 1, 0 }
}

define i8 @CO_isError(i32 %em, i8 %errorBit) local_unnamed_addr {
entry:
  %tmp = sext i8 %errorBit to i32
  %v4_8004054 = sdiv i32 %tmp, 8
  %v3_8004058 = urem i32 %tmp, 8
  %v6_800405c = shl i32 1, %v3_8004058
  %v2_8004062 = icmp eq i32 %em, 0
  br i1 %v2_8004062, label %dec_label_pc_8004078, label %dec_label_pc_8004066

dec_label_pc_8004066:                             ; preds = %entry
  %v1_8004066 = add i32 %em, 4
  %v2_8004066 = inttoptr i32 %v1_8004066 to i8*
  %v3_8004066 = load i8, i8* %v2_8004066, align 1
  %v4_8004066 = zext i8 %v3_8004066 to i32
  %v7_800406a = icmp sgt i32 %v4_8004066, %v4_8004054
  br i1 %v7_800406a, label %dec_label_pc_800406c, label %dec_label_pc_8004078

dec_label_pc_800406c:                             ; preds = %dec_label_pc_8004066
  %v1_800406c = inttoptr i32 %em to i32*
  %v2_800406c = load i32, i32* %v1_800406c, align 4
  %v2_800406e = add i32 %v2_800406c, %v4_8004054
  %v3_800406e = inttoptr i32 %v2_800406e to i8*
  %v4_800406e = load i8, i8* %v3_800406e, align 1
  %v6_800406e = zext i8 %v4_800406e to i32
  %v2_8004070 = and i32 %v6_800406e, %v6_800405c
  %v4_8004070 = icmp eq i32 %v2_8004070, 0
  br i1 %v4_8004070, label %dec_label_pc_8004078, label %dec_label_pc_8004076

dec_label_pc_8004076:                             ; preds = %dec_label_pc_800406c
  br label %dec_label_pc_8004078

dec_label_pc_8004078:                             ; preds = %dec_label_pc_8004066, %dec_label_pc_800406c, %entry, %dec_label_pc_8004076
  %v14_8004078.off0 = phi i8 [ 0, %dec_label_pc_8004066 ], [ 0, %dec_label_pc_800406c ], [ 0, %entry ], [ 1, %dec_label_pc_8004076 ]
  ret i8 %v14_8004078.off0

; uselistorder directives
  uselistorder i32 %v4_8004054, { 1, 0 }
  uselistorder i32 %tmp, { 1, 0 }
  uselistorder label %dec_label_pc_8004078, { 3, 1, 0, 2 }
}

define void @CO_memcpy(i8* %dest, i8* %src, i16 %size) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %tmp9 = ptrtoint i8* %src to i32
  %tmp10 = ptrtoint i8* %dest to i32
  store i32 %tmp10, i32* %r0.global-to-local, align 4
  store i32 %tmp10, i32* @r3, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v7_800408c5 = icmp sgt i16 %size, 0
  br i1 %v7_800408c5, label %dec_label_pc_8004082.preheader, label %dec_label_pc_800408e

dec_label_pc_8004082.preheader:                   ; preds = %entry
  %v5_800408215 = load i8, i8* %src, align 1
  store i8 %v5_800408215, i8* %dest, align 1
  %v0_800408617 = load i32, i32* %r0.global-to-local, align 4
  %v1_800408618 = add i32 %v0_800408617, 1
  %v1_800408819 = urem i32 %v1_800408618, 65536
  store i32 %v1_800408819, i32* %r0.global-to-local, align 4
  %v3_800408a20 = trunc i32 %v1_800408618 to i16
  %v7_800408c21 = icmp slt i16 %v3_800408a20, %size
  br i1 %v7_800408c21, label %dec_label_pc_8004082.dec_label_pc_8004082_crit_edge, label %dec_label_pc_800408e

dec_label_pc_8004082.dec_label_pc_8004082_crit_edge: ; preds = %dec_label_pc_8004082.preheader, %dec_label_pc_8004082.dec_label_pc_8004082_crit_edge
  %v1_800408822 = phi i32 [ %v1_8004088, %dec_label_pc_8004082.dec_label_pc_8004082_crit_edge ], [ %v1_800408819, %dec_label_pc_8004082.preheader ]
  %v2_8004084.pre = load i32, i32* @r3, align 4
  %v3_8004082 = add i32 %v1_800408822, %tmp9
  %v4_8004082 = inttoptr i32 %v3_8004082 to i8*
  %v5_8004082 = load i8, i8* %v4_8004082, align 1
  %v4_8004084 = add i32 %v1_800408822, %v2_8004084.pre
  %v5_8004084 = inttoptr i32 %v4_8004084 to i8*
  store i8 %v5_8004082, i8* %v5_8004084, align 1
  %v0_8004086 = load i32, i32* %r0.global-to-local, align 4
  %v1_8004086 = add i32 %v0_8004086, 1
  %v1_8004088 = urem i32 %v1_8004086, 65536
  store i32 %v1_8004088, i32* %r0.global-to-local, align 4
  %v3_800408a = trunc i32 %v1_8004086 to i16
  %v7_800408c = icmp slt i16 %v3_800408a, %size
  br i1 %v7_800408c, label %dec_label_pc_8004082.dec_label_pc_8004082_crit_edge, label %dec_label_pc_800408e

dec_label_pc_800408e:                             ; preds = %dec_label_pc_8004082.preheader, %dec_label_pc_8004082.dec_label_pc_8004082_crit_edge, %entry
  ret void

; uselistorder directives
  uselistorder i32 %v1_8004086, { 1, 0 }
  uselistorder i32 %v1_800408822, { 1, 0 }
  uselistorder i32 %v1_800408819, { 1, 0 }
  uselistorder i32 %v1_800408618, { 1, 0 }
  uselistorder i32* %r0.global-to-local, { 3, 2, 1, 4, 5, 0 }
  uselistorder i16 %size, { 2, 0, 1 }
  uselistorder label %dec_label_pc_800408e, { 1, 0, 2 }
  uselistorder label %dec_label_pc_8004082.dec_label_pc_8004082_crit_edge, { 1, 0 }
}

define void @CO_memcpySwap2(i8* %dest, i8* %src) local_unnamed_addr {
entry:
  %tmp = ptrtoint i8* %src to i32
  %tmp1 = ptrtoint i8* %dest to i32
  %v2_8004096 = load i8, i8* %src, align 1
  store i8 %v2_8004096, i8* %dest, align 1
  %v1_800409a = add i32 %tmp, 1
  %v2_800409a = inttoptr i32 %v1_800409a to i8*
  %v3_800409a = load i8, i8* %v2_800409a, align 1
  %v3_800409c = add i32 %tmp1, 1
  %v4_800409c = inttoptr i32 %v3_800409c to i8*
  store i8 %v3_800409a, i8* %v4_800409c, align 1
  ret void
}

define void @CO_memcpySwap4(i8* %dest, i8* %src) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %tmp = ptrtoint i8* %src to i32
  %tmp1 = ptrtoint i8* %dest to i32
  store i32 %tmp1, i32* %r2.global-to-local, align 4
  store i32 %tmp, i32* %r3.global-to-local, align 4
  %v2_80040a6 = load i8, i8* %src, align 1
  store i8 %v2_80040a6, i8* %dest, align 1
  %v1_80040aa = add i32 %tmp, 1
  %v2_80040aa = inttoptr i32 %v1_80040aa to i8*
  %v3_80040aa = load i8, i8* %v2_80040aa, align 1
  %v2_80040ac = load i32, i32* %r2.global-to-local, align 4
  %v3_80040ac = add i32 %v2_80040ac, 1
  %v4_80040ac = inttoptr i32 %v3_80040ac to i8*
  store i8 %v3_80040aa, i8* %v4_80040ac, align 1
  %v0_80040ae = load i32, i32* %r3.global-to-local, align 4
  %v1_80040ae = add i32 %v0_80040ae, 2
  %v2_80040ae = inttoptr i32 %v1_80040ae to i8*
  %v3_80040ae = load i8, i8* %v2_80040ae, align 1
  %v2_80040b0 = load i32, i32* %r2.global-to-local, align 4
  %v3_80040b0 = add i32 %v2_80040b0, 2
  %v4_80040b0 = inttoptr i32 %v3_80040b0 to i8*
  store i8 %v3_80040ae, i8* %v4_80040b0, align 1
  %v0_80040b2 = load i32, i32* %r3.global-to-local, align 4
  %v1_80040b2 = add i32 %v0_80040b2, 3
  %v2_80040b2 = inttoptr i32 %v1_80040b2 to i8*
  %v3_80040b2 = load i8, i8* %v2_80040b2, align 1
  %v2_80040b4 = load i32, i32* %r2.global-to-local, align 4
  %v3_80040b4 = add i32 %v2_80040b4, 3
  %v4_80040b4 = inttoptr i32 %v3_80040b4 to i8*
  store i8 %v3_80040b2, i8* %v4_80040b4, align 1
  ret void
}

define i32 @CO_process(i32 %CO, i16 %timeDifference_ms, i16* %timerNext_ms) local_unnamed_addr {
entry:
  %tmp = ptrtoint i16* %timerNext_ms to i32
  %tmp7 = sext i16 %timeDifference_ms to i32
  %v6_80040b8 = load i32, i32* @r5, align 4
  %v9_80040b8 = load i32, i32* @r6, align 4
  %v12_80040b8 = load i32, i32* @r7, align 4
  store i32 %CO, i32* @r4, align 4
  store i32 %tmp7, i32* @r6, align 4
  store i32 %tmp, i32* @r5, align 4
  %v1_80040c8 = add i32 %CO, 16
  %v2_80040c8 = inttoptr i32 %v1_80040c8 to i32*
  %v3_80040c8 = load i32, i32* %v2_80040c8, align 4
  %v1_80040ca = inttoptr i32 %v3_80040c8 to i8*
  %v2_80040ca = load i8, i8* %v1_80040ca, align 1
  %v7_80040cc = icmp eq i8 %v2_80040ca, 127
  br i1 %v7_80040cc, label %dec_label_pc_80040d8, label %dec_label_pc_80040d0

dec_label_pc_80040d0:                             ; preds = %entry
  %v3_80040d0 = load i32, i32* %v2_80040c8, align 4
  %v1_80040d2 = inttoptr i32 %v3_80040d0 to i8*
  %v2_80040d2 = load i8, i8* %v1_80040d2, align 1
  %v7_80040d4 = icmp eq i8 %v2_80040d2, 5
  br i1 %v7_80040d4, label %dec_label_pc_80040d8, label %dec_label_pc_80040dc

dec_label_pc_80040d8:                             ; preds = %dec_label_pc_80040d0, %entry
  br label %dec_label_pc_80040dc

dec_label_pc_80040dc:                             ; preds = %dec_label_pc_80040d0, %dec_label_pc_80040d8
  %NMTisPreOrOperational_-24.0 = phi i8 [ 1, %dec_label_pc_80040d8 ], [ 0, %dec_label_pc_80040d0 ]
  %v2_80040de = load i16, i16* inttoptr (i32 536871924 to i16*), align 4
  %v2_80040e0 = add i16 %v2_80040de, %timeDifference_ms
  store i16 %v2_80040e0, i16* inttoptr (i32 536871924 to i16*), align 4
  %v5_80040ec = icmp ult i16 %v2_80040e0, 50
  br i1 %v5_80040ec, label %dec_label_pc_80040fc, label %dec_label_pc_80040ee

dec_label_pc_80040ee:                             ; preds = %dec_label_pc_80040dc
  %v2_80040f0 = load i16, i16* inttoptr (i32 536871924 to i16*), align 4
  %v1_80040f2 = add i16 %v2_80040f0, -50
  store i16 %v1_80040f2, i16* inttoptr (i32 536871924 to i16*), align 4
  %v0_80040f6 = load i32, i32* @r4, align 4
  %v1_80040f6 = add i32 %v0_80040f6, 16
  %v2_80040f6 = inttoptr i32 %v1_80040f6 to i32*
  %v3_80040f6 = load i32, i32* %v2_80040f6, align 4
  call void @CO_NMT_blinkingProcess50ms(i32 %v3_80040f6)
  br label %dec_label_pc_80040fc

dec_label_pc_80040fc:                             ; preds = %dec_label_pc_80040dc, %dec_label_pc_80040ee
  %v0_80040fc = load i32, i32* @r5, align 4
  %v2_80040fc = icmp eq i32 %v0_80040fc, 0
  br i1 %v2_80040fc, label %dec_label_pc_800410a, label %dec_label_pc_8004100

dec_label_pc_8004100:                             ; preds = %dec_label_pc_80040fc
  %v1_8004100 = inttoptr i32 %v0_80040fc to i16*
  %v2_8004100 = load i16, i16* %v1_8004100, align 2
  %v7_8004104 = icmp ult i16 %v2_8004100, 51
  br i1 %v7_8004104, label %dec_label_pc_800410a, label %dec_label_pc_8004106

dec_label_pc_8004106:                             ; preds = %dec_label_pc_8004100
  store i16 50, i16* %v1_8004100, align 2
  br label %dec_label_pc_800410a

dec_label_pc_800410a:                             ; preds = %dec_label_pc_8004100, %dec_label_pc_80040fc, %dec_label_pc_8004106
  store i32 0, i32* @r7, align 4
  br label %dec_label_pc_800410e

dec_label_pc_800410e:                             ; preds = %dec_label_pc_800410a, %dec_label_pc_800410e
  %v0_8004110 = load i32, i32* @r4, align 4
  %v1_8004110 = add i32 %v0_8004110, 4
  %v0_8004112 = load i32, i32* @r5, align 4
  %v3_8004114 = inttoptr i32 %v1_8004110 to i32*
  %v4_8004114 = load i32, i32* %v3_8004114, align 4
  %v0_800411a = load i32, i32* @r6, align 4
  %v1_800411a = trunc i32 %v0_800411a to i16
  %v11_800411e = inttoptr i32 %v0_8004112 to i16*
  %v12_800411e = call i8 @CO_SDO_process(i32 %v4_8004114, i8 %NMTisPreOrOperational_-24.0, i16 %v1_800411a, i16 1000, i16* %v11_800411e)
  %v0_8004122 = load i32, i32* @r7, align 4
  %v1_8004122 = add i32 %v0_8004122, 1
  %v1_8004124 = urem i32 %v1_8004122, 256
  store i32 %v1_8004124, i32* @r7, align 4
  %v5_8004128 = icmp eq i32 %v1_8004124, 0
  br i1 %v5_8004128, label %dec_label_pc_800410e, label %dec_label_pc_800412a

dec_label_pc_800412a:                             ; preds = %dec_label_pc_800410e
  %v3_800412c = load i16, i16* inttoptr (i32 536871340 to i16*), align 4
  %v0_8004130 = load i32, i32* @r6, align 4
  %v2_8004130 = mul i32 %v0_8004130, 10
  %v2_8004132 = trunc i32 %v2_8004130 to i16
  %v0_8004134 = load i32, i32* @r4, align 4
  %v1_8004134 = add i32 %v0_8004134, 12
  %v2_8004134 = inttoptr i32 %v1_8004134 to i32*
  %v3_8004134 = load i32, i32* %v2_8004134, align 4
  call void @CO_EM_process(i32 %v3_8004134, i8 %NMTisPreOrOperational_-24.0, i16 %v2_8004132, i16 %v3_800412c)
  %v3_8004144 = load i8, i8* inttoptr (i32 536870964 to i8*), align 4
  %v0_8004146 = load i32, i32* @r5, align 4
  %v5_8004146 = inttoptr i32 %v0_8004146 to i16*
  %v3_8004150 = load i32, i32* inttoptr (i32 536871820 to i32*), align 4
  %v3_8004156 = load i16, i16* inttoptr (i32 536871360 to i16*), align 64
  %v0_8004158 = load i32, i32* @r4, align 4
  %v1_8004158 = add i32 %v0_8004158, 16
  %v2_8004158 = inttoptr i32 %v1_8004158 to i32*
  %v3_8004158 = load i32, i32* %v2_8004158, align 4
  %v0_800415a = load i32, i32* @r6, align 4
  %v1_800415a = trunc i32 %v0_800415a to i16
  %v17_800415e = call i32 @CO_NMT_process(i32 %v3_8004158, i16 %v1_800415a, i16 %v3_8004156, i32 %v3_8004150, i8 %v3_8004144, i8* inttoptr (i32 536871385 to i8*), i16* %v5_8004146)
  %v0_8004164 = load i32, i32* @r6, align 4
  %v1_8004164 = trunc i32 %v0_8004164 to i16
  %v0_8004166 = load i32, i32* @r4, align 4
  %v1_8004166 = add i32 %v0_8004166, 56
  %v2_8004166 = inttoptr i32 %v1_8004166 to i32*
  %v3_8004166 = load i32, i32* %v2_8004166, align 4
  call void @CO_HBconsumer_process(i32 %v3_8004166, i8 %NMTisPreOrOperational_-24.0, i16 %v1_8004164)
  store i32 %v6_80040b8, i32* @r5, align 4
  store i32 %v9_80040b8, i32* @r6, align 4
  store i32 %v12_80040b8, i32* @r7, align 4
  ret i32 %v17_800415e

; uselistorder directives
  uselistorder i32 %v1_8004124, { 1, 0 }
  uselistorder i8* inttoptr (i32 536870964 to i8*), { 1, 0 }
  uselistorder i16 50, { 2, 1, 0 }
  uselistorder i16* inttoptr (i32 536871924 to i16*), { 1, 0, 2, 3 }
  uselistorder i8 5, { 3, 4, 5, 2, 6, 1, 7, 0 }
  uselistorder i8 127, { 1, 4, 5, 6, 3, 7, 0, 2 }
  uselistorder label %dec_label_pc_800410e, { 1, 0 }
  uselistorder label %dec_label_pc_800410a, { 2, 0, 1 }
  uselistorder label %dec_label_pc_80040fc, { 1, 0 }
  uselistorder label %dec_label_pc_80040dc, { 1, 0 }
}

define void @DMA_CalcBaseAndBitshift(i32 %hdma) local_unnamed_addr {
entry:
  %r4.global-to-local = alloca i32, align 4
  store i32 %hdma, i32* %r4.global-to-local, align 4
  %v1_800435e = inttoptr i32 %hdma to i32*
  %v2_800435e = load i32, i32* %v1_800435e, align 4
  %v2_8004360 = add i32 %v2_800435e, -1073872904
  %v2_8004364 = udiv i32 %v2_8004360, 20
  %v3_8004368 = mul nuw nsw i32 %v2_8004364, 4
  %v2_800436a = add i32 %hdma, 64
  %v3_800436a = inttoptr i32 %v2_800436a to i32*
  store i32 %v3_8004368, i32* %v3_800436a, align 4
  %v1_8004370 = load i32, i32* %r4.global-to-local, align 4
  %v2_8004370 = add i32 %v1_8004370, 60
  %v3_8004370 = inttoptr i32 %v2_8004370 to i32*
  store i32 1073872896, i32* %v3_8004370, align 4
  ret void

; uselistorder directives
  uselistorder i32 %hdma, { 0, 2, 1 }
}

define void @DMA_SetConfig(i32 %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %DataLength) local_unnamed_addr {
entry:
  %v1_800437c = add i32 %hdma, 64
  %v2_800437c = inttoptr i32 %v1_800437c to i32*
  %v3_800437c = load i32, i32* %v2_800437c, align 4
  %v6_800437e = shl i32 1, %v3_800437c
  %v1_8004380 = add i32 %hdma, 60
  %v2_8004380 = inttoptr i32 %v1_8004380 to i32*
  %v3_8004380 = load i32, i32* %v2_8004380, align 4
  %v2_8004382 = add i32 %v3_8004380, 4
  %v3_8004382 = inttoptr i32 %v2_8004382 to i32*
  store i32 %v6_800437e, i32* %v3_8004382, align 4
  %v1_8004384 = inttoptr i32 %hdma to i32*
  %v2_8004384 = load i32, i32* %v1_8004384, align 4
  %v2_8004386 = add i32 %v2_8004384, 4
  %v3_8004386 = inttoptr i32 %v2_8004386 to i32*
  store i32 %DataLength, i32* %v3_8004386, align 4
  %v1_8004388 = add i32 %hdma, 4
  %v2_8004388 = inttoptr i32 %v1_8004388 to i32*
  %v3_8004388 = load i32, i32* %v2_8004388, align 4
  %v7_800438a = icmp eq i32 %v3_8004388, 16
  %v2_800438e = load i32, i32* %v1_8004384, align 4
  %v2_8004390 = add i32 %v2_800438e, 8
  %v3_8004390 = inttoptr i32 %v2_8004390 to i32*
  br i1 %v7_800438a, label %dec_label_pc_800438e, label %dec_label_pc_8004398

dec_label_pc_800438e:                             ; preds = %entry
  store i32 %DstAddress, i32* %v3_8004390, align 4
  %v2_8004392 = load i32, i32* %v1_8004384, align 4
  %v2_8004394 = add i32 %v2_8004392, 12
  %v3_8004394 = inttoptr i32 %v2_8004394 to i32*
  store i32 %SrcAddress, i32* %v3_8004394, align 4
  br label %dec_label_pc_80043a0

dec_label_pc_8004398:                             ; preds = %entry
  store i32 %SrcAddress, i32* %v3_8004390, align 4
  %v2_800439c = load i32, i32* %v1_8004384, align 4
  %v2_800439e = add i32 %v2_800439c, 12
  %v3_800439e = inttoptr i32 %v2_800439e to i32*
  store i32 %DstAddress, i32* %v3_800439e, align 4
  br label %dec_label_pc_80043a0

dec_label_pc_80043a0:                             ; preds = %dec_label_pc_800438e, %dec_label_pc_8004398
  ret void

; uselistorder directives
  uselistorder i32 %hdma, { 3, 2, 1, 0 }
  uselistorder label %dec_label_pc_80043a0, { 1, 0 }
}

define void @FLASH_MassErase() local_unnamed_addr {
entry:
  store i32 0, i32* inttoptr (i32 536871956 to i32*), align 4
  %v3_80043ac = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_80043bc = or i32 %v3_80043ac, 68
  store i32 %v2_80043bc, i32* inttoptr (i32 1073881104 to i32*), align 16
  ret void
}

define void @FLASH_PageErase(i32 %PageAddress) local_unnamed_addr {
entry:
  store i32 0, i32* inttoptr (i32 536871956 to i32*), align 4
  %v3_80043d4 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_80043d8 = or i32 %v3_80043d4, 2
  store i32 %v2_80043d8, i32* inttoptr (i32 1073881104 to i32*), align 16
  store i32 %PageAddress, i32* inttoptr (i32 1073881108 to i32*), align 4
  %v3_80043e2 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_80043e6 = or i32 %v3_80043e2, 64
  store i32 %v2_80043e6, i32* inttoptr (i32 1073881104 to i32*), align 16
  ret void
}

define void @FLASH_Program_HalfWord(i32 %Address, i16 %Data) local_unnamed_addr {
entry:
  store i32 0, i32* inttoptr (i32 536871956 to i32*), align 4
  %v3_8004400 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_8004404 = or i32 %v3_8004400, 1
  store i32 %v2_8004404, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v4_800440a = inttoptr i32 %Address to i16*
  store i16 %Data, i16* %v4_800440a, align 2
  ret void
}

define void @FLASH_SetErrorCode() local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  %v3_800441c = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v2_8004420 = and i32 %v3_800441c, 16
  %v2_8004422 = icmp eq i32 %v2_8004420, 0
  br i1 %v2_8004422, label %dec_label_pc_8004436, label %dec_label_pc_8004426

dec_label_pc_8004426:                             ; preds = %entry
  %v3_8004428 = load i32, i32* inttoptr (i32 536871956 to i32*), align 4
  %v2_800442c = or i32 %v3_8004428, 2
  store i32 %v2_800442c, i32* inttoptr (i32 536871956 to i32*), align 4
  %v0_8004434 = load i32, i32* %r0.global-to-local, align 4
  %v2_8004434 = or i32 %v0_8004434, 16
  store i32 %v2_8004434, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8004436

dec_label_pc_8004436:                             ; preds = %entry, %dec_label_pc_8004426
  %v0_80044542 = phi i32 [ 0, %entry ], [ %v2_8004434, %dec_label_pc_8004426 ]
  %v3_8004438 = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v2_800443c = and i32 %v3_8004438, 4
  %v2_800443e = icmp eq i32 %v2_800443c, 0
  br i1 %v2_800443e, label %dec_label_pc_8004452, label %dec_label_pc_8004442

dec_label_pc_8004442:                             ; preds = %dec_label_pc_8004436
  %v3_8004444 = load i32, i32* inttoptr (i32 536871956 to i32*), align 4
  %v2_8004448 = or i32 %v3_8004444, 1
  store i32 %v2_8004448, i32* inttoptr (i32 536871956 to i32*), align 4
  %v0_8004450 = load i32, i32* %r0.global-to-local, align 4
  %v2_8004450 = or i32 %v0_8004450, 4
  store i32 %v2_8004450, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8004452

dec_label_pc_8004452:                             ; preds = %dec_label_pc_8004436, %dec_label_pc_8004442
  %v0_8004454 = phi i32 [ %v0_80044542, %dec_label_pc_8004436 ], [ %v2_8004450, %dec_label_pc_8004442 ]
  store i32 %v0_8004454, i32* inttoptr (i32 1073881100 to i32*), align 4
  ret void

; uselistorder directives
  uselistorder i32* %r0.global-to-local, { 0, 2, 1, 3, 4 }
  uselistorder label %dec_label_pc_8004452, { 1, 0 }
  uselistorder label %dec_label_pc_8004436, { 1, 0 }
}

define i32 @FLASH_WaitForLastOperation(i32 %Timeout) local_unnamed_addr {
entry:
  %r4.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  store i32 %Timeout, i32* %r4.global-to-local, align 4
  %v0_8004464 = call i32 @HAL_GetTick()
  store i32 %v0_8004464, i32* %r5.global-to-local, align 4
  %v3_80044866 = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v3_800448a7 = urem i32 %v3_80044866, 2
  %v4_800448a8 = icmp eq i32 %v3_800448a7, 0
  br i1 %v4_800448a8, label %dec_label_pc_8004490, label %dec_label_pc_800446c.lr.ph

dec_label_pc_800446c.lr.ph:                       ; preds = %entry
  %v0_800446c.pre = load i32, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_800446c

dec_label_pc_800446c:                             ; preds = %dec_label_pc_800446c.lr.ph, %dec_label_pc_8004484.backedge
  %v0_800446c = phi i32 [ %v0_800446c.pre, %dec_label_pc_800446c.lr.ph ], [ %v0_800446c9, %dec_label_pc_8004484.backedge ]
  %v7_800446c = icmp eq i32 %v0_800446c, -1
  br i1 %v7_800446c, label %dec_label_pc_8004484.backedge, label %dec_label_pc_8004472

dec_label_pc_8004484.backedge:                    ; preds = %dec_label_pc_800446c, %dec_label_pc_8004476
  %v0_800446c9 = phi i32 [ %v0_800446c, %dec_label_pc_800446c ], [ %v1_800447c, %dec_label_pc_8004476 ]
  %v3_8004486 = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v3_800448a = urem i32 %v3_8004486, 2
  %v4_800448a = icmp eq i32 %v3_800448a, 0
  br i1 %v4_800448a, label %dec_label_pc_8004490, label %dec_label_pc_800446c

dec_label_pc_8004472:                             ; preds = %dec_label_pc_800446c
  %v2_8004472 = icmp eq i32 %v0_800446c, 0
  br i1 %v2_8004472, label %dec_label_pc_8004480, label %dec_label_pc_8004476

dec_label_pc_8004476:                             ; preds = %dec_label_pc_8004472
  %v0_8004476 = call i32 @HAL_GetTick()
  %v1_800447a = load i32, i32* %r5.global-to-local, align 4
  %v2_800447a = sub i32 %v0_8004476, %v1_800447a
  %v1_800447c = load i32, i32* %r4.global-to-local, align 4
  %tmp11 = icmp ugt i32 %v2_800447a, %v1_800447c
  br i1 %tmp11, label %dec_label_pc_8004480, label %dec_label_pc_8004484.backedge

dec_label_pc_8004480:                             ; preds = %dec_label_pc_8004476, %dec_label_pc_8004472
  br label %dec_label_pc_8004482

dec_label_pc_8004482:                             ; preds = %dec_label_pc_80044c0, %dec_label_pc_80044b8, %dec_label_pc_8004480
  %v14_8004482 = phi i32 [ 0, %dec_label_pc_80044c0 ], [ 1, %dec_label_pc_80044b8 ], [ 3, %dec_label_pc_8004480 ]
  ret i32 %v14_8004482

dec_label_pc_8004490:                             ; preds = %dec_label_pc_8004484.backedge, %entry
  %v3_8004492 = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v2_8004496 = and i32 %v3_8004492, 32
  %v2_8004498 = icmp eq i32 %v2_8004496, 0
  br i1 %v2_8004498, label %dec_label_pc_80044a0, label %dec_label_pc_800449c

dec_label_pc_800449c:                             ; preds = %dec_label_pc_8004490
  store i32 %v2_8004496, i32* inttoptr (i32 1073881100 to i32*), align 4
  br label %dec_label_pc_80044a0

dec_label_pc_80044a0:                             ; preds = %dec_label_pc_8004490, %dec_label_pc_800449c
  %v3_80044a2 = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v2_80044a6 = and i32 %v3_80044a2, 16
  %v2_80044a8 = icmp eq i32 %v2_80044a6, 0
  br i1 %v2_80044a8, label %dec_label_pc_80044ac, label %dec_label_pc_80044b8

dec_label_pc_80044ac:                             ; preds = %dec_label_pc_80044a0
  %v3_80044ae = load i32, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v2_80044b2 = and i32 %v3_80044ae, 4
  %v2_80044b4 = icmp eq i32 %v2_80044b2, 0
  br i1 %v2_80044b4, label %dec_label_pc_80044c0, label %dec_label_pc_80044b8

dec_label_pc_80044b8:                             ; preds = %dec_label_pc_80044ac, %dec_label_pc_80044a0
  call void @FLASH_SetErrorCode()
  br label %dec_label_pc_8004482

dec_label_pc_80044c0:                             ; preds = %dec_label_pc_80044ac
  br label %dec_label_pc_8004482

; uselistorder directives
  uselistorder i32 %v1_800447c, { 1, 0 }
  uselistorder i32 %v0_800446c, { 1, 2, 0 }
  uselistorder label %dec_label_pc_80044a0, { 1, 0 }
  uselistorder label %dec_label_pc_8004484.backedge, { 1, 0 }
  uselistorder label %dec_label_pc_800446c, { 1, 0 }
}

define i32 @HAL_ADC_ConfigChannel(i32 %hadc, %anon_struct_76* %sConfig) local_unnamed_addr {
entry:
  %r4.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  %r6.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_76* %sConfig to i32
  store i32 %hadc, i32* %r4.global-to-local, align 4
  store i32 %tmp, i32* %r5.global-to-local, align 4
  store i32 0, i32* %r6.global-to-local, align 4
  %v1_80044d8 = add i32 %hadc, 56
  %v2_80044d8 = inttoptr i32 %v1_80044d8 to i32*
  %v3_80044d8 = load i32, i32* %v2_80044d8, align 4
  %v9_80044da = icmp eq i32 %v3_80044d8, 268435456
  br i1 %v9_80044da, label %dec_label_pc_800450a, label %dec_label_pc_80044de

dec_label_pc_80044de:                             ; preds = %entry
  %v3_80044de = load i32, i32* %v2_80044d8, align 4
  %v7_80044e0 = icmp eq i32 %v3_80044de, 1
  br i1 %v7_80044e0, label %dec_label_pc_800450a, label %dec_label_pc_80044e4

dec_label_pc_80044e4:                             ; preds = %dec_label_pc_80044de
  %v3_80044e4 = load i32, i32* %v2_80044d8, align 4
  %v7_80044e6 = icmp eq i32 %v3_80044e4, 2
  br i1 %v7_80044e6, label %dec_label_pc_800450a, label %dec_label_pc_80044ea

dec_label_pc_80044ea:                             ; preds = %dec_label_pc_80044e4
  %v3_80044ea = load i32, i32* %v2_80044d8, align 4
  %v7_80044ec = icmp eq i32 %v3_80044ea, 3
  br i1 %v7_80044ec, label %dec_label_pc_800450a, label %dec_label_pc_80044f0

dec_label_pc_80044f0:                             ; preds = %dec_label_pc_80044ea
  %v3_80044f0 = load i32, i32* %v2_80044d8, align 4
  %v7_80044f2 = icmp eq i32 %v3_80044f0, 4
  br i1 %v7_80044f2, label %dec_label_pc_800450a, label %dec_label_pc_80044f6

dec_label_pc_80044f6:                             ; preds = %dec_label_pc_80044f0
  %v3_80044f6 = load i32, i32* %v2_80044d8, align 4
  %v7_80044f8 = icmp eq i32 %v3_80044f6, 5
  br i1 %v7_80044f8, label %dec_label_pc_800450a, label %dec_label_pc_80044fc

dec_label_pc_80044fc:                             ; preds = %dec_label_pc_80044f6
  %v3_80044fc = load i32, i32* %v2_80044d8, align 4
  %v7_80044fe = icmp eq i32 %v3_80044fc, 6
  br i1 %v7_80044fe, label %dec_label_pc_800450a, label %dec_label_pc_8004502

dec_label_pc_8004502:                             ; preds = %dec_label_pc_80044fc
  br label %dec_label_pc_800450a

dec_label_pc_800450a:                             ; preds = %dec_label_pc_8004502, %dec_label_pc_80044fc, %dec_label_pc_80044f6, %dec_label_pc_80044f0, %dec_label_pc_80044ea, %dec_label_pc_80044e4, %dec_label_pc_80044de, %entry
  %v2_800450e = add i32 %hadc, 64
  %v3_800450e = inttoptr i32 %v2_800450e to i8*
  %v4_800450e = load i8, i8* %v3_800450e, align 1
  %v7_8004510 = icmp eq i8 %v4_800450e, 1
  br i1 %v7_8004510, label %dec_label_pc_8004516, label %dec_label_pc_8004518

dec_label_pc_8004516:                             ; preds = %dec_label_pc_800450a, %dec_label_pc_8004656
  %storemerge = phi i32 [ %v0_8004660, %dec_label_pc_8004656 ], [ 2, %dec_label_pc_800450a ]
  ret i32 %storemerge

dec_label_pc_8004518:                             ; preds = %dec_label_pc_800450a
  store i8 1, i8* %v3_800450e, align 1
  %v0_8004520 = load i32, i32* %r4.global-to-local, align 4
  %v1_8004520 = inttoptr i32 %v0_8004520 to i32*
  %v2_8004520 = load i32, i32* %v1_8004520, align 4
  %v1_8004522 = add i32 %v2_8004520, 8
  %v2_8004522 = inttoptr i32 %v1_8004522 to i32*
  %v3_8004522 = load i32, i32* %v2_8004522, align 4
  %v2_8004526 = udiv i32 %v3_8004522, 4
  %v3_8004528 = urem i32 %v2_8004526, 2
  %v4_8004528 = icmp eq i32 %v3_8004528, 0
  br i1 %v4_8004528, label %dec_label_pc_800452e, label %dec_label_pc_800464c

dec_label_pc_800452e:                             ; preds = %dec_label_pc_8004518
  %v0_8004530 = load i32, i32* %r5.global-to-local, align 4
  %v1_8004530 = add i32 %v0_8004530, 4
  %v2_8004530 = inttoptr i32 %v1_8004530 to i32*
  %v3_8004530 = load i32, i32* %v2_8004530, align 4
  %v9_8004532 = icmp eq i32 %v3_8004530, 4097
  %v2_8004600 = load i32, i32* %v1_8004520, align 4
  %v1_8004602 = add i32 %v2_8004600, 40
  %v2_8004602 = inttoptr i32 %v1_8004602 to i32*
  %v3_8004602 = load i32, i32* %v2_8004602, align 4
  br i1 %v9_8004532, label %dec_label_pc_8004600, label %dec_label_pc_8004536

dec_label_pc_8004536:                             ; preds = %dec_label_pc_800452e
  %v1_800453a = inttoptr i32 %v0_8004530 to i8*
  %v2_800453a = load i8, i8* %v1_800453a, align 1
  %v3_800453a = zext i8 %v2_800453a to i32
  %v6_800453e = shl i32 1, %v3_800453a
  %v2_8004540 = or i32 %v6_800453e, %v3_8004602
  %v2_8004542 = load i32, i32* %v1_8004520, align 4
  %v2_8004544 = add i32 %v2_8004542, 40
  %v3_8004544 = inttoptr i32 %v2_8004544 to i32*
  store i32 %v2_8004540, i32* %v3_8004544, align 4
  %v0_800454a = load i32, i32* %r4.global-to-local, align 4
  %v1_800454a = add i32 %v0_800454a, 56
  %v2_800454a = inttoptr i32 %v1_800454a to i32*
  %v3_800454a = load i32, i32* %v2_800454a, align 4
  %v9_800454c = icmp eq i32 %v3_800454a, 268435456
  br i1 %v9_800454c, label %dec_label_pc_80045a4, label %dec_label_pc_8004550

dec_label_pc_8004550:                             ; preds = %dec_label_pc_8004536
  %v3_8004550 = load i32, i32* %v2_800454a, align 4
  %v7_8004552 = icmp eq i32 %v3_8004550, 1
  br i1 %v7_8004552, label %dec_label_pc_80045a4, label %dec_label_pc_8004556

dec_label_pc_8004556:                             ; preds = %dec_label_pc_8004550
  %v3_8004556 = load i32, i32* %v2_800454a, align 4
  %v7_8004558 = icmp eq i32 %v3_8004556, 2
  br i1 %v7_8004558, label %dec_label_pc_80045a4, label %dec_label_pc_800455c

dec_label_pc_800455c:                             ; preds = %dec_label_pc_8004556
  %v3_800455c = load i32, i32* %v2_800454a, align 4
  %v7_800455e = icmp eq i32 %v3_800455c, 3
  br i1 %v7_800455e, label %dec_label_pc_80045a4, label %dec_label_pc_8004562

dec_label_pc_8004562:                             ; preds = %dec_label_pc_800455c
  %v3_8004562 = load i32, i32* %v2_800454a, align 4
  %v7_8004564 = icmp eq i32 %v3_8004562, 4
  br i1 %v7_8004564, label %dec_label_pc_80045a4, label %dec_label_pc_8004568

dec_label_pc_8004568:                             ; preds = %dec_label_pc_8004562
  %v3_8004568 = load i32, i32* %v2_800454a, align 4
  %v7_800456a = icmp eq i32 %v3_8004568, 5
  br i1 %v7_800456a, label %dec_label_pc_80045a4, label %dec_label_pc_800456e

dec_label_pc_800456e:                             ; preds = %dec_label_pc_8004568
  %v3_800456e = load i32, i32* %v2_800454a, align 4
  %v7_8004570 = icmp eq i32 %v3_800456e, 6
  br i1 %v7_8004570, label %dec_label_pc_80045a4, label %dec_label_pc_8004574

dec_label_pc_8004574:                             ; preds = %dec_label_pc_800456e
  %v3_8004574 = load i32, i32* %v2_800454a, align 4
  %v7_8004576 = icmp eq i32 %v3_8004574, 7
  br i1 %v7_8004576, label %dec_label_pc_80045a4, label %dec_label_pc_800457a

dec_label_pc_800457a:                             ; preds = %dec_label_pc_8004574
  %v0_800457a = load i32, i32* %r5.global-to-local, align 4
  %v1_800457a = add i32 %v0_800457a, 8
  %v2_800457a = inttoptr i32 %v1_800457a to i32*
  %v3_800457a = load i32, i32* %v2_800457a, align 4
  %v1_800457c = inttoptr i32 %v0_800454a to i32*
  %v2_800457c = load i32, i32* %v1_800457c, align 4
  %v1_800457e = add i32 %v2_800457c, 20
  %v2_800457e = inttoptr i32 %v1_800457e to i32*
  %v3_800457e = load i32, i32* %v2_800457e, align 4
  %v3_8004582 = urem i32 %v3_800457e, 8
  %v9_8004584 = icmp eq i32 %v3_800457a, %v3_8004582
  br i1 %v9_8004584, label %dec_label_pc_80045a4, label %dec_label_pc_8004588

dec_label_pc_8004588:                             ; preds = %dec_label_pc_800457a
  %v2_8004588 = load i32, i32* %v1_800457c, align 4
  %v1_800458a = add i32 %v2_8004588, 20
  %v2_800458a = inttoptr i32 %v1_800458a to i32*
  %v3_800458a = load i32, i32* %v2_800458a, align 4
  %v3_800458c = and i32 %v3_800458a, -8
  %v2_8004592 = add i32 %v2_8004588, 20
  %v3_8004592 = inttoptr i32 %v2_8004592 to i32*
  store i32 %v3_800458c, i32* %v3_8004592, align 4
  %v0_8004594 = load i32, i32* %r4.global-to-local, align 4
  %v1_8004594 = inttoptr i32 %v0_8004594 to i32*
  %v2_8004594 = load i32, i32* %v1_8004594, align 4
  %v1_8004596 = add i32 %v2_8004594, 20
  %v2_8004596 = inttoptr i32 %v1_8004596 to i32*
  %v3_8004596 = load i32, i32* %v2_8004596, align 4
  %v0_8004598 = load i32, i32* %r5.global-to-local, align 4
  %v1_8004598 = add i32 %v0_8004598, 8
  %v2_8004598 = inttoptr i32 %v1_8004598 to i8*
  %v3_8004598 = load i8, i8* %v2_8004598, align 1
  %tmp18 = urem i8 %v3_8004598, 8
  %v3_800459c = zext i8 %tmp18 to i32
  %v2_800459e = or i32 %v3_800459c, %v3_8004596
  %v2_80045a0 = load i32, i32* %v1_8004594, align 4
  %v2_80045a2 = add i32 %v2_80045a0, 20
  %v3_80045a2 = inttoptr i32 %v2_80045a2 to i32*
  store i32 %v2_800459e, i32* %v3_80045a2, align 4
  br label %dec_label_pc_80045a4

dec_label_pc_80045a4:                             ; preds = %dec_label_pc_800457a, %dec_label_pc_8004574, %dec_label_pc_800456e, %dec_label_pc_8004568, %dec_label_pc_8004562, %dec_label_pc_800455c, %dec_label_pc_8004556, %dec_label_pc_8004550, %dec_label_pc_8004536, %dec_label_pc_8004588
  %v0_80045a4 = load i32, i32* %r5.global-to-local, align 4
  %v1_80045a4 = inttoptr i32 %v0_80045a4 to i32*
  %v2_80045a4 = load i32, i32* %v1_80045a4, align 4
  %v7_80045a6 = icmp eq i32 %v2_80045a4, 16
  br i1 %v7_80045a6, label %dec_label_pc_80045b6, label %dec_label_pc_80045aa

dec_label_pc_80045aa:                             ; preds = %dec_label_pc_80045a4
  %v2_80045aa = load i32, i32* %v1_80045a4, align 4
  %v7_80045ac = icmp eq i32 %v2_80045aa, 17
  br i1 %v7_80045ac, label %dec_label_pc_80045b6, label %dec_label_pc_80045b0

dec_label_pc_80045b0:                             ; preds = %dec_label_pc_80045aa
  %v2_80045b0 = load i32, i32* %v1_80045a4, align 4
  %v7_80045b2 = icmp eq i32 %v2_80045b0, 18
  br i1 %v7_80045b2, label %dec_label_pc_80045b6, label %dec_label_pc_8004656

dec_label_pc_80045b6:                             ; preds = %dec_label_pc_80045b0, %dec_label_pc_80045aa, %dec_label_pc_80045a4
  %v3_80045b8 = load i32, i32* inttoptr (i32 1073817352 to i32*), align 8
  %v2_80045ba = load i32, i32* %v1_80045a4, align 4
  %v7_80045bc = icmp eq i32 %v2_80045ba, 16
  br i1 %v7_80045bc, label %dec_label_pc_80045c0, label %dec_label_pc_80045c4

dec_label_pc_80045c0:                             ; preds = %dec_label_pc_80045b6
  br label %dec_label_pc_80045d4

dec_label_pc_80045c4:                             ; preds = %dec_label_pc_80045b6
  %v2_80045c4 = load i32, i32* %v1_80045a4, align 4
  %v7_80045c6 = icmp eq i32 %v2_80045c4, 17
  br i1 %v7_80045c6, label %dec_label_pc_80045ca, label %dec_label_pc_80045d0

dec_label_pc_80045ca:                             ; preds = %dec_label_pc_80045c4
  br label %dec_label_pc_80045d4

dec_label_pc_80045d0:                             ; preds = %dec_label_pc_80045c4
  br label %dec_label_pc_80045d4

dec_label_pc_80045d4:                             ; preds = %dec_label_pc_80045ca, %dec_label_pc_80045c0, %dec_label_pc_80045d0
  %v1_80045d4 = phi i32 [ 4194304, %dec_label_pc_80045ca ], [ 8388608, %dec_label_pc_80045c0 ], [ 16777216, %dec_label_pc_80045d0 ]
  %v2_80045d4 = or i32 %v1_80045d4, %v3_80045b8
  store i32 %v2_80045d4, i32* inttoptr (i32 1073817352 to i32*), align 8
  %v0_80045da = load i32, i32* %r5.global-to-local, align 4
  %v1_80045da = inttoptr i32 %v0_80045da to i32*
  %v2_80045da = load i32, i32* %v1_80045da, align 4
  %v7_80045dc = icmp eq i32 %v2_80045da, 16
  br i1 %v7_80045dc, label %dec_label_pc_80045e0, label %dec_label_pc_8004656

dec_label_pc_80045e0:                             ; preds = %dec_label_pc_80045d4
  br label %dec_label_pc_8004656

dec_label_pc_8004600:                             ; preds = %dec_label_pc_800452e
  %v1_8004604 = inttoptr i32 %v0_8004530 to i8*
  %v2_8004604 = load i8, i8* %v1_8004604, align 1
  %v3_8004604 = zext i8 %v2_8004604 to i32
  %v6_8004608 = shl i32 1, %v3_8004604
  %v2_800460a = sub i32 -1, %v6_8004608
  %v3_800460a = and i32 %v3_8004602, %v2_800460a
  %v2_800460c = load i32, i32* %v1_8004520, align 4
  %v2_800460e = add i32 %v2_800460c, 40
  %v3_800460e = inttoptr i32 %v2_800460e to i32*
  store i32 %v3_800460a, i32* %v3_800460e, align 4
  %v0_8004610 = load i32, i32* %r5.global-to-local, align 4
  %v1_8004610 = inttoptr i32 %v0_8004610 to i32*
  %v2_8004610 = load i32, i32* %v1_8004610, align 4
  %v7_8004612 = icmp eq i32 %v2_8004610, 16
  br i1 %v7_8004612, label %dec_label_pc_8004622, label %dec_label_pc_8004616

dec_label_pc_8004616:                             ; preds = %dec_label_pc_8004600
  %v2_8004616 = load i32, i32* %v1_8004610, align 4
  %v7_8004618 = icmp eq i32 %v2_8004616, 17
  br i1 %v7_8004618, label %dec_label_pc_8004622, label %dec_label_pc_800461c

dec_label_pc_800461c:                             ; preds = %dec_label_pc_8004616
  %v2_800461c = load i32, i32* %v1_8004610, align 4
  %v7_800461e = icmp eq i32 %v2_800461c, 18
  br i1 %v7_800461e, label %dec_label_pc_8004622, label %dec_label_pc_8004656

dec_label_pc_8004622:                             ; preds = %dec_label_pc_800461c, %dec_label_pc_8004616, %dec_label_pc_8004600
  %v3_8004624 = load i32, i32* inttoptr (i32 1073817352 to i32*), align 8
  %v2_8004626 = load i32, i32* %v1_8004610, align 4
  %v7_8004628 = icmp eq i32 %v2_8004626, 16
  br i1 %v7_8004628, label %dec_label_pc_8004630, label %dec_label_pc_8004634

dec_label_pc_8004630:                             ; preds = %dec_label_pc_8004622
  br label %dec_label_pc_8004644

dec_label_pc_8004634:                             ; preds = %dec_label_pc_8004622
  %v2_8004634 = load i32, i32* %v1_8004610, align 4
  %v7_8004636 = icmp eq i32 %v2_8004634, 17
  br i1 %v7_8004636, label %dec_label_pc_800463a, label %dec_label_pc_8004640

dec_label_pc_800463a:                             ; preds = %dec_label_pc_8004634
  br label %dec_label_pc_8004644

dec_label_pc_8004640:                             ; preds = %dec_label_pc_8004634
  br label %dec_label_pc_8004644

dec_label_pc_8004644:                             ; preds = %dec_label_pc_800463a, %dec_label_pc_8004630, %dec_label_pc_8004640
  %v1_8004644 = phi i32 [ -4194305, %dec_label_pc_800463a ], [ -8388609, %dec_label_pc_8004630 ], [ -16777217, %dec_label_pc_8004640 ]
  %v3_8004644 = and i32 %v1_8004644, %v3_8004624
  store i32 %v3_8004644, i32* inttoptr (i32 1073817352 to i32*), align 8
  br label %dec_label_pc_8004656

dec_label_pc_800464c:                             ; preds = %dec_label_pc_8004518
  %v1_800464c = add i32 %v0_8004520, 68
  %v2_800464c = inttoptr i32 %v1_800464c to i32*
  %v3_800464c = load i32, i32* %v2_800464c, align 4
  %v2_8004650 = or i32 %v3_800464c, 32
  store i32 %v2_8004650, i32* %v2_800464c, align 4
  store i32 1, i32* %r6.global-to-local, align 4
  br label %dec_label_pc_8004656

dec_label_pc_8004656:                             ; preds = %dec_label_pc_80045e0, %dec_label_pc_800461c, %dec_label_pc_80045d4, %dec_label_pc_80045b0, %dec_label_pc_8004644, %dec_label_pc_800464c
  %v3_800465c = load i32, i32* %r4.global-to-local, align 4
  %v4_800465c = add i32 %v3_800465c, 64
  %v5_800465c = inttoptr i32 %v4_800465c to i8*
  store i8 0, i8* %v5_800465c, align 1
  %v0_8004660 = load i32, i32* %r6.global-to-local, align 4
  br label %dec_label_pc_8004516

; uselistorder directives
  uselistorder i32* %r6.global-to-local, { 1, 0, 2 }
  uselistorder i8 8, { 0, 3, 1, 2 }
  uselistorder label %dec_label_pc_8004656, { 5, 4, 1, 0, 2, 3 }
  uselistorder label %dec_label_pc_8004644, { 2, 0, 1 }
  uselistorder label %dec_label_pc_80045d4, { 2, 0, 1 }
  uselistorder label %dec_label_pc_80045a4, { 9, 0, 1, 2, 3, 4, 5, 6, 7, 8 }
  uselistorder label %dec_label_pc_8004516, { 1, 0 }
}

define i32 @HAL_ADC_Init(i32 %hadc) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  %v3_8004674 = load i32, i32* @r4, align 4
  %v6_8004674 = load i32, i32* @r5, align 4
  %v9_8004674 = load i32, i32* @r6, align 4
  store i32 %hadc, i32* @r4, align 4
  store i32 0, i32* @r6, align 4
  store i32 0, i32* @r5, align 4
  %v2_800467c = icmp eq i32 %hadc, 0
  br i1 %v2_800467c, label %dec_label_pc_8004682, label %dec_label_pc_8004684

dec_label_pc_8004682:                             ; preds = %dec_label_pc_800481e, %dec_label_pc_80047f4, %dec_label_pc_8004806, %entry
  %storemerge = phi i32 [ 1, %entry ], [ 1, %dec_label_pc_8004806 ], [ %v0_8004828.pre, %dec_label_pc_80047f4 ], [ 1, %dec_label_pc_800481e ]
  store i32 %v3_8004674, i32* @r4, align 4
  store i32 %v6_8004674, i32* @r5, align 4
  store i32 %v9_8004674, i32* @r6, align 4
  ret i32 %storemerge

dec_label_pc_8004684:                             ; preds = %entry
  %v1_8004684 = add i32 %hadc, 68
  %v2_8004684 = inttoptr i32 %v1_8004684 to i32*
  %v3_8004684 = load i32, i32* %v2_8004684, align 4
  %v2_8004686 = icmp eq i32 %v3_8004684, 0
  br i1 %v2_8004686, label %dec_label_pc_800468a, label %dec_label_pc_8004698

dec_label_pc_800468a:                             ; preds = %dec_label_pc_8004684
  %v2_800468a = add i32 %hadc, 72
  %v3_800468a = inttoptr i32 %v2_800468a to i32*
  store i32 0, i32* %v3_800468a, align 4
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_8004690 = load i32, i32* @r4, align 4
  %v4_8004690 = add i32 %v3_8004690, 64
  %v5_8004690 = inttoptr i32 %v4_8004690 to i8*
  store i8 0, i8* %v5_8004690, align 1
  %v0_8004692 = load i32, i32* @r4, align 4
  call void @HAL_ADC_MspInit(i32 %v0_8004692)
  %v0_8004698.pre = load i32, i32* @r4, align 4
  %v0_80046a2.pre = load i32, i32* @r6, align 4
  br label %dec_label_pc_8004698

dec_label_pc_8004698:                             ; preds = %dec_label_pc_8004684, %dec_label_pc_800468a
  %v0_80046a2 = phi i32 [ 0, %dec_label_pc_8004684 ], [ %v0_80046a2.pre, %dec_label_pc_800468a ]
  %v1_80046be = phi i32 [ %hadc, %dec_label_pc_8004684 ], [ %v0_8004698.pre, %dec_label_pc_800468a ]
  %v1_8004698 = add i32 %v1_80046be, 68
  %v2_8004698 = inttoptr i32 %v1_8004698 to i32*
  %v3_8004698 = load i32, i32* %v2_8004698, align 4
  store i32 16, i32* %r1.global-to-local, align 4
  %v2_800469c = and i32 %v3_8004698, 16
  %tmp24 = or i32 %v0_80046a2, %v2_800469c
  %tmp25 = icmp eq i32 %tmp24, 0
  br i1 %tmp25, label %dec_label_pc_80046a6, label %dec_label_pc_800481e

dec_label_pc_80046a6:                             ; preds = %dec_label_pc_8004698
  %v1_80046a6 = inttoptr i32 %v1_80046be to i32*
  %v2_80046a6 = load i32, i32* %v1_80046a6, align 4
  %v1_80046a8 = add i32 %v2_80046a6, 8
  %v2_80046a8 = inttoptr i32 %v1_80046a8 to i32*
  %v3_80046a8 = load i32, i32* %v2_80046a8, align 4
  store i32 4, i32* %r1.global-to-local, align 4
  %v2_80046ac = udiv i32 %v3_80046a8, 4
  %v3_80046ae = urem i32 %v2_80046ac, 2
  %v4_80046ae = icmp eq i32 %v3_80046ae, 0
  br i1 %v4_80046ae, label %dec_label_pc_80046b4, label %dec_label_pc_800481e

dec_label_pc_80046b4:                             ; preds = %dec_label_pc_80046a6
  %v3_80046b4 = load i32, i32* %v2_8004698, align 4
  %v3_80046b8 = and i32 %v3_80046b4, -259
  store i32 2, i32* %r1.global-to-local, align 4
  %v2_80046bc = or i32 %v3_80046b8, 2
  store i32 %v2_80046bc, i32* %v2_8004698, align 4
  %v0_80046c0 = load i32, i32* @r4, align 4
  %v1_80046c0 = inttoptr i32 %v0_80046c0 to i32*
  %v2_80046c0 = load i32, i32* %v1_80046c0, align 4
  %v1_80046c2 = add i32 %v2_80046c0, 8
  %v2_80046c2 = inttoptr i32 %v1_80046c2 to i32*
  %v3_80046c2 = load i32, i32* %v2_80046c2, align 4
  %v3_80046c6 = urem i32 %v3_80046c2, 4
  %v7_80046c8 = icmp eq i32 %v3_80046c6, 1
  br i1 %v7_80046c8, label %dec_label_pc_80046cc, label %dec_label_pc_80046ee

dec_label_pc_80046cc:                             ; preds = %dec_label_pc_80046b4
  %v2_80046cc = load i32, i32* %v1_80046c0, align 4
  %v1_80046ce = inttoptr i32 %v2_80046cc to i32*
  %v2_80046ce = load i32, i32* %v1_80046ce, align 4
  %v3_80046d2 = urem i32 %v2_80046ce, 2
  %v4_80046d2 = icmp eq i32 %v3_80046d2, 0
  br i1 %v4_80046d2, label %dec_label_pc_80046d8, label %dec_label_pc_80046ea.thread

dec_label_pc_80046d8:                             ; preds = %dec_label_pc_80046cc
  %v2_80046d8 = load i32, i32* %v1_80046c0, align 4
  %v1_80046da = add i32 %v2_80046d8, 12
  %v2_80046da = inttoptr i32 %v1_80046da to i32*
  %v3_80046da = load i32, i32* %v2_80046da, align 4
  %v0_80046dc = load i32, i32* %r1.global-to-local, align 4
  %v3_80046dc = mul i32 %v0_80046dc, 16384
  store i32 %v3_80046dc, i32* %r1.global-to-local, align 4
  %v2_80046de = and i32 %v3_80046dc, %v3_80046da
  %v9_80046e0 = icmp eq i32 %v2_80046de, %v3_80046dc
  br i1 %v9_80046e0, label %dec_label_pc_80046ea.thread, label %dec_label_pc_80046ee

dec_label_pc_80046ea.thread:                      ; preds = %dec_label_pc_80046d8, %dec_label_pc_80046cc
  br label %dec_label_pc_800470e

dec_label_pc_80046ee:                             ; preds = %dec_label_pc_80046d8, %dec_label_pc_80046b4
  %v2_80046ee = load i32, i32* %v1_80046c0, align 4
  %v1_80046f0 = add i32 %v2_80046ee, 12
  %v2_80046f0 = inttoptr i32 %v1_80046f0 to i32*
  %v3_80046f0 = load i32, i32* %v2_80046f0, align 4
  store i32 24, i32* %r1.global-to-local, align 4
  %v3_80046f4 = and i32 %v3_80046f0, -25
  %v1_80046f6 = add i32 %v0_80046c0, 8
  %v2_80046f6 = inttoptr i32 %v1_80046f6 to i32*
  %v3_80046f6 = load i32, i32* %v2_80046f6, align 4
  store i32 %v3_80046f6, i32* %r1.global-to-local, align 4
  %v2_80046f8 = or i32 %v3_80046f6, %v3_80046f4
  %v2_80046fa = load i32, i32* %v1_80046c0, align 4
  store i32 %v2_80046fa, i32* %r1.global-to-local, align 4
  %v2_80046fc = add i32 %v2_80046fa, 12
  %v3_80046fc = inttoptr i32 %v2_80046fc to i32*
  store i32 %v2_80046f8, i32* %v3_80046fc, align 4
  %v0_80046fe = load i32, i32* @r4, align 4
  %v1_80046fe = inttoptr i32 %v0_80046fe to i32*
  %v2_80046fe = load i32, i32* %v1_80046fe, align 4
  %v1_8004700 = add i32 %v2_80046fe, 16
  %v2_8004700 = inttoptr i32 %v1_8004700 to i32*
  %v3_8004700 = load i32, i32* %v2_8004700, align 4
  %v3_8004704 = urem i32 %v3_8004700, 1073741824
  %v1_8004706 = add i32 %v0_80046fe, 4
  %v2_8004706 = inttoptr i32 %v1_8004706 to i32*
  %v3_8004706 = load i32, i32* %v2_8004706, align 4
  store i32 %v3_8004706, i32* %r1.global-to-local, align 4
  %v2_8004708 = or i32 %v3_8004706, %v3_8004704
  %v2_800470a = load i32, i32* %v1_80046fe, align 4
  store i32 %v2_800470a, i32* %r1.global-to-local, align 4
  %v2_800470c = add i32 %v2_800470a, 16
  %v3_800470c = inttoptr i32 %v2_800470c to i32*
  store i32 %v2_8004708, i32* %v3_800470c, align 4
  %v0_800470e.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_800470e

dec_label_pc_800470e:                             ; preds = %dec_label_pc_80046ea.thread, %dec_label_pc_80046ee
  %v0_8004716 = phi i32 [ %v0_80046c0, %dec_label_pc_80046ea.thread ], [ %v0_800470e.pre, %dec_label_pc_80046ee ]
  %v1_800470e = inttoptr i32 %v0_8004716 to i32*
  %v2_800470e = load i32, i32* %v1_800470e, align 4
  %v1_8004710 = add i32 %v2_800470e, 12
  %v2_8004710 = inttoptr i32 %v1_8004710 to i32*
  %v3_8004710 = load i32, i32* %v2_8004710, align 4
  store i32 -130535, i32* %r1.global-to-local, align 4
  %v2_8004714 = and i32 %v3_8004710, -130535
  %v2_8004716 = load i32, i32* %v1_800470e, align 4
  store i32 %v2_8004716, i32* %r1.global-to-local, align 4
  %v2_8004718 = add i32 %v2_8004716, 12
  %v3_8004718 = inttoptr i32 %v2_8004718 to i32*
  store i32 %v2_8004714, i32* %v3_8004718, align 4
  %v0_800471a = load i32, i32* @r4, align 4
  %v1_800471a = add i32 %v0_800471a, 24
  %v2_800471a = inttoptr i32 %v1_800471a to i32*
  %v3_800471a = load i32, i32* %v2_800471a, align 4
  %v3_800471c = mul i32 %v3_800471a, 16384
  %v1_800471e = add i32 %v0_800471a, 28
  %v2_800471e = inttoptr i32 %v1_800471e to i32*
  %v3_800471e = load i32, i32* %v2_800471e, align 4
  %v3_8004720 = mul i32 %v3_800471e, 32768
  store i32 %v3_8004720, i32* %r1.global-to-local, align 4
  %v2_8004722 = or i32 %v3_8004720, %v3_800471c
  %v1_8004724 = add i32 %v0_800471a, 32
  %v2_8004724 = inttoptr i32 %v1_8004724 to i32*
  %v3_8004724 = load i32, i32* %v2_8004724, align 4
  %v3_8004726 = mul i32 %v3_8004724, 8192
  store i32 %v3_8004726, i32* %r1.global-to-local, align 4
  %v2_8004728 = or i32 %v3_8004726, %v2_8004722
  %v1_800472a = add i32 %v0_800471a, 52
  %v2_800472a = inttoptr i32 %v1_800472a to i32*
  %v3_800472a = load i32, i32* %v2_800472a, align 4
  %v7_800472c = icmp eq i32 %v3_800472a, 1
  %.22 = select i1 %v7_800472c, i32 0, i32 4096
  store i32 %.22, i32* %r1.global-to-local, align 4
  %v2_8004738 = or i32 %.22, %v2_8004728
  %v1_800473a = add i32 %v0_800471a, 12
  %v2_800473a = inttoptr i32 %v1_800473a to i32*
  %v3_800473a = load i32, i32* %v2_800473a, align 4
  store i32 %v3_800473a, i32* %r1.global-to-local, align 4
  %v2_800473c = or i32 %v2_8004738, %v3_800473a
  %v1_800473e = add i32 %v0_800471a, 16
  %v2_800473e = inttoptr i32 %v1_800473e to i32*
  %v3_800473e = load i32, i32* %v2_800473e, align 4
  %v7_8004740 = icmp eq i32 %v3_800473e, 2
  %. = select i1 %v7_8004740, i32 4, i32 0
  store i32 %., i32* %r1.global-to-local, align 4
  %v2_800474a = or i32 %., %v2_800473c
  %v1_800474c = add i32 %v0_800471a, 48
  %v2_800474c = inttoptr i32 %v1_800474c to i32*
  %v3_800474c = load i32, i32* %v2_800474c, align 4
  %v2_800474e = mul i32 %v3_800474c, 2
  store i32 %v2_800474e, i32* %r1.global-to-local, align 4
  %v2_8004750 = or i32 %v2_800474e, %v2_800474a
  %v0_8004752 = load i32, i32* @r5, align 4
  %v2_8004752 = or i32 %v0_8004752, %v2_8004750
  store i32 %v2_8004752, i32* %r5.global-to-local, align 4
  %v1_8004754 = add i32 %v0_800471a, 36
  %v2_8004754 = inttoptr i32 %v1_8004754 to i32*
  %v3_8004754 = load i32, i32* %v2_8004754, align 4
  %v7_8004756 = icmp eq i32 %v3_8004754, 1
  br i1 %v7_8004756, label %dec_label_pc_800475a, label %dec_label_pc_8004778

dec_label_pc_800475a:                             ; preds = %dec_label_pc_800470e
  %v3_800475a = load i32, i32* %v2_8004724, align 4
  %v2_800475c = icmp eq i32 %v3_800475a, 0
  br i1 %v2_800475c, label %dec_label_pc_8004760, label %dec_label_pc_8004768

dec_label_pc_8004760:                             ; preds = %dec_label_pc_800475a
  %v2_8004764 = or i32 %v2_8004752, 65536
  store i32 %v2_8004764, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8004778

dec_label_pc_8004768:                             ; preds = %dec_label_pc_800475a
  %v1_8004768 = add i32 %v0_800471a, 68
  %v2_8004768 = inttoptr i32 %v1_8004768 to i32*
  %v3_8004768 = load i32, i32* %v2_8004768, align 4
  store i32 32, i32* %r1.global-to-local, align 4
  %v2_800476c = or i32 %v3_8004768, 32
  store i32 %v2_800476c, i32* %v2_8004768, align 4
  %v0_8004770 = load i32, i32* @r4, align 4
  %v1_8004770 = add i32 %v0_8004770, 72
  %v2_8004770 = inttoptr i32 %v1_8004770 to i32*
  %v3_8004770 = load i32, i32* %v2_8004770, align 4
  store i32 1, i32* %r1.global-to-local, align 4
  %v2_8004774 = or i32 %v3_8004770, 1
  store i32 %v2_8004774, i32* %v2_8004770, align 4
  %v0_800477c.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8004778

dec_label_pc_8004778:                             ; preds = %dec_label_pc_800470e, %dec_label_pc_8004760, %dec_label_pc_8004768
  %v0_8004790 = phi i32 [ %v0_800471a, %dec_label_pc_800470e ], [ %v0_800471a, %dec_label_pc_8004760 ], [ %v0_800477c.pre, %dec_label_pc_8004768 ]
  store i32 449, i32* %r1.global-to-local, align 4
  %v1_800477c = add i32 %v0_8004790, 40
  %v2_800477c = inttoptr i32 %v1_800477c to i32*
  %v3_800477c = load i32, i32* %v2_800477c, align 4
  %v9_800477e = icmp eq i32 %v3_800477c, 449
  br i1 %v9_800477e, label %dec_label_pc_8004778.dec_label_pc_800478a_crit_edge, label %dec_label_pc_8004782

dec_label_pc_8004778.dec_label_pc_800478a_crit_edge: ; preds = %dec_label_pc_8004778
  %v1_800478e.pre = load i32, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_800478a

dec_label_pc_8004782:                             ; preds = %dec_label_pc_8004778
  %v1_8004782 = add i32 %v0_8004790, 44
  %v2_8004782 = inttoptr i32 %v1_8004782 to i32*
  %v3_8004782 = load i32, i32* %v2_8004782, align 4
  store i32 %v3_8004782, i32* %r1.global-to-local, align 4
  %v3_8004784 = load i32, i32* %v2_800477c, align 4
  %v2_8004786 = or i32 %v3_8004784, %v3_8004782
  %v0_8004788 = load i32, i32* %r5.global-to-local, align 4
  %v2_8004788 = or i32 %v0_8004788, %v2_8004786
  store i32 %v2_8004788, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_800478a

dec_label_pc_800478a:                             ; preds = %dec_label_pc_8004778.dec_label_pc_800478a_crit_edge, %dec_label_pc_8004782
  %v1_800478e = phi i32 [ %v1_800478e.pre, %dec_label_pc_8004778.dec_label_pc_800478a_crit_edge ], [ %v2_8004788, %dec_label_pc_8004782 ]
  %v1_800478a = inttoptr i32 %v0_8004790 to i32*
  %v2_800478a = load i32, i32* %v1_800478a, align 4
  %v1_800478c = add i32 %v2_800478a, 12
  %v2_800478c = inttoptr i32 %v1_800478c to i32*
  %v3_800478c = load i32, i32* %v2_800478c, align 4
  %v2_800478e = or i32 %v3_800478c, %v1_800478e
  %v2_8004792 = add i32 %v2_800478a, 12
  %v3_8004792 = inttoptr i32 %v2_8004792 to i32*
  store i32 %v2_800478e, i32* %v3_8004792, align 4
  store i32 268435456, i32* %r1.global-to-local, align 4
  %v0_8004798 = load i32, i32* @r4, align 4
  %v1_8004798 = add i32 %v0_8004798, 56
  %v2_8004798 = inttoptr i32 %v1_8004798 to i32*
  %v3_8004798 = load i32, i32* %v2_8004798, align 4
  %v9_800479a = icmp eq i32 %v3_8004798, 268435456
  br i1 %v9_800479a, label %dec_label_pc_80047cc, label %dec_label_pc_80047a2

dec_label_pc_80047a2:                             ; preds = %dec_label_pc_800478a
  %v3_80047a2 = load i32, i32* %v2_8004798, align 4
  %v7_80047a4 = icmp eq i32 %v3_80047a2, 1
  br i1 %v7_80047a4, label %dec_label_pc_80047cc, label %dec_label_pc_80047a8

dec_label_pc_80047a8:                             ; preds = %dec_label_pc_80047a2
  %v3_80047a8 = load i32, i32* %v2_8004798, align 4
  %v7_80047aa = icmp eq i32 %v3_80047a8, 2
  br i1 %v7_80047aa, label %dec_label_pc_80047cc, label %dec_label_pc_80047ae

dec_label_pc_80047ae:                             ; preds = %dec_label_pc_80047a8
  %v3_80047ae = load i32, i32* %v2_8004798, align 4
  %v7_80047b0 = icmp eq i32 %v3_80047ae, 3
  br i1 %v7_80047b0, label %dec_label_pc_80047cc, label %dec_label_pc_80047b4

dec_label_pc_80047b4:                             ; preds = %dec_label_pc_80047ae
  %v3_80047b4 = load i32, i32* %v2_8004798, align 4
  %v7_80047b6 = icmp eq i32 %v3_80047b4, 4
  br i1 %v7_80047b6, label %dec_label_pc_80047cc, label %dec_label_pc_80047ba

dec_label_pc_80047ba:                             ; preds = %dec_label_pc_80047b4
  %v3_80047ba = load i32, i32* %v2_8004798, align 4
  %v7_80047bc = icmp eq i32 %v3_80047ba, 5
  br i1 %v7_80047bc, label %dec_label_pc_80047cc, label %dec_label_pc_80047c0

dec_label_pc_80047c0:                             ; preds = %dec_label_pc_80047ba
  %v3_80047c0 = load i32, i32* %v2_8004798, align 4
  %v7_80047c2 = icmp eq i32 %v3_80047c0, 6
  br i1 %v7_80047c2, label %dec_label_pc_80047cc, label %dec_label_pc_80047c6

dec_label_pc_80047c6:                             ; preds = %dec_label_pc_80047c0
  %v3_80047c6 = load i32, i32* %v2_8004798, align 4
  %v7_80047c8 = icmp eq i32 %v3_80047c6, 7
  br i1 %v7_80047c8, label %dec_label_pc_80047cc, label %dec_label_pc_80047e8

dec_label_pc_80047cc:                             ; preds = %dec_label_pc_80047c6, %dec_label_pc_80047c0, %dec_label_pc_80047ba, %dec_label_pc_80047b4, %dec_label_pc_80047ae, %dec_label_pc_80047a8, %dec_label_pc_80047a2, %dec_label_pc_800478a
  %v1_80047cc = inttoptr i32 %v0_8004798 to i32*
  %v2_80047cc = load i32, i32* %v1_80047cc, align 4
  %v1_80047ce = add i32 %v2_80047cc, 20
  %v2_80047ce = inttoptr i32 %v1_80047ce to i32*
  %v3_80047ce = load i32, i32* %v2_80047ce, align 4
  %v3_80047d0 = and i32 %v3_80047ce, -8
  store i32 %v2_80047cc, i32* %r1.global-to-local, align 4
  %v2_80047d6 = add i32 %v2_80047cc, 20
  %v3_80047d6 = inttoptr i32 %v2_80047d6 to i32*
  store i32 %v3_80047d0, i32* %v3_80047d6, align 4
  %v0_80047d8 = load i32, i32* @r4, align 4
  %v1_80047d8 = inttoptr i32 %v0_80047d8 to i32*
  %v2_80047d8 = load i32, i32* %v1_80047d8, align 4
  %v1_80047da = add i32 %v2_80047d8, 20
  %v2_80047da = inttoptr i32 %v1_80047da to i32*
  %v3_80047da = load i32, i32* %v2_80047da, align 4
  %v1_80047dc = add i32 %v0_80047d8, 56
  %v2_80047dc = inttoptr i32 %v1_80047dc to i16*
  %v3_80047dc = load i16, i16* %v2_80047dc, align 2
  %tmp = urem i16 %v3_80047dc, 8
  %v3_80047e0 = zext i16 %tmp to i32
  store i32 %v3_80047e0, i32* %r1.global-to-local, align 4
  %v2_80047e2 = or i32 %v3_80047e0, %v3_80047da
  %v2_80047e4 = load i32, i32* %v1_80047d8, align 4
  store i32 %v2_80047e4, i32* %r1.global-to-local, align 4
  %v2_80047e6 = add i32 %v2_80047e4, 20
  %v3_80047e6 = inttoptr i32 %v2_80047e6 to i32*
  store i32 %v2_80047e2, i32* %v3_80047e6, align 4
  %v0_80047e8.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80047e8

dec_label_pc_80047e8:                             ; preds = %dec_label_pc_80047c6, %dec_label_pc_80047cc
  %v1_80047f6 = phi i32 [ %v0_8004798, %dec_label_pc_80047c6 ], [ %v0_80047e8.pre, %dec_label_pc_80047cc ]
  %v1_80047e8 = inttoptr i32 %v1_80047f6 to i32*
  %v2_80047e8 = load i32, i32* %v1_80047e8, align 4
  %v1_80047ea = add i32 %v2_80047e8, 12
  %v2_80047ea = inttoptr i32 %v1_80047ea to i32*
  %v3_80047ea = load i32, i32* %v2_80047ea, align 4
  store i32 -2092957721, i32* %r1.global-to-local, align 4
  %v2_80047ee = and i32 %v3_80047ea, -2092957721
  %v1_80047f0 = load i32, i32* %r5.global-to-local, align 4
  %v9_80047f0 = icmp eq i32 %v2_80047ee, %v1_80047f0
  br i1 %v9_80047f0, label %dec_label_pc_80047f4, label %dec_label_pc_8004806

dec_label_pc_80047f4:                             ; preds = %dec_label_pc_80047e8
  %v2_80047f6 = add i32 %v1_80047f6, 72
  %v3_80047f6 = inttoptr i32 %v2_80047f6 to i32*
  store i32 0, i32* %v3_80047f6, align 4
  %v0_80047f8 = load i32, i32* @r4, align 4
  %v1_80047f8 = add i32 %v0_80047f8, 68
  %v2_80047f8 = inttoptr i32 %v1_80047f8 to i32*
  %v3_80047f8 = load i32, i32* %v2_80047f8, align 4
  %v3_80047fc = and i32 %v3_80047f8, -4
  store i32 1, i32* %r1.global-to-local, align 4
  %v2_8004800 = or i32 %v3_80047fc, 1
  store i32 %v2_8004800, i32* %v2_80047f8, align 4
  %v0_8004828.pre = load i32, i32* @r6, align 4
  br label %dec_label_pc_8004682

dec_label_pc_8004806:                             ; preds = %dec_label_pc_80047e8
  %v1_8004806 = add i32 %v1_80047f6, 68
  %v2_8004806 = inttoptr i32 %v1_8004806 to i32*
  %v3_8004806 = load i32, i32* %v2_8004806, align 4
  %v3_800480a = and i32 %v3_8004806, -19
  store i32 16, i32* %r1.global-to-local, align 4
  %v2_800480e = or i32 %v3_800480a, 16
  store i32 %v2_800480e, i32* %v2_8004806, align 4
  %v0_8004812 = load i32, i32* @r4, align 4
  %v1_8004812 = add i32 %v0_8004812, 72
  %v2_8004812 = inttoptr i32 %v1_8004812 to i32*
  %v3_8004812 = load i32, i32* %v2_8004812, align 4
  store i32 1, i32* %r1.global-to-local, align 4
  %v2_8004816 = or i32 %v3_8004812, 1
  store i32 %v2_8004816, i32* %v2_8004812, align 4
  br label %dec_label_pc_8004682

dec_label_pc_800481e:                             ; preds = %dec_label_pc_80046a6, %dec_label_pc_8004698
  %v3_800481e = load i32, i32* %v2_8004698, align 4
  store i32 16, i32* %r1.global-to-local, align 4
  %v2_8004822 = or i32 %v3_800481e, 16
  store i32 %v2_8004822, i32* %v2_8004698, align 4
  br label %dec_label_pc_8004682

; uselistorder directives
  uselistorder i32 %v1_80047f6, { 1, 0, 2 }
  uselistorder i32 %v2_80047cc, { 1, 0, 2 }
  uselistorder i32 %v2_800474e, { 1, 0 }
  uselistorder i32 %v3_8004726, { 1, 0 }
  uselistorder i32 %v3_8004720, { 1, 0 }
  uselistorder i32 %v3_80046dc, { 1, 2, 0 }
  uselistorder i32* %v2_8004698, { 2, 3, 0, 1, 4 }
  uselistorder i32* %r5.global-to-local, { 2, 0, 3, 4, 1, 5 }
  uselistorder i32* %r1.global-to-local, { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 14, 25, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 28, 29, 30, 31 }
  uselistorder i16 8, { 1, 2, 3, 4, 0, 5 }
  uselistorder i32 72, { 7, 8, 9, 10, 18, 11, 0, 12, 13, 1, 14, 2, 15, 3, 4, 5, 6, 16, 19, 17, 20, 21, 22 }
  uselistorder label %dec_label_pc_80047e8, { 1, 0 }
  uselistorder label %dec_label_pc_800478a, { 1, 0 }
  uselistorder label %dec_label_pc_8004778, { 2, 1, 0 }
  uselistorder label %dec_label_pc_800470e, { 1, 0 }
  uselistorder label %dec_label_pc_8004698, { 1, 0 }
  uselistorder label %dec_label_pc_8004682, { 0, 2, 1, 3 }
}

define void @HAL_ADC_MspInit(i32 %hadc) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  store i32 %hadc, i32* %r0.global-to-local, align 4
  %GPIO_InitStruct_-28 = alloca %anon_struct_107, align 8
  %v3_8004834 = load i32, i32* @r4, align 4
  store i32 %hadc, i32* @r4, align 4
  %v1_800483c = inttoptr i32 %hadc to i32*
  %v2_800483c = load i32, i32* %v1_800483c, align 4
  store i32 %v2_800483c, i32* %r0.global-to-local, align 4
  %v9_800483e = icmp eq i32 %v2_800483c, 1073816576
  br i1 %v9_800483e, label %dec_label_pc_8004842, label %dec_label_pc_80048b2

dec_label_pc_8004842:                             ; preds = %entry
  store i32 1073876992, i32* %r0.global-to-local, align 4
  %v3_8004846 = load i32, i32* inttoptr (i32 1073877016 to i32*), align 8
  %v2_800484a = or i32 %v3_8004846, 512
  store i32 %v2_800484a, i32* inttoptr (i32 1073877016 to i32*), align 8
  %v4_8004860 = getelementptr inbounds %anon_struct_107, %anon_struct_107* %GPIO_InitStruct_-28, i32 0, i32 0
  store i32 192, i32* %v4_8004860, align 8
  store i32 1207959552, i32* %r0.global-to-local, align 4
  call void @HAL_GPIO_Init(i32 1207959552, %anon_struct_107* nonnull %GPIO_InitStruct_-28)
  store i32 1073872904, i32* inttoptr (i32 536872036 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536872040 to i32*), align 8
  store i32 536872036, i32* %r0.global-to-local, align 4
  store i32 0, i32* inttoptr (i32 536872044 to i32*), align 4
  store i32 128, i32* inttoptr (i32 536872048 to i32*), align 16
  store i32 256, i32* inttoptr (i32 536872052 to i32*), align 4
  store i32 1024, i32* inttoptr (i32 536872056 to i32*), align 8
  store i32 32, i32* inttoptr (i32 536872060 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536872064 to i32*), align 128
  %v2_8004898 = call i32 @HAL_DMA_Init(i32 536872036)
  store i32 %v2_8004898, i32* %r0.global-to-local, align 4
  %v3_800489c = icmp eq i32 %v2_8004898, 0
  br i1 %v3_800489c, label %dec_label_pc_80048a8, label %dec_label_pc_80048a0

dec_label_pc_80048a0:                             ; preds = %dec_label_pc_8004842
  %v3_8004898 = inttoptr i32 %v2_8004898 to i8*
  call void @_Error_Handler(i8* %v3_8004898, i32 104)
  store i32 ptrtoint (i32* @0 to i32), i32* %r0.global-to-local, align 4
  br label %dec_label_pc_80048a8

dec_label_pc_80048a8:                             ; preds = %dec_label_pc_8004842, %dec_label_pc_80048a0
  store i32 536872036, i32* %r0.global-to-local, align 4
  %v1_80048ac = load i32, i32* @r4, align 4
  %v2_80048ac = add i32 %v1_80048ac, 60
  %v3_80048ac = inttoptr i32 %v2_80048ac to i32*
  store i32 536872036, i32* %v3_80048ac, align 4
  %v0_80048ae = load i32, i32* @r4, align 4
  %v1_80048ae = load i32, i32* %r0.global-to-local, align 4
  %v2_80048ae = add i32 %v1_80048ae, 36
  %v3_80048ae = inttoptr i32 %v2_80048ae to i32*
  store i32 %v0_80048ae, i32* %v3_80048ae, align 4
  br label %dec_label_pc_80048b2

dec_label_pc_80048b2:                             ; preds = %entry, %dec_label_pc_80048a8
  store i32 %v3_8004834, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v2_8004898, { 1, 0, 2 }
  uselistorder i32* %r0.global-to-local, { 1, 2, 3, 5, 4, 6, 7, 8, 0 }
  uselistorder i32 ptrtoint (i32* @0 to i32), { 0, 6, 5, 1, 2, 3, 4, 7, 8, 9, 10 }
  uselistorder i32 104, { 1, 3, 4, 0, 2 }
  uselistorder i32 536872036, { 1, 3, 0, 4, 2 }
  uselistorder i32 %hadc, { 1, 0, 2 }
  uselistorder label %dec_label_pc_80048b2, { 1, 0 }
  uselistorder label %dec_label_pc_80048a8, { 1, 0 }
}

define i32 @HAL_CAN_ConfigFilter(i32 %hcan, %anon_struct_29* %sFilterConfig) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_29* %sFilterConfig to i32
  store i32 %hcan, i32* %r2.global-to-local, align 4
  store i32 0, i32* %r3.global-to-local, align 4
  %v2_80048ea = add i32 %tmp, 20
  %v3_80048ea = inttoptr i32 %v2_80048ea to i8*
  %v4_80048ea = load i8, i8* %v3_80048ea, align 1
  %v5_80048ea = zext i8 %v4_80048ea to i32
  %v6_80048ee = shl i32 1, %v5_80048ea
  store i32 %v6_80048ee, i32* %r3.global-to-local, align 4
  %v1_80048f2 = inttoptr i32 %hcan to i32*
  %v2_80048f2 = load i32, i32* %v1_80048f2, align 4
  %v1_80048f8 = add i32 %v2_80048f2, 512
  %v1_80048fa = inttoptr i32 %v1_80048f8 to i32*
  %v2_80048fa = load i32, i32* %v1_80048fa, align 4
  %v3_8004900 = and i32 %v2_80048fa, -16130
  %v2_8004902 = add i32 %tmp, 36
  %v3_8004902 = inttoptr i32 %v2_8004902 to i32*
  %v4_8004902 = load i32, i32* %v3_8004902, align 4
  %v3_8004904 = mul i32 %v4_8004902, 256
  %v2_8004908 = or i32 %v3_8004904, %v3_8004900
  %v2_800490a = or i32 %v2_8004908, 1
  %v2_800490c = load i32, i32* %v1_80048f2, align 4
  %v1_8004912 = add i32 %v2_800490c, 512
  %v2_8004914 = inttoptr i32 %v1_8004912 to i32*
  store i32 %v2_800490a, i32* %v2_8004914, align 4
  %v0_8004916 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004916 = inttoptr i32 %v0_8004916 to i32*
  %v2_8004916 = load i32, i32* %v1_8004916, align 4
  %v1_800491e = add i32 %v2_8004916, 540
  %v2_800491e = inttoptr i32 %v1_800491e to i32*
  %v3_800491e = load i32, i32* %v2_800491e, align 4
  %v1_8004920 = load i32, i32* %r3.global-to-local, align 4
  %v2_8004920 = sub i32 -1, %v1_8004920
  %v3_8004920 = and i32 %v3_800491e, %v2_8004920
  %v2_8004922 = load i32, i32* %v1_8004916, align 4
  %v2_800492a = add i32 %v2_8004922, 540
  %v3_800492a = inttoptr i32 %v2_800492a to i32*
  store i32 %v3_8004920, i32* %v3_800492a, align 4
  %v2_800492c = add i32 %tmp, 28
  %v3_800492c = inttoptr i32 %v2_800492c to i32*
  %v4_800492c = load i32, i32* %v3_800492c, align 4
  %v2_800492e = icmp eq i32 %v4_800492c, 0
  br i1 %v2_800492e, label %dec_label_pc_8004932, label %dec_label_pc_800497a

dec_label_pc_8004932:                             ; preds = %entry
  %v0_8004932 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004932 = inttoptr i32 %v0_8004932 to i32*
  %v2_8004932 = load i32, i32* %v1_8004932, align 4
  %v1_800493a = add i32 %v2_8004932, 524
  %v2_800493a = inttoptr i32 %v1_800493a to i32*
  %v3_800493a = load i32, i32* %v2_800493a, align 4
  %v1_800493c = load i32, i32* %r3.global-to-local, align 4
  %v2_800493c = sub i32 -1, %v1_800493c
  %v3_800493c = and i32 %v3_800493a, %v2_800493c
  %v2_800493e = load i32, i32* %v1_8004932, align 4
  %v2_8004946 = add i32 %v2_800493e, 524
  %v3_8004946 = inttoptr i32 %v2_8004946 to i32*
  store i32 %v3_800493c, i32* %v3_8004946, align 4
  %v2_8004948 = add i32 %tmp, 12
  %v3_8004948 = inttoptr i32 %v2_8004948 to i16*
  %v4_8004948 = load i16, i16* %v3_8004948, align 2
  %v5_8004948 = zext i16 %v4_8004948 to i32
  %v3_800494a = mul nuw i32 %v5_8004948, 65536
  %v2_800494c = add i32 %tmp, 4
  %v3_800494c = inttoptr i32 %v2_800494c to i16*
  %v4_800494c = load i16, i16* %v3_800494c, align 2
  %v5_800494c = zext i16 %v4_800494c to i32
  %v2_8004950 = or i32 %v5_800494c, %v3_800494a
  %v0_8004956 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004956 = inttoptr i32 %v0_8004956 to i32*
  %v2_8004956 = load i32, i32* %v1_8004956, align 4
  %v2_8004958 = add i32 %v2_8004956, 576
  %v3_800495a = inttoptr i32 %v2_80048ea to i32*
  %v4_800495a = load i32, i32* %v3_800495a, align 4
  %v3_800495c = mul i32 %v4_800495a, 8
  %v3_800495e = add i32 %v3_800495c, %v2_8004958
  %v4_800495e = inttoptr i32 %v3_800495e to i32*
  store i32 %v2_8004950, i32* %v4_800495e, align 4
  %v2_8004960 = add i32 %tmp, 8
  %v3_8004960 = inttoptr i32 %v2_8004960 to i16*
  %v4_8004960 = load i16, i16* %v3_8004960, align 2
  %v5_8004960 = zext i16 %v4_8004960 to i32
  %v3_8004962 = mul nuw i32 %v5_8004960, 65536
  %tmp5 = bitcast %anon_struct_29* %sFilterConfig to i16*
  %v3_8004964 = load i16, i16* %tmp5, align 2
  %v4_8004964 = zext i16 %v3_8004964 to i32
  %v2_8004968 = or i32 %v4_8004964, %v3_8004962
  %v0_800496e = load i32, i32* %r2.global-to-local, align 4
  %v1_800496e = inttoptr i32 %v0_800496e to i32*
  %v2_800496e = load i32, i32* %v1_800496e, align 4
  %v2_8004970 = add i32 %v2_800496e, 576
  %v4_8004972 = load i32, i32* %v3_800495a, align 4
  %v3_8004974 = mul i32 %v4_8004972, 8
  %v2_8004976 = add i32 %v3_8004974, %v2_8004970
  %v2_8004978 = add i32 %v2_8004976, 4
  %v3_8004978 = inttoptr i32 %v2_8004978 to i32*
  store i32 %v2_8004968, i32* %v3_8004978, align 4
  br label %dec_label_pc_800497a

dec_label_pc_800497a:                             ; preds = %entry, %dec_label_pc_8004932
  %v4_800497a = load i32, i32* %v3_800492c, align 4
  %v7_800497c = icmp eq i32 %v4_800497a, 1
  br i1 %v7_800497c, label %dec_label_pc_8004980, label %dec_label_pc_80049c8

dec_label_pc_8004980:                             ; preds = %dec_label_pc_800497a
  %v0_8004980 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004980 = inttoptr i32 %v0_8004980 to i32*
  %v2_8004980 = load i32, i32* %v1_8004980, align 4
  %v1_8004988 = add i32 %v2_8004980, 524
  %v2_8004988 = inttoptr i32 %v1_8004988 to i32*
  %v3_8004988 = load i32, i32* %v2_8004988, align 4
  %v1_800498a = load i32, i32* %r3.global-to-local, align 4
  %v2_800498a = or i32 %v1_800498a, %v3_8004988
  %v2_8004994 = add i32 %v2_8004980, 524
  %v3_8004994 = inttoptr i32 %v2_8004994 to i32*
  store i32 %v2_800498a, i32* %v3_8004994, align 4
  %tmp6 = bitcast %anon_struct_29* %sFilterConfig to i16*
  %v3_8004996 = load i16, i16* %tmp6, align 2
  %v4_8004996 = zext i16 %v3_8004996 to i32
  %v3_8004998 = mul nuw i32 %v4_8004996, 65536
  %v2_800499a = add i32 %tmp, 4
  %v3_800499a = inttoptr i32 %v2_800499a to i16*
  %v4_800499a = load i16, i16* %v3_800499a, align 2
  %v5_800499a = zext i16 %v4_800499a to i32
  %v2_800499e = or i32 %v5_800499a, %v3_8004998
  %v0_80049a4 = load i32, i32* %r2.global-to-local, align 4
  %v1_80049a4 = inttoptr i32 %v0_80049a4 to i32*
  %v2_80049a4 = load i32, i32* %v1_80049a4, align 4
  %v2_80049a6 = add i32 %v2_80049a4, 576
  %v3_80049a8 = inttoptr i32 %v2_80048ea to i32*
  %v4_80049a8 = load i32, i32* %v3_80049a8, align 4
  %v3_80049aa = mul i32 %v4_80049a8, 8
  %v3_80049ac = add i32 %v3_80049aa, %v2_80049a6
  %v4_80049ac = inttoptr i32 %v3_80049ac to i32*
  store i32 %v2_800499e, i32* %v4_80049ac, align 4
  %v2_80049ae = add i32 %tmp, 8
  %v3_80049ae = inttoptr i32 %v2_80049ae to i16*
  %v4_80049ae = load i16, i16* %v3_80049ae, align 2
  %v5_80049ae = zext i16 %v4_80049ae to i32
  %v3_80049b0 = mul nuw i32 %v5_80049ae, 65536
  %v2_80049b2 = add i32 %tmp, 12
  %v3_80049b2 = inttoptr i32 %v2_80049b2 to i16*
  %v4_80049b2 = load i16, i16* %v3_80049b2, align 2
  %v5_80049b2 = zext i16 %v4_80049b2 to i32
  %v2_80049b6 = or i32 %v5_80049b2, %v3_80049b0
  %v0_80049bc = load i32, i32* %r2.global-to-local, align 4
  %v1_80049bc = inttoptr i32 %v0_80049bc to i32*
  %v2_80049bc = load i32, i32* %v1_80049bc, align 4
  %v2_80049be = add i32 %v2_80049bc, 576
  %v4_80049c0 = load i32, i32* %v3_80049a8, align 4
  %v3_80049c2 = mul i32 %v4_80049c0, 8
  %v2_80049c4 = add i32 %v3_80049c2, %v2_80049be
  %v2_80049c6 = add i32 %v2_80049c4, 4
  %v3_80049c6 = inttoptr i32 %v2_80049c6 to i32*
  store i32 %v2_80049b6, i32* %v3_80049c6, align 4
  br label %dec_label_pc_80049c8

dec_label_pc_80049c8:                             ; preds = %dec_label_pc_800497a, %dec_label_pc_8004980
  %v2_80049c8 = add i32 %tmp, 24
  %v3_80049c8 = inttoptr i32 %v2_80049c8 to i32*
  %v4_80049c8 = load i32, i32* %v3_80049c8, align 4
  %v2_80049ca = icmp eq i32 %v4_80049c8, 0
  %v0_80049ce = load i32, i32* %r2.global-to-local, align 4
  %v1_80049ce = inttoptr i32 %v0_80049ce to i32*
  %v2_80049ce = load i32, i32* %v1_80049ce, align 4
  %v1_80049d6 = add i32 %v2_80049ce, 516
  %v2_80049d6 = inttoptr i32 %v1_80049d6 to i32*
  %v3_80049d6 = load i32, i32* %v2_80049d6, align 4
  %v1_80049d8 = load i32, i32* %r3.global-to-local, align 4
  br i1 %v2_80049ca, label %dec_label_pc_80049ce, label %dec_label_pc_80049e6

dec_label_pc_80049ce:                             ; preds = %dec_label_pc_80049c8
  %v2_80049d8 = sub i32 -1, %v1_80049d8
  %v3_80049d8 = and i32 %v3_80049d6, %v2_80049d8
  %v2_80049da = load i32, i32* %v1_80049ce, align 4
  %v2_80049e2 = add i32 %v2_80049da, 516
  %v3_80049e2 = inttoptr i32 %v2_80049e2 to i32*
  store i32 %v3_80049d8, i32* %v3_80049e2, align 4
  br label %dec_label_pc_80049fc

dec_label_pc_80049e6:                             ; preds = %dec_label_pc_80049c8
  %v2_80049f0 = or i32 %v1_80049d8, %v3_80049d6
  %v2_80049f2 = load i32, i32* %v1_80049ce, align 4
  %v2_80049fa = add i32 %v2_80049f2, 516
  %v3_80049fa = inttoptr i32 %v2_80049fa to i32*
  store i32 %v2_80049f0, i32* %v3_80049fa, align 4
  br label %dec_label_pc_80049fc

dec_label_pc_80049fc:                             ; preds = %dec_label_pc_80049ce, %dec_label_pc_80049e6
  %v2_80049fc = add i32 %tmp, 16
  %v3_80049fc = inttoptr i32 %v2_80049fc to i32*
  %v4_80049fc = load i32, i32* %v3_80049fc, align 4
  %v2_80049fe = icmp eq i32 %v4_80049fc, 0
  %v0_8004a02 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004a02 = inttoptr i32 %v0_8004a02 to i32*
  %v2_8004a02 = load i32, i32* %v1_8004a02, align 4
  %v1_8004a0a = add i32 %v2_8004a02, 532
  %v2_8004a0a = inttoptr i32 %v1_8004a0a to i32*
  %v3_8004a0a = load i32, i32* %v2_8004a0a, align 4
  %v1_8004a0c = load i32, i32* %r3.global-to-local, align 4
  br i1 %v2_80049fe, label %dec_label_pc_8004a02, label %dec_label_pc_8004a1a

dec_label_pc_8004a02:                             ; preds = %dec_label_pc_80049fc
  %v2_8004a0c = sub i32 -1, %v1_8004a0c
  %v3_8004a0c = and i32 %v3_8004a0a, %v2_8004a0c
  %v2_8004a0e = load i32, i32* %v1_8004a02, align 4
  %v2_8004a16 = add i32 %v2_8004a0e, 532
  %v3_8004a16 = inttoptr i32 %v2_8004a16 to i32*
  store i32 %v3_8004a0c, i32* %v3_8004a16, align 4
  br label %dec_label_pc_8004a30

dec_label_pc_8004a1a:                             ; preds = %dec_label_pc_80049fc
  %v2_8004a24 = or i32 %v1_8004a0c, %v3_8004a0a
  %v2_8004a26 = load i32, i32* %v1_8004a02, align 4
  %v2_8004a2e = add i32 %v2_8004a26, 532
  %v3_8004a2e = inttoptr i32 %v2_8004a2e to i32*
  store i32 %v2_8004a24, i32* %v3_8004a2e, align 4
  br label %dec_label_pc_8004a30

dec_label_pc_8004a30:                             ; preds = %dec_label_pc_8004a02, %dec_label_pc_8004a1a
  %v2_8004a30 = add i32 %tmp, 32
  %v3_8004a30 = inttoptr i32 %v2_8004a30 to i32*
  %v4_8004a30 = load i32, i32* %v3_8004a30, align 4
  %v7_8004a32 = icmp eq i32 %v4_8004a30, 1
  br i1 %v7_8004a32, label %dec_label_pc_8004a36, label %dec_label_pc_8004a4c

dec_label_pc_8004a36:                             ; preds = %dec_label_pc_8004a30
  %v0_8004a36 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004a36 = inttoptr i32 %v0_8004a36 to i32*
  %v2_8004a36 = load i32, i32* %v1_8004a36, align 4
  %v1_8004a3e = add i32 %v2_8004a36, 540
  %v2_8004a3e = inttoptr i32 %v1_8004a3e to i32*
  %v3_8004a3e = load i32, i32* %v2_8004a3e, align 4
  %v1_8004a40 = load i32, i32* %r3.global-to-local, align 4
  %v2_8004a40 = or i32 %v1_8004a40, %v3_8004a3e
  %v2_8004a4a = add i32 %v2_8004a36, 540
  %v3_8004a4a = inttoptr i32 %v2_8004a4a to i32*
  store i32 %v2_8004a40, i32* %v3_8004a4a, align 4
  br label %dec_label_pc_8004a4c

dec_label_pc_8004a4c:                             ; preds = %dec_label_pc_8004a30, %dec_label_pc_8004a36
  %v0_8004a4c = load i32, i32* %r2.global-to-local, align 4
  %v1_8004a4c = inttoptr i32 %v0_8004a4c to i32*
  %v2_8004a4c = load i32, i32* %v1_8004a4c, align 4
  %v1_8004a52 = add i32 %v2_8004a4c, 512
  %v1_8004a54 = inttoptr i32 %v1_8004a52 to i32*
  %v2_8004a54 = load i32, i32* %v1_8004a54, align 4
  %v3_8004a56 = and i32 %v2_8004a54, -2
  %v1_8004a60 = add i32 %v2_8004a4c, 512
  %v2_8004a62 = inttoptr i32 %v1_8004a60 to i32*
  store i32 %v3_8004a56, i32* %v2_8004a62, align 4
  ret i32 0

; uselistorder directives
  uselistorder i32 %v1_8004a0c, { 1, 0 }
  uselistorder i32 %v3_8004a0a, { 1, 0 }
  uselistorder i32* %v1_8004a02, { 1, 0, 2 }
  uselistorder i32 %v1_80049d8, { 1, 0 }
  uselistorder i32 %v3_80049d6, { 1, 0 }
  uselistorder i32* %v1_80049ce, { 1, 0, 2 }
  uselistorder i32* %r2.global-to-local, { 0, 1, 2, 5, 3, 4, 8, 6, 7, 10, 9, 11 }
  uselistorder i32 532, { 1, 0, 2 }
  uselistorder i32 516, { 1, 0, 2 }
  uselistorder i32 576, { 2, 3, 0, 1 }
  uselistorder i32 524, { 2, 3, 0, 1 }
  uselistorder i32 512, { 1, 2, 3, 4, 0 }
  uselistorder %anon_struct_29* %sFilterConfig, { 1, 0, 2 }
  uselistorder label %dec_label_pc_8004a4c, { 1, 0 }
  uselistorder label %dec_label_pc_8004a30, { 1, 0 }
  uselistorder label %dec_label_pc_80049fc, { 1, 0 }
  uselistorder label %dec_label_pc_80049c8, { 1, 0 }
  uselistorder label %dec_label_pc_800497a, { 1, 0 }
}

define i32 @HAL_CAN_DeInit(i32 %hcan) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  %v3_8004a68 = load i32, i32* @r4, align 4
  store i32 %hcan, i32* @r4, align 4
  %v2_8004a6c = icmp eq i32 %hcan, 0
  br i1 %v2_8004a6c, label %dec_label_pc_8004a72, label %dec_label_pc_8004a74

dec_label_pc_8004a72:                             ; preds = %entry, %dec_label_pc_8004a74
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8004a74 ], [ 1, %entry ]
  store i32 %v3_8004a68, i32* @r4, align 4
  ret i32 %storemerge1

dec_label_pc_8004a74:                             ; preds = %entry
  store i32 2, i32* %r1.global-to-local, align 4
  %v4_8004a78 = add i32 %hcan, 61
  %v5_8004a78 = inttoptr i32 %v4_8004a78 to i8*
  store i8 2, i8* %v5_8004a78, align 1
  %v0_8004a7a = load i32, i32* @r4, align 4
  call void @HAL_CAN_MspDeInit(i32 %v0_8004a7a)
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_8004a84 = load i32, i32* @r4, align 4
  %v4_8004a84 = add i32 %v3_8004a84, 61
  %v5_8004a84 = inttoptr i32 %v4_8004a84 to i8*
  store i8 0, i8* %v5_8004a84, align 1
  %v0_8004a8a = load i32, i32* %r1.global-to-local, align 4
  %v1_8004a8a = trunc i32 %v0_8004a8a to i8
  %v3_8004a8a = load i32, i32* @r4, align 4
  %v4_8004a8a = add i32 %v3_8004a8a, 60
  %v5_8004a8a = inttoptr i32 %v4_8004a8a to i8*
  store i8 %v1_8004a8a, i8* %v5_8004a8a, align 1
  br label %dec_label_pc_8004a72

; uselistorder directives
  uselistorder i32 %hcan, { 0, 2, 1 }
  uselistorder label %dec_label_pc_8004a72, { 1, 0 }
}

define i32 @HAL_CAN_Init(i32 %hcan) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  store i32 %hcan, i32* @r4, align 4
  store i32 0, i32* @r6, align 4
  %v2_8004a9c = icmp eq i32 %hcan, 0
  br i1 %v2_8004a9c, label %dec_label_pc_8004aa0, label %dec_label_pc_8004aa4

dec_label_pc_8004aa0:                             ; preds = %entry
  br label %dec_label_pc_8004aa2

dec_label_pc_8004aa2:                             ; preds = %dec_label_pc_8004c4a, %dec_label_pc_8004c3c, %dec_label_pc_8004c0a, %dec_label_pc_8004ae6, %dec_label_pc_8004aa0
  %v14_8004aa2 = phi i32 [ 1, %dec_label_pc_8004c4a ], [ 0, %dec_label_pc_8004c3c ], [ 3, %dec_label_pc_8004c0a ], [ 3, %dec_label_pc_8004ae6 ], [ 1, %dec_label_pc_8004aa0 ]
  ret i32 %v14_8004aa2

dec_label_pc_8004aa4:                             ; preds = %entry
  %v2_8004aa6 = add i32 %hcan, 61
  %v3_8004aa6 = inttoptr i32 %v2_8004aa6 to i8*
  %v4_8004aa6 = load i8, i8* %v3_8004aa6, align 1
  %v2_8004aa8 = icmp eq i8 %v4_8004aa6, 0
  br i1 %v2_8004aa8, label %dec_label_pc_8004aac, label %dec_label_pc_8004ab8

dec_label_pc_8004aac:                             ; preds = %dec_label_pc_8004aa4
  store i32 0, i32* %r1.global-to-local, align 4
  %v4_8004ab0 = add i32 %hcan, 60
  %v5_8004ab0 = inttoptr i32 %v4_8004ab0 to i8*
  store i8 0, i8* %v5_8004ab0, align 1
  %v0_8004ab2 = load i32, i32* @r4, align 4
  call void @HAL_CAN_MspInit(i32 %v0_8004ab2)
  %v3_8004abc.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8004ab8

dec_label_pc_8004ab8:                             ; preds = %dec_label_pc_8004aa4, %dec_label_pc_8004aac
  %v3_8004abc = phi i32 [ %hcan, %dec_label_pc_8004aa4 ], [ %v3_8004abc.pre, %dec_label_pc_8004aac ]
  store i32 2, i32* %r1.global-to-local, align 4
  %v4_8004abc = add i32 %v3_8004abc, 61
  %v5_8004abc = inttoptr i32 %v4_8004abc to i8*
  store i8 2, i8* %v5_8004abc, align 1
  %v0_8004abe = load i32, i32* @r4, align 4
  %v1_8004abe = inttoptr i32 %v0_8004abe to i32*
  %v2_8004abe = load i32, i32* %v1_8004abe, align 4
  %v1_8004ac0 = inttoptr i32 %v2_8004abe to i32*
  %v2_8004ac0 = load i32, i32* %v1_8004ac0, align 4
  %v1_8004ac2 = load i32, i32* %r1.global-to-local, align 4
  %v2_8004ac2 = sub i32 -1, %v1_8004ac2
  %v3_8004ac2 = and i32 %v2_8004ac0, %v2_8004ac2
  store i32 %v2_8004abe, i32* %r1.global-to-local, align 4
  %v2_8004ac6 = inttoptr i32 %v2_8004abe to i32*
  store i32 %v3_8004ac2, i32* %v2_8004ac6, align 4
  %v0_8004ac8 = load i32, i32* @r4, align 4
  %v1_8004ac8 = inttoptr i32 %v0_8004ac8 to i32*
  %v2_8004ac8 = load i32, i32* %v1_8004ac8, align 4
  %v1_8004aca = inttoptr i32 %v2_8004ac8 to i32*
  %v2_8004aca = load i32, i32* %v1_8004aca, align 4
  store i32 1, i32* %r1.global-to-local, align 4
  %v2_8004ace = or i32 %v2_8004aca, 1
  %v2_8004ad0 = load i32, i32* %v1_8004ac8, align 4
  store i32 %v2_8004ad0, i32* %r1.global-to-local, align 4
  %v2_8004ad2 = inttoptr i32 %v2_8004ad0 to i32*
  store i32 %v2_8004ace, i32* %v2_8004ad2, align 4
  %v0_8004ad4 = call i32 @HAL_GetTick()
  store i32 %v0_8004ad4, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8004afa

dec_label_pc_8004adc:                             ; preds = %dec_label_pc_8004afa
  %v0_8004adc = call i32 @HAL_GetTick()
  %v1_8004ae0 = load i32, i32* %r5.global-to-local, align 4
  %v2_8004ae0 = sub i32 %v0_8004adc, %v1_8004ae0
  %tmp19 = icmp ult i32 %v2_8004ae0, 11
  br i1 %tmp19, label %dec_label_pc_8004afa, label %dec_label_pc_8004ae6

dec_label_pc_8004ae6:                             ; preds = %dec_label_pc_8004adc
  %v3_8004aea = load i32, i32* @r4, align 4
  %v4_8004aea = add i32 %v3_8004aea, 61
  %v5_8004aea = inttoptr i32 %v4_8004aea to i8*
  store i8 3, i8* %v5_8004aea, align 1
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_8004af2 = load i32, i32* @r4, align 4
  %v4_8004af2 = add i32 %v3_8004af2, 60
  %v5_8004af2 = inttoptr i32 %v4_8004af2 to i8*
  store i8 0, i8* %v5_8004af2, align 1
  br label %dec_label_pc_8004aa2

dec_label_pc_8004afa:                             ; preds = %dec_label_pc_8004adc, %dec_label_pc_8004ab8
  %v0_8004afa = load i32, i32* @r4, align 4
  %v1_8004afa = inttoptr i32 %v0_8004afa to i32*
  %v2_8004afa = load i32, i32* %v1_8004afa, align 4
  %v1_8004afc = add i32 %v2_8004afa, 4
  %v2_8004afc = inttoptr i32 %v1_8004afc to i32*
  %v3_8004afc = load i32, i32* %v2_8004afc, align 4
  %v3_8004b00 = urem i32 %v3_8004afc, 2
  %v4_8004b00 = icmp eq i32 %v3_8004b00, 0
  br i1 %v4_8004b00, label %dec_label_pc_8004adc, label %dec_label_pc_8004b06

dec_label_pc_8004b06:                             ; preds = %dec_label_pc_8004afa
  %v2_8004b06 = load i32, i32* %v1_8004afa, align 4
  %v1_8004b08 = add i32 %v2_8004b06, 4
  %v2_8004b08 = inttoptr i32 %v1_8004b08 to i32*
  %v3_8004b08 = load i32, i32* %v2_8004b08, align 4
  %v3_8004b0c = urem i32 %v3_8004b08, 2
  %v4_8004b0c = icmp eq i32 %v3_8004b0c, 0
  br i1 %v4_8004b0c, label %dec_label_pc_8004c38, label %dec_label_pc_8004b12

dec_label_pc_8004b12:                             ; preds = %dec_label_pc_8004b06
  %v1_8004b12 = add i32 %v0_8004afa, 24
  %v2_8004b12 = inttoptr i32 %v1_8004b12 to i32*
  %v3_8004b12 = load i32, i32* %v2_8004b12, align 4
  %v7_8004b14 = icmp eq i32 %v3_8004b12, 1
  %v2_8004b18 = load i32, i32* %v1_8004afa, align 4
  %v1_8004b1a = inttoptr i32 %v2_8004b18 to i32*
  %v2_8004b1a = load i32, i32* %v1_8004b1a, align 4
  store i32 128, i32* %r1.global-to-local, align 4
  br i1 %v7_8004b14, label %dec_label_pc_8004b18, label %dec_label_pc_8004b26

dec_label_pc_8004b18:                             ; preds = %dec_label_pc_8004b12
  %v2_8004b1e = or i32 %v2_8004b1a, 128
  %v2_8004b20 = load i32, i32* %v1_8004afa, align 4
  store i32 %v2_8004b20, i32* %r1.global-to-local, align 4
  %v2_8004b22 = inttoptr i32 %v2_8004b20 to i32*
  store i32 %v2_8004b1e, i32* %v2_8004b22, align 4
  br label %dec_label_pc_8004b32

dec_label_pc_8004b26:                             ; preds = %dec_label_pc_8004b12
  %v3_8004b2c = and i32 %v2_8004b1a, -129
  %v2_8004b2e = load i32, i32* %v1_8004afa, align 4
  store i32 %v2_8004b2e, i32* %r1.global-to-local, align 4
  %v2_8004b30 = inttoptr i32 %v2_8004b2e to i32*
  store i32 %v3_8004b2c, i32* %v2_8004b30, align 4
  br label %dec_label_pc_8004b32

dec_label_pc_8004b32:                             ; preds = %dec_label_pc_8004b18, %dec_label_pc_8004b26
  %v0_8004b32 = load i32, i32* @r4, align 4
  %v1_8004b32 = add i32 %v0_8004b32, 28
  %v2_8004b32 = inttoptr i32 %v1_8004b32 to i32*
  %v3_8004b32 = load i32, i32* %v2_8004b32, align 4
  %v7_8004b34 = icmp eq i32 %v3_8004b32, 1
  %v1_8004b38 = inttoptr i32 %v0_8004b32 to i32*
  %v2_8004b38 = load i32, i32* %v1_8004b38, align 4
  %v1_8004b3a = inttoptr i32 %v2_8004b38 to i32*
  %v2_8004b3a = load i32, i32* %v1_8004b3a, align 4
  store i32 64, i32* %r1.global-to-local, align 4
  br i1 %v7_8004b34, label %dec_label_pc_8004b38, label %dec_label_pc_8004b46

dec_label_pc_8004b38:                             ; preds = %dec_label_pc_8004b32
  %v2_8004b3e = or i32 %v2_8004b3a, 64
  %v2_8004b40 = load i32, i32* %v1_8004b38, align 4
  store i32 %v2_8004b40, i32* %r1.global-to-local, align 4
  %v2_8004b42 = inttoptr i32 %v2_8004b40 to i32*
  store i32 %v2_8004b3e, i32* %v2_8004b42, align 4
  br label %dec_label_pc_8004b52

dec_label_pc_8004b46:                             ; preds = %dec_label_pc_8004b32
  %v3_8004b4c = and i32 %v2_8004b3a, -65
  %v2_8004b4e = load i32, i32* %v1_8004b38, align 4
  store i32 %v2_8004b4e, i32* %r1.global-to-local, align 4
  %v2_8004b50 = inttoptr i32 %v2_8004b4e to i32*
  store i32 %v3_8004b4c, i32* %v2_8004b50, align 4
  br label %dec_label_pc_8004b52

dec_label_pc_8004b52:                             ; preds = %dec_label_pc_8004b38, %dec_label_pc_8004b46
  %v0_8004b52 = load i32, i32* @r4, align 4
  %v1_8004b52 = add i32 %v0_8004b52, 32
  %v2_8004b52 = inttoptr i32 %v1_8004b52 to i32*
  %v3_8004b52 = load i32, i32* %v2_8004b52, align 4
  %v7_8004b54 = icmp eq i32 %v3_8004b52, 1
  %v1_8004b58 = inttoptr i32 %v0_8004b52 to i32*
  %v2_8004b58 = load i32, i32* %v1_8004b58, align 4
  %v1_8004b5a = inttoptr i32 %v2_8004b58 to i32*
  %v2_8004b5a = load i32, i32* %v1_8004b5a, align 4
  store i32 32, i32* %r1.global-to-local, align 4
  br i1 %v7_8004b54, label %dec_label_pc_8004b58, label %dec_label_pc_8004b66

dec_label_pc_8004b58:                             ; preds = %dec_label_pc_8004b52
  %v2_8004b5e = or i32 %v2_8004b5a, 32
  %v2_8004b60 = load i32, i32* %v1_8004b58, align 4
  store i32 %v2_8004b60, i32* %r1.global-to-local, align 4
  %v2_8004b62 = inttoptr i32 %v2_8004b60 to i32*
  store i32 %v2_8004b5e, i32* %v2_8004b62, align 4
  br label %dec_label_pc_8004b72

dec_label_pc_8004b66:                             ; preds = %dec_label_pc_8004b52
  %v3_8004b6c = and i32 %v2_8004b5a, -33
  %v2_8004b6e = load i32, i32* %v1_8004b58, align 4
  store i32 %v2_8004b6e, i32* %r1.global-to-local, align 4
  %v2_8004b70 = inttoptr i32 %v2_8004b6e to i32*
  store i32 %v3_8004b6c, i32* %v2_8004b70, align 4
  br label %dec_label_pc_8004b72

dec_label_pc_8004b72:                             ; preds = %dec_label_pc_8004b58, %dec_label_pc_8004b66
  %v0_8004b72 = load i32, i32* @r4, align 4
  %v1_8004b72 = add i32 %v0_8004b72, 36
  %v2_8004b72 = inttoptr i32 %v1_8004b72 to i32*
  %v3_8004b72 = load i32, i32* %v2_8004b72, align 4
  %v7_8004b74 = icmp eq i32 %v3_8004b72, 1
  %v1_8004b78 = inttoptr i32 %v0_8004b72 to i32*
  %v2_8004b78 = load i32, i32* %v1_8004b78, align 4
  %v1_8004b7a = inttoptr i32 %v2_8004b78 to i32*
  %v2_8004b7a = load i32, i32* %v1_8004b7a, align 4
  store i32 16, i32* %r1.global-to-local, align 4
  br i1 %v7_8004b74, label %dec_label_pc_8004b78, label %dec_label_pc_8004b86

dec_label_pc_8004b78:                             ; preds = %dec_label_pc_8004b72
  %v2_8004b7e = or i32 %v2_8004b7a, 16
  %v2_8004b80 = load i32, i32* %v1_8004b78, align 4
  store i32 %v2_8004b80, i32* %r1.global-to-local, align 4
  %v2_8004b82 = inttoptr i32 %v2_8004b80 to i32*
  store i32 %v2_8004b7e, i32* %v2_8004b82, align 4
  br label %dec_label_pc_8004b92

dec_label_pc_8004b86:                             ; preds = %dec_label_pc_8004b72
  %v3_8004b8c = and i32 %v2_8004b7a, -17
  %v2_8004b8e = load i32, i32* %v1_8004b78, align 4
  store i32 %v2_8004b8e, i32* %r1.global-to-local, align 4
  %v2_8004b90 = inttoptr i32 %v2_8004b8e to i32*
  store i32 %v3_8004b8c, i32* %v2_8004b90, align 4
  br label %dec_label_pc_8004b92

dec_label_pc_8004b92:                             ; preds = %dec_label_pc_8004b78, %dec_label_pc_8004b86
  %v0_8004b92 = load i32, i32* @r4, align 4
  %v1_8004b92 = add i32 %v0_8004b92, 40
  %v2_8004b92 = inttoptr i32 %v1_8004b92 to i32*
  %v3_8004b92 = load i32, i32* %v2_8004b92, align 4
  %v7_8004b94 = icmp eq i32 %v3_8004b92, 1
  %v1_8004b98 = inttoptr i32 %v0_8004b92 to i32*
  %v2_8004b98 = load i32, i32* %v1_8004b98, align 4
  %v1_8004b9a = inttoptr i32 %v2_8004b98 to i32*
  %v2_8004b9a = load i32, i32* %v1_8004b9a, align 4
  store i32 8, i32* %r1.global-to-local, align 4
  br i1 %v7_8004b94, label %dec_label_pc_8004b98, label %dec_label_pc_8004ba6

dec_label_pc_8004b98:                             ; preds = %dec_label_pc_8004b92
  %v2_8004b9e = or i32 %v2_8004b9a, 8
  %v2_8004ba0 = load i32, i32* %v1_8004b98, align 4
  store i32 %v2_8004ba0, i32* %r1.global-to-local, align 4
  %v2_8004ba2 = inttoptr i32 %v2_8004ba0 to i32*
  store i32 %v2_8004b9e, i32* %v2_8004ba2, align 4
  br label %dec_label_pc_8004bb2

dec_label_pc_8004ba6:                             ; preds = %dec_label_pc_8004b92
  %v3_8004bac = and i32 %v2_8004b9a, -9
  %v2_8004bae = load i32, i32* %v1_8004b98, align 4
  store i32 %v2_8004bae, i32* %r1.global-to-local, align 4
  %v2_8004bb0 = inttoptr i32 %v2_8004bae to i32*
  store i32 %v3_8004bac, i32* %v2_8004bb0, align 4
  br label %dec_label_pc_8004bb2

dec_label_pc_8004bb2:                             ; preds = %dec_label_pc_8004b98, %dec_label_pc_8004ba6
  %v0_8004bb2 = load i32, i32* @r4, align 4
  %v1_8004bb2 = add i32 %v0_8004bb2, 44
  %v2_8004bb2 = inttoptr i32 %v1_8004bb2 to i32*
  %v3_8004bb2 = load i32, i32* %v2_8004bb2, align 4
  %v7_8004bb4 = icmp eq i32 %v3_8004bb2, 1
  %v1_8004bb8 = inttoptr i32 %v0_8004bb2 to i32*
  %v2_8004bb8 = load i32, i32* %v1_8004bb8, align 4
  %v1_8004bba = inttoptr i32 %v2_8004bb8 to i32*
  %v2_8004bba = load i32, i32* %v1_8004bba, align 4
  store i32 4, i32* %r1.global-to-local, align 4
  br i1 %v7_8004bb4, label %dec_label_pc_8004bb8, label %dec_label_pc_8004bc6

dec_label_pc_8004bb8:                             ; preds = %dec_label_pc_8004bb2
  %v2_8004bbe = or i32 %v2_8004bba, 4
  %v2_8004bc0 = load i32, i32* %v1_8004bb8, align 4
  store i32 %v2_8004bc0, i32* %r1.global-to-local, align 4
  %v2_8004bc2 = inttoptr i32 %v2_8004bc0 to i32*
  store i32 %v2_8004bbe, i32* %v2_8004bc2, align 4
  br label %dec_label_pc_8004bd2

dec_label_pc_8004bc6:                             ; preds = %dec_label_pc_8004bb2
  %v3_8004bcc = and i32 %v2_8004bba, -5
  %v2_8004bce = load i32, i32* %v1_8004bb8, align 4
  store i32 %v2_8004bce, i32* %r1.global-to-local, align 4
  %v2_8004bd0 = inttoptr i32 %v2_8004bce to i32*
  store i32 %v3_8004bcc, i32* %v2_8004bd0, align 4
  br label %dec_label_pc_8004bd2

dec_label_pc_8004bd2:                             ; preds = %dec_label_pc_8004bb8, %dec_label_pc_8004bc6
  %v0_8004bd2 = load i32, i32* @r4, align 4
  %v1_8004bd2 = add i32 %v0_8004bd2, 12
  %v2_8004bd2 = inttoptr i32 %v1_8004bd2 to i32*
  %v3_8004bd2 = load i32, i32* %v2_8004bd2, align 4
  store i32 %v3_8004bd2, i32* %r1.global-to-local, align 4
  %v1_8004bd4 = add i32 %v0_8004bd2, 8
  %v2_8004bd4 = inttoptr i32 %v1_8004bd4 to i32*
  %v3_8004bd4 = load i32, i32* %v2_8004bd4, align 4
  %v2_8004bd6 = or i32 %v3_8004bd4, %v3_8004bd2
  %v1_8004bd8 = add i32 %v0_8004bd2, 16
  %v2_8004bd8 = inttoptr i32 %v1_8004bd8 to i32*
  %v3_8004bd8 = load i32, i32* %v2_8004bd8, align 4
  store i32 %v3_8004bd8, i32* %r1.global-to-local, align 4
  %v2_8004bda = or i32 %v3_8004bd8, %v2_8004bd6
  %v1_8004bdc = add i32 %v0_8004bd2, 20
  %v2_8004bdc = inttoptr i32 %v1_8004bdc to i32*
  %v3_8004bdc = load i32, i32* %v2_8004bdc, align 4
  store i32 %v3_8004bdc, i32* %r1.global-to-local, align 4
  %v2_8004bde = or i32 %v3_8004bdc, %v2_8004bda
  %v1_8004be0 = add i32 %v0_8004bd2, 4
  %v2_8004be0 = inttoptr i32 %v1_8004be0 to i32*
  %v3_8004be0 = load i32, i32* %v2_8004be0, align 4
  %v1_8004be2 = add i32 %v3_8004be0, -1
  store i32 %v1_8004be2, i32* %r1.global-to-local, align 4
  %v2_8004be4 = or i32 %v1_8004be2, %v2_8004bde
  %v1_8004be6 = inttoptr i32 %v0_8004bd2 to i32*
  %v2_8004be6 = load i32, i32* %v1_8004be6, align 4
  store i32 %v2_8004be6, i32* %r1.global-to-local, align 4
  %v2_8004be8 = add i32 %v2_8004be6, 28
  %v3_8004be8 = inttoptr i32 %v2_8004be8 to i32*
  store i32 %v2_8004be4, i32* %v3_8004be8, align 4
  %v0_8004bea = load i32, i32* @r4, align 4
  %v1_8004bea = inttoptr i32 %v0_8004bea to i32*
  %v2_8004bea = load i32, i32* %v1_8004bea, align 4
  %v1_8004bec = inttoptr i32 %v2_8004bea to i32*
  %v2_8004bec = load i32, i32* %v1_8004bec, align 4
  %v3_8004bee = and i32 %v2_8004bec, -2
  store i32 %v2_8004bea, i32* %r1.global-to-local, align 4
  %v2_8004bf4 = inttoptr i32 %v2_8004bea to i32*
  store i32 %v3_8004bee, i32* %v2_8004bf4, align 4
  %v0_8004bf6 = call i32 @HAL_GetTick()
  store i32 %v0_8004bf6, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8004c1e

dec_label_pc_8004c00:                             ; preds = %dec_label_pc_8004c1e
  %v0_8004c00 = call i32 @HAL_GetTick()
  %v1_8004c04 = load i32, i32* %r5.global-to-local, align 4
  %v2_8004c04 = sub i32 %v0_8004c00, %v1_8004c04
  %tmp20 = icmp ult i32 %v2_8004c04, 11
  br i1 %tmp20, label %dec_label_pc_8004c1e, label %dec_label_pc_8004c0a

dec_label_pc_8004c0a:                             ; preds = %dec_label_pc_8004c00
  %v3_8004c0e = load i32, i32* @r4, align 4
  %v4_8004c0e = add i32 %v3_8004c0e, 61
  %v5_8004c0e = inttoptr i32 %v4_8004c0e to i8*
  store i8 3, i8* %v5_8004c0e, align 1
  store i32 0, i32* %r1.global-to-local, align 4
  %v3_8004c16 = load i32, i32* @r4, align 4
  %v4_8004c16 = add i32 %v3_8004c16, 60
  %v5_8004c16 = inttoptr i32 %v4_8004c16 to i8*
  store i8 0, i8* %v5_8004c16, align 1
  br label %dec_label_pc_8004aa2

dec_label_pc_8004c1e:                             ; preds = %dec_label_pc_8004c00, %dec_label_pc_8004bd2
  %v0_8004c1e = load i32, i32* @r4, align 4
  %v1_8004c1e = inttoptr i32 %v0_8004c1e to i32*
  %v2_8004c1e = load i32, i32* %v1_8004c1e, align 4
  %v1_8004c20 = add i32 %v2_8004c1e, 4
  %v2_8004c20 = inttoptr i32 %v1_8004c20 to i32*
  %v3_8004c20 = load i32, i32* %v2_8004c20, align 4
  %v3_8004c24 = urem i32 %v3_8004c20, 2
  %v4_8004c24 = icmp eq i32 %v3_8004c24, 0
  br i1 %v4_8004c24, label %dec_label_pc_8004c2a, label %dec_label_pc_8004c00

dec_label_pc_8004c2a:                             ; preds = %dec_label_pc_8004c1e
  %v2_8004c2a = load i32, i32* %v1_8004c1e, align 4
  %v1_8004c2c = add i32 %v2_8004c2a, 4
  %v2_8004c2c = inttoptr i32 %v1_8004c2c to i32*
  %v3_8004c2c = load i32, i32* %v2_8004c2c, align 4
  %v3_8004c30 = urem i32 %v3_8004c2c, 2
  %v4_8004c30 = icmp eq i32 %v3_8004c30, 0
  br i1 %v4_8004c30, label %dec_label_pc_8004c38.thread, label %dec_label_pc_8004c38

dec_label_pc_8004c38.thread:                      ; preds = %dec_label_pc_8004c2a
  br label %dec_label_pc_8004c3c

dec_label_pc_8004c38:                             ; preds = %dec_label_pc_8004b06, %dec_label_pc_8004c2a
  %v3_8004c4e = phi i32 [ %v0_8004afa, %dec_label_pc_8004b06 ], [ %v0_8004c1e, %dec_label_pc_8004c2a ]
  %v0_8004c38.pr = load i32, i32* @r6, align 4
  %v7_8004c38 = icmp eq i32 %v0_8004c38.pr, 1
  br i1 %v7_8004c38, label %dec_label_pc_8004c3c, label %dec_label_pc_8004c4a

dec_label_pc_8004c3c:                             ; preds = %dec_label_pc_8004c38.thread, %dec_label_pc_8004c38
  %v1_8004c3e = phi i32 [ %v0_8004c1e, %dec_label_pc_8004c38.thread ], [ %v3_8004c4e, %dec_label_pc_8004c38 ]
  %v2_8004c3e = add i32 %v1_8004c3e, 64
  %v3_8004c3e = inttoptr i32 %v2_8004c3e to i32*
  store i32 0, i32* %v3_8004c3e, align 4
  store i32 1, i32* %r1.global-to-local, align 4
  %v3_8004c44 = load i32, i32* @r4, align 4
  %v4_8004c44 = add i32 %v3_8004c44, 61
  %v5_8004c44 = inttoptr i32 %v4_8004c44 to i8*
  store i8 1, i8* %v5_8004c44, align 1
  br label %dec_label_pc_8004aa2

dec_label_pc_8004c4a:                             ; preds = %dec_label_pc_8004c38
  store i32 4, i32* %r1.global-to-local, align 4
  %v4_8004c4e = add i32 %v3_8004c4e, 61
  %v5_8004c4e = inttoptr i32 %v4_8004c4e to i8*
  store i8 4, i8* %v5_8004c4e, align 1
  br label %dec_label_pc_8004aa2

; uselistorder directives
  uselistorder i32 %v3_8004c4e, { 1, 0 }
  uselistorder i32 %v2_8004bea, { 1, 0, 2 }
  uselistorder i32* %v1_8004bb8, { 1, 0, 2 }
  uselistorder i32* %v1_8004b98, { 1, 0, 2 }
  uselistorder i32* %v1_8004b78, { 1, 0, 2 }
  uselistorder i32* %v1_8004b58, { 1, 0, 2 }
  uselistorder i32* %v1_8004b38, { 1, 0, 2 }
  uselistorder i32* %v1_8004afa, { 1, 0, 2, 3, 4 }
  uselistorder i32 %v2_8004abe, { 1, 0, 2 }
  uselistorder i8 3, { 1, 0 }
  uselistorder i32 11, { 1, 0, 2 }
  uselistorder label %dec_label_pc_8004c3c, { 1, 0 }
  uselistorder label %dec_label_pc_8004c38, { 1, 0 }
  uselistorder label %dec_label_pc_8004bd2, { 1, 0 }
  uselistorder label %dec_label_pc_8004bb2, { 1, 0 }
  uselistorder label %dec_label_pc_8004b92, { 1, 0 }
  uselistorder label %dec_label_pc_8004b72, { 1, 0 }
  uselistorder label %dec_label_pc_8004b52, { 1, 0 }
  uselistorder label %dec_label_pc_8004b32, { 1, 0 }
  uselistorder label %dec_label_pc_8004ab8, { 1, 0 }
}

define void @HAL_CAN_MspDeInit(i32 %hcan) local_unnamed_addr {
entry:
  %v3_8004c54 = load i32, i32* @r4, align 4
  %v1_8004c5a = inttoptr i32 %hcan to i32*
  %v2_8004c5a = load i32, i32* %v1_8004c5a, align 4
  %v9_8004c5c = icmp eq i32 %v2_8004c5a, 1073767424
  br i1 %v9_8004c5c, label %dec_label_pc_8004c60, label %dec_label_pc_8004c80

dec_label_pc_8004c60:                             ; preds = %entry
  %v3_8004c62 = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v3_8004c68 = and i32 %v3_8004c62, -33554433
  store i32 %v3_8004c68, i32* inttoptr (i32 1073877020 to i32*), align 4
  call void @HAL_GPIO_DeInit(i32 1207959552, i32 6144)
  call void @HAL_NVIC_DisableIRQ(i32 30)
  br label %dec_label_pc_8004c80

dec_label_pc_8004c80:                             ; preds = %entry, %dec_label_pc_8004c60
  store i32 %v3_8004c54, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder label %dec_label_pc_8004c80, { 1, 0 }
}

define void @HAL_CAN_MspInit(i32 %hcan) local_unnamed_addr {
entry:
  %GPIO_InitStruct_-28 = alloca %anon_struct_107.22, align 8
  %v3_8004c8c = load i32, i32* @r4, align 4
  store i32 %hcan, i32* @r4, align 4
  %v1_8004c94 = inttoptr i32 %hcan to i32*
  %v2_8004c94 = load i32, i32* %v1_8004c94, align 4
  %v9_8004c96 = icmp eq i32 %v2_8004c94, 1073767424
  br i1 %v9_8004c96, label %dec_label_pc_8004c9a, label %dec_label_pc_8004cea

dec_label_pc_8004c9a:                             ; preds = %entry
  %v3_8004c9e = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v2_8004ca4 = or i32 %v3_8004c9e, 33554432
  store i32 %v2_8004ca4, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v4_8004cbe = getelementptr inbounds %anon_struct_107.22, %anon_struct_107.22* %GPIO_InitStruct_-28, i32 0, i32 0
  store i32 6144, i32* %v4_8004cbe, align 8
  %tmp9 = bitcast %anon_struct_107.22* %GPIO_InitStruct_-28 to %anon_struct_107*
  call void @HAL_GPIO_Init(i32 1207959552, %anon_struct_107* %tmp9)
  call void @HAL_NVIC_SetPriority(i32 30, i32 0, i32 0)
  call void @HAL_NVIC_EnableIRQ(i32 30)
  br label %dec_label_pc_8004cea

dec_label_pc_8004cea:                             ; preds = %entry, %dec_label_pc_8004c9a
  store i32 %v3_8004c8c, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder %anon_struct_107.22* %GPIO_InitStruct_-28, { 1, 0 }
  uselistorder i32 6144, { 1, 0 }
  uselistorder i32 %hcan, { 1, 0 }
  uselistorder label %dec_label_pc_8004cea, { 1, 0 }
}

define i32 @HAL_DMA_Init(i32 %hdma) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  store i32 %hdma, i32* %r0.global-to-local, align 4
  %v3_8004cf8 = load i32, i32* @r4, align 4
  store i32 %hdma, i32* @r4, align 4
  %v2_8004cfe = icmp eq i32 %hdma, 0
  br i1 %v2_8004cfe, label %dec_label_pc_8004d04, label %dec_label_pc_8004d06

dec_label_pc_8004d04:                             ; preds = %entry, %dec_label_pc_8004d06
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8004d06 ], [ 1, %entry ]
  store i32 %storemerge1, i32* %r0.global-to-local, align 4
  store i32 %v3_8004cf8, i32* @r4, align 4
  ret i32 %storemerge1

dec_label_pc_8004d06:                             ; preds = %entry
  store i32 33, i32* %r0.global-to-local, align 4
  %v4_8004d0a = add i32 %hdma, 33
  %v5_8004d0a = inttoptr i32 %v4_8004d0a to i8*
  store i8 2, i8* %v5_8004d0a, align 1
  %v0_8004d0c = load i32, i32* @r4, align 4
  %v1_8004d0c = inttoptr i32 %v0_8004d0c to i32*
  %v2_8004d0c = load i32, i32* %v1_8004d0c, align 4
  store i32 %v2_8004d0c, i32* %r0.global-to-local, align 4
  %v1_8004d0e = inttoptr i32 %v2_8004d0c to i32*
  %v2_8004d0e = load i32, i32* %v1_8004d0e, align 4
  store i32 -16369, i32* %r0.global-to-local, align 4
  %v2_8004d12 = and i32 %v2_8004d0e, -16369
  %v1_8004d14 = add i32 %v0_8004d0c, 8
  %v2_8004d14 = inttoptr i32 %v1_8004d14 to i32*
  %v3_8004d14 = load i32, i32* %v2_8004d14, align 4
  %v1_8004d16 = add i32 %v0_8004d0c, 4
  %v2_8004d16 = inttoptr i32 %v1_8004d16 to i32*
  %v3_8004d16 = load i32, i32* %v2_8004d16, align 4
  %v2_8004d18 = or i32 %v3_8004d16, %v3_8004d14
  store i32 %v2_8004d18, i32* %r0.global-to-local, align 4
  %v1_8004d1a = add i32 %v0_8004d0c, 12
  %v2_8004d1a = inttoptr i32 %v1_8004d1a to i32*
  %v3_8004d1a = load i32, i32* %v2_8004d1a, align 4
  %v2_8004d1c = or i32 %v3_8004d1a, %v2_8004d18
  store i32 %v2_8004d1c, i32* %r0.global-to-local, align 4
  %v1_8004d1e = add i32 %v0_8004d0c, 16
  %v2_8004d1e = inttoptr i32 %v1_8004d1e to i32*
  %v3_8004d1e = load i32, i32* %v2_8004d1e, align 4
  %v2_8004d20 = or i32 %v3_8004d1e, %v2_8004d1c
  store i32 %v2_8004d20, i32* %r0.global-to-local, align 4
  %v1_8004d22 = add i32 %v0_8004d0c, 20
  %v2_8004d22 = inttoptr i32 %v1_8004d22 to i32*
  %v3_8004d22 = load i32, i32* %v2_8004d22, align 4
  %v2_8004d24 = or i32 %v3_8004d22, %v2_8004d20
  store i32 %v2_8004d24, i32* %r0.global-to-local, align 4
  %v1_8004d26 = add i32 %v0_8004d0c, 24
  %v2_8004d26 = inttoptr i32 %v1_8004d26 to i32*
  %v3_8004d26 = load i32, i32* %v2_8004d26, align 4
  %v2_8004d28 = or i32 %v3_8004d26, %v2_8004d24
  store i32 %v2_8004d28, i32* %r0.global-to-local, align 4
  %v1_8004d2a = add i32 %v0_8004d0c, 28
  %v2_8004d2a = inttoptr i32 %v1_8004d2a to i32*
  %v3_8004d2a = load i32, i32* %v2_8004d2a, align 4
  %v2_8004d2c = or i32 %v3_8004d2a, %v2_8004d28
  store i32 %v2_8004d2c, i32* %r0.global-to-local, align 4
  %v2_8004d2e = or i32 %v2_8004d2c, %v2_8004d12
  %v2_8004d30 = load i32, i32* %v1_8004d0c, align 4
  %v2_8004d32 = inttoptr i32 %v2_8004d30 to i32*
  store i32 %v2_8004d2e, i32* %v2_8004d32, align 4
  %v0_8004d34 = load i32, i32* @r4, align 4
  store i32 %v0_8004d34, i32* %r0.global-to-local, align 4
  call void @DMA_CalcBaseAndBitshift(i32 %v0_8004d34)
  store i32 0, i32* %r0.global-to-local, align 4
  %v1_8004d3c = load i32, i32* @r4, align 4
  %v2_8004d3c = add i32 %v1_8004d3c, 40
  %v3_8004d3c = inttoptr i32 %v2_8004d3c to i32*
  store i32 0, i32* %v3_8004d3c, align 4
  %v0_8004d3e = load i32, i32* %r0.global-to-local, align 4
  %v1_8004d3e = load i32, i32* @r4, align 4
  %v2_8004d3e = add i32 %v1_8004d3e, 44
  %v3_8004d3e = inttoptr i32 %v2_8004d3e to i32*
  store i32 %v0_8004d3e, i32* %v3_8004d3e, align 4
  %v0_8004d40 = load i32, i32* %r0.global-to-local, align 4
  %v1_8004d40 = load i32, i32* @r4, align 4
  %v2_8004d40 = add i32 %v1_8004d40, 48
  %v3_8004d40 = inttoptr i32 %v2_8004d40 to i32*
  store i32 %v0_8004d40, i32* %v3_8004d40, align 4
  %v0_8004d42 = load i32, i32* %r0.global-to-local, align 4
  %v1_8004d42 = load i32, i32* @r4, align 4
  %v2_8004d42 = add i32 %v1_8004d42, 52
  %v3_8004d42 = inttoptr i32 %v2_8004d42 to i32*
  store i32 %v0_8004d42, i32* %v3_8004d42, align 4
  %v0_8004d44 = load i32, i32* %r0.global-to-local, align 4
  %v1_8004d44 = load i32, i32* @r4, align 4
  %v2_8004d44 = add i32 %v1_8004d44, 56
  %v3_8004d44 = inttoptr i32 %v2_8004d44 to i32*
  store i32 %v0_8004d44, i32* %v3_8004d44, align 4
  %v3_8004d4a = load i32, i32* @r4, align 4
  %v4_8004d4a = add i32 %v3_8004d4a, 33
  %v5_8004d4a = inttoptr i32 %v4_8004d4a to i8*
  store i8 1, i8* %v5_8004d4a, align 1
  store i32 32, i32* %r0.global-to-local, align 4
  %v3_8004d50 = load i32, i32* @r4, align 4
  %v4_8004d50 = add i32 %v3_8004d50, 32
  %v5_8004d50 = inttoptr i32 %v4_8004d50 to i8*
  store i8 0, i8* %v5_8004d50, align 1
  br label %dec_label_pc_8004d04

; uselistorder directives
  uselistorder i32 %v0_8004d0c, { 0, 1, 2, 3, 4, 6, 5, 7 }
  uselistorder i32* %r0.global-to-local, { 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 17 }
  uselistorder i32 %hdma, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_8004d04, { 1, 0 }
}

define i32 @HAL_DMA_Start_IT(i32 %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %DataLength) local_unnamed_addr {
entry:
  %r6.global-to-local = alloca i32, align 4
  %r7.global-to-local = alloca i32, align 4
  %v6_8004d5c = load i32, i32* @r4, align 4
  store i32 %hdma, i32* @r4, align 4
  store i32 %SrcAddress, i32* @r5, align 4
  store i32 %DstAddress, i32* %r6.global-to-local, align 4
  store i32 %DataLength, i32* %r7.global-to-local, align 4
  %v2_8004d6e = add i32 %hdma, 32
  %v3_8004d6e = inttoptr i32 %v2_8004d6e to i8*
  %v4_8004d6e = load i8, i8* %v3_8004d6e, align 1
  %v7_8004d70 = icmp eq i8 %v4_8004d6e, 1
  br i1 %v7_8004d70, label %dec_label_pc_8004d76, label %dec_label_pc_8004d78

dec_label_pc_8004d76:                             ; preds = %dec_label_pc_8004de4, %dec_label_pc_8004dd6, %entry
  %storemerge = phi i32 [ 2, %entry ], [ 0, %dec_label_pc_8004dd6 ], [ 2, %dec_label_pc_8004de4 ]
  store i32 %v6_8004d5c, i32* @r4, align 4
  ret i32 %storemerge

dec_label_pc_8004d78:                             ; preds = %entry
  store i8 1, i8* %v3_8004d6e, align 1
  %v1_8004d82 = load i32, i32* @r4, align 4
  %v2_8004d82 = add i32 %v1_8004d82, 33
  %v3_8004d82 = inttoptr i32 %v2_8004d82 to i8*
  %v4_8004d82 = load i8, i8* %v3_8004d82, align 1
  %v7_8004d84 = icmp eq i8 %v4_8004d82, 1
  br i1 %v7_8004d84, label %dec_label_pc_8004d88, label %dec_label_pc_8004de4

dec_label_pc_8004d88:                             ; preds = %dec_label_pc_8004d78
  store i8 2, i8* %v3_8004d82, align 1
  %v1_8004d90 = load i32, i32* @r4, align 4
  %v2_8004d90 = add i32 %v1_8004d90, 56
  %v3_8004d90 = inttoptr i32 %v2_8004d90 to i32*
  store i32 0, i32* %v3_8004d90, align 4
  %v0_8004d92 = load i32, i32* @r4, align 4
  %v1_8004d92 = inttoptr i32 %v0_8004d92 to i32*
  %v2_8004d92 = load i32, i32* %v1_8004d92, align 4
  %v1_8004d94 = inttoptr i32 %v2_8004d92 to i32*
  %v2_8004d94 = load i32, i32* %v1_8004d94, align 4
  %v3_8004d96 = and i32 %v2_8004d94, -2
  %v2_8004d9c = inttoptr i32 %v2_8004d92 to i32*
  store i32 %v3_8004d96, i32* %v2_8004d9c, align 4
  %v0_8004d9e = load i32, i32* %r7.global-to-local, align 4
  %v0_8004da0 = load i32, i32* %r6.global-to-local, align 4
  %v0_8004da2 = load i32, i32* @r5, align 4
  %v0_8004da4 = load i32, i32* @r4, align 4
  call void @DMA_SetConfig(i32 %v0_8004da4, i32 %v0_8004da2, i32 %v0_8004da0, i32 %v0_8004d9e)
  %v0_8004daa = load i32, i32* @r4, align 4
  %v1_8004daa = add i32 %v0_8004daa, 44
  %v2_8004daa = inttoptr i32 %v1_8004daa to i32*
  %v3_8004daa = load i32, i32* %v2_8004daa, align 4
  %v2_8004dac = icmp eq i32 %v3_8004daa, 0
  %v1_8004dbe = inttoptr i32 %v0_8004daa to i32*
  %v2_8004dbe = load i32, i32* %v1_8004dbe, align 4
  %v1_8004dc0 = inttoptr i32 %v2_8004dbe to i32*
  %v2_8004dc0 = load i32, i32* %v1_8004dc0, align 4
  br i1 %v2_8004dac, label %dec_label_pc_8004dbe, label %dec_label_pc_8004db0

dec_label_pc_8004db0:                             ; preds = %dec_label_pc_8004d88
  %v2_8004db6 = or i32 %v2_8004dc0, 14
  %v2_8004db8 = load i32, i32* %v1_8004dbe, align 4
  %v2_8004dba = inttoptr i32 %v2_8004db8 to i32*
  store i32 %v2_8004db6, i32* %v2_8004dba, align 4
  br label %dec_label_pc_8004dd6

dec_label_pc_8004dbe:                             ; preds = %dec_label_pc_8004d88
  %v2_8004dc4 = or i32 %v2_8004dc0, 10
  %v2_8004dc6 = load i32, i32* %v1_8004dbe, align 4
  %v2_8004dc8 = inttoptr i32 %v2_8004dc6 to i32*
  store i32 %v2_8004dc4, i32* %v2_8004dc8, align 4
  %v0_8004dca = load i32, i32* @r4, align 4
  %v1_8004dca = inttoptr i32 %v0_8004dca to i32*
  %v2_8004dca = load i32, i32* %v1_8004dca, align 4
  %v1_8004dcc = inttoptr i32 %v2_8004dca to i32*
  %v2_8004dcc = load i32, i32* %v1_8004dcc, align 4
  %v3_8004dd0 = and i32 %v2_8004dcc, -5
  %v2_8004dd4 = inttoptr i32 %v2_8004dca to i32*
  store i32 %v3_8004dd0, i32* %v2_8004dd4, align 4
  br label %dec_label_pc_8004dd6

dec_label_pc_8004dd6:                             ; preds = %dec_label_pc_8004db0, %dec_label_pc_8004dbe
  %v0_8004dd6 = load i32, i32* @r4, align 4
  %v1_8004dd6 = inttoptr i32 %v0_8004dd6 to i32*
  %v2_8004dd6 = load i32, i32* %v1_8004dd6, align 4
  %v1_8004dd8 = inttoptr i32 %v2_8004dd6 to i32*
  %v2_8004dd8 = load i32, i32* %v1_8004dd8, align 4
  %v2_8004ddc = or i32 %v2_8004dd8, 1
  %v2_8004de0 = inttoptr i32 %v2_8004dd6 to i32*
  store i32 %v2_8004ddc, i32* %v2_8004de0, align 4
  br label %dec_label_pc_8004d76

dec_label_pc_8004de4:                             ; preds = %dec_label_pc_8004d78
  %v4_8004dea = add i32 %v1_8004d82, 32
  %v5_8004dea = inttoptr i32 %v4_8004dea to i8*
  store i8 0, i8* %v5_8004dea, align 1
  br label %dec_label_pc_8004d76

; uselistorder directives
  uselistorder i32 %v2_8004dc0, { 1, 0 }
  uselistorder i32 33, { 1, 2, 3, 4, 0 }
  uselistorder label %dec_label_pc_8004dd6, { 1, 0 }
}

define i32 @HAL_FLASHEx_Erase(%anon_struct_104* %pEraseInit, i32* %PageError) local_unnamed_addr {
entry:
  %r7.global-to-local = alloca i32, align 4
  %tmp = ptrtoint i32* %PageError to i32
  %tmp5 = ptrtoint %anon_struct_104* %pEraseInit to i32
  %v6_8004df8 = load i32, i32* @r4, align 4
  %v9_8004df8 = load i32, i32* @r5, align 4
  %v12_8004df8 = load i32, i32* @r6, align 4
  store i32 %tmp5, i32* @r4, align 4
  store i32 %tmp, i32* @r6, align 4
  store i32 1, i32* %r7.global-to-local, align 4
  %v3_8004e06 = load i8, i8* inttoptr (i32 536871952 to i8*), align 16
  %v7_8004e08 = icmp eq i8 %v3_8004e06, 1
  br i1 %v7_8004e08, label %dec_label_pc_8004e0e, label %dec_label_pc_8004e10

dec_label_pc_8004e0e:                             ; preds = %entry, %dec_label_pc_8004e8a
  %storemerge = phi i32 [ %v0_8004e94, %dec_label_pc_8004e8a ], [ 2, %entry ]
  store i32 %v6_8004df8, i32* @r4, align 4
  store i32 %v9_8004df8, i32* @r5, align 4
  store i32 %v12_8004df8, i32* @r6, align 4
  ret i32 %storemerge

dec_label_pc_8004e10:                             ; preds = %entry
  store i8 1, i8* inttoptr (i32 536871952 to i8*), align 16
  %v0_8004e18 = load i32, i32* @r4, align 4
  %v1_8004e18 = inttoptr i32 %v0_8004e18 to i32*
  %v2_8004e18 = load i32, i32* %v1_8004e18, align 4
  %v7_8004e1a = icmp eq i32 %v2_8004e18, 1
  %v1_8004e20 = call i32 @FLASH_WaitForLastOperation(i32 50000)
  br i1 %v7_8004e1a, label %dec_label_pc_8004e1e, label %dec_label_pc_8004e42

dec_label_pc_8004e1e:                             ; preds = %dec_label_pc_8004e10
  %v2_8004e24 = icmp eq i32 %v1_8004e20, 0
  br i1 %v2_8004e24, label %dec_label_pc_8004e28, label %dec_label_pc_8004e8a

dec_label_pc_8004e28:                             ; preds = %dec_label_pc_8004e1e
  call void @FLASH_MassErase()
  %v1_8004e2e = call i32 @FLASH_WaitForLastOperation(i32 50000)
  store i32 %v1_8004e2e, i32* %r7.global-to-local, align 4
  %v3_8004e36 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v3_8004e3a = and i32 %v3_8004e36, -5
  store i32 %v3_8004e3a, i32* inttoptr (i32 1073881104 to i32*), align 16
  br label %dec_label_pc_8004e8a

dec_label_pc_8004e42:                             ; preds = %dec_label_pc_8004e10
  %v2_8004e48 = icmp eq i32 %v1_8004e20, 0
  br i1 %v2_8004e48, label %dec_label_pc_8004e4c, label %dec_label_pc_8004e8a

dec_label_pc_8004e4c:                             ; preds = %dec_label_pc_8004e42
  %v1_8004e4e = load i32, i32* @r6, align 4
  %v2_8004e4e = inttoptr i32 %v1_8004e4e to i32*
  store i32 -1, i32* %v2_8004e4e, align 4
  %v0_8004e50 = load i32, i32* @r4, align 4
  %v1_8004e50 = add i32 %v0_8004e50, 4
  %v2_8004e50 = inttoptr i32 %v1_8004e50 to i32*
  %v3_8004e50 = load i32, i32* %v2_8004e50, align 4
  store i32 %v3_8004e50, i32* @r5, align 4
  %v1_8004e7c13 = add i32 %v0_8004e50, 8
  %v2_8004e7c14 = inttoptr i32 %v1_8004e7c13 to i32*
  %v3_8004e7c15 = load i32, i32* %v2_8004e7c14, align 4
  %v3_8004e7e16 = mul i32 %v3_8004e7c15, 1024
  %v3_8004e8019 = load i32, i32* %v2_8004e50, align 4
  %v2_8004e8220 = add i32 %v3_8004e8019, %v3_8004e7e16
  %tmp22 = icmp ugt i32 %v2_8004e8220, %v3_8004e50
  br i1 %tmp22, label %dec_label_pc_8004e54, label %dec_label_pc_8004e8a

dec_label_pc_8004e54:                             ; preds = %dec_label_pc_8004e4c, %dec_label_pc_8004e76
  %v0_8004e5421 = phi i32 [ %v2_8004e7a, %dec_label_pc_8004e76 ], [ %v3_8004e50, %dec_label_pc_8004e4c ]
  call void @FLASH_PageErase(i32 %v0_8004e5421)
  %v1_8004e5c = call i32 @FLASH_WaitForLastOperation(i32 50000)
  store i32 %v1_8004e5c, i32* %r7.global-to-local, align 4
  %v3_8004e64 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v3_8004e68 = and i32 %v3_8004e64, -3
  store i32 %v3_8004e68, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_8004e6e = icmp eq i32 %v1_8004e5c, 0
  br i1 %v2_8004e6e, label %dec_label_pc_8004e76, label %dec_label_pc_8004e72

dec_label_pc_8004e72:                             ; preds = %dec_label_pc_8004e54
  %v0_8004e72 = load i32, i32* @r5, align 4
  %v1_8004e72 = load i32, i32* @r6, align 4
  %v2_8004e72 = inttoptr i32 %v1_8004e72 to i32*
  store i32 %v0_8004e72, i32* %v2_8004e72, align 4
  br label %dec_label_pc_8004e8a

dec_label_pc_8004e76:                             ; preds = %dec_label_pc_8004e54
  %v0_8004e7a = load i32, i32* @r5, align 4
  %v2_8004e7a = add i32 %v0_8004e7a, 1024
  store i32 %v2_8004e7a, i32* @r5, align 4
  %v0_8004e7c.pre = load i32, i32* @r4, align 4
  %v1_8004e7c = add i32 %v0_8004e7c.pre, 8
  %v2_8004e7c = inttoptr i32 %v1_8004e7c to i32*
  %v3_8004e7c = load i32, i32* %v2_8004e7c, align 4
  %v3_8004e7e = mul i32 %v3_8004e7c, 1024
  %v1_8004e80 = add i32 %v0_8004e7c.pre, 4
  %v2_8004e80 = inttoptr i32 %v1_8004e80 to i32*
  %v3_8004e80 = load i32, i32* %v2_8004e80, align 4
  %v2_8004e82 = add i32 %v3_8004e80, %v3_8004e7e
  %tmp23 = icmp ugt i32 %v2_8004e82, %v2_8004e7a
  br i1 %tmp23, label %dec_label_pc_8004e54, label %dec_label_pc_8004e8a

dec_label_pc_8004e8a:                             ; preds = %dec_label_pc_8004e4c, %dec_label_pc_8004e76, %dec_label_pc_8004e72, %dec_label_pc_8004e42, %dec_label_pc_8004e1e, %dec_label_pc_8004e28
  store i8 0, i8* inttoptr (i32 536871952 to i8*), align 16
  %v0_8004e94 = load i32, i32* %r7.global-to-local, align 4
  br label %dec_label_pc_8004e0e

; uselistorder directives
  uselistorder i32 %v0_8004e7c.pre, { 1, 0 }
  uselistorder i32 %v2_8004e7a, { 1, 2, 0 }
  uselistorder i32* %r7.global-to-local, { 2, 0, 1, 3 }
  uselistorder label %dec_label_pc_8004e8a, { 1, 2, 0, 3, 5, 4 }
  uselistorder label %dec_label_pc_8004e54, { 1, 0 }
  uselistorder label %dec_label_pc_8004e0e, { 1, 0 }
}

define i32 @HAL_FLASH_Lock() local_unnamed_addr {
entry:
  %v3_8004ea6 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_8004eaa = or i32 %v3_8004ea6, 128
  store i32 %v2_8004eaa, i32* inttoptr (i32 1073881104 to i32*), align 16
  ret i32 0
}

define i32 @HAL_FLASH_Program(i32 %TypeProgram, i32 %Address, i64 %Data) local_unnamed_addr {
entry:
  %r7.global-to-local = alloca i32, align 4
  %tmp = trunc i64 %Data to i32
  store i32 %TypeProgram, i32* %r7.global-to-local, align 4
  store i32 %tmp, i32* @r5, align 4
  %v0_8004ec2 = load i32, i32* @r3, align 4
  store i32 %v0_8004ec2, i32* @r6, align 4
  %v3_8004ed2 = load i8, i8* inttoptr (i32 536871952 to i8*), align 16
  %v7_8004ed4 = icmp eq i8 %v3_8004ed2, 1
  br i1 %v7_8004ed4, label %dec_label_pc_8004eda, label %dec_label_pc_8004ede

dec_label_pc_8004eda:                             ; preds = %entry, %dec_label_pc_8004f58
  %storemerge = phi i32 [ %stack_var_-52.1, %dec_label_pc_8004f58 ], [ 2, %entry ]
  ret i32 %storemerge

dec_label_pc_8004ede:                             ; preds = %entry
  store i8 1, i8* inttoptr (i32 536871952 to i8*), align 16
  %v1_8004ee8 = call i32 @FLASH_WaitForLastOperation(i32 50000)
  %v2_8004ef0 = icmp eq i32 %v1_8004ee8, 0
  br i1 %v2_8004ef0, label %dec_label_pc_8004ef4, label %dec_label_pc_8004f58

dec_label_pc_8004ef4:                             ; preds = %dec_label_pc_8004ede
  %v0_8004ef4 = load i32, i32* %r7.global-to-local, align 4
  switch i32 %v0_8004ef4, label %dec_label_pc_8004f08 [
    i32 1, label %dec_label_pc_8004ef8
    i32 2, label %dec_label_pc_8004f02
  ]

dec_label_pc_8004ef8:                             ; preds = %dec_label_pc_8004ef4
  br label %dec_label_pc_8004f10.lr.ph

dec_label_pc_8004f02:                             ; preds = %dec_label_pc_8004ef4
  br label %dec_label_pc_8004f10.lr.ph

dec_label_pc_8004f08:                             ; preds = %dec_label_pc_8004ef4
  br label %dec_label_pc_8004f10.lr.ph

dec_label_pc_8004f10.lr.ph:                       ; preds = %dec_label_pc_8004f08, %dec_label_pc_8004ef8, %dec_label_pc_8004f02
  %stack_var_-56.0 = phi i32 [ 1, %dec_label_pc_8004ef8 ], [ 2, %dec_label_pc_8004f02 ], [ 4, %dec_label_pc_8004f08 ]
  store i32 0, i32* @r4, align 4
  br label %dec_label_pc_8004f10

dec_label_pc_8004f10:                             ; preds = %dec_label_pc_8004f10.lr.ph, %dec_label_pc_8004f4c
  %v0_8004f10 = phi i32 [ 0, %dec_label_pc_8004f10.lr.ph ], [ %v1_8004f4e, %dec_label_pc_8004f4c ]
  %v3_8004f10 = mul nuw nsw i32 %v0_8004f10, 16
  %v0_8004f12 = load i32, i32* @r5, align 4
  %v0_8004f14 = load i32, i32* @r6, align 4
  %v4_8004f1a = call i32 @__aeabi_llsr(i32 %v0_8004f12, i32 %v0_8004f14, i32 %v3_8004f10)
  %v0_8004f20 = load i32, i32* @r4, align 4
  %v2_8004f20 = mul i32 %v0_8004f20, 2
  %v2_8004f26 = add i32 %v2_8004f20, %Address
  %v4_8004f2a = trunc i32 %v4_8004f1a to i16
  call void @FLASH_Program_HalfWord(i32 %v2_8004f26, i16 %v4_8004f2a)
  %v1_8004f32 = call i32 @FLASH_WaitForLastOperation(i32 50000)
  %v3_8004f3a = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v3_8004f3c = and i32 %v3_8004f3a, -2
  store i32 %v3_8004f3c, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_8004f46 = icmp eq i32 %v1_8004f32, 0
  br i1 %v2_8004f46, label %dec_label_pc_8004f4c, label %dec_label_pc_8004f58

dec_label_pc_8004f4c:                             ; preds = %dec_label_pc_8004f10
  %v0_8004f4c = load i32, i32* @r4, align 4
  %v1_8004f4c = add i32 %v0_8004f4c, 1
  %v1_8004f4e = urem i32 %v1_8004f4c, 256
  store i32 %v1_8004f4e, i32* @r4, align 4
  %v5_8004f54 = icmp ult i32 %v1_8004f4e, %stack_var_-56.0
  br i1 %v5_8004f54, label %dec_label_pc_8004f10, label %dec_label_pc_8004f58

dec_label_pc_8004f58:                             ; preds = %dec_label_pc_8004f10, %dec_label_pc_8004f4c, %dec_label_pc_8004ede
  %stack_var_-52.1 = phi i32 [ %v1_8004ee8, %dec_label_pc_8004ede ], [ 0, %dec_label_pc_8004f4c ], [ %v1_8004f32, %dec_label_pc_8004f10 ]
  store i8 0, i8* inttoptr (i32 536871952 to i8*), align 16
  br label %dec_label_pc_8004eda

; uselistorder directives
  uselistorder i32 %v1_8004f4e, { 1, 0, 2 }
  uselistorder i32 (i32)* @FLASH_WaitForLastOperation, { 4, 3, 2, 1, 0 }
  uselistorder label %dec_label_pc_8004f58, { 1, 0, 2 }
  uselistorder label %dec_label_pc_8004f10, { 1, 0 }
  uselistorder label %dec_label_pc_8004f10.lr.ph, { 0, 2, 1 }
  uselistorder label %dec_label_pc_8004eda, { 1, 0 }
}

define i32 @HAL_FLASH_Unlock() local_unnamed_addr {
entry:
  %v3_8004f76 = load i32, i32* inttoptr (i32 1073881104 to i32*), align 16
  %v2_8004f7a = and i32 %v3_8004f76, 128
  %v4_8004f7a = icmp eq i32 %v2_8004f7a, 0
  br i1 %v4_8004f7a, label %dec_label_pc_8004f8e, label %dec_label_pc_8004f80

dec_label_pc_8004f80:                             ; preds = %entry
  store i32 -839939669, i32* inttoptr (i32 1073881092 to i32*), align 4
  br label %dec_label_pc_8004f8e

dec_label_pc_8004f8e:                             ; preds = %entry, %dec_label_pc_8004f80
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8004f80 ], [ 1, %entry ]
  ret i32 %storemerge1

; uselistorder directives
  uselistorder i32* inttoptr (i32 1073881104 to i32*), { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0, 13, 14, 15, 16 }
  uselistorder label %dec_label_pc_8004f8e, { 1, 0 }
}

define void @HAL_GPIO_DeInit(i32 %GPIOx, i32 %GPIO_Pin) local_unnamed_addr {
entry:
  %r0.global-to-local = alloca i32, align 4
  %r1.global-to-local = alloca i32, align 4
  %r2.global-to-local = alloca i32, align 4
  %r6.global-to-local = alloca i32, align 4
  store i32 %GPIO_Pin, i32* %r1.global-to-local, align 4
  store i32 %GPIOx, i32* %r0.global-to-local, align 4
  store i32 %GPIOx, i32* %r2.global-to-local, align 4
  store i32 %GPIO_Pin, i32* @r3, align 4
  store i32 0, i32* %r0.global-to-local, align 4
  store i32 0, i32* %r1.global-to-local, align 4
  %v8_80050848 = icmp eq i32 %GPIO_Pin, 0
  br i1 %v8_80050848, label %dec_label_pc_800508a, label %dec_label_pc_8004fae

dec_label_pc_8004fae:                             ; preds = %entry, %dec_label_pc_8005080
  %v1_8004fb2 = phi i32 [ %v0_8005082, %dec_label_pc_8005080 ], [ %GPIO_Pin, %entry ]
  %v0_8004fbc = phi i32 [ %v1_8005080, %dec_label_pc_8005080 ], [ 0, %entry ]
  %v6_8004fb0 = shl i32 1, %v0_8004fbc
  %v2_8004fb2 = and i32 %v6_8004fb0, %v1_8004fb2
  %v4_8004fb2 = icmp eq i32 %v2_8004fb2, 0
  store i32 %v2_8004fb2, i32* %r1.global-to-local, align 4
  br i1 %v4_8004fb2, label %dec_label_pc_8005080, label %dec_label_pc_8004fba

dec_label_pc_8004fba:                             ; preds = %dec_label_pc_8004fae
  %v0_8004fba = load i32, i32* %r2.global-to-local, align 4
  %v1_8004fba = inttoptr i32 %v0_8004fba to i32*
  %v2_8004fba = load i32, i32* %v1_8004fba, align 4
  %v2_8004fbc = mul i32 %v0_8004fbc, 2
  %tmp = shl i32 -3, %v2_8004fbc
  %v2_8004fc2 = add i32 %tmp, -1
  %v3_8004fc2 = and i32 %v2_8004fba, %v2_8004fc2
  store i32 %v3_8004fc2, i32* %v1_8004fba, align 4
  %v0_8004fc6 = load i32, i32* %r0.global-to-local, align 4
  %v3_8004fc6 = udiv i32 %v0_8004fc6, 8
  %v3_8004fc8 = mul nuw i32 %v3_8004fc6, 4
  store i32 %v3_8004fc8, i32* %r6.global-to-local, align 4
  %v0_8004fca = load i32, i32* %r2.global-to-local, align 4
  %v1_8004fcc = add i32 %v0_8004fca, 32
  %v2_8004fce = add i32 %v1_8004fcc, %v3_8004fc8
  %v3_8004fce = inttoptr i32 %v2_8004fce to i32*
  %v4_8004fce = load i32, i32* %v3_8004fce, align 4
  %tmp19 = mul i32 %v0_8004fc6, 4
  %v3_8004fd2 = and i32 %tmp19, 28
  %tmp21 = shl i32 -15, %v3_8004fd2
  %v2_8004fd8 = add i32 %tmp21, -1
  %v3_8004fd8 = and i32 %v4_8004fce, %v2_8004fd8
  store i32 %v3_8004fc8, i32* %r6.global-to-local, align 4
  store i32 %v3_8004fd8, i32* %v3_8004fce, align 4
  %v0_8004fe4 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004fe4 = add i32 %v0_8004fe4, 8
  %v2_8004fe4 = inttoptr i32 %v1_8004fe4 to i32*
  %v3_8004fe4 = load i32, i32* %v2_8004fe4, align 4
  %v0_8004fe6 = load i32, i32* %r0.global-to-local, align 4
  %v2_8004fe6 = mul i32 %v0_8004fe6, 2
  %v6_8004fea = shl i32 3, %v2_8004fe6
  store i32 %v6_8004fea, i32* %r6.global-to-local, align 4
  %v2_8004fec = sub i32 -1, %v6_8004fea
  %v3_8004fec = and i32 %v3_8004fe4, %v2_8004fec
  store i32 %v3_8004fec, i32* %v2_8004fe4, align 4
  %v0_8004ff0 = load i32, i32* %r2.global-to-local, align 4
  %v1_8004ff0 = add i32 %v0_8004ff0, 4
  %v2_8004ff0 = inttoptr i32 %v1_8004ff0 to i32*
  %v3_8004ff0 = load i32, i32* %v2_8004ff0, align 4
  %v1_8004ff4 = load i32, i32* %r0.global-to-local, align 4
  %v6_8004ff4 = shl i32 1, %v1_8004ff4
  store i32 %v6_8004ff4, i32* %r6.global-to-local, align 4
  %v2_8004ff6 = sub i32 -1, %v6_8004ff4
  %v3_8004ff6 = and i32 %v3_8004ff0, %v2_8004ff6
  store i32 %v3_8004ff6, i32* %v2_8004ff0, align 4
  %v0_8004ffa = load i32, i32* %r2.global-to-local, align 4
  %v1_8004ffa = add i32 %v0_8004ffa, 12
  %v2_8004ffa = inttoptr i32 %v1_8004ffa to i32*
  %v3_8004ffa = load i32, i32* %v2_8004ffa, align 4
  %v0_8004ffc = load i32, i32* %r0.global-to-local, align 4
  %v2_8004ffc = mul i32 %v0_8004ffc, 2
  %tmp22 = shl i32 -3, %v2_8004ffc
  %v2_8005002 = add i32 %tmp22, -1
  %v3_8005002 = and i32 %v3_8004ffa, %v2_8005002
  store i32 %v3_8005002, i32* %v2_8004ffa, align 4
  %v0_8005008 = load i32, i32* %r0.global-to-local, align 4
  %v3_8005008 = and i32 %v0_8005008, -4
  store i32 %v3_8005008, i32* %r6.global-to-local, align 4
  %v2_800500c = add i32 %v3_8005008, 1073807368
  %v3_800500c = inttoptr i32 %v2_800500c to i32*
  %v4_800500c = load i32, i32* %v3_800500c, align 4
  %tmp20 = mul i32 %v0_8005008, 4
  %v3_8005010 = and i32 %tmp20, 12
  store i32 %v3_8005010, i32* %r6.global-to-local, align 4
  %v6_8005014 = shl i32 15, %v3_8005010
  %v2_8005016 = and i32 %v6_8005014, %v4_800500c
  %v0_800501c = load i32, i32* %r2.global-to-local, align 4
  %v9_800501c = icmp eq i32 %v0_800501c, 1207959552
  br i1 %v9_800501c, label %dec_label_pc_8005020, label %dec_label_pc_8005024

dec_label_pc_8005020:                             ; preds = %dec_label_pc_8004fba
  br label %dec_label_pc_800503a

dec_label_pc_8005024:                             ; preds = %dec_label_pc_8004fba
  %v9_8005026 = icmp eq i32 %v0_800501c, 1207960576
  br i1 %v9_8005026, label %dec_label_pc_800502a, label %dec_label_pc_800502e

dec_label_pc_800502a:                             ; preds = %dec_label_pc_8005024
  br label %dec_label_pc_800503a

dec_label_pc_800502e:                             ; preds = %dec_label_pc_8005024
  %v9_8005030 = icmp eq i32 %v0_800501c, 1207961600
  br i1 %v9_8005030, label %dec_label_pc_8005034, label %dec_label_pc_8005038

dec_label_pc_8005034:                             ; preds = %dec_label_pc_800502e
  br label %dec_label_pc_800503a

dec_label_pc_8005038:                             ; preds = %dec_label_pc_800502e
  br label %dec_label_pc_800503a

dec_label_pc_800503a:                             ; preds = %dec_label_pc_8005034, %dec_label_pc_800502a, %dec_label_pc_8005020, %dec_label_pc_8005038
  %v0_800503e = phi i32 [ 2, %dec_label_pc_8005034 ], [ 1, %dec_label_pc_800502a ], [ 0, %dec_label_pc_8005020 ], [ 5, %dec_label_pc_8005038 ]
  store i32 %v3_8005010, i32* %r6.global-to-local, align 4
  %v6_800503e = shl i32 %v0_800503e, %v3_8005010
  %v9_8005040 = icmp eq i32 %v6_800503e, %v2_8005016
  br i1 %v9_8005040, label %dec_label_pc_8005044, label %dec_label_pc_8005080

dec_label_pc_8005044:                             ; preds = %dec_label_pc_800503a
  store i32 %v3_8005008, i32* %r6.global-to-local, align 4
  %v4_8005054 = load i32, i32* %v3_800500c, align 4
  %v2_8005056 = sub nuw nsw i32 -1, %v6_8005014
  %v3_8005056 = and i32 %v4_8005054, %v2_8005056
  store i32 %v3_8005056, i32* %r6.global-to-local, align 4
  store i32 %v3_8005056, i32* %v3_800500c, align 4
  %v2_8005060 = load i32, i32* inttoptr (i32 1073808384 to i32*), align 1024
  %v1_8005062 = load i32, i32* %r1.global-to-local, align 4
  %v2_8005062 = sub i32 -1, %v1_8005062
  %v3_8005062 = and i32 %v2_8005060, %v2_8005062
  store i32 1073808384, i32* %r6.global-to-local, align 4
  store i32 %v3_8005062, i32* inttoptr (i32 1073808384 to i32*), align 1024
  %v3_800506a = load i32, i32* inttoptr (i32 1073808388 to i32*), align 4
  %v2_800506c = sub i32 -1, %v1_8005062
  %v3_800506c = and i32 %v3_800506a, %v2_800506c
  store i32 %v3_800506c, i32* inttoptr (i32 1073808388 to i32*), align 4
  %v3_8005072 = load i32, i32* inttoptr (i32 1073808392 to i32*), align 8
  %v1_8005074 = load i32, i32* %r1.global-to-local, align 4
  %v2_8005074 = sub i32 -1, %v1_8005074
  %v3_8005074 = and i32 %v3_8005072, %v2_8005074
  store i32 %v3_8005074, i32* inttoptr (i32 1073808392 to i32*), align 8
  %v0_8005078 = load i32, i32* %r6.global-to-local, align 4
  %v1_800507a = add i32 %v0_8005078, 12
  %v2_800507a = inttoptr i32 %v1_800507a to i32*
  %v3_800507a = load i32, i32* %v2_800507a, align 4
  %v1_800507c = load i32, i32* %r1.global-to-local, align 4
  %v2_800507c = sub i32 -1, %v1_800507c
  %v3_800507c = and i32 %v3_800507a, %v2_800507c
  store i32 %v3_800507c, i32* %v2_800507a, align 4
  %v0_8005080.pre = load i32, i32* %r0.global-to-local, align 4
  br label %dec_label_pc_8005080

dec_label_pc_8005080:                             ; preds = %dec_label_pc_800503a, %dec_label_pc_8004fae, %dec_label_pc_8005044
  %v0_8005080 = phi i32 [ %v0_8005008, %dec_label_pc_800503a ], [ %v0_8004fbc, %dec_label_pc_8004fae ], [ %v0_8005080.pre, %dec_label_pc_8005044 ]
  %v1_8005080 = add i32 %v0_8005080, 1
  store i32 %v1_8005080, i32* %r0.global-to-local, align 4
  %v0_8005082 = load i32, i32* @r3, align 4
  %v6_8005084 = lshr i32 %v0_8005082, %v1_8005080
  %v8_8005084 = icmp eq i32 %v6_8005084, 0
  br i1 %v8_8005084, label %dec_label_pc_800508a, label %dec_label_pc_8004fae

dec_label_pc_800508a:                             ; preds = %dec_label_pc_8005080, %entry
  ret void

; uselistorder directives
  uselistorder i32 %v0_8005082, { 1, 0 }
  uselistorder i32 %v1_8005080, { 1, 2, 0 }
  uselistorder i32 %v3_8005010, { 1, 0, 2, 3 }
  uselistorder i32 %v3_8005008, { 0, 2, 1 }
  uselistorder i32 %v0_8005008, { 1, 0, 2 }
  uselistorder i32 %v3_8004fc8, { 1, 2, 0 }
  uselistorder i32 %v0_8004fbc, { 1, 0, 2 }
  uselistorder i32* %r1.global-to-local, { 1, 2, 3, 4, 5, 0 }
  uselistorder i32* %r0.global-to-local, { 1, 7, 2, 3, 4, 5, 6, 8, 0 }
  uselistorder i32 -3, { 0, 1, 3, 4, 2 }
  uselistorder label %dec_label_pc_8005080, { 2, 0, 1 }
  uselistorder label %dec_label_pc_800503a, { 3, 0, 1, 2 }
  uselistorder label %dec_label_pc_8004fae, { 1, 0 }
}

define void @HAL_GPIO_Init(i32 %GPIOx, %anon_struct_107* %GPIO_Init) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_107* %GPIO_Init to i32
  %v3_800509c = load i32, i32* @r3, align 4
  store i32 %GPIOx, i32* %r3.global-to-local, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  store i32 0, i32* %r4.global-to-local, align 4
  %tmp23 = getelementptr inbounds %anon_struct_107, %anon_struct_107* %GPIO_Init, i32 0, i32 0
  %v3_800525c1 = load i32, i32* %tmp23, align 4
  %v8_800525e8 = icmp eq i32 %v3_800525c1, 0
  br i1 %v8_800525e8, label %dec_label_pc_8005266, label %dec_label_pc_8005264.lr.ph

dec_label_pc_8005264.lr.ph:                       ; preds = %entry
  %v2_80050b6 = add i32 %tmp, 4
  %v3_80050b6 = inttoptr i32 %v2_80050b6 to i32*
  %v2_80050de = add i32 %tmp, 16
  %v3_80050de = inttoptr i32 %v2_80050de to i32*
  %v3_80050fc = inttoptr i32 %v2_80050b6 to i8*
  %v2_8005132 = add i32 %tmp, 12
  %v3_8005132 = inttoptr i32 %v2_8005132 to i32*
  %v2_8005164 = add i32 %tmp, 8
  %v3_8005164 = inttoptr i32 %v2_8005164 to i32*
  br label %dec_label_pc_8005264

dec_label_pc_80050b6:                             ; preds = %dec_label_pc_8005264
  %v4_80050b6 = load i32, i32* %v3_80050b6, align 4
  %v7_80050b8 = icmp eq i32 %v4_80050b6, 2
  br i1 %v7_80050b8, label %dec_label_pc_80050c2, label %dec_label_pc_80050bc

dec_label_pc_80050bc:                             ; preds = %dec_label_pc_80050b6
  %v4_80050bc = load i32, i32* %v3_80050b6, align 4
  %v7_80050be = icmp eq i32 %v4_80050bc, 18
  br i1 %v7_80050be, label %dec_label_pc_80050c2, label %dec_label_pc_80050ee

dec_label_pc_80050c2:                             ; preds = %dec_label_pc_80050bc, %dec_label_pc_80050b6
  %v3_80050c2 = udiv i32 %v0_80050e4, 8
  %v3_80050c4 = mul nuw i32 %v3_80050c2, 4
  %v0_80050c6 = load i32, i32* %r3.global-to-local, align 4
  %v1_80050c8 = add i32 %v0_80050c6, 32
  %v2_80050ca = add i32 %v1_80050c8, %v3_80050c4
  %v3_80050ca = inttoptr i32 %v2_80050ca to i32*
  %v4_80050ca = load i32, i32* %v3_80050ca, align 4
  %tmp24 = mul i32 %v0_80050e4, 4
  %v3_80050ce = and i32 %tmp24, 28
  %v6_80050d2 = shl i32 15, %v3_80050ce
  %v2_80050d6 = sub i32 -1, %v6_80050d2
  %v3_80050d6 = and i32 %v4_80050ca, %v2_80050d6
  %v4_80050de = load i32, i32* %v3_80050de, align 4
  %v6_80050e0 = shl i32 %v4_80050de, %v3_80050ce
  %v2_80050e2 = or i32 %v6_80050e0, %v3_80050d6
  store i32 %v2_80050e2, i32* %v3_80050ca, align 4
  %v0_80050f0.pre = load i32, i32* %r2.global-to-local, align 4
  br label %dec_label_pc_80050ee

dec_label_pc_80050ee:                             ; preds = %dec_label_pc_80050bc, %dec_label_pc_80050c2
  %v0_8005102 = phi i32 [ %v0_80050e4, %dec_label_pc_80050bc ], [ %v0_80050f0.pre, %dec_label_pc_80050c2 ]
  %v0_80050ee = load i32, i32* %r3.global-to-local, align 4
  %v1_80050ee = inttoptr i32 %v0_80050ee to i32*
  %v2_80050ee = load i32, i32* %v1_80050ee, align 4
  %v2_80050f0 = mul i32 %v0_8005102, 2
  %v6_80050f4 = shl i32 3, %v2_80050f0
  %v2_80050f8 = sub i32 -1, %v6_80050f4
  %v3_80050f8 = and i32 %v2_80050ee, %v2_80050f8
  %v4_80050fc = load i8, i8* %v3_80050fc, align 1
  %tmp27 = urem i8 %v4_80050fc, 4
  %v3_8005100 = zext i8 %tmp27 to i32
  %v6_8005104 = shl i32 %v3_8005100, %v2_80050f0
  %v2_8005106 = or i32 %v6_8005104, %v3_80050f8
  store i32 %v2_8005106, i32* %v1_80050ee, align 4
  %v4_800510a = load i32, i32* %v3_80050b6, align 4
  %v7_800510c = icmp eq i32 %v4_800510a, 1
  br i1 %v7_800510c, label %dec_label_pc_8005122, label %dec_label_pc_8005110

dec_label_pc_8005110:                             ; preds = %dec_label_pc_80050ee
  %v4_8005110 = load i32, i32* %v3_80050b6, align 4
  %v7_8005112 = icmp eq i32 %v4_8005110, 2
  br i1 %v7_8005112, label %dec_label_pc_8005122, label %dec_label_pc_8005116

dec_label_pc_8005116:                             ; preds = %dec_label_pc_8005110
  %v4_8005116 = load i32, i32* %v3_80050b6, align 4
  %v7_8005118 = icmp eq i32 %v4_8005116, 17
  br i1 %v7_8005118, label %dec_label_pc_8005122, label %dec_label_pc_800511c

dec_label_pc_800511c:                             ; preds = %dec_label_pc_8005116
  %v4_800511c = load i32, i32* %v3_80050b6, align 4
  %v7_800511e = icmp eq i32 %v4_800511c, 18
  br i1 %v7_800511e, label %dec_label_pc_8005122, label %dec_label_pc_8005154

dec_label_pc_8005122:                             ; preds = %dec_label_pc_800511c, %dec_label_pc_8005116, %dec_label_pc_8005110, %dec_label_pc_80050ee
  %v0_8005122 = load i32, i32* %r3.global-to-local, align 4
  %v1_8005122 = add i32 %v0_8005122, 8
  %v2_8005122 = inttoptr i32 %v1_8005122 to i32*
  %v3_8005122 = load i32, i32* %v2_8005122, align 4
  %v0_8005124 = load i32, i32* %r2.global-to-local, align 4
  %v2_8005124 = mul i32 %v0_8005124, 2
  %v6_8005128 = shl i32 3, %v2_8005124
  %v2_800512c = sub i32 -1, %v6_8005128
  %v3_800512c = and i32 %v3_8005122, %v2_800512c
  %v4_8005132 = load i32, i32* %v3_8005132, align 4
  %v6_8005134 = shl i32 %v4_8005132, %v2_8005124
  %v2_8005136 = or i32 %v6_8005134, %v3_800512c
  store i32 %v2_8005136, i32* %v2_8005122, align 4
  %v0_800513a = load i32, i32* %r3.global-to-local, align 4
  %v1_800513a = add i32 %v0_800513a, 4
  %v2_800513a = inttoptr i32 %v1_800513a to i32*
  %v3_800513a = load i32, i32* %v2_800513a, align 4
  %v1_800513e = load i32, i32* %r2.global-to-local, align 4
  %v6_800513e = shl i32 1, %v1_800513e
  %v2_8005142 = sub i32 -1, %v6_800513e
  %v3_8005142 = and i32 %v3_800513a, %v2_8005142
  %v4_8005148 = load i32, i32* %v3_80050b6, align 4
  %v2_800514a = udiv i32 %v4_8005148, 16
  %v3_800514c = urem i32 %v2_800514a, 2
  %v6_800514e = shl i32 %v3_800514c, %v1_800513e
  %v2_8005150 = or i32 %v6_800514e, %v3_8005142
  store i32 %v2_8005150, i32* %v2_800513a, align 4
  br label %dec_label_pc_8005154

dec_label_pc_8005154:                             ; preds = %dec_label_pc_800511c, %dec_label_pc_8005122
  %v0_8005154 = load i32, i32* %r3.global-to-local, align 4
  %v1_8005154 = add i32 %v0_8005154, 12
  %v2_8005154 = inttoptr i32 %v1_8005154 to i32*
  %v3_8005154 = load i32, i32* %v2_8005154, align 4
  %v0_8005156 = load i32, i32* %r2.global-to-local, align 4
  %v2_8005156 = mul i32 %v0_8005156, 2
  %v6_800515a = shl i32 3, %v2_8005156
  %v2_800515e = sub i32 -1, %v6_800515a
  %v3_800515e = and i32 %v3_8005154, %v2_800515e
  %v4_8005164 = load i32, i32* %v3_8005164, align 4
  %v6_8005166 = shl i32 %v4_8005164, %v2_8005156
  %v2_8005168 = or i32 %v6_8005166, %v3_800515e
  store i32 %v2_8005168, i32* %v2_8005154, align 4
  %v4_8005170 = load i32, i32* %v3_80050b6, align 4
  %v2_8005172 = and i32 %v4_8005170, 268435456
  %v3_8005174 = icmp eq i32 %v2_8005172, 0
  br i1 %v3_8005174, label %dec_label_pc_800525a, label %dec_label_pc_8005178

dec_label_pc_8005178:                             ; preds = %dec_label_pc_8005154
  %v3_800517c = load i32, i32* inttoptr (i32 1073877016 to i32*), align 8
  %v2_8005180 = or i32 %v3_800517c, 1
  store i32 %v2_8005180, i32* inttoptr (i32 1073877016 to i32*), align 8
  %v0_8005196 = load i32, i32* %r2.global-to-local, align 4
  %v3_800519626 = add i32 %v0_8005196, 1073807368
  %v2_800519a = and i32 %v3_800519626, -4
  %v3_800519a = inttoptr i32 %v2_800519a to i32*
  %v4_800519a = load i32, i32* %v3_800519a, align 4
  %tmp25 = mul i32 %v0_8005196, 4
  %v3_800519e = and i32 %tmp25, 12
  %tmp28 = shl i32 -15, %v3_800519e
  %v2_80051a6 = add nsw i32 %tmp28, -1
  %v3_80051a6 = and i32 %v4_800519a, %v2_80051a6
  %v0_80051ae = load i32, i32* %r3.global-to-local, align 4
  %v9_80051ae = icmp eq i32 %v0_80051ae, 1207959552
  br i1 %v9_80051ae, label %dec_label_pc_80051b6, label %dec_label_pc_80051ba

dec_label_pc_80051b6:                             ; preds = %dec_label_pc_8005178
  br label %dec_label_pc_80051d0

dec_label_pc_80051ba:                             ; preds = %dec_label_pc_8005178
  %v9_80051bc = icmp eq i32 %v0_80051ae, 1207960576
  br i1 %v9_80051bc, label %dec_label_pc_80051c0, label %dec_label_pc_80051c4

dec_label_pc_80051c0:                             ; preds = %dec_label_pc_80051ba
  br label %dec_label_pc_80051d0

dec_label_pc_80051c4:                             ; preds = %dec_label_pc_80051ba
  %v9_80051c6 = icmp eq i32 %v0_80051ae, 1207961600
  br i1 %v9_80051c6, label %dec_label_pc_80051ca, label %dec_label_pc_80051ce

dec_label_pc_80051ca:                             ; preds = %dec_label_pc_80051c4
  br label %dec_label_pc_80051d0

dec_label_pc_80051ce:                             ; preds = %dec_label_pc_80051c4
  br label %dec_label_pc_80051d0

dec_label_pc_80051d0:                             ; preds = %dec_label_pc_80051ca, %dec_label_pc_80051c0, %dec_label_pc_80051b6, %dec_label_pc_80051ce
  %v0_80051d4 = phi i32 [ 2, %dec_label_pc_80051ca ], [ 1, %dec_label_pc_80051c0 ], [ 0, %dec_label_pc_80051b6 ], [ 5, %dec_label_pc_80051ce ]
  %v6_80051d4 = shl i32 %v0_80051d4, %v3_800519e
  %v2_80051d6 = or i32 %v6_80051d4, %v3_80051a6
  store i32 %v2_80051d6, i32* %v3_800519a, align 4
  %v2_80051e2 = load i32, i32* inttoptr (i32 1073808384 to i32*), align 1024
  %v1_80051e6 = load i32, i32* %r4.global-to-local, align 4
  %v2_80051e6 = sub i32 -1, %v1_80051e6
  %v3_80051e6 = and i32 %v2_80051e2, %v2_80051e6
  %v4_80051ee = load i32, i32* %v3_80050b6, align 4
  %v2_80051f0 = and i32 %v4_80051ee, 65536
  %v3_80051f2 = icmp eq i32 %v2_80051f0, 0
  br i1 %v3_80051f2, label %dec_label_pc_80051fc, label %dec_label_pc_80051f6

dec_label_pc_80051f6:                             ; preds = %dec_label_pc_80051d0
  %v2_80051f8 = or i32 %v3_80051e6, %v1_80051e6
  br label %dec_label_pc_80051fc

dec_label_pc_80051fc:                             ; preds = %dec_label_pc_80051d0, %dec_label_pc_80051f6
  %v0_80051fe = phi i32 [ %v2_80051f8, %dec_label_pc_80051f6 ], [ %v3_80051e6, %dec_label_pc_80051d0 ]
  store i32 %v0_80051fe, i32* inttoptr (i32 1073808384 to i32*), align 1024
  %v3_8005200 = load i32, i32* inttoptr (i32 1073808388 to i32*), align 4
  %v1_8005204 = load i32, i32* %r4.global-to-local, align 4
  %v2_8005204 = sub i32 -1, %v1_8005204
  %v3_8005204 = and i32 %v3_8005200, %v2_8005204
  %v4_800520c = load i32, i32* %v3_80050b6, align 4
  %v2_800520e = and i32 %v4_800520c, 131072
  %v3_8005210 = icmp eq i32 %v2_800520e, 0
  br i1 %v3_8005210, label %dec_label_pc_800521a, label %dec_label_pc_8005214

dec_label_pc_8005214:                             ; preds = %dec_label_pc_80051fc
  %v2_8005216 = or i32 %v3_8005204, %v1_8005204
  br label %dec_label_pc_800521a

dec_label_pc_800521a:                             ; preds = %dec_label_pc_80051fc, %dec_label_pc_8005214
  %v0_800521c = phi i32 [ %v2_8005216, %dec_label_pc_8005214 ], [ %v3_8005204, %dec_label_pc_80051fc ]
  store i32 %v0_800521c, i32* inttoptr (i32 1073808388 to i32*), align 4
  %v3_800521e = load i32, i32* inttoptr (i32 1073808392 to i32*), align 8
  %v1_8005222 = load i32, i32* %r4.global-to-local, align 4
  %v2_8005222 = sub i32 -1, %v1_8005222
  %v3_8005222 = and i32 %v3_800521e, %v2_8005222
  %v4_800522a = load i32, i32* %v3_80050b6, align 4
  %v2_800522c = and i32 %v4_800522a, 1048576
  %v3_800522e = icmp eq i32 %v2_800522c, 0
  br i1 %v3_800522e, label %dec_label_pc_8005238, label %dec_label_pc_8005232

dec_label_pc_8005232:                             ; preds = %dec_label_pc_800521a
  %v2_8005234 = or i32 %v3_8005222, %v1_8005222
  br label %dec_label_pc_8005238

dec_label_pc_8005238:                             ; preds = %dec_label_pc_800521a, %dec_label_pc_8005232
  %v0_800523a = phi i32 [ %v2_8005234, %dec_label_pc_8005232 ], [ %v3_8005222, %dec_label_pc_800521a ]
  store i32 %v0_800523a, i32* inttoptr (i32 1073808392 to i32*), align 8
  %v3_800523c = load i32, i32* inttoptr (i32 1073808396 to i32*), align 4
  %v1_8005240 = load i32, i32* %r4.global-to-local, align 4
  %v2_8005240 = sub i32 -1, %v1_8005240
  %v3_8005240 = and i32 %v3_800523c, %v2_8005240
  %v4_8005248 = load i32, i32* %v3_80050b6, align 4
  %v2_800524a = and i32 %v4_8005248, 2097152
  %v3_800524c = icmp eq i32 %v2_800524a, 0
  br i1 %v3_800524c, label %dec_label_pc_8005256, label %dec_label_pc_8005250

dec_label_pc_8005250:                             ; preds = %dec_label_pc_8005238
  %v2_8005252 = or i32 %v3_8005240, %v1_8005240
  br label %dec_label_pc_8005256

dec_label_pc_8005256:                             ; preds = %dec_label_pc_8005238, %dec_label_pc_8005250
  %v0_8005258 = phi i32 [ %v3_8005240, %dec_label_pc_8005238 ], [ %v2_8005252, %dec_label_pc_8005250 ]
  store i32 %v0_8005258, i32* inttoptr (i32 1073808396 to i32*), align 4
  br label %dec_label_pc_800525a

dec_label_pc_800525a:                             ; preds = %dec_label_pc_8005154, %dec_label_pc_8005264, %dec_label_pc_8005256
  %tmpreg_-20.0 = phi i32 [ %tmpreg_-20.1, %dec_label_pc_8005264 ], [ 1, %dec_label_pc_8005256 ], [ %tmpreg_-20.1, %dec_label_pc_8005154 ]
  %v0_800525a = load i32, i32* %r2.global-to-local, align 4
  %v1_800525a = add i32 %v0_800525a, 1
  store i32 %v1_800525a, i32* %r2.global-to-local, align 4
  %v3_800525c = load i32, i32* %tmp23, align 4
  %v6_800525e = lshr i32 %v3_800525c, %v1_800525a
  %v8_800525e = icmp eq i32 %v6_800525e, 0
  br i1 %v8_800525e, label %dec_label_pc_8005266, label %dec_label_pc_8005264

dec_label_pc_8005264:                             ; preds = %dec_label_pc_8005264.lr.ph, %dec_label_pc_800525a
  %tmpreg_-20.1 = phi i32 [ %v3_800509c, %dec_label_pc_8005264.lr.ph ], [ %tmpreg_-20.0, %dec_label_pc_800525a ]
  %v0_80050e4 = phi i32 [ 0, %dec_label_pc_8005264.lr.ph ], [ %v1_800525a, %dec_label_pc_800525a ]
  %v6_80050aa = shl i32 1, %v0_80050e4
  %v3_80050ac = load i32, i32* %tmp23, align 4
  %v2_80050ae = and i32 %v3_80050ac, %v6_80050aa
  %v4_80050ae = icmp eq i32 %v2_80050ae, 0
  store i32 %v2_80050ae, i32* %r4.global-to-local, align 4
  br i1 %v4_80050ae, label %dec_label_pc_800525a, label %dec_label_pc_80050b6

dec_label_pc_8005266:                             ; preds = %dec_label_pc_800525a, %entry
  %v2_8005266 = phi i32 [ %v3_800509c, %entry ], [ %tmpreg_-20.0, %dec_label_pc_800525a ]
  store i32 %v2_8005266, i32* @r3, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v0_80050e4, { 3, 1, 0, 2 }
  uselistorder i32 %tmpreg_-20.1, { 1, 0 }
  uselistorder i32 %v1_800525a, { 1, 0, 2 }
  uselistorder i32 %v3_8005240, { 1, 0 }
  uselistorder i32 %v1_8005240, { 1, 0 }
  uselistorder i32 %v1_8005222, { 1, 0 }
  uselistorder i32 %v1_8005204, { 1, 0 }
  uselistorder i32 %v1_80051e6, { 1, 0 }
  uselistorder i32 %v3_800519e, { 1, 0 }
  uselistorder i32 %v0_8005196, { 1, 0 }
  uselistorder i32 %v2_8005156, { 1, 0 }
  uselistorder i32 %v2_8005124, { 1, 0 }
  uselistorder i32 %v2_80050f0, { 1, 0 }
  uselistorder i32* %v3_80050b6, { 4, 5, 6, 7, 8, 9, 1, 2, 3, 10, 0, 11 }
  uselistorder i32* %tmp23, { 1, 2, 0 }
  uselistorder i32* %r4.global-to-local, { 4, 0, 1, 2, 3, 5 }
  uselistorder i32* %r2.global-to-local, { 0, 2, 3, 4, 5, 6, 1, 7 }
  uselistorder i32* inttoptr (i32 1073808396 to i32*), { 1, 0 }
  uselistorder i32* inttoptr (i32 1073808392 to i32*), { 3, 0, 2, 1 }
  uselistorder i32* inttoptr (i32 1073808388 to i32*), { 3, 0, 2, 1 }
  uselistorder i32 1073808384, { 1, 0 }
  uselistorder i8 4, { 0, 9, 3, 14, 13, 12, 10, 11, 1, 4, 15, 5, 16, 6, 7, 8, 2 }
  uselistorder label %dec_label_pc_8005264, { 1, 0 }
  uselistorder label %dec_label_pc_800525a, { 1, 2, 0 }
  uselistorder label %dec_label_pc_8005256, { 1, 0 }
  uselistorder label %dec_label_pc_8005238, { 1, 0 }
  uselistorder label %dec_label_pc_800521a, { 1, 0 }
  uselistorder label %dec_label_pc_80051fc, { 1, 0 }
  uselistorder label %dec_label_pc_80051d0, { 3, 0, 1, 2 }
  uselistorder label %dec_label_pc_8005154, { 1, 0 }
  uselistorder label %dec_label_pc_80050ee, { 1, 0 }
}

define void @HAL_GPIO_WritePin(i32 %GPIOx, i16 %GPIO_Pin, i32 %PinState) local_unnamed_addr {
entry:
  %tmp = sext i16 %GPIO_Pin to i32
  %v2_800527c = icmp eq i32 %PinState, 0
  br i1 %v2_800527c, label %dec_label_pc_8005284, label %dec_label_pc_8005280

dec_label_pc_8005280:                             ; preds = %entry
  %v3_8005280 = add i32 %GPIOx, 24
  %v4_8005280 = inttoptr i32 %v3_8005280 to i32*
  store i32 %tmp, i32* %v4_8005280, align 4
  br label %dec_label_pc_8005286

dec_label_pc_8005284:                             ; preds = %entry
  %v3_8005284 = add i32 %GPIOx, 40
  %v4_8005284 = inttoptr i32 %v3_8005284 to i32*
  store i32 %tmp, i32* %v4_8005284, align 4
  br label %dec_label_pc_8005286

dec_label_pc_8005286:                             ; preds = %dec_label_pc_8005280, %dec_label_pc_8005284
  ret void

; uselistorder directives
  uselistorder label %dec_label_pc_8005286, { 1, 0 }
}

define i32 @HAL_GetTick() local_unnamed_addr {
entry:
  %v2_800528a = load i32, i32* inttoptr (i32 536870912 to i32*), align 536870912
  ret i32 %v2_800528a
}

define i32 @HAL_I2CEx_ConfigAnalogFilter(i32 %hi2c, i32 %AnalogFilter) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  store i32 %hi2c, i32* %r2.global-to-local, align 4
  %v2_8005298 = add i32 %hi2c, 65
  %v3_8005298 = inttoptr i32 %v2_8005298 to i8*
  %v4_8005298 = load i8, i8* %v3_8005298, align 1
  %v7_800529a = icmp eq i8 %v4_8005298, 32
  br i1 %v7_800529a, label %dec_label_pc_800529e, label %dec_label_pc_80052fe

dec_label_pc_800529e:                             ; preds = %entry
  %v2_80052a2 = add i32 %hi2c, 64
  %v3_80052a2 = inttoptr i32 %v2_80052a2 to i8*
  %v4_80052a2 = load i8, i8* %v3_80052a2, align 1
  %v7_80052a4 = icmp eq i8 %v4_80052a2, 1
  br i1 %v7_80052a4, label %dec_label_pc_80052a8, label %dec_label_pc_80052ac

dec_label_pc_80052a8:                             ; preds = %dec_label_pc_800529e
  br label %dec_label_pc_80052aa

dec_label_pc_80052aa:                             ; preds = %dec_label_pc_80052fe, %dec_label_pc_80052ac, %dec_label_pc_80052a8
  %v1_80052aa = phi i32 [ 2, %dec_label_pc_80052fe ], [ 0, %dec_label_pc_80052ac ], [ 2, %dec_label_pc_80052a8 ]
  ret i32 %v1_80052aa

dec_label_pc_80052ac:                             ; preds = %dec_label_pc_800529e
  store i8 1, i8* %v3_80052a2, align 1
  %v3_80052b8 = load i32, i32* %r2.global-to-local, align 4
  %v4_80052b8 = add i32 %v3_80052b8, 65
  %v5_80052b8 = inttoptr i32 %v4_80052b8 to i8*
  store i8 36, i8* %v5_80052b8, align 1
  %v0_80052ba = load i32, i32* %r2.global-to-local, align 4
  %v1_80052ba = inttoptr i32 %v0_80052ba to i32*
  %v2_80052ba = load i32, i32* %v1_80052ba, align 4
  %v1_80052bc = inttoptr i32 %v2_80052ba to i32*
  %v2_80052bc = load i32, i32* %v1_80052bc, align 4
  %v3_80052be = and i32 %v2_80052bc, -2
  %v2_80052c4 = inttoptr i32 %v2_80052ba to i32*
  store i32 %v3_80052be, i32* %v2_80052c4, align 4
  %v0_80052c6 = load i32, i32* %r2.global-to-local, align 4
  %v1_80052c6 = inttoptr i32 %v0_80052c6 to i32*
  %v2_80052c6 = load i32, i32* %v1_80052c6, align 4
  %v1_80052c8 = inttoptr i32 %v2_80052c6 to i32*
  %v2_80052c8 = load i32, i32* %v1_80052c8, align 4
  %v3_80052ce = and i32 %v2_80052c8, -4097
  %v2_80052d2 = inttoptr i32 %v2_80052c6 to i32*
  store i32 %v3_80052ce, i32* %v2_80052d2, align 4
  %v0_80052d4 = load i32, i32* %r2.global-to-local, align 4
  %v1_80052d4 = inttoptr i32 %v0_80052d4 to i32*
  %v2_80052d4 = load i32, i32* %v1_80052d4, align 4
  %v1_80052d6 = inttoptr i32 %v2_80052d4 to i32*
  %v2_80052d6 = load i32, i32* %v1_80052d6, align 4
  %v2_80052d8 = or i32 %v2_80052d6, %AnalogFilter
  %v2_80052dc = inttoptr i32 %v2_80052d4 to i32*
  store i32 %v2_80052d8, i32* %v2_80052dc, align 4
  %v0_80052de = load i32, i32* %r2.global-to-local, align 4
  %v1_80052de = inttoptr i32 %v0_80052de to i32*
  %v2_80052de = load i32, i32* %v1_80052de, align 4
  %v1_80052e0 = inttoptr i32 %v2_80052de to i32*
  %v2_80052e0 = load i32, i32* %v1_80052e0, align 4
  %v2_80052e4 = or i32 %v2_80052e0, 1
  %v2_80052e8 = inttoptr i32 %v2_80052de to i32*
  store i32 %v2_80052e4, i32* %v2_80052e8, align 4
  %v3_80052ee = load i32, i32* %r2.global-to-local, align 4
  %v4_80052ee = add i32 %v3_80052ee, 65
  %v5_80052ee = inttoptr i32 %v4_80052ee to i8*
  store i8 32, i8* %v5_80052ee, align 1
  %v3_80052f6 = load i32, i32* %r2.global-to-local, align 4
  %v4_80052f6 = add i32 %v3_80052f6, 64
  %v5_80052f6 = inttoptr i32 %v4_80052f6 to i8*
  store i8 0, i8* %v5_80052f6, align 1
  br label %dec_label_pc_80052aa

dec_label_pc_80052fe:                             ; preds = %entry
  br label %dec_label_pc_80052aa
}

define i32 @HAL_I2CEx_ConfigDigitalFilter(i32 %hi2c, i32 %DigitalFilter) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  store i32 %hi2c, i32* %r2.global-to-local, align 4
  store i32 %DigitalFilter, i32* @r3, align 4
  %v2_800530c = add i32 %hi2c, 65
  %v3_800530c = inttoptr i32 %v2_800530c to i8*
  %v4_800530c = load i8, i8* %v3_800530c, align 1
  %v7_800530e = icmp eq i8 %v4_800530c, 32
  br i1 %v7_800530e, label %dec_label_pc_8005312, label %dec_label_pc_8005370

dec_label_pc_8005312:                             ; preds = %entry
  %v2_8005316 = add i32 %hi2c, 64
  %v3_8005316 = inttoptr i32 %v2_8005316 to i8*
  %v4_8005316 = load i8, i8* %v3_8005316, align 1
  %v7_8005318 = icmp eq i8 %v4_8005316, 1
  br i1 %v7_8005318, label %dec_label_pc_800531c, label %dec_label_pc_8005320

dec_label_pc_800531c:                             ; preds = %dec_label_pc_8005312
  br label %dec_label_pc_800531e

dec_label_pc_800531e:                             ; preds = %dec_label_pc_8005370, %dec_label_pc_8005320, %dec_label_pc_800531c
  %v8_800531e = phi i32 [ 2, %dec_label_pc_8005370 ], [ 0, %dec_label_pc_8005320 ], [ 2, %dec_label_pc_800531c ]
  ret i32 %v8_800531e

dec_label_pc_8005320:                             ; preds = %dec_label_pc_8005312
  store i8 1, i8* %v3_8005316, align 1
  %v3_800532c = load i32, i32* %r2.global-to-local, align 4
  %v4_800532c = add i32 %v3_800532c, 65
  %v5_800532c = inttoptr i32 %v4_800532c to i8*
  store i8 36, i8* %v5_800532c, align 1
  %v0_800532e = load i32, i32* %r2.global-to-local, align 4
  %v1_800532e = inttoptr i32 %v0_800532e to i32*
  %v2_800532e = load i32, i32* %v1_800532e, align 4
  %v1_8005330 = inttoptr i32 %v2_800532e to i32*
  %v2_8005330 = load i32, i32* %v1_8005330, align 4
  %v3_8005332 = and i32 %v2_8005330, -2
  %v2_8005338 = inttoptr i32 %v2_800532e to i32*
  store i32 %v3_8005332, i32* %v2_8005338, align 4
  %v0_800533a = load i32, i32* %r2.global-to-local, align 4
  %v1_800533a = inttoptr i32 %v0_800533a to i32*
  %v2_800533a = load i32, i32* %v1_800533a, align 4
  %v1_800533c = inttoptr i32 %v2_800533a to i32*
  %v2_800533c = load i32, i32* %v1_800533c, align 4
  %v3_8005344 = and i32 %v2_800533c, -3841
  %v0_8005348 = load i32, i32* @r3, align 4
  %v3_8005348 = mul i32 %v0_8005348, 256
  %v2_800534a = or i32 %v3_8005348, %v3_8005344
  %v2_800534c = load i32, i32* %v1_800533a, align 4
  %v2_800534e = inttoptr i32 %v2_800534c to i32*
  store i32 %v2_800534a, i32* %v2_800534e, align 4
  %v0_8005350 = load i32, i32* %r2.global-to-local, align 4
  %v1_8005350 = inttoptr i32 %v0_8005350 to i32*
  %v2_8005350 = load i32, i32* %v1_8005350, align 4
  %v1_8005352 = inttoptr i32 %v2_8005350 to i32*
  %v2_8005352 = load i32, i32* %v1_8005352, align 4
  %v2_8005356 = or i32 %v2_8005352, 1
  %v2_800535a = inttoptr i32 %v2_8005350 to i32*
  store i32 %v2_8005356, i32* %v2_800535a, align 4
  %v3_8005360 = load i32, i32* %r2.global-to-local, align 4
  %v4_8005360 = add i32 %v3_8005360, 65
  %v5_8005360 = inttoptr i32 %v4_8005360 to i8*
  store i8 32, i8* %v5_8005360, align 1
  %v3_8005368 = load i32, i32* %r2.global-to-local, align 4
  %v4_8005368 = add i32 %v3_8005368, 64
  %v5_8005368 = inttoptr i32 %v4_8005368 to i8*
  store i8 0, i8* %v5_8005368, align 1
  br label %dec_label_pc_800531e

dec_label_pc_8005370:                             ; preds = %entry
  br label %dec_label_pc_800531e
}

define i32 @HAL_I2C_Init(i32 %hi2c) local_unnamed_addr {
entry:
  %v3_8005374 = load i32, i32* @r4, align 4
  store i32 %hi2c, i32* @r4, align 4
  %v2_8005378 = icmp eq i32 %hi2c, 0
  br i1 %v2_8005378, label %dec_label_pc_800537e, label %dec_label_pc_8005380

dec_label_pc_800537e:                             ; preds = %entry, %dec_label_pc_80053ec
  %storemerge1 = phi i32 [ 0, %dec_label_pc_80053ec ], [ 1, %entry ]
  store i32 %v3_8005374, i32* @r4, align 4
  ret i32 %storemerge1

dec_label_pc_8005380:                             ; preds = %entry
  %v2_8005382 = add i32 %hi2c, 65
  %v3_8005382 = inttoptr i32 %v2_8005382 to i8*
  %v4_8005382 = load i8, i8* %v3_8005382, align 1
  %v2_8005384 = icmp eq i8 %v4_8005382, 0
  br i1 %v2_8005384, label %dec_label_pc_8005388, label %dec_label_pc_8005394

dec_label_pc_8005388:                             ; preds = %dec_label_pc_8005380
  %v4_800538c = add i32 %hi2c, 64
  %v5_800538c = inttoptr i32 %v4_800538c to i8*
  store i8 0, i8* %v5_800538c, align 1
  %v0_800538e = load i32, i32* @r4, align 4
  call void @HAL_I2C_MspInit(i32 %v0_800538e)
  %v3_8005398.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8005394

dec_label_pc_8005394:                             ; preds = %dec_label_pc_8005380, %dec_label_pc_8005388
  %v3_8005398 = phi i32 [ %hi2c, %dec_label_pc_8005380 ], [ %v3_8005398.pre, %dec_label_pc_8005388 ]
  %v4_8005398 = add i32 %v3_8005398, 65
  %v5_8005398 = inttoptr i32 %v4_8005398 to i8*
  store i8 36, i8* %v5_8005398, align 1
  %v0_800539a = load i32, i32* @r4, align 4
  %v1_800539a = inttoptr i32 %v0_800539a to i32*
  %v2_800539a = load i32, i32* %v1_800539a, align 4
  %v1_800539c = inttoptr i32 %v2_800539a to i32*
  %v2_800539c = load i32, i32* %v1_800539c, align 4
  %v3_800539e = and i32 %v2_800539c, -2
  %v2_80053a4 = inttoptr i32 %v2_800539a to i32*
  store i32 %v3_800539e, i32* %v2_80053a4, align 4
  %v0_80053aa = load i32, i32* @r4, align 4
  %v1_80053aa = add i32 %v0_80053aa, 4
  %v2_80053aa = inttoptr i32 %v1_80053aa to i32*
  %v3_80053aa = load i32, i32* %v2_80053aa, align 4
  %v3_80053ac = and i32 %v3_80053aa, -251658241
  %v1_80053ae = inttoptr i32 %v0_80053aa to i32*
  %v2_80053ae = load i32, i32* %v1_80053ae, align 4
  %v2_80053b0 = add i32 %v2_80053ae, 16
  %v3_80053b0 = inttoptr i32 %v2_80053b0 to i32*
  store i32 %v3_80053ac, i32* %v3_80053b0, align 4
  %v0_80053b2 = load i32, i32* @r4, align 4
  %v1_80053b2 = inttoptr i32 %v0_80053b2 to i32*
  %v2_80053b2 = load i32, i32* %v1_80053b2, align 4
  %v1_80053b4 = add i32 %v2_80053b2, 8
  %v2_80053b4 = inttoptr i32 %v1_80053b4 to i32*
  %v3_80053b4 = load i32, i32* %v2_80053b4, align 4
  %v3_80053ba = and i32 %v3_80053b4, -32769
  %v2_80053be = add i32 %v2_80053b2, 8
  %v3_80053be = inttoptr i32 %v2_80053be to i32*
  store i32 %v3_80053ba, i32* %v3_80053be, align 4
  %v0_80053c0 = load i32, i32* @r4, align 4
  %v1_80053c0 = add i32 %v0_80053c0, 12
  %v2_80053c0 = inttoptr i32 %v1_80053c0 to i32*
  %v3_80053c0 = load i32, i32* %v2_80053c0, align 4
  %v7_80053c2 = icmp eq i32 %v3_80053c0, 1
  br i1 %v7_80053c2, label %dec_label_pc_80053c6, label %dec_label_pc_80053d4

dec_label_pc_80053c6:                             ; preds = %dec_label_pc_8005394
  %v1_80053ca = add i32 %v0_80053c0, 8
  %v2_80053ca = inttoptr i32 %v1_80053ca to i32*
  %v3_80053ca = load i32, i32* %v2_80053ca, align 4
  %v2_80053cc = or i32 %v3_80053ca, 32768
  %v1_80053ce = inttoptr i32 %v0_80053c0 to i32*
  %v2_80053ce = load i32, i32* %v1_80053ce, align 4
  %v2_80053d0 = add i32 %v2_80053ce, 8
  %v3_80053d0 = inttoptr i32 %v2_80053d0 to i32*
  store i32 %v2_80053cc, i32* %v3_80053d0, align 4
  br label %dec_label_pc_80053e0

dec_label_pc_80053d4:                             ; preds = %dec_label_pc_8005394
  %v1_80053d8 = add i32 %v0_80053c0, 8
  %v2_80053d8 = inttoptr i32 %v1_80053d8 to i32*
  %v3_80053d8 = load i32, i32* %v2_80053d8, align 4
  %v2_80053da = or i32 %v3_80053d8, 33792
  %v1_80053dc = inttoptr i32 %v0_80053c0 to i32*
  %v2_80053dc = load i32, i32* %v1_80053dc, align 4
  %v2_80053de = add i32 %v2_80053dc, 8
  %v3_80053de = inttoptr i32 %v2_80053de to i32*
  store i32 %v2_80053da, i32* %v3_80053de, align 4
  br label %dec_label_pc_80053e0

dec_label_pc_80053e0:                             ; preds = %dec_label_pc_80053c6, %dec_label_pc_80053d4
  %v0_80053e0 = load i32, i32* @r4, align 4
  %v1_80053e0 = add i32 %v0_80053e0, 12
  %v2_80053e0 = inttoptr i32 %v1_80053e0 to i32*
  %v3_80053e0 = load i32, i32* %v2_80053e0, align 4
  %v7_80053e2 = icmp eq i32 %v3_80053e0, 2
  br i1 %v7_80053e2, label %dec_label_pc_80053e6, label %dec_label_pc_80053ec

dec_label_pc_80053e6:                             ; preds = %dec_label_pc_80053e0
  %v1_80053e8 = inttoptr i32 %v0_80053e0 to i32*
  %v2_80053e8 = load i32, i32* %v1_80053e8, align 4
  %v2_80053ea = add i32 %v2_80053e8, 4
  %v3_80053ea = inttoptr i32 %v2_80053ea to i32*
  store i32 2048, i32* %v3_80053ea, align 4
  %v0_80053ec.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80053ec

dec_label_pc_80053ec:                             ; preds = %dec_label_pc_80053e0, %dec_label_pc_80053e6
  %v0_80053f4 = phi i32 [ %v0_80053e0, %dec_label_pc_80053e0 ], [ %v0_80053ec.pre, %dec_label_pc_80053e6 ]
  %v1_80053ec = inttoptr i32 %v0_80053f4 to i32*
  %v2_80053ec = load i32, i32* %v1_80053ec, align 4
  %v1_80053ee = add i32 %v2_80053ec, 4
  %v2_80053ee = inttoptr i32 %v1_80053ee to i32*
  %v3_80053ee = load i32, i32* %v2_80053ee, align 4
  %v2_80053f2 = or i32 %v3_80053ee, 33587200
  %v2_80053f6 = add i32 %v2_80053ec, 4
  %v3_80053f6 = inttoptr i32 %v2_80053f6 to i32*
  store i32 %v2_80053f2, i32* %v3_80053f6, align 4
  %v0_80053f8 = load i32, i32* @r4, align 4
  %v1_80053f8 = inttoptr i32 %v0_80053f8 to i32*
  %v2_80053f8 = load i32, i32* %v1_80053f8, align 4
  %v1_80053fa = add i32 %v2_80053f8, 12
  %v2_80053fa = inttoptr i32 %v1_80053fa to i32*
  %v3_80053fa = load i32, i32* %v2_80053fa, align 4
  %v3_8005400 = and i32 %v3_80053fa, -32769
  %v2_8005404 = add i32 %v2_80053f8, 12
  %v3_8005404 = inttoptr i32 %v2_8005404 to i32*
  store i32 %v3_8005400, i32* %v3_8005404, align 4
  %v0_8005406 = load i32, i32* @r4, align 4
  %v1_8005406 = add i32 %v0_8005406, 20
  %v2_8005406 = inttoptr i32 %v1_8005406 to i32*
  %v3_8005406 = load i32, i32* %v2_8005406, align 4
  %v1_8005408 = add i32 %v0_8005406, 16
  %v2_8005408 = inttoptr i32 %v1_8005408 to i32*
  %v3_8005408 = load i32, i32* %v2_8005408, align 4
  %v2_800540a = or i32 %v3_8005408, %v3_8005406
  %v1_800540c = add i32 %v0_8005406, 24
  %v2_800540c = inttoptr i32 %v1_800540c to i32*
  %v3_800540c = load i32, i32* %v2_800540c, align 4
  %v3_800540e = mul i32 %v3_800540c, 256
  %v2_8005410 = or i32 %v3_800540e, %v2_800540a
  %v1_8005412 = inttoptr i32 %v0_8005406 to i32*
  %v2_8005412 = load i32, i32* %v1_8005412, align 4
  %v2_8005414 = add i32 %v2_8005412, 12
  %v3_8005414 = inttoptr i32 %v2_8005414 to i32*
  store i32 %v2_8005410, i32* %v3_8005414, align 4
  %v0_8005416 = load i32, i32* @r4, align 4
  %v1_8005416 = add i32 %v0_8005416, 32
  %v2_8005416 = inttoptr i32 %v1_8005416 to i32*
  %v3_8005416 = load i32, i32* %v2_8005416, align 4
  %v1_8005418 = add i32 %v0_8005416, 28
  %v2_8005418 = inttoptr i32 %v1_8005418 to i32*
  %v3_8005418 = load i32, i32* %v2_8005418, align 4
  %v2_800541a = or i32 %v3_8005418, %v3_8005416
  %v1_800541c = inttoptr i32 %v0_8005416 to i32*
  %v2_800541c = load i32, i32* %v1_800541c, align 4
  %v2_800541e = inttoptr i32 %v2_800541c to i32*
  store i32 %v2_800541a, i32* %v2_800541e, align 4
  %v0_8005420 = load i32, i32* @r4, align 4
  %v1_8005420 = inttoptr i32 %v0_8005420 to i32*
  %v2_8005420 = load i32, i32* %v1_8005420, align 4
  %v1_8005422 = inttoptr i32 %v2_8005420 to i32*
  %v2_8005422 = load i32, i32* %v1_8005422, align 4
  %v2_8005426 = or i32 %v2_8005422, 1
  %v2_800542a = inttoptr i32 %v2_8005420 to i32*
  store i32 %v2_8005426, i32* %v2_800542a, align 4
  %v1_800542e = load i32, i32* @r4, align 4
  %v2_800542e = add i32 %v1_800542e, 68
  %v3_800542e = inttoptr i32 %v2_800542e to i32*
  store i32 0, i32* %v3_800542e, align 4
  %v3_8005434 = load i32, i32* @r4, align 4
  %v4_8005434 = add i32 %v3_8005434, 65
  %v5_8005434 = inttoptr i32 %v4_8005434 to i8*
  store i8 32, i8* %v5_8005434, align 1
  %v1_8005438 = load i32, i32* @r4, align 4
  %v2_8005438 = add i32 %v1_8005438, 48
  %v3_8005438 = inttoptr i32 %v2_8005438 to i32*
  store i32 0, i32* %v3_8005438, align 4
  %v3_800543e = load i32, i32* @r4, align 4
  %v4_800543e = add i32 %v3_800543e, 66
  %v5_800543e = inttoptr i32 %v4_800543e to i8*
  store i8 0, i8* %v5_800543e, align 1
  br label %dec_label_pc_800537e

; uselistorder directives
  uselistorder i32 %v0_80053c0, { 2, 3, 0, 1, 4 }
  uselistorder i8 32, { 1, 2, 3, 4, 5, 0, 6 }
  uselistorder i8 36, { 1, 2, 3, 0 }
  uselistorder i32 %hi2c, { 0, 1, 2, 4, 3 }
  uselistorder label %dec_label_pc_80053ec, { 1, 0 }
  uselistorder label %dec_label_pc_80053e0, { 1, 0 }
  uselistorder label %dec_label_pc_8005394, { 1, 0 }
  uselistorder label %dec_label_pc_800537e, { 1, 0 }
}

define void @HAL_I2C_MspInit(i32 %hi2c) local_unnamed_addr {
entry:
  %GPIO_InitStruct_-28 = alloca %anon_struct_107.24, align 8
  %v3_8005448 = load i32, i32* @r4, align 4
  %v1_8005450 = inttoptr i32 %hi2c to i32*
  %v2_8005450 = load i32, i32* %v1_8005450, align 4
  %v9_8005452 = icmp eq i32 %v2_8005450, 1073763328
  br i1 %v9_8005452, label %dec_label_pc_8005456, label %dec_label_pc_8005492

dec_label_pc_8005456:                             ; preds = %entry
  %v4_8005458 = getelementptr inbounds %anon_struct_107.24, %anon_struct_107.24* %GPIO_InitStruct_-28, i32 0, i32 0
  store i32 3, i32* %v4_8005458, align 8
  %tmp9 = bitcast %anon_struct_107.24* %GPIO_InitStruct_-28 to %anon_struct_107*
  call void @HAL_GPIO_Init(i32 1207964672, %anon_struct_107* %tmp9)
  %v3_8005476 = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v2_800547c = or i32 %v3_8005476, 2097152
  store i32 %v2_800547c, i32* inttoptr (i32 1073877020 to i32*), align 4
  br label %dec_label_pc_8005492

dec_label_pc_8005492:                             ; preds = %entry, %dec_label_pc_8005456
  store i32 %v3_8005448, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder %anon_struct_107.24* %GPIO_InitStruct_-28, { 1, 0 }
  uselistorder i32 2097152, { 4, 3, 0, 1, 2 }
  uselistorder label %dec_label_pc_8005492, { 1, 0 }
}

define i32 @HAL_InitTick(i32 %TickPriority) local_unnamed_addr {
entry:
  store i32 %TickPriority, i32* @r4, align 4
  %v0_80054b8 = call i32 @HAL_RCC_GetHCLKFreq()
  %v1_80054c8 = call i32 @HAL_SYSTICK_Config(i32 1000)
  %v0_80054ce = load i32, i32* @r4, align 4
  call void @HAL_NVIC_SetPriority(i32 -1, i32 %v0_80054ce, i32 0)
  ret i32 0
}

define void @HAL_NVIC_DisableIRQ(i32 %IRQn) local_unnamed_addr {
entry:
  %v3_80054e0 = urem i32 %IRQn, 32
  %v6_80054e4 = shl i32 1, %v3_80054e0
  store i32 %v6_80054e4, i32* inttoptr (i32 -536813184 to i32*), align 128
  ret void
}

define void @HAL_NVIC_EnableIRQ(i32 %IRQn) local_unnamed_addr {
entry:
  %v3_80054f8 = urem i32 %IRQn, 32
  %v6_80054fc = shl i32 1, %v3_80054f8
  store i32 %v6_80054fc, i32* @r1, align 4
  store i32 %v6_80054fc, i32* inttoptr (i32 -536813312 to i32*), align 256
  ret void
}

define void @HAL_NVIC_SetPriority(i32 %IRQn, i32 %PreemptPriority, i32 %SubPriority) local_unnamed_addr {
entry:
  %v3_800550c = load i32, i32* @r4, align 4
  call void @NVIC_SetPriority(i32 %IRQn, i32 %PreemptPriority)
  store i32 %v3_800550c, i32* @r4, align 4
  ret void
}

define i32 @HAL_RCCEx_PeriphCLKConfig(%anon_struct_108* %PeriphClkInit) local_unnamed_addr {
entry:
  %r1.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  %r6.global-to-local = alloca i32, align 4
  %r7.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_108* %PeriphClkInit to i32
  %v3_8005520 = load i32, i32* @r3, align 4
  store i32 %tmp, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r6.global-to-local, align 4
  store i32 0, i32* %r5.global-to-local, align 4
  store i32 65536, i32* %r1.global-to-local, align 4
  %v1_800552c = getelementptr inbounds %anon_struct_108, %anon_struct_108* %PeriphClkInit, i32 0, i32 0
  %v2_800552c = load i32, i32* %v1_800552c, align 4
  %v2_800552e = and i32 %v2_800552c, 65536
  %v3_8005530 = icmp eq i32 %v2_800552e, 0
  br i1 %v3_8005530, label %dec_label_pc_800562a, label %dec_label_pc_8005534

dec_label_pc_8005534:                             ; preds = %entry
  store i32 0, i32* %r7.global-to-local, align 4
  %v3_8005538 = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  store i32 268435456, i32* %r1.global-to-local, align 4
  %v2_800553c = and i32 %v3_8005538, 268435456
  %v4_800553c = icmp eq i32 %v2_800553c, 0
  br i1 %v4_800553c, label %dec_label_pc_8005542, label %dec_label_pc_800555e

dec_label_pc_8005542:                             ; preds = %dec_label_pc_8005534
  %v3_8005546 = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v2_8005548 = or i32 %v3_8005546, 268435456
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_8005548, i32* inttoptr (i32 1073877020 to i32*), align 4
  store i32 268435456, i32* %r1.global-to-local, align 4
  store i32 1, i32* %r7.global-to-local, align 4
  br label %dec_label_pc_800555e

dec_label_pc_800555e:                             ; preds = %dec_label_pc_8005534, %dec_label_pc_8005542
  %tmpreg_-24.0 = phi i32 [ 268435456, %dec_label_pc_8005542 ], [ %v3_8005520, %dec_label_pc_8005534 ]
  %v2_8005560 = load i32, i32* inttoptr (i32 1073770496 to i32*), align 4096
  store i32 256, i32* %r1.global-to-local, align 4
  %v2_8005566 = and i32 %v2_8005560, 256
  %v4_8005566 = icmp eq i32 %v2_8005566, 0
  br i1 %v4_8005566, label %dec_label_pc_800556c, label %dec_label_pc_800559a

dec_label_pc_800556c:                             ; preds = %dec_label_pc_800555e
  %v2_800556e = load i32, i32* inttoptr (i32 1073770496 to i32*), align 4096
  %v2_8005570 = or i32 %v2_800556e, 256
  store i32 1073770496, i32* %r1.global-to-local, align 4
  store i32 %v2_8005570, i32* inttoptr (i32 1073770496 to i32*), align 4096
  %v0_8005576 = call i32 @HAL_GetTick()
  store i32 %v0_8005576, i32* %r6.global-to-local, align 4
  br label %dec_label_pc_800558c

dec_label_pc_800557e:                             ; preds = %dec_label_pc_800558c
  %v0_800557e = call i32 @HAL_GetTick()
  %v1_8005582 = load i32, i32* %r6.global-to-local, align 4
  %v2_8005582 = sub i32 %v0_800557e, %v1_8005582
  %tmp12 = icmp ult i32 %v2_8005582, 101
  br i1 %tmp12, label %dec_label_pc_800558c, label %dec_label_pc_8005588

dec_label_pc_8005588:                             ; preds = %dec_label_pc_800557e
  br label %dec_label_pc_800558a

dec_label_pc_800558a:                             ; preds = %dec_label_pc_8005696, %dec_label_pc_80055f6, %dec_label_pc_8005588
  %tmpreg_-24.1 = phi i32 [ %tmpreg_-24.0, %dec_label_pc_8005588 ], [ %tmpreg_-24.2, %dec_label_pc_8005696 ], [ %tmpreg_-24.0, %dec_label_pc_80055f6 ]
  %v20_800558a = phi i32 [ 3, %dec_label_pc_8005588 ], [ 0, %dec_label_pc_8005696 ], [ 3, %dec_label_pc_80055f6 ]
  store i32 %tmpreg_-24.1, i32* @r3, align 4
  ret i32 %v20_800558a

dec_label_pc_800558c:                             ; preds = %dec_label_pc_800557e, %dec_label_pc_800556c
  %v2_800558e = load i32, i32* inttoptr (i32 1073770496 to i32*), align 4096
  store i32 256, i32* %r1.global-to-local, align 4
  %v2_8005594 = and i32 %v2_800558e, 256
  %v4_8005594 = icmp eq i32 %v2_8005594, 0
  br i1 %v4_8005594, label %dec_label_pc_800557e, label %dec_label_pc_800559a

dec_label_pc_800559a:                             ; preds = %dec_label_pc_800558c, %dec_label_pc_800555e
  %v3_800559c = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  store i32 768, i32* %r1.global-to-local, align 4
  %v2_80055a2 = and i32 %v3_800559c, 768
  %v4_80055a2 = icmp eq i32 %v2_80055a2, 0
  store i32 %v2_80055a2, i32* %r5.global-to-local, align 4
  br i1 %v4_80055a2, label %dec_label_pc_8005606, label %dec_label_pc_80055aa

dec_label_pc_80055aa:                             ; preds = %dec_label_pc_800559a
  %v0_80055aa = load i32, i32* %r4.global-to-local, align 4
  %v1_80055aa = add i32 %v0_80055aa, 4
  %v2_80055aa = inttoptr i32 %v1_80055aa to i32*
  %v3_80055aa = load i32, i32* %v2_80055aa, align 4
  %v2_80055ac = and i32 %v3_80055aa, 768
  %v9_80055ae = icmp eq i32 %v2_80055ac, %v2_80055a2
  br i1 %v9_80055ae, label %dec_label_pc_8005606, label %dec_label_pc_80055b2

dec_label_pc_80055b2:                             ; preds = %dec_label_pc_80055aa
  %v3_80055b4 = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v3_80055b6 = and i32 %v3_80055b4, -769
  store i32 %v3_80055b6, i32* %r5.global-to-local, align 4
  %v2_80055c2 = or i32 %v3_80055b4, 65536
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_80055c2, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v3_80055d0 = and i32 %v3_80055b4, -65537
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v3_80055d0, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v0_80055d8 = load i32, i32* %r5.global-to-local, align 4
  store i32 %v0_80055d8, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v3_80055dc = urem i32 %v0_80055d8, 2
  %v4_80055dc = icmp eq i32 %v3_80055dc, 0
  br i1 %v4_80055dc, label %dec_label_pc_8005606, label %dec_label_pc_80055e2

dec_label_pc_80055e2:                             ; preds = %dec_label_pc_80055b2
  %v0_80055e2 = call i32 @HAL_GetTick()
  store i32 %v0_80055e2, i32* %r6.global-to-local, align 4
  br label %dec_label_pc_80055fa

dec_label_pc_80055ea:                             ; preds = %dec_label_pc_80055fa
  %v0_80055ea = call i32 @HAL_GetTick()
  %v1_80055ee = load i32, i32* %r6.global-to-local, align 4
  %v2_80055ee = sub i32 %v0_80055ea, %v1_80055ee
  store i32 5000, i32* %r1.global-to-local, align 4
  %tmp13 = icmp ult i32 %v2_80055ee, 5001
  br i1 %tmp13, label %dec_label_pc_80055fa, label %dec_label_pc_80055f6

dec_label_pc_80055f6:                             ; preds = %dec_label_pc_80055ea
  br label %dec_label_pc_800558a

dec_label_pc_80055fa:                             ; preds = %dec_label_pc_80055ea, %dec_label_pc_80055e2
  %v3_80055fc = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  store i32 2, i32* %r1.global-to-local, align 4
  %v2_8005600 = and i32 %v3_80055fc, 2
  %v4_8005600 = icmp eq i32 %v2_8005600, 0
  br i1 %v4_8005600, label %dec_label_pc_80055ea, label %dec_label_pc_8005606

dec_label_pc_8005606:                             ; preds = %dec_label_pc_80055fa, %dec_label_pc_80055b2, %dec_label_pc_80055aa, %dec_label_pc_800559a
  %v3_8005608 = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  store i32 768, i32* %r1.global-to-local, align 4
  %v3_800560e = and i32 %v3_8005608, -769
  %v0_8005610 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005610 = add i32 %v0_8005610, 4
  %v2_8005610 = inttoptr i32 %v1_8005610 to i32*
  %v3_8005610 = load i32, i32* %v2_8005610, align 4
  %v2_8005612 = or i32 %v3_8005610, %v3_800560e
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_8005612, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v0_8005618 = load i32, i32* %r7.global-to-local, align 4
  %v7_8005618 = icmp eq i32 %v0_8005618, 1
  br i1 %v7_8005618, label %dec_label_pc_800561c, label %dec_label_pc_800562a

dec_label_pc_800561c:                             ; preds = %dec_label_pc_8005606
  %v0_800561c = load i32, i32* %r1.global-to-local, align 4
  %v1_800561e = add i32 %v0_800561c, 28
  %v2_800561e = inttoptr i32 %v1_800561e to i32*
  %v3_800561e = load i32, i32* %v2_800561e, align 4
  %tmp14 = mul i32 %v0_800561c, -65536
  %v2_8005622 = add i32 %tmp14, -1
  %v3_8005622 = and i32 %v3_800561e, %v2_8005622
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v3_8005622, i32* inttoptr (i32 1073877020 to i32*), align 4
  br label %dec_label_pc_800562a

dec_label_pc_800562a:                             ; preds = %entry, %dec_label_pc_800561c, %dec_label_pc_8005606
  %tmpreg_-24.2 = phi i32 [ %tmpreg_-24.0, %dec_label_pc_800561c ], [ %tmpreg_-24.0, %dec_label_pc_8005606 ], [ %v3_8005520, %entry ]
  %v0_800562a = load i32, i32* %r4.global-to-local, align 4
  %v1_800562a = inttoptr i32 %v0_800562a to i8*
  %v2_800562a = load i8, i8* %v1_800562a, align 1
  %tmp15 = urem i8 %v2_800562a, 2
  %v4_800562e = icmp eq i8 %tmp15, 0
  br i1 %v4_800562e, label %dec_label_pc_8005644, label %dec_label_pc_8005634

dec_label_pc_8005634:                             ; preds = %dec_label_pc_800562a
  %v3_8005636 = load i32, i32* inttoptr (i32 1073877040 to i32*), align 16
  %v3_8005638 = and i32 %v3_8005636, -4
  %v1_800563c = add i32 %v0_800562a, 8
  %v2_800563c = inttoptr i32 %v1_800563c to i32*
  %v3_800563c = load i32, i32* %v2_800563c, align 4
  %v2_800563e = or i32 %v3_800563c, %v3_8005638
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_800563e, i32* inttoptr (i32 1073877040 to i32*), align 16
  %v0_8005646.pre = load i32, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_8005644

dec_label_pc_8005644:                             ; preds = %dec_label_pc_800562a, %dec_label_pc_8005634
  %v0_8005656 = phi i32 [ %v0_800562a, %dec_label_pc_800562a ], [ %v0_8005646.pre, %dec_label_pc_8005634 ]
  store i32 32, i32* %r1.global-to-local, align 4
  %v1_8005646 = inttoptr i32 %v0_8005656 to i32*
  %v2_8005646 = load i32, i32* %v1_8005646, align 4
  %v2_8005648 = and i32 %v2_8005646, 32
  %v2_800564a = icmp eq i32 %v2_8005648, 0
  br i1 %v2_800564a, label %dec_label_pc_800565e, label %dec_label_pc_800564e

dec_label_pc_800564e:                             ; preds = %dec_label_pc_8005644
  %v3_8005650 = load i32, i32* inttoptr (i32 1073877040 to i32*), align 16
  store i32 16, i32* %r1.global-to-local, align 4
  %v3_8005654 = and i32 %v3_8005650, -17
  %v1_8005656 = add i32 %v0_8005656, 12
  %v2_8005656 = inttoptr i32 %v1_8005656 to i32*
  %v3_8005656 = load i32, i32* %v2_8005656, align 4
  %v2_8005658 = or i32 %v3_8005656, %v3_8005654
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_8005658, i32* inttoptr (i32 1073877040 to i32*), align 16
  %v0_8005662.pre = load i32, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_800565e

dec_label_pc_800565e:                             ; preds = %dec_label_pc_8005644, %dec_label_pc_800564e
  %v0_8005672 = phi i32 [ %v0_8005656, %dec_label_pc_8005644 ], [ %v0_8005662.pre, %dec_label_pc_800564e ]
  store i32 131072, i32* %r1.global-to-local, align 4
  %v1_8005662 = inttoptr i32 %v0_8005672 to i32*
  %v2_8005662 = load i32, i32* %v1_8005662, align 4
  %v2_8005664 = and i32 %v2_8005662, 131072
  %v3_8005666 = icmp eq i32 %v2_8005664, 0
  br i1 %v3_8005666, label %dec_label_pc_800567a, label %dec_label_pc_800566a

dec_label_pc_800566a:                             ; preds = %dec_label_pc_800565e
  %v3_800566c = load i32, i32* inttoptr (i32 1073877040 to i32*), align 16
  store i32 128, i32* %r1.global-to-local, align 4
  %v3_8005670 = and i32 %v3_800566c, -129
  %v1_8005672 = add i32 %v0_8005672, 20
  %v2_8005672 = inttoptr i32 %v1_8005672 to i32*
  %v3_8005672 = load i32, i32* %v2_8005672, align 4
  %v2_8005674 = or i32 %v3_8005672, %v3_8005670
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_8005674, i32* inttoptr (i32 1073877040 to i32*), align 16
  %v0_800567e.pre = load i32, i32* %r4.global-to-local, align 4
  br label %dec_label_pc_800567a

dec_label_pc_800567a:                             ; preds = %dec_label_pc_800565e, %dec_label_pc_800566a
  %v0_800568e = phi i32 [ %v0_8005672, %dec_label_pc_800565e ], [ %v0_800567e.pre, %dec_label_pc_800566a ]
  store i32 1024, i32* %r1.global-to-local, align 4
  %v1_800567e = inttoptr i32 %v0_800568e to i32*
  %v2_800567e = load i32, i32* %v1_800567e, align 4
  %v2_8005680 = and i32 %v2_800567e, 1024
  %v3_8005682 = icmp eq i32 %v2_8005680, 0
  br i1 %v3_8005682, label %dec_label_pc_8005696, label %dec_label_pc_8005686

dec_label_pc_8005686:                             ; preds = %dec_label_pc_800567a
  %v3_8005688 = load i32, i32* inttoptr (i32 1073877040 to i32*), align 16
  store i32 64, i32* %r1.global-to-local, align 4
  %v3_800568c = and i32 %v3_8005688, -65
  %v1_800568e = add i32 %v0_800568e, 16
  %v2_800568e = inttoptr i32 %v1_800568e to i32*
  %v3_800568e = load i32, i32* %v2_800568e, align 4
  %v2_8005690 = or i32 %v3_800568e, %v3_800568c
  store i32 1073876992, i32* %r1.global-to-local, align 4
  store i32 %v2_8005690, i32* inttoptr (i32 1073877040 to i32*), align 16
  br label %dec_label_pc_8005696

dec_label_pc_8005696:                             ; preds = %dec_label_pc_800567a, %dec_label_pc_8005686
  br label %dec_label_pc_800558a

; uselistorder directives
  uselistorder i32 %tmpreg_-24.0, { 1, 2, 0, 3 }
  uselistorder i32* %r7.global-to-local, { 1, 0, 2 }
  uselistorder i32* %r4.global-to-local, { 5, 4, 0, 1, 2, 3, 6 }
  uselistorder i32* %r1.global-to-local, { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
  uselistorder i32 1024, { 3, 4, 1, 5, 2, 0 }
  uselistorder i32 768, { 1, 0, 2, 3 }
  uselistorder label %dec_label_pc_8005696, { 1, 0 }
  uselistorder label %dec_label_pc_800567a, { 1, 0 }
  uselistorder label %dec_label_pc_800565e, { 1, 0 }
  uselistorder label %dec_label_pc_8005644, { 1, 0 }
  uselistorder label %dec_label_pc_800562a, { 1, 2, 0 }
  uselistorder label %dec_label_pc_800555e, { 1, 0 }
}

define i32 @HAL_RCC_ClockConfig(%anon_struct_103* %RCC_ClkInitStruct, i32 %FLatency) local_unnamed_addr {
entry:
  %tmp = ptrtoint %anon_struct_103* %RCC_ClkInitStruct to i32
  %v3_80056a8 = load i32, i32* @r4, align 4
  %v6_80056a8 = load i32, i32* @r5, align 4
  %v9_80056a8 = load i32, i32* @r6, align 4
  store i32 %tmp, i32* @r4, align 4
  store i32 %FLatency, i32* @r5, align 4
  store i32 0, i32* @r6, align 4
  %v2_80056b2 = load i32, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v3_80056b6 = urem i32 %v2_80056b2, 2
  %v3_80056b8 = icmp ult i32 %v3_80056b6, %FLatency
  br i1 %v3_80056b8, label %dec_label_pc_80056bc, label %dec_label_pc_80056da

dec_label_pc_80056bc:                             ; preds = %entry
  %v2_80056be = load i32, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v3_80056c0 = and i32 %v2_80056be, -2
  %v2_80056c4 = or i32 %v3_80056c0, %FLatency
  store i32 %v2_80056c4, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v3_80056d0 = urem i32 %v2_80056c4, 2
  %v1_80056d2 = load i32, i32* @r5, align 4
  %v9_80056d2 = icmp eq i32 %v3_80056d0, %v1_80056d2
  br i1 %v9_80056d2, label %dec_label_pc_80056bc.dec_label_pc_80056da_crit_edge, label %dec_label_pc_80056d6

dec_label_pc_80056bc.dec_label_pc_80056da_crit_edge: ; preds = %dec_label_pc_80056bc
  %v0_80056dc.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80056da

dec_label_pc_80056d6:                             ; preds = %dec_label_pc_80056bc
  br label %dec_label_pc_80056d8

dec_label_pc_80056d8:                             ; preds = %dec_label_pc_8005842, %dec_label_pc_8005822, %dec_label_pc_80057ec, %dec_label_pc_80057cc, %dec_label_pc_80057a6, %dec_label_pc_8005780, %dec_label_pc_8005752, %dec_label_pc_8005742, %dec_label_pc_800572a, %dec_label_pc_8005712, %dec_label_pc_80056d6
  %v14_80056d8 = phi i32 [ 0, %dec_label_pc_8005842 ], [ 1, %dec_label_pc_8005822 ], [ 3, %dec_label_pc_80057ec ], [ 3, %dec_label_pc_80057cc ], [ 3, %dec_label_pc_80057a6 ], [ 3, %dec_label_pc_8005780 ], [ 1, %dec_label_pc_8005752 ], [ 1, %dec_label_pc_8005742 ], [ 1, %dec_label_pc_800572a ], [ 1, %dec_label_pc_8005712 ], [ 1, %dec_label_pc_80056d6 ]
  store i32 %v3_80056a8, i32* @r4, align 4
  store i32 %v6_80056a8, i32* @r5, align 4
  store i32 %v9_80056a8, i32* @r6, align 4
  ret i32 %v14_80056d8

dec_label_pc_80056da:                             ; preds = %entry, %dec_label_pc_80056bc.dec_label_pc_80056da_crit_edge
  %v0_80056ec = phi i32 [ %v0_80056dc.pre, %dec_label_pc_80056bc.dec_label_pc_80056da_crit_edge ], [ %tmp, %entry ]
  %v1_80056dc = inttoptr i32 %v0_80056ec to i32*
  %v2_80056dc = load i32, i32* %v1_80056dc, align 4
  %v2_80056de = and i32 %v2_80056dc, 2
  %v2_80056e0 = icmp eq i32 %v2_80056de, 0
  br i1 %v2_80056e0, label %dec_label_pc_80056f4, label %dec_label_pc_80056e4

dec_label_pc_80056e4:                             ; preds = %dec_label_pc_80056da
  %v3_80056e6 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v3_80056ea = and i32 %v3_80056e6, -241
  %v1_80056ec = add i32 %v0_80056ec, 8
  %v2_80056ec = inttoptr i32 %v1_80056ec to i32*
  %v3_80056ec = load i32, i32* %v2_80056ec, align 4
  %v2_80056ee = or i32 %v3_80056ec, %v3_80056ea
  store i32 %v2_80056ee, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v0_80056f4.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80056f4

dec_label_pc_80056f4:                             ; preds = %dec_label_pc_80056da, %dec_label_pc_80056e4
  %v0_800575e = phi i32 [ %v0_80056ec, %dec_label_pc_80056da ], [ %v0_80056f4.pre, %dec_label_pc_80056e4 ]
  %v1_80056f4 = inttoptr i32 %v0_800575e to i8*
  %v2_80056f4 = load i8, i8* %v1_80056f4, align 1
  %tmp20 = urem i8 %v2_80056f4, 2
  %v4_80056f8 = icmp eq i8 %tmp20, 0
  br i1 %v4_80056f8, label %dec_label_pc_80057fc, label %dec_label_pc_80056fe

dec_label_pc_80056fe:                             ; preds = %dec_label_pc_80056f4
  %v1_80056fe = add i32 %v0_800575e, 4
  %v2_80056fe = inttoptr i32 %v1_80056fe to i32*
  %v3_80056fe = load i32, i32* %v2_80056fe, align 4
  %v7_8005700 = icmp eq i32 %v3_80056fe, 1
  br i1 %v7_8005700, label %dec_label_pc_8005704, label %dec_label_pc_8005716

dec_label_pc_8005704:                             ; preds = %dec_label_pc_80056fe
  %v2_8005706 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_800570c = and i32 %v2_8005706, 131072
  %v4_800570c = icmp eq i32 %v2_800570c, 0
  br i1 %v4_800570c, label %dec_label_pc_8005712, label %dec_label_pc_8005756

dec_label_pc_8005712:                             ; preds = %dec_label_pc_8005704
  br label %dec_label_pc_80056d8

dec_label_pc_8005716:                             ; preds = %dec_label_pc_80056fe
  %v3_8005716 = load i32, i32* %v2_80056fe, align 4
  %v7_8005718 = icmp eq i32 %v3_8005716, 2
  br i1 %v7_8005718, label %dec_label_pc_800571c, label %dec_label_pc_800572e

dec_label_pc_800571c:                             ; preds = %dec_label_pc_8005716
  %v2_800571e = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005724 = and i32 %v2_800571e, 33554432
  %v4_8005724 = icmp eq i32 %v2_8005724, 0
  br i1 %v4_8005724, label %dec_label_pc_800572a, label %dec_label_pc_8005756

dec_label_pc_800572a:                             ; preds = %dec_label_pc_800571c
  br label %dec_label_pc_80056d8

dec_label_pc_800572e:                             ; preds = %dec_label_pc_8005716
  %v3_800572e = load i32, i32* %v2_80056fe, align 4
  %v7_8005730 = icmp eq i32 %v3_800572e, 3
  br i1 %v7_8005730, label %dec_label_pc_8005734, label %dec_label_pc_8005746

dec_label_pc_8005734:                             ; preds = %dec_label_pc_800572e
  %v3_8005736 = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_800573c = and i32 %v3_8005736, 65536
  %v4_800573c = icmp eq i32 %v2_800573c, 0
  br i1 %v4_800573c, label %dec_label_pc_8005742, label %dec_label_pc_8005756

dec_label_pc_8005742:                             ; preds = %dec_label_pc_8005734
  br label %dec_label_pc_80056d8

dec_label_pc_8005746:                             ; preds = %dec_label_pc_800572e
  %v2_8005748 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_800574c = and i32 %v2_8005748, 2
  %v4_800574c = icmp eq i32 %v2_800574c, 0
  br i1 %v4_800574c, label %dec_label_pc_8005752, label %dec_label_pc_8005756

dec_label_pc_8005752:                             ; preds = %dec_label_pc_8005746
  br label %dec_label_pc_80056d8

dec_label_pc_8005756:                             ; preds = %dec_label_pc_8005746, %dec_label_pc_8005734, %dec_label_pc_800571c, %dec_label_pc_8005704
  %v3_8005758 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v3_800575a = and i32 %v3_8005758, -4
  %v3_800575e = load i32, i32* %v2_80056fe, align 4
  %v2_8005760 = or i32 %v3_800575e, %v3_800575a
  store i32 %v2_8005760, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v0_8005766 = call i32 @HAL_GetTick()
  store i32 %v0_8005766, i32* @r6, align 4
  %v0_800576c = load i32, i32* @r4, align 4
  %v1_800576c = add i32 %v0_800576c, 4
  %v2_800576c = inttoptr i32 %v1_800576c to i32*
  %v3_800576c = load i32, i32* %v2_800576c, align 4
  %v7_800576e = icmp eq i32 %v3_800576c, 1
  br i1 %v7_800576e, label %dec_label_pc_8005784, label %dec_label_pc_8005792

dec_label_pc_8005774:                             ; preds = %dec_label_pc_8005784
  %v0_8005774 = call i32 @HAL_GetTick()
  %v1_8005778 = load i32, i32* @r6, align 4
  %v2_8005778 = sub i32 %v0_8005774, %v1_8005778
  %tmp15 = icmp ult i32 %v2_8005778, 5001
  br i1 %tmp15, label %dec_label_pc_8005784, label %dec_label_pc_8005780

dec_label_pc_8005780:                             ; preds = %dec_label_pc_8005774
  br label %dec_label_pc_80056d8

dec_label_pc_8005784:                             ; preds = %dec_label_pc_8005756, %dec_label_pc_8005774
  %v3_8005786 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_800578a = and i32 %v3_8005786, 12
  %v7_800578c = icmp eq i32 %v2_800578a, 4
  br i1 %v7_800578c, label %dec_label_pc_80057fc, label %dec_label_pc_8005774

dec_label_pc_8005792:                             ; preds = %dec_label_pc_8005756
  %v3_8005792 = load i32, i32* %v2_800576c, align 4
  %v7_8005794 = icmp eq i32 %v3_8005792, 2
  br i1 %v7_8005794, label %dec_label_pc_80057aa, label %dec_label_pc_80057b8

dec_label_pc_800579a:                             ; preds = %dec_label_pc_80057aa
  %v0_800579a = call i32 @HAL_GetTick()
  %v1_800579e = load i32, i32* @r6, align 4
  %v2_800579e = sub i32 %v0_800579a, %v1_800579e
  %tmp16 = icmp ult i32 %v2_800579e, 5001
  br i1 %tmp16, label %dec_label_pc_80057aa, label %dec_label_pc_80057a6

dec_label_pc_80057a6:                             ; preds = %dec_label_pc_800579a
  br label %dec_label_pc_80056d8

dec_label_pc_80057aa:                             ; preds = %dec_label_pc_8005792, %dec_label_pc_800579a
  %v3_80057ac = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_80057b0 = and i32 %v3_80057ac, 12
  %v7_80057b2 = icmp eq i32 %v2_80057b0, 8
  br i1 %v7_80057b2, label %dec_label_pc_80057fc, label %dec_label_pc_800579a

dec_label_pc_80057b8:                             ; preds = %dec_label_pc_8005792
  %v3_80057b8 = load i32, i32* %v2_800576c, align 4
  %v7_80057ba = icmp eq i32 %v3_80057b8, 3
  br i1 %v7_80057ba, label %dec_label_pc_80057d0, label %dec_label_pc_80057f0

dec_label_pc_80057c0:                             ; preds = %dec_label_pc_80057d0
  %v0_80057c0 = call i32 @HAL_GetTick()
  %v1_80057c4 = load i32, i32* @r6, align 4
  %v2_80057c4 = sub i32 %v0_80057c0, %v1_80057c4
  %tmp17 = icmp ult i32 %v2_80057c4, 5001
  br i1 %tmp17, label %dec_label_pc_80057d0, label %dec_label_pc_80057cc

dec_label_pc_80057cc:                             ; preds = %dec_label_pc_80057c0
  br label %dec_label_pc_80056d8

dec_label_pc_80057d0:                             ; preds = %dec_label_pc_80057b8, %dec_label_pc_80057c0
  %v3_80057d2 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_80057d6 = and i32 %v3_80057d2, 12
  %v2_80057d8 = icmp eq i32 %v2_80057d6, 12
  br i1 %v2_80057d8, label %dec_label_pc_80057fc, label %dec_label_pc_80057c0

dec_label_pc_80057e0:                             ; preds = %dec_label_pc_80057f0
  %v0_80057e0 = call i32 @HAL_GetTick()
  %v1_80057e4 = load i32, i32* @r6, align 4
  %v2_80057e4 = sub i32 %v0_80057e0, %v1_80057e4
  %tmp18 = icmp ult i32 %v2_80057e4, 5001
  br i1 %tmp18, label %dec_label_pc_80057f0, label %dec_label_pc_80057ec

dec_label_pc_80057ec:                             ; preds = %dec_label_pc_80057e0
  br label %dec_label_pc_80056d8

dec_label_pc_80057f0:                             ; preds = %dec_label_pc_80057b8, %dec_label_pc_80057e0
  %v3_80057f2 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_80057f6 = and i32 %v3_80057f2, 12
  %v4_80057f6 = icmp eq i32 %v2_80057f6, 0
  br i1 %v4_80057f6, label %dec_label_pc_80057fc, label %dec_label_pc_80057e0

dec_label_pc_80057fc:                             ; preds = %dec_label_pc_80057f0, %dec_label_pc_80057d0, %dec_label_pc_80057aa, %dec_label_pc_8005784, %dec_label_pc_80056f4
  %v2_80057fe = load i32, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v3_8005802 = urem i32 %v2_80057fe, 2
  %v1_8005804 = load i32, i32* @r5, align 4
  %tmp19 = icmp ugt i32 %v3_8005802, %v1_8005804
  br i1 %tmp19, label %dec_label_pc_8005808, label %dec_label_pc_8005826

dec_label_pc_8005808:                             ; preds = %dec_label_pc_80057fc
  %v2_800580a = load i32, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v3_800580c = and i32 %v2_800580a, -2
  %v2_8005810 = or i32 %v3_800580c, %v1_8005804
  store i32 %v2_8005810, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v3_800581c = urem i32 %v2_8005810, 2
  %v1_800581e = load i32, i32* @r5, align 4
  %v9_800581e = icmp eq i32 %v3_800581c, %v1_800581e
  br i1 %v9_800581e, label %dec_label_pc_8005826, label %dec_label_pc_8005822

dec_label_pc_8005822:                             ; preds = %dec_label_pc_8005808
  br label %dec_label_pc_80056d8

dec_label_pc_8005826:                             ; preds = %dec_label_pc_80057fc, %dec_label_pc_8005808
  %v0_8005828 = load i32, i32* @r4, align 4
  %v1_8005828 = inttoptr i32 %v0_8005828 to i32*
  %v2_8005828 = load i32, i32* %v1_8005828, align 4
  %v2_800582a = and i32 %v2_8005828, 4
  store i32 %v2_800582a, i32* @r0, align 4
  %v2_800582c = icmp eq i32 %v2_800582a, 0
  br i1 %v2_800582c, label %dec_label_pc_8005842, label %dec_label_pc_8005830

dec_label_pc_8005830:                             ; preds = %dec_label_pc_8005826
  %v3_8005832 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v3_8005838 = and i32 %v3_8005832, -1793
  %v1_800583a = add i32 %v0_8005828, 12
  %v2_800583a = inttoptr i32 %v1_800583a to i32*
  %v3_800583a = load i32, i32* %v2_800583a, align 4
  %v2_800583c = or i32 %v3_800583a, %v3_8005838
  store i32 %v2_800583c, i32* @r0, align 4
  store i32 %v2_800583c, i32* inttoptr (i32 1073876996 to i32*), align 4
  br label %dec_label_pc_8005842

dec_label_pc_8005842:                             ; preds = %dec_label_pc_8005826, %dec_label_pc_8005830
  %v0_8005842 = call i32 @HAL_RCC_GetSysClockFreq()
  %v3_8005848 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_800584c = udiv i32 %v3_8005848, 16
  %v3_800584e = urem i32 %v2_800584c, 16
  %v2_8005852 = add nuw nsw i32 %v3_800584e, 134246868
  %v3_8005852 = inttoptr i32 %v2_8005852 to i8*
  %v4_8005852 = load i8, i8* %v3_8005852, align 1
  %v6_8005852 = zext i8 %v4_8005852 to i32
  %v6_8005854 = lshr i32 %v0_8005842, %v6_8005852
  store i32 %v6_8005854, i32* inttoptr (i32 536870916 to i32*), align 4
  %v3_800585c = call i32 @HAL_InitTick(i32 0)
  br label %dec_label_pc_80056d8

; uselistorder directives
  uselistorder label %dec_label_pc_8005842, { 1, 0 }
  uselistorder label %dec_label_pc_8005826, { 1, 0 }
  uselistorder label %dec_label_pc_80057f0, { 1, 0 }
  uselistorder label %dec_label_pc_80057d0, { 1, 0 }
  uselistorder label %dec_label_pc_80057aa, { 1, 0 }
  uselistorder label %dec_label_pc_8005784, { 1, 0 }
  uselistorder label %dec_label_pc_80056f4, { 1, 0 }
  uselistorder label %dec_label_pc_80056da, { 1, 0 }
}

define i32 @HAL_RCC_GetHCLKFreq() local_unnamed_addr {
entry:
  %v2_800587a = load i32, i32* inttoptr (i32 536870916 to i32*), align 4
  ret i32 %v2_800587a
}

define i32 @HAL_RCC_GetSysClockFreq() local_unnamed_addr {
entry:
  %aPredivFactorTable_-52 = alloca [16 x i8], align 4
  %aPLLMULFactorTable_-36 = alloca [16 x i8], align 4
  %v0_800588a = load i32, i32* @r0, align 4
  %v1_800588c = inttoptr i32 %v0_800588a to i32*
  %v2_800588c = load i32, i32* %v1_800588c, align 4
  %v1_800588e = add i32 %v0_800588a, 12
  %v2_800588e = inttoptr i32 %v1_800588e to i32*
  %v3_800588e = load i32, i32* %v2_800588e, align 4
  %v3_8005892 = bitcast [16 x i8]* %aPLLMULFactorTable_-36 to i32*
  store i32 %v2_800588c, i32* %v3_8005892, align 4
  %v1_800589a = inttoptr i32 %v3_800588e to i32*
  %v2_800589a = load i32, i32* %v1_800589a, align 4
  %v3_80058a0 = bitcast [16 x i8]* %aPredivFactorTable_-52 to i32*
  store i32 %v2_800589a, i32* %v3_80058a0, align 4
  %v3_80058b2 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v3_80058b2.tr = trunc i32 %v3_80058b2 to i4
  %trunc = and i4 %v3_80058b2.tr, -4
  switch i4 %trunc, label %dec_label_pc_8005938 [
    i4 -4, label %dec_label_pc_8005930
    i4 4, label %dec_label_pc_80058ca
    i4 -8, label %dec_label_pc_80058d0
  ]

dec_label_pc_80058ca:                             ; preds = %entry
  br label %dec_label_pc_800593e

dec_label_pc_80058d0:                             ; preds = %entry
  %v2_800589e = ptrtoint [16 x i8]* %aPredivFactorTable_-52 to i32
  %v2_8005890 = ptrtoint [16 x i8]* %aPLLMULFactorTable_-36 to i32
  %v2_80058d4 = udiv i32 %v3_80058b2, 262144
  %v3_80058d6 = urem i32 %v2_80058d4, 16
  %v2_80058da = add i32 %v3_80058d6, %v2_8005890
  %v3_80058da = inttoptr i32 %v2_80058da to i8*
  %v4_80058da = load i8, i8* %v3_80058da, align 1
  %v6_80058da = zext i8 %v4_80058da to i32
  %v3_80058de = load i32, i32* inttoptr (i32 1073877036 to i32*), align 4
  %v3_80058e2 = urem i32 %v3_80058de, 16
  %v2_80058e6 = add i32 %v3_80058e2, %v2_800589e
  %v3_80058e6 = inttoptr i32 %v2_80058e6 to i8*
  %v4_80058e6 = load i8, i8* %v3_80058e6, align 1
  %v6_80058e6 = zext i8 %v4_80058e6 to i32
  %v2_80058ec = and i32 %v3_80058b2, 98304
  %v9_80058f2 = icmp eq i32 %v2_80058ec, 65536
  br i1 %v9_80058f2, label %dec_label_pc_80058f6, label %dec_label_pc_8005904

dec_label_pc_80058f6:                             ; preds = %dec_label_pc_80058d0
  %v2_80058fa = udiv i32 8000000, %v6_80058e6
  %v2_80058fe = mul nuw nsw i32 %v2_80058fa, %v6_80058da
  br label %dec_label_pc_800593e

dec_label_pc_8005904:                             ; preds = %dec_label_pc_80058d0
  %v3_800590e = icmp eq i32 %v2_80058ec, 98304
  br i1 %v3_800590e, label %dec_label_pc_8005912, label %dec_label_pc_8005920

dec_label_pc_8005912:                             ; preds = %dec_label_pc_8005904
  %v2_8005916 = udiv i32 48000000, %v6_80058e6
  %v2_800591a = mul i32 %v2_8005916, %v6_80058da
  br label %dec_label_pc_800593e

dec_label_pc_8005920:                             ; preds = %dec_label_pc_8005904
  %v2_8005924 = udiv i32 8000000, %v6_80058e6
  %v2_8005928 = mul nuw nsw i32 %v2_8005924, %v6_80058da
  br label %dec_label_pc_800593e

dec_label_pc_8005930:                             ; preds = %entry
  br label %dec_label_pc_800593e

dec_label_pc_8005938:                             ; preds = %entry
  br label %dec_label_pc_800593e

dec_label_pc_800593e:                             ; preds = %dec_label_pc_8005920, %dec_label_pc_80058f6, %dec_label_pc_8005912, %dec_label_pc_8005930, %dec_label_pc_80058ca, %dec_label_pc_8005938
  %v3_8005940 = phi i32 [ 48000000, %dec_label_pc_8005930 ], [ 8000000, %dec_label_pc_80058ca ], [ 8000000, %dec_label_pc_8005938 ], [ %v2_800591a, %dec_label_pc_8005912 ], [ %v2_80058fe, %dec_label_pc_80058f6 ], [ %v2_8005928, %dec_label_pc_8005920 ]
  ret i32 %v3_8005940

; uselistorder directives
  uselistorder i32 %v6_80058e6, { 2, 1, 0 }
  uselistorder i32 %v3_80058b2, { 2, 1, 0 }
  uselistorder [16 x i8]* %aPLLMULFactorTable_-36, { 1, 0 }
  uselistorder [16 x i8]* %aPredivFactorTable_-52, { 1, 0 }
  uselistorder i4 -4, { 1, 0 }
  uselistorder label %dec_label_pc_800593e, { 5, 3, 0, 2, 1, 4 }
}

define i32 @HAL_RCC_OscConfig(i32 %RCC_OscInitStruct) local_unnamed_addr {
entry:
  %r4.global-to-local = alloca i32, align 4
  %r5.global-to-local = alloca i32, align 4
  %r6.global-to-local = alloca i32, align 4
  %v3_8005974 = load i32, i32* @r3, align 4
  store i32 %RCC_OscInitStruct, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r5.global-to-local, align 4
  %v1_800597a = inttoptr i32 %RCC_OscInitStruct to i8*
  %v2_800597a = load i8, i8* %v1_800597a, align 1
  %tmp = urem i8 %v2_800597a, 2
  %v4_800597e = icmp eq i8 %tmp, 0
  br i1 %v4_800597e, label %dec_label_pc_8005a90, label %dec_label_pc_8005984

dec_label_pc_8005984:                             ; preds = %entry
  %v3_8005986 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_800598a = and i32 %v3_8005986, 12
  %v7_800598c = icmp eq i32 %v2_800598a, 4
  br i1 %v7_800598c, label %dec_label_pc_80059aa, label %dec_label_pc_8005990

dec_label_pc_8005990:                             ; preds = %dec_label_pc_8005984
  %v3_8005992 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005994 = and i32 %v3_8005992, 12
  %v7_8005996 = icmp eq i32 %v2_8005994, 8
  br i1 %v7_8005996, label %dec_label_pc_800599a, label %dec_label_pc_80059c2

dec_label_pc_800599a:                             ; preds = %dec_label_pc_8005990
  %v3_800599c = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_80059a0 = and i32 %v3_800599c, 98304
  %v9_80059a6 = icmp eq i32 %v2_80059a0, 65536
  br i1 %v9_80059a6, label %dec_label_pc_80059aa, label %dec_label_pc_80059c2

dec_label_pc_80059aa:                             ; preds = %dec_label_pc_800599a, %dec_label_pc_8005984
  %v2_80059ac = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_80059b2 = and i32 %v2_80059ac, 131072
  %v4_80059b2 = icmp eq i32 %v2_80059b2, 0
  br i1 %v4_80059b2, label %dec_label_pc_8005a90, label %dec_label_pc_80059b8

dec_label_pc_80059b8:                             ; preds = %dec_label_pc_80059aa
  %v1_80059b8 = add i32 %RCC_OscInitStruct, 4
  %v2_80059b8 = inttoptr i32 %v1_80059b8 to i32*
  %v3_80059b8 = load i32, i32* %v2_80059b8, align 4
  %v2_80059ba = icmp eq i32 %v3_80059b8, 0
  br i1 %v2_80059ba, label %dec_label_pc_80059be, label %dec_label_pc_8005a90

dec_label_pc_80059be:                             ; preds = %dec_label_pc_80059b8
  br label %dec_label_pc_80059c0

dec_label_pc_80059c0:                             ; preds = %dec_label_pc_8005f6c, %dec_label_pc_8005f68, %dec_label_pc_8005f54, %dec_label_pc_8005f20, %dec_label_pc_8005ec4, %dec_label_pc_8005e7a, %dec_label_pc_8005e46, %dec_label_pc_8005e1c, %dec_label_pc_8005dcc, %dec_label_pc_8005d4c, %dec_label_pc_8005cf0, %dec_label_pc_8005cca, %dec_label_pc_8005c2c, %dec_label_pc_8005bbe, %dec_label_pc_8005b8e, %dec_label_pc_8005b50, %dec_label_pc_8005b0e, %dec_label_pc_8005ad2, %dec_label_pc_8005a7e, %dec_label_pc_8005a58, %dec_label_pc_80059be
  %tmpreg_-24.0 = phi i32 [ %tmpreg_-24.1, %dec_label_pc_8005c2c ], [ %tmpreg_-24.2, %dec_label_pc_8005d4c ], [ %tmpreg_-24.2, %dec_label_pc_8005f6c ], [ %tmpreg_-24.2, %dec_label_pc_8005f68 ], [ %tmpreg_-24.2, %dec_label_pc_8005f20 ], [ %tmpreg_-24.2, %dec_label_pc_8005ec4 ], [ %tmpreg_-24.2, %dec_label_pc_8005f54 ], [ %tmpreg_-24.2, %dec_label_pc_8005e1c ], [ %tmpreg_-24.2, %dec_label_pc_8005e7a ], [ %tmpreg_-24.2, %dec_label_pc_8005e46 ], [ %tmpreg_-24.2, %dec_label_pc_8005dcc ], [ %tmpreg_-24.1, %dec_label_pc_8005cf0 ], [ %tmpreg_-24.1, %dec_label_pc_8005cca ], [ %v3_8005974, %dec_label_pc_8005bbe ], [ %v3_8005974, %dec_label_pc_8005b8e ], [ %v3_8005974, %dec_label_pc_8005ad2 ], [ %v3_8005974, %dec_label_pc_8005b50 ], [ %v3_8005974, %dec_label_pc_8005b0e ], [ %v3_8005974, %dec_label_pc_80059be ], [ %v3_8005974, %dec_label_pc_8005a7e ], [ %v3_8005974, %dec_label_pc_8005a58 ]
  %v20_80059c0 = phi i32 [ 3, %dec_label_pc_8005c2c ], [ 3, %dec_label_pc_8005d4c ], [ 0, %dec_label_pc_8005f6c ], [ 1, %dec_label_pc_8005f68 ], [ 3, %dec_label_pc_8005f20 ], [ 3, %dec_label_pc_8005ec4 ], [ 3, %dec_label_pc_8005f54 ], [ 1, %dec_label_pc_8005e1c ], [ 3, %dec_label_pc_8005e7a ], [ 3, %dec_label_pc_8005e46 ], [ 3, %dec_label_pc_8005dcc ], [ 3, %dec_label_pc_8005cf0 ], [ 3, %dec_label_pc_8005cca ], [ 3, %dec_label_pc_8005bbe ], [ 3, %dec_label_pc_8005b8e ], [ 1, %dec_label_pc_8005ad2 ], [ 3, %dec_label_pc_8005b50 ], [ 3, %dec_label_pc_8005b0e ], [ 1, %dec_label_pc_80059be ], [ 3, %dec_label_pc_8005a7e ], [ 3, %dec_label_pc_8005a58 ]
  store i32 %tmpreg_-24.0, i32* @r3, align 4
  ret i32 %v20_80059c0

dec_label_pc_80059c2:                             ; preds = %dec_label_pc_800599a, %dec_label_pc_8005990
  %v1_80059c4 = add i32 %RCC_OscInitStruct, 4
  %v2_80059c4 = inttoptr i32 %v1_80059c4 to i32*
  %v3_80059c4 = load i32, i32* %v2_80059c4, align 4
  %v7_80059c6 = icmp eq i32 %v3_80059c4, 1
  br i1 %v7_80059c6, label %dec_label_pc_80059ca, label %dec_label_pc_80059da

dec_label_pc_80059ca:                             ; preds = %dec_label_pc_80059c2
  %v2_80059cc = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_80059d2 = or i32 %v2_80059cc, 65536
  store i32 %v2_80059d2, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br label %dec_label_pc_8005a3e

dec_label_pc_80059da:                             ; preds = %dec_label_pc_80059c2
  %v3_80059da = load i32, i32* %v2_80059c4, align 4
  %v2_80059dc = icmp eq i32 %v3_80059da, 0
  br i1 %v2_80059dc, label %dec_label_pc_80059e0, label %dec_label_pc_80059fe

dec_label_pc_80059e0:                             ; preds = %dec_label_pc_80059da
  %v2_80059e2 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v3_80059f6 = and i32 %v2_80059e2, -327681
  store i32 %v3_80059f6, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br label %dec_label_pc_8005a3e

dec_label_pc_80059fe:                             ; preds = %dec_label_pc_80059da
  %v3_80059fe = load i32, i32* %v2_80059c4, align 4
  %v7_8005a00 = icmp eq i32 %v3_80059fe, 5
  %v2_8005a06 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br i1 %v7_8005a00, label %dec_label_pc_8005a04, label %dec_label_pc_8005a22

dec_label_pc_8005a04:                             ; preds = %dec_label_pc_80059fe
  %v2_8005a1a = or i32 %v2_8005a06, 327680
  store i32 %v2_8005a1a, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br label %dec_label_pc_8005a3e

dec_label_pc_8005a22:                             ; preds = %dec_label_pc_80059fe
  %v3_8005a38 = and i32 %v2_8005a06, -327681
  store i32 %v3_8005a38, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br label %dec_label_pc_8005a3e

dec_label_pc_8005a3e:                             ; preds = %dec_label_pc_8005a04, %dec_label_pc_80059e0, %dec_label_pc_80059ca, %dec_label_pc_8005a22
  %v0_8005a40 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005a40 = add i32 %v0_8005a40, 4
  %v2_8005a40 = inttoptr i32 %v1_8005a40 to i32*
  %v3_8005a40 = load i32, i32* %v2_8005a40, align 4
  %v2_8005a42 = icmp eq i32 %v3_8005a40, 0
  %v0_8005a6c = call i32 @HAL_GetTick()
  store i32 %v0_8005a6c, i32* %r5.global-to-local, align 4
  br i1 %v2_8005a42, label %dec_label_pc_8005a82, label %dec_label_pc_8005a5c

dec_label_pc_8005a4e:                             ; preds = %dec_label_pc_8005a5c
  %v0_8005a4e = call i32 @HAL_GetTick()
  %v1_8005a52 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005a52 = sub i32 %v0_8005a4e, %v1_8005a52
  %tmp18 = icmp ult i32 %v2_8005a52, 101
  br i1 %tmp18, label %dec_label_pc_8005a5c, label %dec_label_pc_8005a58

dec_label_pc_8005a58:                             ; preds = %dec_label_pc_8005a4e
  br label %dec_label_pc_80059c0

dec_label_pc_8005a5c:                             ; preds = %dec_label_pc_8005a3e, %dec_label_pc_8005a4e
  %v2_8005a5e = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005a64 = and i32 %v2_8005a5e, 131072
  %v4_8005a64 = icmp eq i32 %v2_8005a64, 0
  br i1 %v4_8005a64, label %dec_label_pc_8005a4e, label %dec_label_pc_8005a90

dec_label_pc_8005a74:                             ; preds = %dec_label_pc_8005a82
  %v0_8005a74 = call i32 @HAL_GetTick()
  %v1_8005a78 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005a78 = sub i32 %v0_8005a74, %v1_8005a78
  %tmp19 = icmp ult i32 %v2_8005a78, 101
  br i1 %tmp19, label %dec_label_pc_8005a82, label %dec_label_pc_8005a7e

dec_label_pc_8005a7e:                             ; preds = %dec_label_pc_8005a74
  br label %dec_label_pc_80059c0

dec_label_pc_8005a82:                             ; preds = %dec_label_pc_8005a3e, %dec_label_pc_8005a74
  %v2_8005a84 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005a8a = and i32 %v2_8005a84, 131072
  %v4_8005a8a = icmp eq i32 %v2_8005a8a, 0
  br i1 %v4_8005a8a, label %dec_label_pc_8005a90, label %dec_label_pc_8005a74

dec_label_pc_8005a90:                             ; preds = %dec_label_pc_8005a5c, %dec_label_pc_8005a82, %entry, %dec_label_pc_80059b8, %dec_label_pc_80059aa
  %v0_8005a92 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005a92 = inttoptr i32 %v0_8005a92 to i32*
  %v2_8005a92 = load i32, i32* %v1_8005a92, align 4
  %v2_8005a94 = and i32 %v2_8005a92, 2
  %v2_8005a96 = icmp eq i32 %v2_8005a94, 0
  br i1 %v2_8005a96, label %dec_label_pc_8005b60, label %dec_label_pc_8005a9a

dec_label_pc_8005a9a:                             ; preds = %dec_label_pc_8005a90
  %v3_8005a9c = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005aa0 = and i32 %v3_8005a9c, 12
  %v4_8005aa0 = icmp eq i32 %v2_8005aa0, 0
  br i1 %v4_8005aa0, label %dec_label_pc_8005ac0, label %dec_label_pc_8005aa6

dec_label_pc_8005aa6:                             ; preds = %dec_label_pc_8005a9a
  %v3_8005aa8 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005aaa = and i32 %v3_8005aa8, 12
  %v7_8005aac = icmp eq i32 %v2_8005aaa, 8
  br i1 %v7_8005aac, label %dec_label_pc_8005ab0, label %dec_label_pc_8005aea

dec_label_pc_8005ab0:                             ; preds = %dec_label_pc_8005aa6
  %v3_8005ab2 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005ab6 = and i32 %v3_8005ab2, 98304
  %v9_8005abc = icmp eq i32 %v2_8005ab6, 32768
  br i1 %v9_8005abc, label %dec_label_pc_8005ac0, label %dec_label_pc_8005aea

dec_label_pc_8005ac0:                             ; preds = %dec_label_pc_8005ab0, %dec_label_pc_8005a9a
  %v2_8005ac2 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005ac6 = and i32 %v2_8005ac2, 2
  %v4_8005ac6 = icmp eq i32 %v2_8005ac6, 0
  br i1 %v4_8005ac6, label %dec_label_pc_8005ad6, label %dec_label_pc_8005acc

dec_label_pc_8005acc:                             ; preds = %dec_label_pc_8005ac0
  %v1_8005acc = add i32 %v0_8005a92, 12
  %v2_8005acc = inttoptr i32 %v1_8005acc to i32*
  %v3_8005acc = load i32, i32* %v2_8005acc, align 4
  %v7_8005ace = icmp eq i32 %v3_8005acc, 1
  br i1 %v7_8005ace, label %dec_label_pc_8005ad6, label %dec_label_pc_8005ad2

dec_label_pc_8005ad2:                             ; preds = %dec_label_pc_8005acc
  br label %dec_label_pc_80059c0

dec_label_pc_8005ad6:                             ; preds = %dec_label_pc_8005acc, %dec_label_pc_8005ac0
  %v2_8005ad8 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v3_8005adc = and i32 %v2_8005ad8, -249
  %v1_8005ade = add i32 %v0_8005a92, 16
  %v2_8005ade = inttoptr i32 %v1_8005ade to i32*
  %v3_8005ade = load i32, i32* %v2_8005ade, align 4
  %v3_8005ae0 = mul i32 %v3_8005ade, 8
  %v2_8005ae2 = or i32 %v3_8005ae0, %v3_8005adc
  store i32 %v2_8005ae2, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br label %dec_label_pc_8005b60

dec_label_pc_8005aea:                             ; preds = %dec_label_pc_8005ab0, %dec_label_pc_8005aa6
  %v1_8005aea = add i32 %v0_8005a92, 12
  %v2_8005aea = inttoptr i32 %v1_8005aea to i32*
  %v3_8005aea = load i32, i32* %v2_8005aea, align 4
  %v2_8005aec = icmp eq i32 %v3_8005aea, 0
  %v2_8005b34 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br i1 %v2_8005aec, label %dec_label_pc_8005b32, label %dec_label_pc_8005af0

dec_label_pc_8005af0:                             ; preds = %dec_label_pc_8005aea
  %v2_8005af6 = or i32 %v2_8005b34, 1
  store i32 %v2_8005af6, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v0_8005afc = call i32 @HAL_GetTick()
  store i32 %v0_8005afc, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005b12

dec_label_pc_8005b04:                             ; preds = %dec_label_pc_8005b12
  %v0_8005b04 = call i32 @HAL_GetTick()
  %v1_8005b08 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005b08 = sub i32 %v0_8005b04, %v1_8005b08
  %tmp20 = icmp ult i32 %v2_8005b08, 3
  br i1 %tmp20, label %dec_label_pc_8005b12, label %dec_label_pc_8005b0e

dec_label_pc_8005b0e:                             ; preds = %dec_label_pc_8005b04
  br label %dec_label_pc_80059c0

dec_label_pc_8005b12:                             ; preds = %dec_label_pc_8005b04, %dec_label_pc_8005af0
  %v2_8005b14 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005b18 = and i32 %v2_8005b14, 2
  %v4_8005b18 = icmp eq i32 %v2_8005b18, 0
  br i1 %v4_8005b18, label %dec_label_pc_8005b04, label %dec_label_pc_8005b1e

dec_label_pc_8005b1e:                             ; preds = %dec_label_pc_8005b12
  %v2_8005b20 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v3_8005b24 = and i32 %v2_8005b20, -249
  %v0_8005b26 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005b26 = add i32 %v0_8005b26, 16
  %v2_8005b26 = inttoptr i32 %v1_8005b26 to i32*
  %v3_8005b26 = load i32, i32* %v2_8005b26, align 4
  %v3_8005b28 = mul i32 %v3_8005b26, 8
  %v2_8005b2a = or i32 %v3_8005b28, %v3_8005b24
  store i32 %v2_8005b2a, i32* inttoptr (i32 1073876992 to i32*), align 4096
  br label %dec_label_pc_8005b60

dec_label_pc_8005b32:                             ; preds = %dec_label_pc_8005aea
  %v3_8005b36 = and i32 %v2_8005b34, -2
  store i32 %v3_8005b36, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v0_8005b3e = call i32 @HAL_GetTick()
  store i32 %v0_8005b3e, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005b54

dec_label_pc_8005b46:                             ; preds = %dec_label_pc_8005b54
  %v0_8005b46 = call i32 @HAL_GetTick()
  %v1_8005b4a = load i32, i32* %r5.global-to-local, align 4
  %v2_8005b4a = sub i32 %v0_8005b46, %v1_8005b4a
  %tmp21 = icmp ult i32 %v2_8005b4a, 3
  br i1 %tmp21, label %dec_label_pc_8005b54, label %dec_label_pc_8005b50

dec_label_pc_8005b50:                             ; preds = %dec_label_pc_8005b46
  br label %dec_label_pc_80059c0

dec_label_pc_8005b54:                             ; preds = %dec_label_pc_8005b46, %dec_label_pc_8005b32
  %v2_8005b56 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005b5a = and i32 %v2_8005b56, 2
  %v4_8005b5a = icmp eq i32 %v2_8005b5a, 0
  br i1 %v4_8005b5a, label %dec_label_pc_8005b60, label %dec_label_pc_8005b46

dec_label_pc_8005b60:                             ; preds = %dec_label_pc_8005b54, %dec_label_pc_8005a90, %dec_label_pc_8005b1e, %dec_label_pc_8005ad6
  %v0_8005b62 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005b62 = inttoptr i32 %v0_8005b62 to i32*
  %v2_8005b62 = load i32, i32* %v1_8005b62, align 4
  %v2_8005b64 = and i32 %v2_8005b62, 8
  %v2_8005b66 = icmp eq i32 %v2_8005b64, 0
  br i1 %v2_8005b66, label %dec_label_pc_8005bce, label %dec_label_pc_8005b6a

dec_label_pc_8005b6a:                             ; preds = %dec_label_pc_8005b60
  %v1_8005b6a = add i32 %v0_8005b62, 28
  %v2_8005b6a = inttoptr i32 %v1_8005b6a to i32*
  %v3_8005b6a = load i32, i32* %v2_8005b6a, align 4
  %v2_8005b6c = icmp eq i32 %v3_8005b6a, 0
  %v3_8005ba2 = load i32, i32* inttoptr (i32 1073877028 to i32*), align 4
  br i1 %v2_8005b6c, label %dec_label_pc_8005ba0, label %dec_label_pc_8005b70

dec_label_pc_8005b70:                             ; preds = %dec_label_pc_8005b6a
  %v2_8005b76 = or i32 %v3_8005ba2, 1
  store i32 %v2_8005b76, i32* inttoptr (i32 1073877028 to i32*), align 4
  %v0_8005b7c = call i32 @HAL_GetTick()
  store i32 %v0_8005b7c, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005b92

dec_label_pc_8005b84:                             ; preds = %dec_label_pc_8005b92
  %v0_8005b84 = call i32 @HAL_GetTick()
  %v1_8005b88 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005b88 = sub i32 %v0_8005b84, %v1_8005b88
  %tmp22 = icmp ult i32 %v2_8005b88, 3
  br i1 %tmp22, label %dec_label_pc_8005b92, label %dec_label_pc_8005b8e

dec_label_pc_8005b8e:                             ; preds = %dec_label_pc_8005b84
  br label %dec_label_pc_80059c0

dec_label_pc_8005b92:                             ; preds = %dec_label_pc_8005b84, %dec_label_pc_8005b70
  %v3_8005b94 = load i32, i32* inttoptr (i32 1073877028 to i32*), align 4
  %v2_8005b98 = and i32 %v3_8005b94, 2
  %v4_8005b98 = icmp eq i32 %v2_8005b98, 0
  br i1 %v4_8005b98, label %dec_label_pc_8005b84, label %dec_label_pc_8005bce

dec_label_pc_8005ba0:                             ; preds = %dec_label_pc_8005b6a
  %v3_8005ba4 = and i32 %v3_8005ba2, -2
  store i32 %v3_8005ba4, i32* inttoptr (i32 1073877028 to i32*), align 4
  %v0_8005bac = call i32 @HAL_GetTick()
  store i32 %v0_8005bac, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005bc2

dec_label_pc_8005bb4:                             ; preds = %dec_label_pc_8005bc2
  %v0_8005bb4 = call i32 @HAL_GetTick()
  %v1_8005bb8 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005bb8 = sub i32 %v0_8005bb4, %v1_8005bb8
  %tmp23 = icmp ult i32 %v2_8005bb8, 3
  br i1 %tmp23, label %dec_label_pc_8005bc2, label %dec_label_pc_8005bbe

dec_label_pc_8005bbe:                             ; preds = %dec_label_pc_8005bb4
  br label %dec_label_pc_80059c0

dec_label_pc_8005bc2:                             ; preds = %dec_label_pc_8005bb4, %dec_label_pc_8005ba0
  %v3_8005bc4 = load i32, i32* inttoptr (i32 1073877028 to i32*), align 4
  %v2_8005bc8 = and i32 %v3_8005bc4, 2
  %v4_8005bc8 = icmp eq i32 %v2_8005bc8, 0
  br i1 %v4_8005bc8, label %dec_label_pc_8005bce, label %dec_label_pc_8005bb4

dec_label_pc_8005bce:                             ; preds = %dec_label_pc_8005b92, %dec_label_pc_8005bc2, %dec_label_pc_8005b60
  %v0_8005bd0 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005bd0 = inttoptr i32 %v0_8005bd0 to i32*
  %v2_8005bd0 = load i32, i32* %v1_8005bd0, align 4
  %v2_8005bd2 = and i32 %v2_8005bd0, 4
  %v2_8005bd4 = icmp eq i32 %v2_8005bd2, 0
  br i1 %v2_8005bd4, label %dec_label_pc_8005d12, label %dec_label_pc_8005bd8

dec_label_pc_8005bd8:                             ; preds = %dec_label_pc_8005bce
  store i32 0, i32* %r6.global-to-local, align 4
  %v3_8005bdc = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v2_8005be0 = and i32 %v3_8005bdc, 268435456
  %v4_8005be0 = icmp eq i32 %v2_8005be0, 0
  br i1 %v4_8005be0, label %dec_label_pc_8005be6, label %dec_label_pc_8005c02

dec_label_pc_8005be6:                             ; preds = %dec_label_pc_8005bd8
  %v3_8005bea = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v2_8005bec = or i32 %v3_8005bea, 268435456
  store i32 %v2_8005bec, i32* inttoptr (i32 1073877020 to i32*), align 4
  store i32 1, i32* %r6.global-to-local, align 4
  br label %dec_label_pc_8005c02

dec_label_pc_8005c02:                             ; preds = %dec_label_pc_8005bd8, %dec_label_pc_8005be6
  %tmpreg_-24.1 = phi i32 [ 268435456, %dec_label_pc_8005be6 ], [ %v3_8005974, %dec_label_pc_8005bd8 ]
  %v2_8005c04 = load i32, i32* inttoptr (i32 1073770496 to i32*), align 4096
  %v2_8005c0a = and i32 %v2_8005c04, 256
  %v4_8005c0a = icmp eq i32 %v2_8005c0a, 0
  br i1 %v4_8005c0a, label %dec_label_pc_8005c10, label %dec_label_pc_8005c3e

dec_label_pc_8005c10:                             ; preds = %dec_label_pc_8005c02
  %v2_8005c12 = load i32, i32* inttoptr (i32 1073770496 to i32*), align 4096
  %v2_8005c14 = or i32 %v2_8005c12, 256
  store i32 %v2_8005c14, i32* inttoptr (i32 1073770496 to i32*), align 4096
  %v0_8005c1a = call i32 @HAL_GetTick()
  store i32 %v0_8005c1a, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005c30

dec_label_pc_8005c22:                             ; preds = %dec_label_pc_8005c30
  %v0_8005c22 = call i32 @HAL_GetTick()
  %v1_8005c26 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005c26 = sub i32 %v0_8005c22, %v1_8005c26
  %tmp24 = icmp ult i32 %v2_8005c26, 101
  br i1 %tmp24, label %dec_label_pc_8005c30, label %dec_label_pc_8005c2c

dec_label_pc_8005c2c:                             ; preds = %dec_label_pc_8005c22
  br label %dec_label_pc_80059c0

dec_label_pc_8005c30:                             ; preds = %dec_label_pc_8005c22, %dec_label_pc_8005c10
  %v2_8005c32 = load i32, i32* inttoptr (i32 1073770496 to i32*), align 4096
  %v2_8005c38 = and i32 %v2_8005c32, 256
  %v4_8005c38 = icmp eq i32 %v2_8005c38, 0
  br i1 %v4_8005c38, label %dec_label_pc_8005c22, label %dec_label_pc_8005c3e

dec_label_pc_8005c3e:                             ; preds = %dec_label_pc_8005c30, %dec_label_pc_8005c02
  %v0_8005c40 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005c40 = add i32 %v0_8005c40, 8
  %v2_8005c40 = inttoptr i32 %v1_8005c40 to i32*
  %v3_8005c40 = load i32, i32* %v2_8005c40, align 4
  %v7_8005c42 = icmp eq i32 %v3_8005c40, 1
  br i1 %v7_8005c42, label %dec_label_pc_8005c46, label %dec_label_pc_8005c54

dec_label_pc_8005c46:                             ; preds = %dec_label_pc_8005c3e
  %v3_8005c48 = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v2_8005c4c = or i32 %v3_8005c48, 1
  store i32 %v2_8005c4c, i32* inttoptr (i32 1073877024 to i32*), align 32
  br label %dec_label_pc_8005cac

dec_label_pc_8005c54:                             ; preds = %dec_label_pc_8005c3e
  %v3_8005c54 = load i32, i32* %v2_8005c40, align 4
  %v2_8005c56 = icmp eq i32 %v3_8005c54, 0
  br i1 %v2_8005c56, label %dec_label_pc_8005c5a, label %dec_label_pc_8005c74

dec_label_pc_8005c5a:                             ; preds = %dec_label_pc_8005c54
  %v3_8005c5c = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v3_8005c6c = and i32 %v3_8005c5c, -6
  store i32 %v3_8005c6c, i32* inttoptr (i32 1073877024 to i32*), align 32
  br label %dec_label_pc_8005cac

dec_label_pc_8005c74:                             ; preds = %dec_label_pc_8005c54
  %v3_8005c74 = load i32, i32* %v2_8005c40, align 4
  %v7_8005c76 = icmp eq i32 %v3_8005c74, 5
  %v3_8005c7c = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  br i1 %v7_8005c76, label %dec_label_pc_8005c7a, label %dec_label_pc_8005c94

dec_label_pc_8005c7a:                             ; preds = %dec_label_pc_8005c74
  %v2_8005c8c = or i32 %v3_8005c7c, 5
  store i32 %v2_8005c8c, i32* inttoptr (i32 1073877024 to i32*), align 32
  br label %dec_label_pc_8005cac

dec_label_pc_8005c94:                             ; preds = %dec_label_pc_8005c74
  %v3_8005ca6 = and i32 %v3_8005c7c, -6
  store i32 %v3_8005ca6, i32* inttoptr (i32 1073877024 to i32*), align 32
  br label %dec_label_pc_8005cac

dec_label_pc_8005cac:                             ; preds = %dec_label_pc_8005c7a, %dec_label_pc_8005c5a, %dec_label_pc_8005c46, %dec_label_pc_8005c94
  %v0_8005cae = load i32, i32* %r4.global-to-local, align 4
  %v1_8005cae = add i32 %v0_8005cae, 8
  %v2_8005cae = inttoptr i32 %v1_8005cae to i32*
  %v3_8005cae = load i32, i32* %v2_8005cae, align 4
  %v2_8005cb0 = icmp eq i32 %v3_8005cae, 0
  %v0_8005cdc = call i32 @HAL_GetTick()
  store i32 %v0_8005cdc, i32* %r5.global-to-local, align 4
  br i1 %v2_8005cb0, label %dec_label_pc_8005cf4, label %dec_label_pc_8005cce

dec_label_pc_8005cbe:                             ; preds = %dec_label_pc_8005cce
  %v0_8005cbe = call i32 @HAL_GetTick()
  %v1_8005cc2 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005cc2 = sub i32 %v0_8005cbe, %v1_8005cc2
  %tmp25 = icmp ult i32 %v2_8005cc2, 5001
  br i1 %tmp25, label %dec_label_pc_8005cce, label %dec_label_pc_8005cca

dec_label_pc_8005cca:                             ; preds = %dec_label_pc_8005cbe
  br label %dec_label_pc_80059c0

dec_label_pc_8005cce:                             ; preds = %dec_label_pc_8005cac, %dec_label_pc_8005cbe
  %v3_8005cd0 = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v2_8005cd4 = and i32 %v3_8005cd0, 2
  %v4_8005cd4 = icmp eq i32 %v2_8005cd4, 0
  br i1 %v4_8005cd4, label %dec_label_pc_8005cbe, label %dec_label_pc_8005d00

dec_label_pc_8005ce4:                             ; preds = %dec_label_pc_8005cf4
  %v0_8005ce4 = call i32 @HAL_GetTick()
  %v1_8005ce8 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005ce8 = sub i32 %v0_8005ce4, %v1_8005ce8
  %tmp26 = icmp ult i32 %v2_8005ce8, 5001
  br i1 %tmp26, label %dec_label_pc_8005cf4, label %dec_label_pc_8005cf0

dec_label_pc_8005cf0:                             ; preds = %dec_label_pc_8005ce4
  br label %dec_label_pc_80059c0

dec_label_pc_8005cf4:                             ; preds = %dec_label_pc_8005cac, %dec_label_pc_8005ce4
  %v3_8005cf6 = load i32, i32* inttoptr (i32 1073877024 to i32*), align 32
  %v2_8005cfa = and i32 %v3_8005cf6, 2
  %v4_8005cfa = icmp eq i32 %v2_8005cfa, 0
  br i1 %v4_8005cfa, label %dec_label_pc_8005d00, label %dec_label_pc_8005ce4

dec_label_pc_8005d00:                             ; preds = %dec_label_pc_8005cce, %dec_label_pc_8005cf4
  %v0_8005d00 = load i32, i32* %r6.global-to-local, align 4
  %v7_8005d00 = icmp eq i32 %v0_8005d00, 1
  br i1 %v7_8005d00, label %dec_label_pc_8005d04, label %dec_label_pc_8005d12

dec_label_pc_8005d04:                             ; preds = %dec_label_pc_8005d00
  %v3_8005d06 = load i32, i32* inttoptr (i32 1073877020 to i32*), align 4
  %v3_8005d0a = and i32 %v3_8005d06, -268435457
  store i32 %v3_8005d0a, i32* inttoptr (i32 1073877020 to i32*), align 4
  br label %dec_label_pc_8005d12

dec_label_pc_8005d12:                             ; preds = %dec_label_pc_8005bce, %dec_label_pc_8005d04, %dec_label_pc_8005d00
  %tmpreg_-24.2 = phi i32 [ %tmpreg_-24.1, %dec_label_pc_8005d04 ], [ %tmpreg_-24.1, %dec_label_pc_8005d00 ], [ %v3_8005974, %dec_label_pc_8005bce ]
  %v0_8005d14 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005d14 = inttoptr i32 %v0_8005d14 to i32*
  %v2_8005d14 = load i32, i32* %v1_8005d14, align 4
  %v2_8005d16 = and i32 %v2_8005d14, 16
  %v2_8005d18 = icmp eq i32 %v2_8005d16, 0
  br i1 %v2_8005d18, label %dec_label_pc_8005ddc, label %dec_label_pc_8005d1c

dec_label_pc_8005d1c:                             ; preds = %dec_label_pc_8005d12
  %v1_8005d1c = add i32 %v0_8005d14, 20
  %v2_8005d1c = inttoptr i32 %v1_8005d1c to i32*
  %v3_8005d1c = load i32, i32* %v2_8005d1c, align 4
  %v7_8005d1e = icmp eq i32 %v3_8005d1c, 1
  br i1 %v7_8005d1e, label %dec_label_pc_8005d22, label %dec_label_pc_8005d7c

dec_label_pc_8005d22:                             ; preds = %dec_label_pc_8005d1c
  %v3_8005d24 = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_8005d34 = or i32 %v3_8005d24, 5
  store i32 %v2_8005d34, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v0_8005d3a = call i32 @HAL_GetTick()
  store i32 %v0_8005d3a, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005d50

dec_label_pc_8005d42:                             ; preds = %dec_label_pc_8005d50
  %v0_8005d42 = call i32 @HAL_GetTick()
  %v1_8005d46 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005d46 = sub i32 %v0_8005d42, %v1_8005d46
  %tmp27 = icmp ult i32 %v2_8005d46, 3
  br i1 %tmp27, label %dec_label_pc_8005d50, label %dec_label_pc_8005d4c

dec_label_pc_8005d4c:                             ; preds = %dec_label_pc_8005d42
  br label %dec_label_pc_80059c0

dec_label_pc_8005d50:                             ; preds = %dec_label_pc_8005d42, %dec_label_pc_8005d22
  %v3_8005d52 = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_8005d56 = and i32 %v3_8005d52, 2
  %v4_8005d56 = icmp eq i32 %v2_8005d56, 0
  br i1 %v4_8005d56, label %dec_label_pc_8005d42, label %dec_label_pc_8005d5c

dec_label_pc_8005d5c:                             ; preds = %dec_label_pc_8005d50
  %v3_8005d5e = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v3_8005d62 = and i32 %v3_8005d5e, -249
  %v0_8005d64 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005d64 = add i32 %v0_8005d64, 24
  %v2_8005d64 = inttoptr i32 %v1_8005d64 to i32*
  %v3_8005d64 = load i32, i32* %v2_8005d64, align 4
  %v3_8005d66 = mul i32 %v3_8005d64, 8
  %v2_8005d68 = or i32 %v3_8005d66, %v3_8005d62
  store i32 %v2_8005d68, i32* inttoptr (i32 1073877044 to i32*), align 4
  br label %dec_label_pc_8005ddc

dec_label_pc_8005d7c:                             ; preds = %dec_label_pc_8005d1c
  %v3_8005d7c = load i32, i32* %v2_8005d1c, align 4
  %v7_8005d7e = icmp eq i32 %v3_8005d7c, -5
  %v3_8005d86 = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  br i1 %v7_8005d7e, label %dec_label_pc_8005d84, label %dec_label_pc_8005da4

dec_label_pc_8005d84:                             ; preds = %dec_label_pc_8005d7c
  %v3_8005d8a = and i32 %v3_8005d86, -5
  store i32 %v3_8005d8a, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v3_8005d96 = and i32 %v3_8005d86, -253
  %v0_8005d98 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005d98 = add i32 %v0_8005d98, 24
  %v2_8005d98 = inttoptr i32 %v1_8005d98 to i32*
  %v3_8005d98 = load i32, i32* %v2_8005d98, align 4
  %v3_8005d9a = mul i32 %v3_8005d98, 8
  %v2_8005d9c = or i32 %v3_8005d9a, %v3_8005d96
  store i32 %v2_8005d9c, i32* inttoptr (i32 1073877044 to i32*), align 4
  br label %dec_label_pc_8005ddc

dec_label_pc_8005da4:                             ; preds = %dec_label_pc_8005d7c
  %v2_8005daa = and i32 %v3_8005d86, -6
  %v3_8005db4 = or i32 %v2_8005daa, 4
  store i32 %v3_8005db4, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v0_8005dba = call i32 @HAL_GetTick()
  store i32 %v0_8005dba, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005dd0

dec_label_pc_8005dc2:                             ; preds = %dec_label_pc_8005dd0
  %v0_8005dc2 = call i32 @HAL_GetTick()
  %v1_8005dc6 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005dc6 = sub i32 %v0_8005dc2, %v1_8005dc6
  %tmp28 = icmp ult i32 %v2_8005dc6, 3
  br i1 %tmp28, label %dec_label_pc_8005dd0, label %dec_label_pc_8005dcc

dec_label_pc_8005dcc:                             ; preds = %dec_label_pc_8005dc2
  br label %dec_label_pc_80059c0

dec_label_pc_8005dd0:                             ; preds = %dec_label_pc_8005dc2, %dec_label_pc_8005da4
  %v3_8005dd2 = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_8005dd6 = and i32 %v3_8005dd2, 2
  %v4_8005dd6 = icmp eq i32 %v2_8005dd6, 0
  br i1 %v4_8005dd6, label %dec_label_pc_8005ddc, label %dec_label_pc_8005dc2

dec_label_pc_8005ddc:                             ; preds = %dec_label_pc_8005dd0, %dec_label_pc_8005d12, %dec_label_pc_8005d84, %dec_label_pc_8005d5c
  %v0_8005dde = load i32, i32* %r4.global-to-local, align 4
  %v1_8005dde = inttoptr i32 %v0_8005dde to i32*
  %v2_8005dde = load i32, i32* %v1_8005dde, align 4
  %v2_8005de0 = and i32 %v2_8005dde, 32
  %v2_8005de2 = icmp eq i32 %v2_8005de0, 0
  br i1 %v2_8005de2, label %dec_label_pc_8005e8c, label %dec_label_pc_8005de6

dec_label_pc_8005de6:                             ; preds = %dec_label_pc_8005ddc
  %v3_8005de8 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005dec = and i32 %v3_8005de8, 12
  %v2_8005dee = icmp eq i32 %v2_8005dec, 12
  br i1 %v2_8005dee, label %dec_label_pc_8005e08, label %dec_label_pc_8005df2

dec_label_pc_8005df2:                             ; preds = %dec_label_pc_8005de6
  %v3_8005df4 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005df6 = and i32 %v3_8005df4, 12
  %v7_8005df8 = icmp eq i32 %v2_8005df6, 8
  br i1 %v7_8005df8, label %dec_label_pc_8005dfc, label %dec_label_pc_8005e20

dec_label_pc_8005dfc:                             ; preds = %dec_label_pc_8005df2
  %v3_8005dfe = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005e02 = and i32 %v3_8005dfe, 98304
  %v3_8005e04 = icmp eq i32 %v2_8005e02, 98304
  br i1 %v3_8005e04, label %dec_label_pc_8005e08, label %dec_label_pc_8005e20

dec_label_pc_8005e08:                             ; preds = %dec_label_pc_8005dfc, %dec_label_pc_8005de6
  %v3_8005e0a = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_8005e10 = and i32 %v3_8005e0a, 65536
  %v4_8005e10 = icmp eq i32 %v2_8005e10, 0
  br i1 %v4_8005e10, label %dec_label_pc_8005e8c, label %dec_label_pc_8005e16

dec_label_pc_8005e16:                             ; preds = %dec_label_pc_8005e08
  %v1_8005e16 = add i32 %v0_8005dde, 32
  %v2_8005e16 = inttoptr i32 %v1_8005e16 to i32*
  %v3_8005e16 = load i32, i32* %v2_8005e16, align 4
  %v7_8005e18 = icmp eq i32 %v3_8005e16, 1
  br i1 %v7_8005e18, label %dec_label_pc_8005e8c, label %dec_label_pc_8005e1c

dec_label_pc_8005e1c:                             ; preds = %dec_label_pc_8005e16
  br label %dec_label_pc_80059c0

dec_label_pc_8005e20:                             ; preds = %dec_label_pc_8005dfc, %dec_label_pc_8005df2
  %v1_8005e20 = add i32 %v0_8005dde, 32
  %v2_8005e20 = inttoptr i32 %v1_8005e20 to i32*
  %v3_8005e20 = load i32, i32* %v2_8005e20, align 4
  %v2_8005e22 = icmp eq i32 %v3_8005e20, 0
  %v3_8005e5c = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  br i1 %v2_8005e22, label %dec_label_pc_8005e5a, label %dec_label_pc_8005e26

dec_label_pc_8005e26:                             ; preds = %dec_label_pc_8005e20
  %v2_8005e2e = or i32 %v3_8005e5c, 65536
  store i32 %v2_8005e2e, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v0_8005e34 = call i32 @HAL_GetTick()
  store i32 %v0_8005e34, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005e4a

dec_label_pc_8005e3c:                             ; preds = %dec_label_pc_8005e4a
  %v0_8005e3c = call i32 @HAL_GetTick()
  %v1_8005e40 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005e40 = sub i32 %v0_8005e3c, %v1_8005e40
  %tmp29 = icmp ult i32 %v2_8005e40, 3
  br i1 %tmp29, label %dec_label_pc_8005e4a, label %dec_label_pc_8005e46

dec_label_pc_8005e46:                             ; preds = %dec_label_pc_8005e3c
  br label %dec_label_pc_80059c0

dec_label_pc_8005e4a:                             ; preds = %dec_label_pc_8005e3c, %dec_label_pc_8005e26
  %v3_8005e4c = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_8005e52 = and i32 %v3_8005e4c, 65536
  %v4_8005e52 = icmp eq i32 %v2_8005e52, 0
  br i1 %v4_8005e52, label %dec_label_pc_8005e3c, label %dec_label_pc_8005e8c

dec_label_pc_8005e5a:                             ; preds = %dec_label_pc_8005e20
  %v3_8005e62 = and i32 %v3_8005e5c, -65537
  store i32 %v3_8005e62, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v0_8005e68 = call i32 @HAL_GetTick()
  store i32 %v0_8005e68, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005e7e

dec_label_pc_8005e70:                             ; preds = %dec_label_pc_8005e7e
  %v0_8005e70 = call i32 @HAL_GetTick()
  %v1_8005e74 = load i32, i32* %r5.global-to-local, align 4
  %v2_8005e74 = sub i32 %v0_8005e70, %v1_8005e74
  %tmp30 = icmp ult i32 %v2_8005e74, 3
  br i1 %tmp30, label %dec_label_pc_8005e7e, label %dec_label_pc_8005e7a

dec_label_pc_8005e7a:                             ; preds = %dec_label_pc_8005e70
  br label %dec_label_pc_80059c0

dec_label_pc_8005e7e:                             ; preds = %dec_label_pc_8005e70, %dec_label_pc_8005e5a
  %v3_8005e80 = load i32, i32* inttoptr (i32 1073877044 to i32*), align 4
  %v2_8005e86 = and i32 %v3_8005e80, 65536
  %v4_8005e86 = icmp eq i32 %v2_8005e86, 0
  br i1 %v4_8005e86, label %dec_label_pc_8005e8c, label %dec_label_pc_8005e70

dec_label_pc_8005e8c:                             ; preds = %dec_label_pc_8005e4a, %dec_label_pc_8005e7e, %dec_label_pc_8005ddc, %dec_label_pc_8005e16, %dec_label_pc_8005e08
  %v0_8005e8c = load i32, i32* %r4.global-to-local, align 4
  %v1_8005e8c = add i32 %v0_8005e8c, 36
  %v2_8005e8c = inttoptr i32 %v1_8005e8c to i32*
  %v3_8005e8c = load i32, i32* %v2_8005e8c, align 4
  %v2_8005e8e = icmp eq i32 %v3_8005e8c, 0
  br i1 %v2_8005e8e, label %dec_label_pc_8005f6c, label %dec_label_pc_8005e92

dec_label_pc_8005e92:                             ; preds = %dec_label_pc_8005e8c
  %v3_8005e94 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005e98 = and i32 %v3_8005e94, 12
  %v7_8005e9a = icmp eq i32 %v2_8005e98, 8
  br i1 %v7_8005e9a, label %dec_label_pc_8005f68, label %dec_label_pc_8005e9e

dec_label_pc_8005e9e:                             ; preds = %dec_label_pc_8005e92
  %v3_8005e9e = load i32, i32* %v2_8005e8c, align 4
  %v7_8005ea0 = icmp eq i32 %v3_8005e9e, 2
  %v2_8005ea6 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v3_8005eac = and i32 %v2_8005ea6, -16777217
  store i32 %v3_8005eac, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v0_8005eb2 = call i32 @HAL_GetTick()
  store i32 %v0_8005eb2, i32* %r5.global-to-local, align 4
  br i1 %v7_8005ea0, label %dec_label_pc_8005ec8, label %dec_label_pc_8005f58

dec_label_pc_8005eba:                             ; preds = %dec_label_pc_8005ec8
  %v0_8005eba = call i32 @HAL_GetTick()
  %v1_8005ebe = load i32, i32* %r5.global-to-local, align 4
  %v2_8005ebe = sub i32 %v0_8005eba, %v1_8005ebe
  %tmp31 = icmp ult i32 %v2_8005ebe, 3
  br i1 %tmp31, label %dec_label_pc_8005ec8, label %dec_label_pc_8005ec4

dec_label_pc_8005ec4:                             ; preds = %dec_label_pc_8005eba
  br label %dec_label_pc_80059c0

dec_label_pc_8005ec8:                             ; preds = %dec_label_pc_8005e9e, %dec_label_pc_8005eba
  %v2_8005eca = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005ed0 = and i32 %v2_8005eca, 33554432
  %v4_8005ed0 = icmp eq i32 %v2_8005ed0, 0
  br i1 %v4_8005ed0, label %dec_label_pc_8005ed6, label %dec_label_pc_8005eba

dec_label_pc_8005ed6:                             ; preds = %dec_label_pc_8005ec8
  %v3_8005eda = load i32, i32* inttoptr (i32 1073877036 to i32*), align 4
  %v3_8005edc = and i32 %v3_8005eda, -16
  %v0_8005ee0 = load i32, i32* %r4.global-to-local, align 4
  %v1_8005ee0 = add i32 %v0_8005ee0, 48
  %v2_8005ee0 = inttoptr i32 %v1_8005ee0 to i32*
  %v3_8005ee0 = load i32, i32* %v2_8005ee0, align 4
  %v2_8005ee2 = or i32 %v3_8005ee0, %v3_8005edc
  store i32 %v2_8005ee2, i32* inttoptr (i32 1073877036 to i32*), align 4
  %v1_8005ee8 = add i32 %v0_8005ee0, 40
  %v2_8005ee8 = inttoptr i32 %v1_8005ee8 to i32*
  %v3_8005ee8 = load i32, i32* %v2_8005ee8, align 4
  %v1_8005eea = add i32 %v0_8005ee0, 44
  %v2_8005eea = inttoptr i32 %v1_8005eea to i32*
  %v3_8005eea = load i32, i32* %v2_8005eea, align 4
  %v2_8005eec = or i32 %v3_8005eea, %v3_8005ee8
  %v3_8005ef0 = load i32, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v3_8005ef6 = and i32 %v3_8005ef0, -4030465
  %v2_8005ef8 = or i32 %v3_8005ef6, %v2_8005eec
  store i32 %v2_8005ef8, i32* inttoptr (i32 1073876996 to i32*), align 4
  %v2_8005f02 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005f08 = or i32 %v2_8005f02, 16777216
  store i32 %v2_8005f08, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v0_8005f0e = call i32 @HAL_GetTick()
  store i32 %v0_8005f0e, i32* %r5.global-to-local, align 4
  br label %dec_label_pc_8005f24

dec_label_pc_8005f16:                             ; preds = %dec_label_pc_8005f24
  %v0_8005f16 = call i32 @HAL_GetTick()
  %v1_8005f1a = load i32, i32* %r5.global-to-local, align 4
  %v2_8005f1a = sub i32 %v0_8005f16, %v1_8005f1a
  %tmp32 = icmp ult i32 %v2_8005f1a, 3
  br i1 %tmp32, label %dec_label_pc_8005f24, label %dec_label_pc_8005f20

dec_label_pc_8005f20:                             ; preds = %dec_label_pc_8005f16
  br label %dec_label_pc_80059c0

dec_label_pc_8005f24:                             ; preds = %dec_label_pc_8005f16, %dec_label_pc_8005ed6
  %v2_8005f26 = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005f2c = and i32 %v2_8005f26, 33554432
  %v4_8005f2c = icmp eq i32 %v2_8005f2c, 0
  br i1 %v4_8005f2c, label %dec_label_pc_8005f16, label %dec_label_pc_8005f6c

dec_label_pc_8005f4a:                             ; preds = %dec_label_pc_8005f58
  %v0_8005f4a = call i32 @HAL_GetTick()
  %v1_8005f4e = load i32, i32* %r5.global-to-local, align 4
  %v2_8005f4e = sub i32 %v0_8005f4a, %v1_8005f4e
  %tmp33 = icmp ult i32 %v2_8005f4e, 3
  br i1 %tmp33, label %dec_label_pc_8005f58, label %dec_label_pc_8005f54

dec_label_pc_8005f54:                             ; preds = %dec_label_pc_8005f4a
  br label %dec_label_pc_80059c0

dec_label_pc_8005f58:                             ; preds = %dec_label_pc_8005e9e, %dec_label_pc_8005f4a
  %v2_8005f5a = load i32, i32* inttoptr (i32 1073876992 to i32*), align 4096
  %v2_8005f60 = and i32 %v2_8005f5a, 33554432
  %v4_8005f60 = icmp eq i32 %v2_8005f60, 0
  br i1 %v4_8005f60, label %dec_label_pc_8005f6c, label %dec_label_pc_8005f4a

dec_label_pc_8005f68:                             ; preds = %dec_label_pc_8005e92
  br label %dec_label_pc_80059c0

dec_label_pc_8005f6c:                             ; preds = %dec_label_pc_8005f58, %dec_label_pc_8005f24, %dec_label_pc_8005e8c
  br label %dec_label_pc_80059c0

; uselistorder directives
  uselistorder i32 %v0_8005ee0, { 1, 0, 2 }
  uselistorder i32 %v0_8005dde, { 1, 0, 2 }
  uselistorder i32 %tmpreg_-24.2, { 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i32 %v3_8005c7c, { 1, 0 }
  uselistorder i32 %tmpreg_-24.1, { 2, 3, 4, 1, 0 }
  uselistorder i32 %v0_8005a92, { 2, 0, 1, 3 }
  uselistorder i32 %v2_8005a06, { 1, 0 }
  uselistorder i32 %v3_8005974, { 8, 9, 0, 1, 2, 3, 4, 5, 6, 7 }
  uselistorder i32* %r6.global-to-local, { 1, 0, 2 }
  uselistorder i32* %r5.global-to-local, { 2, 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
  uselistorder i32 -16777217, { 1, 0 }
  uselistorder i32 36, { 0, 4, 5, 1, 2, 3, 6 }
  uselistorder i32* inttoptr (i32 1073877044 to i32*), { 5, 6, 8, 9, 7, 10, 1, 0, 2, 3, 4, 11, 12, 13, 14, 15, 16 }
  uselistorder i32 5001, { 0, 1, 5, 4, 3, 2, 6 }
  uselistorder i32 -6, { 0, 2, 1 }
  uselistorder i32* inttoptr (i32 1073877024 to i32*), { 6, 7, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 0, 13, 14, 15, 16 }
  uselistorder i32 1073770496, { 1, 0 }
  uselistorder i32 268435456, { 0, 3, 5, 1, 2, 4, 7, 6, 11, 8, 12, 9, 10, 13 }
  uselistorder i32* inttoptr (i32 1073877028 to i32*), { 0, 1, 3, 4, 2 }
  uselistorder i32 -249, { 1, 0, 2 }
  uselistorder i32 32768, { 2, 1, 0, 3 }
  uselistorder i32 101, { 2, 0, 1, 3, 4, 5, 6, 9, 10, 7, 11, 8 }
  uselistorder i32 ()* @HAL_GetTick, { 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 30, 31, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 17, 18, 16, 15, 14, 13, 12, 11, 10, 9, 8, 5, 4, 3, 2, 7, 6, 1, 0 }
  uselistorder i32 5, { 1, 0, 7, 8, 5, 6, 9, 10, 11, 26, 27, 2, 12, 13, 3, 14, 15, 4, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 28 }
  uselistorder i32 -327681, { 1, 0 }
  uselistorder i32 131072, { 2, 3, 4, 5, 1, 6, 0 }
  uselistorder i32* inttoptr (i32 1073876992 to i32*), { 17, 18, 19, 0, 20, 21, 22, 10, 11, 13, 14, 15, 16, 12, 23, 24, 25, 6, 7, 1, 2, 3, 4, 5, 8, 9, 26, 27, 28, 29 }
  uselistorder i32 98304, { 0, 2, 3, 4, 1, 5 }
  uselistorder i32* inttoptr (i32 1073876996 to i32*), { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 16, 17, 18, 13, 14, 15, 19, 20, 21, 22, 23 }
  uselistorder i32 %RCC_OscInitStruct, { 1, 0, 3, 2 }
  uselistorder label %dec_label_pc_8005f58, { 1, 0 }
  uselistorder label %dec_label_pc_8005ec8, { 1, 0 }
  uselistorder label %dec_label_pc_8005e8c, { 1, 0, 3, 4, 2 }
  uselistorder label %dec_label_pc_8005ddc, { 0, 2, 3, 1 }
  uselistorder label %dec_label_pc_8005d12, { 1, 2, 0 }
  uselistorder label %dec_label_pc_8005d00, { 1, 0 }
  uselistorder label %dec_label_pc_8005cf4, { 1, 0 }
  uselistorder label %dec_label_pc_8005cce, { 1, 0 }
  uselistorder label %dec_label_pc_8005cac, { 3, 0, 1, 2 }
  uselistorder label %dec_label_pc_8005c02, { 1, 0 }
  uselistorder label %dec_label_pc_8005bce, { 1, 0, 2 }
  uselistorder label %dec_label_pc_8005b60, { 0, 2, 3, 1 }
  uselistorder label %dec_label_pc_8005a90, { 1, 0, 3, 4, 2 }
  uselistorder label %dec_label_pc_8005a82, { 1, 0 }
  uselistorder label %dec_label_pc_8005a5c, { 1, 0 }
  uselistorder label %dec_label_pc_8005a3e, { 3, 0, 1, 2 }
}

define i32 @HAL_SYSTICK_Config(i32 %TicksNumb) local_unnamed_addr {
entry:
  %v3_8005f74 = load i32, i32* @r4, align 4
  %v1_8005f7a = add i32 %TicksNumb, -1
  %tmp7 = icmp ult i32 %v1_8005f7a, 16777216
  br i1 %tmp7, label %dec_label_pc_8005f86, label %dec_label_pc_8005fa0

dec_label_pc_8005f86:                             ; preds = %entry
  store i32 %v1_8005f7a, i32* inttoptr (i32 -536813548 to i32*), align 4
  call void @NVIC_SetPriority(i32 -1, i32 3)
  store i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8
  store i32 7, i32* inttoptr (i32 -536813552 to i32*), align 16
  br label %dec_label_pc_8005fa0

dec_label_pc_8005fa0:                             ; preds = %entry, %dec_label_pc_8005f86
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8005f86 ], [ 1, %entry ]
  store i32 %v3_8005f74, i32* @r4, align 4
  ret i32 %storemerge1

; uselistorder directives
  uselistorder i32 %v1_8005f7a, { 1, 0 }
  uselistorder void (i32, i32)* @NVIC_SetPriority, { 1, 0 }
  uselistorder i32 16777216, { 14, 16, 15, 1, 0, 4, 2, 5, 3, 7, 6, 9, 8, 11, 10, 12, 13 }
  uselistorder label %dec_label_pc_8005fa0, { 1, 0 }
}

define i32 @HAL_TIMEx_ConfigBreakDeadTime(i32 %htim, %anon_struct_100* %sBreakDeadTimeConfig) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_100* %sBreakDeadTimeConfig to i32
  store i32 %htim, i32* @r3, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  %v2_8005fb6 = add i32 %htim, 60
  %v3_8005fb6 = inttoptr i32 %v2_8005fb6 to i8*
  %v4_8005fb6 = load i8, i8* %v3_8005fb6, align 1
  %v7_8005fb8 = icmp eq i8 %v4_8005fb6, 1
  br i1 %v7_8005fb8, label %dec_label_pc_8005fbe, label %dec_label_pc_8005fc0

dec_label_pc_8005fbe:                             ; preds = %entry, %dec_label_pc_8005fc0
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8005fc0 ], [ 2, %entry ]
  ret i32 %storemerge1

dec_label_pc_8005fc0:                             ; preds = %entry
  store i8 1, i8* %v3_8005fb6, align 1
  %v3_8005fcc = load i32, i32* @r3, align 4
  %v4_8005fcc = add i32 %v3_8005fcc, 61
  %v5_8005fcc = inttoptr i32 %v4_8005fcc to i8*
  store i8 2, i8* %v5_8005fcc, align 1
  %v0_8005fce = load i32, i32* %r2.global-to-local, align 4
  %v3_8005fce = and i32 %v0_8005fce, -256
  %v2_8005fd2 = add i32 %tmp, 12
  %v3_8005fd2 = inttoptr i32 %v2_8005fd2 to i32*
  %v4_8005fd2 = load i32, i32* %v3_8005fd2, align 4
  %v2_8005fd4 = or i32 %v4_8005fd2, %v3_8005fce
  store i32 %v2_8005fd4, i32* %r2.global-to-local, align 4
  %v3_8005fde = and i32 %v2_8005fd4, -769
  %v2_8005fe0 = add i32 %tmp, 8
  %v3_8005fe0 = inttoptr i32 %v2_8005fe0 to i32*
  %v4_8005fe0 = load i32, i32* %v3_8005fe0, align 4
  %v2_8005fe2 = or i32 %v4_8005fe0, %v3_8005fde
  store i32 %v2_8005fe2, i32* %r2.global-to-local, align 4
  %v3_8005fec = and i32 %v2_8005fe2, -1025
  %v2_8005fee = add i32 %tmp, 4
  %v3_8005fee = inttoptr i32 %v2_8005fee to i32*
  %v4_8005fee = load i32, i32* %v3_8005fee, align 4
  %v2_8005ff0 = or i32 %v4_8005fee, %v3_8005fec
  store i32 %v2_8005ff0, i32* %r2.global-to-local, align 4
  %v3_8005ffa = and i32 %v2_8005ff0, -2049
  %tmp6 = getelementptr inbounds %anon_struct_100, %anon_struct_100* %sBreakDeadTimeConfig, i32 0, i32 0
  %v3_8005ffc = load i32, i32* %tmp6, align 4
  %v2_8005ffe = or i32 %v3_8005ffc, %v3_8005ffa
  store i32 %v2_8005ffe, i32* %r2.global-to-local, align 4
  %v3_8006008 = and i32 %v2_8005ffe, -4097
  %v2_800600a = add i32 %tmp, 16
  %v3_800600a = inttoptr i32 %v2_800600a to i32*
  %v4_800600a = load i32, i32* %v3_800600a, align 4
  %v2_800600c = or i32 %v4_800600a, %v3_8006008
  store i32 %v2_800600c, i32* %r2.global-to-local, align 4
  %v3_8006016 = and i32 %v2_800600c, -8193
  %v2_8006018 = add i32 %tmp, 20
  %v3_8006018 = inttoptr i32 %v2_8006018 to i32*
  %v4_8006018 = load i32, i32* %v3_8006018, align 4
  %v2_800601a = or i32 %v4_8006018, %v3_8006016
  store i32 %v2_800601a, i32* %r2.global-to-local, align 4
  %v3_8006024 = and i32 %v2_800601a, -16385
  %v2_8006026 = add i32 %tmp, 24
  %v3_8006026 = inttoptr i32 %v2_8006026 to i32*
  %v4_8006026 = load i32, i32* %v3_8006026, align 4
  %v2_8006028 = or i32 %v4_8006026, %v3_8006024
  store i32 %v2_8006028, i32* %r2.global-to-local, align 4
  %v3_8006032 = and i32 %v2_8006028, -32769
  %v4_8006034 = load i32, i32* %v3_8006026, align 4
  %v2_8006036 = or i32 %v4_8006034, %v3_8006032
  store i32 %v2_8006036, i32* %r2.global-to-local, align 4
  %v0_800603a = load i32, i32* @r3, align 4
  %v1_800603a = inttoptr i32 %v0_800603a to i32*
  %v2_800603a = load i32, i32* %v1_800603a, align 4
  %v2_800603c = add i32 %v2_800603a, 68
  %v3_800603c = inttoptr i32 %v2_800603c to i32*
  store i32 %v2_8006036, i32* %v3_800603c, align 4
  %v3_8006042 = load i32, i32* @r3, align 4
  %v4_8006042 = add i32 %v3_8006042, 61
  %v5_8006042 = inttoptr i32 %v4_8006042 to i8*
  store i8 1, i8* %v5_8006042, align 1
  %v3_800604a = load i32, i32* @r3, align 4
  %v4_800604a = add i32 %v3_800604a, 60
  %v5_800604a = inttoptr i32 %v4_800604a to i8*
  store i8 0, i8* %v5_800604a, align 1
  br label %dec_label_pc_8005fbe

; uselistorder directives
  uselistorder i32 68, { 1, 2, 3, 4, 5, 6, 7, 8, 0, 9, 10, 11, 12, 13, 14, 15 }
  uselistorder label %dec_label_pc_8005fbe, { 1, 0 }
}

define i32 @HAL_TIMEx_MasterConfigSynchronization(i32 %htim, %anon_struct_99* %sMasterConfig) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  store i32 %htim, i32* %r2.global-to-local, align 4
  %v2_8006058 = add i32 %htim, 60
  %v3_8006058 = inttoptr i32 %v2_8006058 to i8*
  %v4_8006058 = load i8, i8* %v3_8006058, align 1
  %v7_800605a = icmp eq i8 %v4_8006058, 1
  br i1 %v7_800605a, label %dec_label_pc_8006060, label %dec_label_pc_8006062

dec_label_pc_8006060:                             ; preds = %entry, %dec_label_pc_8006062
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8006062 ], [ 2, %entry ]
  ret i32 %storemerge1

dec_label_pc_8006062:                             ; preds = %entry
  %tmp = ptrtoint %anon_struct_99* %sMasterConfig to i32
  store i8 1, i8* %v3_8006058, align 1
  %v3_800606e = load i32, i32* %r2.global-to-local, align 4
  %v4_800606e = add i32 %v3_800606e, 61
  %v5_800606e = inttoptr i32 %v4_800606e to i8*
  store i8 2, i8* %v5_800606e, align 1
  %v0_8006070 = load i32, i32* %r2.global-to-local, align 4
  %v1_8006070 = inttoptr i32 %v0_8006070 to i32*
  %v2_8006070 = load i32, i32* %v1_8006070, align 4
  %v1_8006072 = add i32 %v2_8006070, 4
  %v2_8006072 = inttoptr i32 %v1_8006072 to i32*
  %v3_8006072 = load i32, i32* %v2_8006072, align 4
  %v3_8006076 = and i32 %v3_8006072, -113
  %v2_800607a = add i32 %v2_8006070, 4
  %v3_800607a = inttoptr i32 %v2_800607a to i32*
  store i32 %v3_8006076, i32* %v3_800607a, align 4
  %v0_800607c = load i32, i32* %r2.global-to-local, align 4
  %v1_800607c = inttoptr i32 %v0_800607c to i32*
  %v2_800607c = load i32, i32* %v1_800607c, align 4
  %v1_800607e = add i32 %v2_800607c, 4
  %v2_800607e = inttoptr i32 %v1_800607e to i32*
  %v3_800607e = load i32, i32* %v2_800607e, align 4
  %tmp2 = getelementptr inbounds %anon_struct_99, %anon_struct_99* %sMasterConfig, i32 0, i32 0
  %v3_8006080 = load i32, i32* %tmp2, align 4
  %v2_8006082 = or i32 %v3_8006080, %v3_800607e
  %v2_8006084 = load i32, i32* %v1_800607c, align 4
  %v2_8006086 = add i32 %v2_8006084, 4
  %v3_8006086 = inttoptr i32 %v2_8006086 to i32*
  store i32 %v2_8006082, i32* %v3_8006086, align 4
  %v0_8006088 = load i32, i32* %r2.global-to-local, align 4
  %v1_8006088 = inttoptr i32 %v0_8006088 to i32*
  %v2_8006088 = load i32, i32* %v1_8006088, align 4
  %v1_800608a = add i32 %v2_8006088, 8
  %v2_800608a = inttoptr i32 %v1_800608a to i32*
  %v3_800608a = load i32, i32* %v2_800608a, align 4
  %v3_800608e = and i32 %v3_800608a, -129
  %v2_8006092 = add i32 %v2_8006088, 8
  %v3_8006092 = inttoptr i32 %v2_8006092 to i32*
  store i32 %v3_800608e, i32* %v3_8006092, align 4
  %v0_8006094 = load i32, i32* %r2.global-to-local, align 4
  %v1_8006094 = inttoptr i32 %v0_8006094 to i32*
  %v2_8006094 = load i32, i32* %v1_8006094, align 4
  %v1_8006096 = add i32 %v2_8006094, 8
  %v2_8006096 = inttoptr i32 %v1_8006096 to i32*
  %v3_8006096 = load i32, i32* %v2_8006096, align 4
  %v2_8006098 = add i32 %tmp, 4
  %v3_8006098 = inttoptr i32 %v2_8006098 to i32*
  %v4_8006098 = load i32, i32* %v3_8006098, align 4
  %v2_800609a = or i32 %v4_8006098, %v3_8006096
  %v2_800609c = load i32, i32* %v1_8006094, align 4
  %v2_800609e = add i32 %v2_800609c, 8
  %v3_800609e = inttoptr i32 %v2_800609e to i32*
  store i32 %v2_800609a, i32* %v3_800609e, align 4
  %v3_80060a4 = load i32, i32* %r2.global-to-local, align 4
  %v4_80060a4 = add i32 %v3_80060a4, 61
  %v5_80060a4 = inttoptr i32 %v4_80060a4 to i8*
  store i8 1, i8* %v5_80060a4, align 1
  %v3_80060ac = load i32, i32* %r2.global-to-local, align 4
  %v4_80060ac = add i32 %v3_80060ac, 60
  %v5_80060ac = inttoptr i32 %v4_80060ac to i8*
  store i8 0, i8* %v5_80060ac, align 1
  br label %dec_label_pc_8006060

; uselistorder directives
  uselistorder label %dec_label_pc_8006060, { 1, 0 }
}

define i32 @HAL_TIM_Base_Init(i32 %htim) local_unnamed_addr {
entry:
  %v3_80060b4 = load i32, i32* @r4, align 4
  store i32 %htim, i32* @r4, align 4
  %v2_80060b8 = icmp eq i32 %htim, 0
  br i1 %v2_80060b8, label %dec_label_pc_80060be, label %dec_label_pc_80060c0

dec_label_pc_80060be:                             ; preds = %entry, %dec_label_pc_80060d4
  %storemerge1 = phi i32 [ 0, %dec_label_pc_80060d4 ], [ 1, %entry ]
  store i32 %v3_80060b4, i32* @r4, align 4
  ret i32 %storemerge1

dec_label_pc_80060c0:                             ; preds = %entry
  %v2_80060c2 = add i32 %htim, 61
  %v3_80060c2 = inttoptr i32 %v2_80060c2 to i8*
  %v4_80060c2 = load i8, i8* %v3_80060c2, align 1
  %v2_80060c4 = icmp eq i8 %v4_80060c2, 0
  br i1 %v2_80060c4, label %dec_label_pc_80060c8, label %dec_label_pc_80060d4

dec_label_pc_80060c8:                             ; preds = %dec_label_pc_80060c0
  %v4_80060cc = add i32 %htim, 60
  %v5_80060cc = inttoptr i32 %v4_80060cc to i8*
  store i8 0, i8* %v5_80060cc, align 1
  %v0_80060ce = load i32, i32* @r4, align 4
  call void @HAL_TIM_Base_MspInit(i32 %v0_80060ce)
  %v3_80060d8.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_80060d4

dec_label_pc_80060d4:                             ; preds = %dec_label_pc_80060c0, %dec_label_pc_80060c8
  %v3_80060d8 = phi i32 [ %htim, %dec_label_pc_80060c0 ], [ %v3_80060d8.pre, %dec_label_pc_80060c8 ]
  %v4_80060d8 = add i32 %v3_80060d8, 61
  %v5_80060d8 = inttoptr i32 %v4_80060d8 to i8*
  store i8 2, i8* %v5_80060d8, align 1
  %v0_80060da = load i32, i32* @r4, align 4
  %v1_80060da = add i32 %v0_80060da, 4
  %v1_80060dc = inttoptr i32 %v0_80060da to i32*
  %v2_80060dc = load i32, i32* %v1_80060dc, align 4
  call void @TIM_Base_SetConfig(i32 %v2_80060dc, i32 %v1_80060da)
  %v3_80060e6 = load i32, i32* @r4, align 4
  %v4_80060e6 = add i32 %v3_80060e6, 61
  %v5_80060e6 = inttoptr i32 %v4_80060e6 to i8*
  store i8 1, i8* %v5_80060e6, align 1
  br label %dec_label_pc_80060be

; uselistorder directives
  uselistorder i32 %htim, { 0, 1, 2, 4, 3 }
  uselistorder label %dec_label_pc_80060d4, { 1, 0 }
  uselistorder label %dec_label_pc_80060be, { 1, 0 }
}

define void @HAL_TIM_Base_MspInit(i32 %htim_base) local_unnamed_addr {
entry:
  %v6_80060ec = load i32, i32* @r4, align 4
  store i32 %htim_base, i32* @r4, align 4
  %v1_80060f2 = inttoptr i32 %htim_base to i32*
  %v2_80060f2 = load i32, i32* %v1_80060f2, align 4
  %v9_80060f4 = icmp eq i32 %v2_80060f2, 1073818624
  br i1 %v9_80060f4, label %dec_label_pc_80060f8, label %dec_label_pc_8006124

dec_label_pc_80060f8:                             ; preds = %entry
  %v3_80060fc = load i32, i32* inttoptr (i32 1073877016 to i32*), align 8
  %v2_8006100 = or i32 %v3_80060fc, 2048
  store i32 %v2_8006100, i32* inttoptr (i32 1073877016 to i32*), align 8
  call void @HAL_NVIC_SetPriority(i32 14, i32 0, i32 0)
  call void @HAL_NVIC_EnableIRQ(i32 14)
  br label %dec_label_pc_8006124

dec_label_pc_8006124:                             ; preds = %entry, %dec_label_pc_80060f8
  store i32 %v6_80060ec, i32* @r4, align 4
  ret void

; uselistorder directives
  uselistorder i32 %htim_base, { 1, 0 }
  uselistorder label %dec_label_pc_8006124, { 1, 0 }
}

define i32 @HAL_TIM_ConfigClockSource(i32 %htim, %anon_struct_93* %sClockSourceConfig) local_unnamed_addr {
entry:
  %tmp = ptrtoint %anon_struct_93* %sClockSourceConfig to i32
  %v6_8006130 = load i32, i32* @r4, align 4
  %v9_8006130 = load i32, i32* @r5, align 4
  %v12_8006130 = load i32, i32* @r6, align 4
  store i32 %htim, i32* @r4, align 4
  store i32 %tmp, i32* @r5, align 4
  %v2_800613c = add i32 %htim, 60
  %v3_800613c = inttoptr i32 %v2_800613c to i8*
  %v4_800613c = load i8, i8* %v3_800613c, align 1
  %v7_800613e = icmp eq i8 %v4_800613c, 1
  br i1 %v7_800613e, label %dec_label_pc_8006144, label %dec_label_pc_8006146

dec_label_pc_8006144:                             ; preds = %entry, %dec_label_pc_8006258
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8006258 ], [ 2, %entry ]
  store i32 %v6_8006130, i32* @r4, align 4
  store i32 %v9_8006130, i32* @r5, align 4
  store i32 %v12_8006130, i32* @r6, align 4
  ret i32 %storemerge1

dec_label_pc_8006146:                             ; preds = %entry
  store i8 1, i8* %v3_800613c, align 1
  %v3_8006152 = load i32, i32* @r4, align 4
  %v4_8006152 = add i32 %v3_8006152, 61
  %v5_8006152 = inttoptr i32 %v4_8006152 to i8*
  store i8 2, i8* %v5_8006152, align 1
  %v0_8006154 = load i32, i32* @r4, align 4
  %v1_8006154 = inttoptr i32 %v0_8006154 to i32*
  %v2_8006154 = load i32, i32* %v1_8006154, align 4
  %v1_8006156 = add i32 %v2_8006154, 8
  %v2_8006156 = inttoptr i32 %v1_8006156 to i32*
  %v3_8006156 = load i32, i32* %v2_8006156, align 4
  %v3_8006166 = and i32 %v3_8006156, -65400
  %v2_800616c = add i32 %v2_8006154, 8
  %v3_800616c = inttoptr i32 %v2_800616c to i32*
  store i32 %v3_8006166, i32* %v3_800616c, align 4
  %v0_800616e = load i32, i32* @r5, align 4
  %v1_800616e = inttoptr i32 %v0_800616e to i32*
  %v2_800616e = load i32, i32* %v1_800616e, align 4
  %v7_8006170 = icmp eq i32 %v2_800616e, 80
  br i1 %v7_8006170, label %dec_label_pc_80061f2, label %dec_label_pc_8006174

dec_label_pc_8006174:                             ; preds = %dec_label_pc_8006146
  %v8_8006174 = icmp sgt i32 %v2_800616e, 80
  br i1 %v8_8006174, label %dec_label_pc_8006190, label %dec_label_pc_8006176

dec_label_pc_8006176:                             ; preds = %dec_label_pc_8006174
  %v7_8006176 = icmp eq i32 %v2_800616e, 32
  br i1 %v7_8006176, label %dec_label_pc_8006242, label %dec_label_pc_800617a

dec_label_pc_800617a:                             ; preds = %dec_label_pc_8006176
  %v8_800617a = icmp sgt i32 %v2_800616e, 32
  br i1 %v8_800617a, label %dec_label_pc_8006186, label %dec_label_pc_800617c

dec_label_pc_800617c:                             ; preds = %dec_label_pc_800617a
  switch i32 %v2_800616e, label %dec_label_pc_8006258 [
    i32 0, label %dec_label_pc_800622e
    i32 16, label %dec_label_pc_8006238
  ]

dec_label_pc_8006186:                             ; preds = %dec_label_pc_800617a
  switch i32 %v2_800616e, label %dec_label_pc_8006258 [
    i32 48, label %dec_label_pc_800624c
    i32 64, label %dec_label_pc_800621a
  ]

dec_label_pc_8006190:                             ; preds = %dec_label_pc_8006174
  switch i32 %v2_800616e, label %dec_label_pc_8006198 [
    i32 96, label %dec_label_pc_8006206
    i32 112, label %dec_label_pc_80061b4
  ]

dec_label_pc_8006198:                             ; preds = %dec_label_pc_8006190
  %v9_800619c = icmp eq i32 %v2_800616e, 4096
  br i1 %v9_800619c, label %dec_label_pc_80061a6, label %dec_label_pc_80061a0

dec_label_pc_80061a0:                             ; preds = %dec_label_pc_8006198
  %v9_80061a0 = icmp eq i32 %v2_800616e, 8192
  br i1 %v9_80061a0, label %dec_label_pc_80061d6, label %dec_label_pc_8006258

dec_label_pc_80061a6:                             ; preds = %dec_label_pc_8006198
  %v0_80061a6 = load i32, i32* @r4, align 4
  %v1_80061a6 = inttoptr i32 %v0_80061a6 to i32*
  %v2_80061a6 = load i32, i32* %v1_80061a6, align 4
  %v1_80061a8 = add i32 %v2_80061a6, 8
  %v2_80061a8 = inttoptr i32 %v1_80061a8 to i32*
  %v3_80061a8 = load i32, i32* %v2_80061a8, align 4
  %v3_80061aa = and i32 %v3_80061a8, -8
  %v2_80061b0 = add i32 %v2_80061a6, 8
  %v3_80061b0 = inttoptr i32 %v2_80061b0 to i32*
  store i32 %v3_80061aa, i32* %v3_80061b0, align 4
  br label %dec_label_pc_8006258

dec_label_pc_80061b4:                             ; preds = %dec_label_pc_8006190
  %v1_80061b4 = add i32 %v0_800616e, 12
  %v2_80061b4 = inttoptr i32 %v1_80061b4 to i32*
  %v3_80061b4 = load i32, i32* %v2_80061b4, align 4
  %v1_80061b6 = add i32 %v0_800616e, 4
  %v2_80061b6 = inttoptr i32 %v1_80061b6 to i32*
  %v3_80061b6 = load i32, i32* %v2_80061b6, align 4
  %v1_80061b8 = add i32 %v0_800616e, 8
  %v2_80061b8 = inttoptr i32 %v1_80061b8 to i32*
  %v3_80061b8 = load i32, i32* %v2_80061b8, align 4
  %v0_80061ba = load i32, i32* @r4, align 4
  %v1_80061ba = inttoptr i32 %v0_80061ba to i32*
  %v2_80061ba = load i32, i32* %v1_80061ba, align 4
  call void @TIM_ETR_SetConfig(i32 %v2_80061ba, i32 %v3_80061b8, i32 %v3_80061b6, i32 %v3_80061b4)
  %v0_80061c0 = load i32, i32* @r4, align 4
  %v1_80061c0 = inttoptr i32 %v0_80061c0 to i32*
  %v2_80061c0 = load i32, i32* %v1_80061c0, align 4
  %v1_80061c2 = add i32 %v2_80061c0, 8
  %v2_80061c2 = inttoptr i32 %v1_80061c2 to i32*
  %v3_80061c2 = load i32, i32* %v2_80061c2, align 4
  %v2_80061ce = or i32 %v3_80061c2, 119
  %v2_80061d2 = add i32 %v2_80061c0, 8
  %v3_80061d2 = inttoptr i32 %v2_80061d2 to i32*
  store i32 %v2_80061ce, i32* %v3_80061d2, align 4
  br label %dec_label_pc_8006258

dec_label_pc_80061d6:                             ; preds = %dec_label_pc_80061a0
  %v1_80061d6 = add i32 %v0_800616e, 12
  %v2_80061d6 = inttoptr i32 %v1_80061d6 to i32*
  %v3_80061d6 = load i32, i32* %v2_80061d6, align 4
  %v1_80061d8 = add i32 %v0_800616e, 4
  %v2_80061d8 = inttoptr i32 %v1_80061d8 to i32*
  %v3_80061d8 = load i32, i32* %v2_80061d8, align 4
  %v1_80061da = add i32 %v0_800616e, 8
  %v2_80061da = inttoptr i32 %v1_80061da to i32*
  %v3_80061da = load i32, i32* %v2_80061da, align 4
  %v0_80061dc = load i32, i32* @r4, align 4
  %v1_80061dc = inttoptr i32 %v0_80061dc to i32*
  %v2_80061dc = load i32, i32* %v1_80061dc, align 4
  call void @TIM_ETR_SetConfig(i32 %v2_80061dc, i32 %v3_80061da, i32 %v3_80061d8, i32 %v3_80061d6)
  %v0_80061e2 = load i32, i32* @r4, align 4
  %v1_80061e2 = inttoptr i32 %v0_80061e2 to i32*
  %v2_80061e2 = load i32, i32* %v1_80061e2, align 4
  %v1_80061e4 = add i32 %v2_80061e2, 8
  %v2_80061e4 = inttoptr i32 %v1_80061e4 to i32*
  %v3_80061e4 = load i32, i32* %v2_80061e4, align 4
  %v2_80061ea = or i32 %v3_80061e4, 16384
  %v2_80061ee = add i32 %v2_80061e2, 8
  %v3_80061ee = inttoptr i32 %v2_80061ee to i32*
  store i32 %v2_80061ea, i32* %v3_80061ee, align 4
  br label %dec_label_pc_8006258

dec_label_pc_80061f2:                             ; preds = %dec_label_pc_8006146
  %v1_80061f2 = add i32 %v0_800616e, 12
  %v2_80061f2 = inttoptr i32 %v1_80061f2 to i32*
  %v3_80061f2 = load i32, i32* %v2_80061f2, align 4
  %v1_80061f4 = add i32 %v0_800616e, 4
  %v2_80061f4 = inttoptr i32 %v1_80061f4 to i32*
  %v3_80061f4 = load i32, i32* %v2_80061f4, align 4
  %v0_80061f6 = load i32, i32* @r4, align 4
  %v1_80061f6 = inttoptr i32 %v0_80061f6 to i32*
  %v2_80061f6 = load i32, i32* %v1_80061f6, align 4
  call void @TIM_TI1_ConfigInputStage(i32 %v2_80061f6, i32 %v3_80061f4, i32 %v3_80061f2)
  %v0_80061fe = load i32, i32* @r4, align 4
  %v1_80061fe = inttoptr i32 %v0_80061fe to i32*
  %v2_80061fe = load i32, i32* %v1_80061fe, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_80061fe, i16 80)
  br label %dec_label_pc_8006258

dec_label_pc_8006206:                             ; preds = %dec_label_pc_8006190
  %v1_8006206 = add i32 %v0_800616e, 12
  %v2_8006206 = inttoptr i32 %v1_8006206 to i32*
  %v3_8006206 = load i32, i32* %v2_8006206, align 4
  %v1_8006208 = add i32 %v0_800616e, 4
  %v2_8006208 = inttoptr i32 %v1_8006208 to i32*
  %v3_8006208 = load i32, i32* %v2_8006208, align 4
  %v0_800620a = load i32, i32* @r4, align 4
  %v1_800620a = inttoptr i32 %v0_800620a to i32*
  %v2_800620a = load i32, i32* %v1_800620a, align 4
  call void @TIM_TI2_ConfigInputStage(i32 %v2_800620a, i32 %v3_8006208, i32 %v3_8006206)
  %v0_8006212 = load i32, i32* @r4, align 4
  %v1_8006212 = inttoptr i32 %v0_8006212 to i32*
  %v2_8006212 = load i32, i32* %v1_8006212, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_8006212, i16 96)
  br label %dec_label_pc_8006258

dec_label_pc_800621a:                             ; preds = %dec_label_pc_8006186
  %v1_800621a = add i32 %v0_800616e, 12
  %v2_800621a = inttoptr i32 %v1_800621a to i32*
  %v3_800621a = load i32, i32* %v2_800621a, align 4
  %v1_800621c = add i32 %v0_800616e, 4
  %v2_800621c = inttoptr i32 %v1_800621c to i32*
  %v3_800621c = load i32, i32* %v2_800621c, align 4
  %v0_800621e = load i32, i32* @r4, align 4
  %v1_800621e = inttoptr i32 %v0_800621e to i32*
  %v2_800621e = load i32, i32* %v1_800621e, align 4
  call void @TIM_TI1_ConfigInputStage(i32 %v2_800621e, i32 %v3_800621c, i32 %v3_800621a)
  %v0_8006226 = load i32, i32* @r4, align 4
  %v1_8006226 = inttoptr i32 %v0_8006226 to i32*
  %v2_8006226 = load i32, i32* %v1_8006226, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_8006226, i16 64)
  br label %dec_label_pc_8006258

dec_label_pc_800622e:                             ; preds = %dec_label_pc_800617c
  %v0_8006230 = load i32, i32* @r4, align 4
  %v1_8006230 = inttoptr i32 %v0_8006230 to i32*
  %v2_8006230 = load i32, i32* %v1_8006230, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_8006230, i16 0)
  br label %dec_label_pc_8006258

dec_label_pc_8006238:                             ; preds = %dec_label_pc_800617c
  %v0_800623a = load i32, i32* @r4, align 4
  %v1_800623a = inttoptr i32 %v0_800623a to i32*
  %v2_800623a = load i32, i32* %v1_800623a, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_800623a, i16 16)
  br label %dec_label_pc_8006258

dec_label_pc_8006242:                             ; preds = %dec_label_pc_8006176
  %v0_8006244 = load i32, i32* @r4, align 4
  %v1_8006244 = inttoptr i32 %v0_8006244 to i32*
  %v2_8006244 = load i32, i32* %v1_8006244, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_8006244, i16 32)
  br label %dec_label_pc_8006258

dec_label_pc_800624c:                             ; preds = %dec_label_pc_8006186
  %v0_800624e = load i32, i32* @r4, align 4
  %v1_800624e = inttoptr i32 %v0_800624e to i32*
  %v2_800624e = load i32, i32* %v1_800624e, align 4
  call void @TIM_ITRx_SetConfig(i32 %v2_800624e, i16 48)
  br label %dec_label_pc_8006258

dec_label_pc_8006258:                             ; preds = %dec_label_pc_8006186, %dec_label_pc_800617c, %dec_label_pc_80061a0, %dec_label_pc_800624c, %dec_label_pc_8006242, %dec_label_pc_8006238, %dec_label_pc_800622e, %dec_label_pc_800621a, %dec_label_pc_8006206, %dec_label_pc_80061f2, %dec_label_pc_80061d6, %dec_label_pc_80061b4, %dec_label_pc_80061a6
  %v3_800625e = load i32, i32* @r4, align 4
  %v4_800625e = add i32 %v3_800625e, 61
  %v5_800625e = inttoptr i32 %v4_800625e to i8*
  store i8 1, i8* %v5_800625e, align 1
  %v3_8006266 = load i32, i32* @r4, align 4
  %v4_8006266 = add i32 %v3_8006266, 60
  %v5_8006266 = inttoptr i32 %v4_8006266 to i8*
  store i8 0, i8* %v5_8006266, align 1
  br label %dec_label_pc_8006144

; uselistorder directives
  uselistorder i32 %v2_800616e, { 0, 4, 1, 2, 3, 6, 5, 7, 8 }
  uselistorder i32 %v0_800616e, { 11, 10, 3, 2, 1, 0, 7, 9, 8, 4, 6, 5, 12 }
  uselistorder i16 32, { 3, 4, 0, 1, 2 }
  uselistorder i16 0, { 12, 7, 4, 11, 5, 14, 15, 3, 0, 16, 1, 8, 17, 18, 19, 20, 22, 21, 23, 24, 25, 2, 26, 27, 28, 13, 29, 9, 6, 10, 30 }
  uselistorder void (i32, i16)* @TIM_ITRx_SetConfig, { 6, 5, 4, 3, 2, 1, 0 }
  uselistorder void (i32, i32, i32)* @TIM_TI1_ConfigInputStage, { 1, 0 }
  uselistorder void (i32, i32, i32, i32)* @TIM_ETR_SetConfig, { 1, 0 }
  uselistorder i32 -8, { 0, 2, 1 }
  uselistorder i32 96, { 0, 10, 11, 2, 1, 3, 4, 5, 6, 7, 8, 9 }
  uselistorder i32 80, { 1, 8, 2, 0, 3, 4, 5, 6, 7, 9 }
  uselistorder label %dec_label_pc_8006258, { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 2, 0, 1 }
  uselistorder label %dec_label_pc_8006144, { 1, 0 }
}

define i32 @HAL_TIM_OC_ConfigChannel(i32 %htim, %anon_struct_89* %sConfig, i32 %Channel) local_unnamed_addr {
entry:
  %tmp = ptrtoint %anon_struct_89* %sConfig to i32
  %v3_800626e = load i32, i32* @r4, align 4
  %v6_800626e = load i32, i32* @r5, align 4
  %v9_800626e = load i32, i32* @r6, align 4
  store i32 %htim, i32* @r4, align 4
  store i32 %tmp, i32* @r6, align 4
  store i32 %Channel, i32* @r5, align 4
  %v2_800627a = add i32 %htim, 60
  %v3_800627a = inttoptr i32 %v2_800627a to i8*
  %v4_800627a = load i8, i8* %v3_800627a, align 1
  %v7_800627c = icmp eq i8 %v4_800627a, 1
  br i1 %v7_800627c, label %dec_label_pc_8006282, label %dec_label_pc_8006284

dec_label_pc_8006282:                             ; preds = %entry, %dec_label_pc_80062ce
  %storemerge1 = phi i32 [ 0, %dec_label_pc_80062ce ], [ 2, %entry ]
  store i32 %v3_800626e, i32* @r4, align 4
  store i32 %v6_800626e, i32* @r5, align 4
  store i32 %v9_800626e, i32* @r6, align 4
  ret i32 %storemerge1

dec_label_pc_8006284:                             ; preds = %entry
  store i8 1, i8* %v3_800627a, align 1
  %v3_8006290 = load i32, i32* @r4, align 4
  %v4_8006290 = add i32 %v3_8006290, 61
  %v5_8006290 = inttoptr i32 %v4_8006290 to i8*
  store i8 2, i8* %v5_8006290, align 1
  %v0_8006292 = load i32, i32* @r5, align 4
  switch i32 %v0_8006292, label %dec_label_pc_80062ce [
    i32 0, label %dec_label_pc_80062a4
    i32 4, label %dec_label_pc_80062ae
    i32 8, label %dec_label_pc_80062b8
    i32 12, label %dec_label_pc_80062c2
  ]

dec_label_pc_80062a4:                             ; preds = %dec_label_pc_8006284
  %v0_80062a4 = load i32, i32* @r6, align 4
  %v1_80062a4 = inttoptr i32 %v0_80062a4 to %anon_struct_89*
  %v0_80062a6 = load i32, i32* @r4, align 4
  %v1_80062a6 = inttoptr i32 %v0_80062a6 to i32*
  %v2_80062a6 = load i32, i32* %v1_80062a6, align 4
  call void @TIM_OC1_SetConfig(i32 %v2_80062a6, %anon_struct_89* %v1_80062a4)
  br label %dec_label_pc_80062ce

dec_label_pc_80062ae:                             ; preds = %dec_label_pc_8006284
  %v0_80062ae = load i32, i32* @r6, align 4
  %v1_80062ae = inttoptr i32 %v0_80062ae to %anon_struct_89*
  %v0_80062b0 = load i32, i32* @r4, align 4
  %v1_80062b0 = inttoptr i32 %v0_80062b0 to i32*
  %v2_80062b0 = load i32, i32* %v1_80062b0, align 4
  call void @TIM_OC2_SetConfig(i32 %v2_80062b0, %anon_struct_89* %v1_80062ae)
  br label %dec_label_pc_80062ce

dec_label_pc_80062b8:                             ; preds = %dec_label_pc_8006284
  %v0_80062b8 = load i32, i32* @r6, align 4
  %v1_80062b8 = inttoptr i32 %v0_80062b8 to %anon_struct_89*
  %v0_80062ba = load i32, i32* @r4, align 4
  %v1_80062ba = inttoptr i32 %v0_80062ba to i32*
  %v2_80062ba = load i32, i32* %v1_80062ba, align 4
  call void @TIM_OC3_SetConfig(i32 %v2_80062ba, %anon_struct_89* %v1_80062b8)
  br label %dec_label_pc_80062ce

dec_label_pc_80062c2:                             ; preds = %dec_label_pc_8006284
  %v0_80062c2 = load i32, i32* @r6, align 4
  %v1_80062c2 = inttoptr i32 %v0_80062c2 to %anon_struct_89*
  %v0_80062c4 = load i32, i32* @r4, align 4
  %v1_80062c4 = inttoptr i32 %v0_80062c4 to i32*
  %v2_80062c4 = load i32, i32* %v1_80062c4, align 4
  call void @TIM_OC4_SetConfig(i32 %v2_80062c4, %anon_struct_89* %v1_80062c2)
  br label %dec_label_pc_80062ce

dec_label_pc_80062ce:                             ; preds = %dec_label_pc_8006284, %dec_label_pc_80062c2, %dec_label_pc_80062b8, %dec_label_pc_80062ae, %dec_label_pc_80062a4
  %v3_80062d4 = load i32, i32* @r4, align 4
  %v4_80062d4 = add i32 %v3_80062d4, 61
  %v5_80062d4 = inttoptr i32 %v4_80062d4 to i8*
  store i8 1, i8* %v5_80062d4, align 1
  %v3_80062dc = load i32, i32* @r4, align 4
  %v4_80062dc = add i32 %v3_80062dc, 60
  %v5_80062dc = inttoptr i32 %v4_80062dc to i8*
  store i8 0, i8* %v5_80062dc, align 1
  br label %dec_label_pc_8006282

; uselistorder directives
  uselistorder label %dec_label_pc_80062ce, { 1, 2, 3, 4, 0 }
  uselistorder label %dec_label_pc_8006282, { 1, 0 }
}

define i32 @HAL_TIM_OC_Init(i32 %htim) local_unnamed_addr {
entry:
  %v3_80062e4 = load i32, i32* @r4, align 4
  store i32 %htim, i32* @r4, align 4
  %v2_80062e8 = icmp eq i32 %htim, 0
  br i1 %v2_80062e8, label %dec_label_pc_80062ee, label %dec_label_pc_80062f0

dec_label_pc_80062ee:                             ; preds = %entry, %dec_label_pc_8006304
  %storemerge1 = phi i32 [ 0, %dec_label_pc_8006304 ], [ 1, %entry ]
  store i32 %v3_80062e4, i32* @r4, align 4
  ret i32 %storemerge1

dec_label_pc_80062f0:                             ; preds = %entry
  %v2_80062f2 = add i32 %htim, 61
  %v3_80062f2 = inttoptr i32 %v2_80062f2 to i8*
  %v4_80062f2 = load i8, i8* %v3_80062f2, align 1
  %v2_80062f4 = icmp eq i8 %v4_80062f2, 0
  br i1 %v2_80062f4, label %dec_label_pc_80062f8, label %dec_label_pc_8006304

dec_label_pc_80062f8:                             ; preds = %dec_label_pc_80062f0
  %v4_80062fc = add i32 %htim, 60
  %v5_80062fc = inttoptr i32 %v4_80062fc to i8*
  store i8 0, i8* %v5_80062fc, align 1
  %v0_80062fe = load i32, i32* @r4, align 4
  call void @HAL_TIM_OC_MspInit(i32 %v0_80062fe)
  %v3_8006308.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8006304

dec_label_pc_8006304:                             ; preds = %dec_label_pc_80062f0, %dec_label_pc_80062f8
  %v3_8006308 = phi i32 [ %htim, %dec_label_pc_80062f0 ], [ %v3_8006308.pre, %dec_label_pc_80062f8 ]
  %v4_8006308 = add i32 %v3_8006308, 61
  %v5_8006308 = inttoptr i32 %v4_8006308 to i8*
  store i8 2, i8* %v5_8006308, align 1
  %v0_800630a = load i32, i32* @r4, align 4
  %v1_800630a = add i32 %v0_800630a, 4
  %v1_800630c = inttoptr i32 %v0_800630a to i32*
  %v2_800630c = load i32, i32* %v1_800630c, align 4
  call void @TIM_Base_SetConfig(i32 %v2_800630c, i32 %v1_800630a)
  %v3_8006316 = load i32, i32* @r4, align 4
  %v4_8006316 = add i32 %v3_8006316, 61
  %v5_8006316 = inttoptr i32 %v4_8006316 to i8*
  store i8 1, i8* %v5_8006316, align 1
  br label %dec_label_pc_80062ee

; uselistorder directives
  uselistorder i8 1, { 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 6, 2, 4, 37, 38, 7, 39, 40, 41, 42, 43, 44, 45, 47, 48, 46, 1, 3, 49, 5, 50, 0, 51, 52, 53, 54, 55, 56, 57 }
  uselistorder void (i32, i32)* @TIM_Base_SetConfig, { 1, 0 }
  uselistorder i8 2, { 6, 7, 8, 9, 10, 11, 1, 2, 3, 12, 13, 14, 15, 16, 17, 4, 5, 22, 21, 20, 18, 19, 23, 0, 24 }
  uselistorder i32 61, { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16, 17, 15, 14, 18, 19, 20, 21, 22 }
  uselistorder i32 %htim, { 0, 1, 2, 4, 3 }
  uselistorder label %dec_label_pc_8006304, { 1, 0 }
  uselistorder label %dec_label_pc_80062ee, { 1, 0 }
}

define void @HAL_TIM_OC_MspInit(i32 %htim) local_unnamed_addr {
entry:
  ret void
}

define void @MX_ADC_Init() local_unnamed_addr {
entry:
  %sConfig_-16 = alloca %anon_struct_76, align 8
  %v3_800632c = load i32, i32* @r1, align 4
  %v4_800632c = getelementptr inbounds %anon_struct_76, %anon_struct_76* %sConfig_-16, i32 0, i32 0
  store i32 %v3_800632c, i32* %v4_800632c, align 8
  store i32 1073816576, i32* inttoptr (i32 536871960 to i32*), align 8
  store i32 -2147483648, i32* inttoptr (i32 536871964 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536871968 to i32*), align 32
  store i32 0, i32* inttoptr (i32 536871972 to i32*), align 4
  store i32 1, i32* inttoptr (i32 536871976 to i32*), align 8
  store i32 4, i32* inttoptr (i32 536871980 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536871984 to i32*), align 16
  store i32 0, i32* inttoptr (i32 536871988 to i32*), align 4
  store i32 1, i32* inttoptr (i32 536871992 to i32*), align 8
  store i32 0, i32* inttoptr (i32 536871996 to i32*), align 4
  store i32 449, i32* inttoptr (i32 536872000 to i32*), align 64
  store i32 0, i32* inttoptr (i32 536872004 to i32*), align 4
  store i32 1, i32* inttoptr (i32 536872008 to i32*), align 8
  store i32 1, i32* inttoptr (i32 536872012 to i32*), align 4
  %v2_8006366 = call i32 @HAL_ADC_Init(i32 536871960)
  %v3_800636a = icmp eq i32 %v2_8006366, 0
  br i1 %v3_800636a, label %dec_label_pc_8006378, label %dec_label_pc_800636e

dec_label_pc_800636e:                             ; preds = %entry
  %v3_8006366 = inttoptr i32 %v2_8006366 to i8*
  call void @_Error_Handler(i8* %v3_8006366, i32 304)
  br label %dec_label_pc_8006378

dec_label_pc_8006378:                             ; preds = %entry, %dec_label_pc_800636e
  store i32 6, i32* %v4_800632c, align 8
  %v4_800638a = call i32 @HAL_ADC_ConfigChannel(i32 536871960, %anon_struct_76* nonnull %sConfig_-16)
  %v3_800638e = icmp eq i32 %v4_800638a, 0
  br i1 %v3_800638e, label %dec_label_pc_800639c, label %dec_label_pc_8006392

dec_label_pc_8006392:                             ; preds = %dec_label_pc_8006378
  %v5_800638a = inttoptr i32 %v4_800638a to i8*
  call void @_Error_Handler(i8* %v5_800638a, i32 314)
  br label %dec_label_pc_800639c

dec_label_pc_800639c:                             ; preds = %dec_label_pc_8006378, %dec_label_pc_8006392
  store i32 7, i32* %v4_800632c, align 8
  %v4_80063a4 = call i32 @HAL_ADC_ConfigChannel(i32 536871960, %anon_struct_76* nonnull %sConfig_-16)
  %v3_80063a8 = icmp eq i32 %v4_80063a4, 0
  br i1 %v3_80063a8, label %dec_label_pc_80063b6, label %dec_label_pc_80063ac

dec_label_pc_80063ac:                             ; preds = %dec_label_pc_800639c
  %v5_80063a4 = inttoptr i32 %v4_80063a4 to i8*
  call void @_Error_Handler(i8* %v5_80063a4, i32 322)
  br label %dec_label_pc_80063b6

dec_label_pc_80063b6:                             ; preds = %dec_label_pc_800639c, %dec_label_pc_80063ac
  store i32 16, i32* %v4_800632c, align 8
  %v4_80063be = call i32 @HAL_ADC_ConfigChannel(i32 536871960, %anon_struct_76* nonnull %sConfig_-16)
  %v3_80063c2 = icmp eq i32 %v4_80063be, 0
  br i1 %v3_80063c2, label %dec_label_pc_80063d0, label %dec_label_pc_80063c6

dec_label_pc_80063c6:                             ; preds = %dec_label_pc_80063b6
  %v5_80063be = inttoptr i32 %v4_80063be to i8*
  call void @_Error_Handler(i8* %v5_80063be, i32 330)
  br label %dec_label_pc_80063d0

dec_label_pc_80063d0:                             ; preds = %dec_label_pc_80063b6, %dec_label_pc_80063c6
  store i32 17, i32* %v4_800632c, align 8
  %v4_80063d8 = call i32 @HAL_ADC_ConfigChannel(i32 536871960, %anon_struct_76* nonnull %sConfig_-16)
  %v3_80063dc = icmp eq i32 %v4_80063d8, 0
  br i1 %v3_80063dc, label %dec_label_pc_80063ea, label %dec_label_pc_80063e0

dec_label_pc_80063e0:                             ; preds = %dec_label_pc_80063d0
  %v5_80063d8 = inttoptr i32 %v4_80063d8 to i8*
  call void @_Error_Handler(i8* %v5_80063d8, i32 338)
  br label %dec_label_pc_80063ea

dec_label_pc_80063ea:                             ; preds = %dec_label_pc_80063d0, %dec_label_pc_80063e0
  store i32 18, i32* %v4_800632c, align 8
  %v4_80063f2 = call i32 @HAL_ADC_ConfigChannel(i32 536871960, %anon_struct_76* nonnull %sConfig_-16)
  %v2_80063f6 = icmp eq i32 %v4_80063f2, 0
  br i1 %v2_80063f6, label %dec_label_pc_8006404, label %dec_label_pc_80063fa

dec_label_pc_80063fa:                             ; preds = %dec_label_pc_80063ea
  %v2_8006400 = inttoptr i32 %v4_80063f2 to i8*
  call void @_Error_Handler(i8* %v2_8006400, i32 346)
  br label %dec_label_pc_8006404

dec_label_pc_8006404:                             ; preds = %dec_label_pc_80063ea, %dec_label_pc_80063fa
  store i32 7, i32* @r3, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v4_80063d8, { 1, 0 }
  uselistorder i32 %v4_80063be, { 1, 0 }
  uselistorder i32 %v4_80063a4, { 1, 0 }
  uselistorder i32 %v4_800638a, { 1, 0 }
  uselistorder i32 %v2_8006366, { 1, 0 }
  uselistorder i32 17, { 0, 5, 1, 2, 3, 4 }
  uselistorder i32 (i32, %anon_struct_76*)* @HAL_ADC_ConfigChannel, { 4, 3, 2, 1, 0 }
  uselistorder i32 6, { 3, 4, 5, 6, 0, 1, 7, 8, 2, 10, 11, 12, 9, 13, 14, 15, 16, 17 }
  uselistorder i32 449, { 1, 0, 2 }
  uselistorder i32* @r1, { 1, 2, 3, 0 }
  uselistorder label %dec_label_pc_8006404, { 1, 0 }
  uselistorder label %dec_label_pc_80063ea, { 1, 0 }
  uselistorder label %dec_label_pc_80063d0, { 1, 0 }
  uselistorder label %dec_label_pc_80063b6, { 1, 0 }
  uselistorder label %dec_label_pc_800639c, { 1, 0 }
  uselistorder label %dec_label_pc_8006378, { 1, 0 }
}

define void @MX_DMA_Init() local_unnamed_addr {
entry:
  %v3_8006426 = load i32, i32* inttoptr (i32 1073877012 to i32*), align 4
  %v2_800642a = or i32 %v3_8006426, 1
  store i32 %v2_800642a, i32* inttoptr (i32 1073877012 to i32*), align 4
  call void @HAL_NVIC_SetPriority(i32 9, i32 0, i32 0)
  call void @HAL_NVIC_EnableIRQ(i32 9)
  store i32 1, i32* @r3, align 4
  ret void

; uselistorder directives
  uselistorder void (i32)* @HAL_NVIC_EnableIRQ, { 2, 1, 0 }
  uselistorder void (i32, i32, i32)* @HAL_NVIC_SetPriority, { 3, 2, 1, 0 }
}

define void @MX_GPIO_Init() local_unnamed_addr {
entry:
  %GPIO_InitStruct_-24 = alloca %anon_struct_107.38, align 8
  %v3_800645c = load i32, i32* inttoptr (i32 1073877012 to i32*), align 4
  %v2_800649e = or i32 %v3_800645c, 4587520
  store i32 %v2_800649e, i32* inttoptr (i32 1073877012 to i32*), align 4
  call void @HAL_GPIO_WritePin(i32 1207960576, i16 507, i32 0)
  %v4_80064c2 = getelementptr inbounds %anon_struct_107.38, %anon_struct_107.38* %GPIO_InitStruct_-24, i32 0, i32 0
  store i32 63, i32* %v4_80064c2, align 8
  %tmp8 = bitcast %anon_struct_107.38* %GPIO_InitStruct_-24 to %anon_struct_107*
  call void @HAL_GPIO_Init(i32 1207959552, %anon_struct_107* %tmp8)
  store i32 507, i32* %v4_80064c2, align 8
  call void @HAL_GPIO_Init(i32 1207960576, %anon_struct_107* %tmp8)
  ret void

; uselistorder directives
  uselistorder %anon_struct_107* %tmp8, { 1, 0 }
  uselistorder %anon_struct_107.38* %GPIO_InitStruct_-24, { 1, 0 }
  uselistorder void (i32, %anon_struct_107*)* @HAL_GPIO_Init, { 4, 3, 2, 0, 1 }
}

define void @MX_I2C1_Init() local_unnamed_addr {
entry:
  store i32 1073763328, i32* inttoptr (i32 536872172 to i32*), align 4
  store i32 536873230, i32* inttoptr (i32 536872176 to i32*), align 16
  store i32 0, i32* inttoptr (i32 536872180 to i32*), align 4
  store i32 1, i32* inttoptr (i32 536872184 to i32*), align 8
  store i32 0, i32* inttoptr (i32 536872188 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536872192 to i32*), align 256
  store i32 0, i32* inttoptr (i32 536872196 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536872200 to i32*), align 8
  store i32 0, i32* inttoptr (i32 536872204 to i32*), align 4
  %v2_800651a = call i32 @HAL_I2C_Init(i32 536872172)
  %v3_800651e = icmp eq i32 %v2_800651a, 0
  br i1 %v3_800651e, label %dec_label_pc_800652c, label %dec_label_pc_8006522

dec_label_pc_8006522:                             ; preds = %entry
  %v3_800651a = inttoptr i32 %v2_800651a to i8*
  call void @_Error_Handler(i8* %v3_800651a, i32 367)
  br label %dec_label_pc_800652c

dec_label_pc_800652c:                             ; preds = %entry, %dec_label_pc_8006522
  %v2_8006530 = call i32 @HAL_I2CEx_ConfigAnalogFilter(i32 536872172, i32 0)
  %v3_8006534 = icmp eq i32 %v2_8006530, 0
  br i1 %v3_8006534, label %dec_label_pc_8006542, label %dec_label_pc_8006538

dec_label_pc_8006538:                             ; preds = %dec_label_pc_800652c
  %v3_8006530 = inttoptr i32 %v2_8006530 to i8*
  call void @_Error_Handler(i8* %v3_8006530, i32 374)
  br label %dec_label_pc_8006542

dec_label_pc_8006542:                             ; preds = %dec_label_pc_800652c, %dec_label_pc_8006538
  %v2_8006546 = call i32 @HAL_I2CEx_ConfigDigitalFilter(i32 536872172, i32 0)
  %v2_800654a = icmp eq i32 %v2_8006546, 0
  br i1 %v2_800654a, label %dec_label_pc_8006558, label %dec_label_pc_800654e

dec_label_pc_800654e:                             ; preds = %dec_label_pc_8006542
  %v2_8006554 = inttoptr i32 %v2_8006546 to i8*
  call void @_Error_Handler(i8* %v2_8006554, i32 381)
  br label %dec_label_pc_8006558

dec_label_pc_8006558:                             ; preds = %dec_label_pc_8006542, %dec_label_pc_800654e
  ret void

; uselistorder directives
  uselistorder i32 %v2_8006530, { 1, 0 }
  uselistorder i32 %v2_800651a, { 1, 0 }
  uselistorder i32 536872172, { 1, 2, 0, 3 }
  uselistorder label %dec_label_pc_8006558, { 1, 0 }
  uselistorder label %dec_label_pc_8006542, { 1, 0 }
  uselistorder label %dec_label_pc_800652c, { 1, 0 }
}

define void @MX_TIM1_Init() local_unnamed_addr {
entry:
  %sBreakDeadTimeConfig_-84 = alloca %anon_struct_100.42, align 8
  %sConfigOC_-56 = alloca %anon_struct_89, align 8
  %sMasterConfig_-28 = alloca %anon_struct_99, align 8
  %sClockSourceConfig_-20 = alloca %anon_struct_93, align 8
  store i32 1073818624, i32* inttoptr (i32 536872248 to i32*), align 8
  store i32 48, i32* inttoptr (i32 536872252 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536872256 to i32*), align 64
  store i32 1000, i32* inttoptr (i32 536872260 to i32*), align 4
  store i32 0, i32* inttoptr (i32 536872264 to i32*), align 8
  store i32 0, i32* inttoptr (i32 536872268 to i32*), align 4
  store i32 128, i32* inttoptr (i32 536872272 to i32*), align 16
  %v2_800659c = call i32 @HAL_TIM_Base_Init(i32 536872248)
  %v3_80065a0 = icmp eq i32 %v2_800659c, 0
  br i1 %v3_80065a0, label %dec_label_pc_80065ae, label %dec_label_pc_80065a4

dec_label_pc_80065a4:                             ; preds = %entry
  %v3_800659c = inttoptr i32 %v2_800659c to i8*
  call void @_Error_Handler(i8* %v3_800659c, i32 404)
  br label %dec_label_pc_80065ae

dec_label_pc_80065ae:                             ; preds = %entry, %dec_label_pc_80065a4
  %v4_80065b2 = getelementptr inbounds %anon_struct_93, %anon_struct_93* %sClockSourceConfig_-20, i32 0, i32 0
  store i32 4096, i32* %v4_80065b2, align 8
  %v4_80065b8 = call i32 @HAL_TIM_ConfigClockSource(i32 536872248, %anon_struct_93* nonnull %sClockSourceConfig_-20)
  %v3_80065bc = icmp eq i32 %v4_80065b8, 0
  br i1 %v3_80065bc, label %dec_label_pc_80065ca, label %dec_label_pc_80065c0

dec_label_pc_80065c0:                             ; preds = %dec_label_pc_80065ae
  %v5_80065b8 = inttoptr i32 %v4_80065b8 to i8*
  call void @_Error_Handler(i8* %v5_80065b8, i32 410)
  br label %dec_label_pc_80065ca

dec_label_pc_80065ca:                             ; preds = %dec_label_pc_80065ae, %dec_label_pc_80065c0
  %v1_80065cc = call i32 @HAL_TIM_OC_Init(i32 536872248)
  %v3_80065d0 = icmp eq i32 %v1_80065cc, 0
  br i1 %v3_80065d0, label %dec_label_pc_80065de, label %dec_label_pc_80065d4

dec_label_pc_80065d4:                             ; preds = %dec_label_pc_80065ca
  %v2_80065cc = inttoptr i32 %v1_80065cc to i8*
  call void @_Error_Handler(i8* %v2_80065cc, i32 415)
  br label %dec_label_pc_80065de

dec_label_pc_80065de:                             ; preds = %dec_label_pc_80065ca, %dec_label_pc_80065d4
  %v4_80065e0 = getelementptr inbounds %anon_struct_99, %anon_struct_99* %sMasterConfig_-28, i32 0, i32 0
  store i32 0, i32* %v4_80065e0, align 8
  %v4_80065e8 = call i32 @HAL_TIMEx_MasterConfigSynchronization(i32 536872248, %anon_struct_99* nonnull %sMasterConfig_-28)
  %v3_80065ec = icmp eq i32 %v4_80065e8, 0
  br i1 %v3_80065ec, label %dec_label_pc_80065fa, label %dec_label_pc_80065f0

dec_label_pc_80065f0:                             ; preds = %dec_label_pc_80065de
  %v5_80065e8 = inttoptr i32 %v4_80065e8 to i8*
  call void @_Error_Handler(i8* %v5_80065e8, i32 422)
  br label %dec_label_pc_80065fa

dec_label_pc_80065fa:                             ; preds = %dec_label_pc_80065de, %dec_label_pc_80065f0
  %v4_80065fc = getelementptr inbounds %anon_struct_89, %anon_struct_89* %sConfigOC_-56, i32 0, i32 0
  store i32 0, i32* %v4_80065fc, align 8
  %v5_8006610 = call i32 @HAL_TIM_OC_ConfigChannel(i32 536872248, %anon_struct_89* nonnull %sConfigOC_-56, i32 0)
  %v3_8006614 = icmp eq i32 %v5_8006610, 0
  br i1 %v3_8006614, label %dec_label_pc_8006622, label %dec_label_pc_8006618

dec_label_pc_8006618:                             ; preds = %dec_label_pc_80065fa
  %v6_8006610 = inttoptr i32 %v5_8006610 to i8*
  call void @_Error_Handler(i8* %v6_8006610, i32 434)
  br label %dec_label_pc_8006622

dec_label_pc_8006622:                             ; preds = %dec_label_pc_80065fa, %dec_label_pc_8006618
  %v4_8006624 = getelementptr inbounds %anon_struct_100.42, %anon_struct_100.42* %sBreakDeadTimeConfig_-84, i32 0, i32 0
  store i32 0, i32* %v4_8006624, align 8
  %tmp20 = bitcast %anon_struct_100.42* %sBreakDeadTimeConfig_-84 to %anon_struct_100*
  %v4_800663c = call i32 @HAL_TIMEx_ConfigBreakDeadTime(i32 536872248, %anon_struct_100* %tmp20)
  %v2_8006640 = icmp eq i32 %v4_800663c, 0
  br i1 %v2_8006640, label %dec_label_pc_800664e, label %dec_label_pc_8006644

dec_label_pc_8006644:                             ; preds = %dec_label_pc_8006622
  %v2_800664a = inttoptr i32 %v4_800663c to i8*
  call void @_Error_Handler(i8* %v2_800664a, i32 446)
  br label %dec_label_pc_800664e

dec_label_pc_800664e:                             ; preds = %dec_label_pc_8006622, %dec_label_pc_8006644
  ret void

; uselistorder directives
  uselistorder i32 %v5_8006610, { 1, 0 }
  uselistorder i32 %v4_80065e8, { 1, 0 }
  uselistorder i32 %v1_80065cc, { 1, 0 }
  uselistorder i32 %v4_80065b8, { 1, 0 }
  uselistorder i32 %v2_800659c, { 1, 0 }
  uselistorder %anon_struct_100.42* %sBreakDeadTimeConfig_-84, { 1, 0 }
  uselistorder i32 1000, { 1, 0, 2 }
  uselistorder i32 536872248, { 1, 2, 3, 4, 5, 0, 6 }
  uselistorder label %dec_label_pc_800664e, { 1, 0 }
  uselistorder label %dec_label_pc_8006622, { 1, 0 }
  uselistorder label %dec_label_pc_80065fa, { 1, 0 }
  uselistorder label %dec_label_pc_80065de, { 1, 0 }
  uselistorder label %dec_label_pc_80065ca, { 1, 0 }
  uselistorder label %dec_label_pc_80065ae, { 1, 0 }
}

define void @NVIC_SetPriority(i32 %IRQn, i32 %priority) local_unnamed_addr {
entry:
  %v1_800666e = icmp slt i32 %IRQn, 0
  br i1 %v1_800666e, label %dec_label_pc_8006672, label %dec_label_pc_80066a6

dec_label_pc_8006672:                             ; preds = %entry
  %v3_8006676 = urem i32 %IRQn, 16
  %v3_800667a8 = add nsw i32 %v3_8006676, -536810220
  %v2_800667e = and i32 %v3_800667a8, -536810180
  %v3_800667e = inttoptr i32 %v2_800667e to i32*
  %v4_800667e = load i32, i32* %v3_800667e, align 4
  %tmp3 = mul i32 %IRQn, 8
  %v3_8006682 = and i32 %tmp3, 24
  %tmp = shl i32 -255, %v3_8006682
  %v2_8006688 = add i32 %tmp, -1
  %v3_8006688 = and i32 %v4_800667e, %v2_8006688
  %tmp4 = mul i32 %priority, 64
  %v3_800668c = and i32 %tmp4, 192
  %v6_8006692 = shl i32 %v3_800668c, %v3_8006682
  %v2_8006694 = or i32 %v3_8006688, %v6_8006692
  store i32 -536810212, i32* @r3, align 4
  store i32 %v2_8006694, i32* %v3_800667e, align 4
  br label %dec_label_pc_80066d8

dec_label_pc_80066a6:                             ; preds = %entry
  %v3_80066ae7 = add i32 %IRQn, -536812544
  %v2_80066b2 = and i32 %v3_80066ae7, -4
  %v3_80066b2 = inttoptr i32 %v2_80066b2 to i32*
  %v4_80066b2 = load i32, i32* %v3_80066b2, align 4
  %tmp5 = mul i32 %IRQn, 8
  %v3_80066b6 = and i32 %tmp5, 24
  %tmp9 = shl i32 -255, %v3_80066b6
  %v2_80066bc = add i32 %tmp9, -1
  %v3_80066bc = and i32 %v4_80066b2, %v2_80066bc
  %tmp6 = mul i32 %priority, 64
  %v3_80066c0 = and i32 %tmp6, 192
  %v6_80066c6 = shl i32 %v3_80066c0, %v3_80066b6
  %v2_80066c8 = or i32 %v3_80066bc, %v6_80066c6
  store i32 -536812544, i32* @r3, align 4
  store i32 %v2_80066c8, i32* %v3_80066b2, align 4
  br label %dec_label_pc_80066d8

dec_label_pc_80066d8:                             ; preds = %dec_label_pc_8006672, %dec_label_pc_80066a6
  ret void

; uselistorder directives
  uselistorder i32 %v3_80066b6, { 1, 0 }
  uselistorder i32 %v3_8006682, { 1, 0 }
  uselistorder i32 -536812544, { 1, 0 }
  uselistorder i32 -255, { 1, 0 }
  uselistorder i32 %IRQn, { 1, 0, 2, 3, 4 }
  uselistorder label %dec_label_pc_80066d8, { 1, 0 }
}

define void @SystemClock_Config() local_unnamed_addr {
entry:
  %RCC_ClkInitStruct_-72 = alloca %anon_struct_103, align 8
  %RCC_OscInitStruct_-56 = alloca i32, align 4
  %PeriphClkInit_-96 = alloca %anon_struct_108, align 8
  store i32 2, i32* %RCC_OscInitStruct_-56, align 4
  %v2_800670c = ptrtoint i32* %RCC_OscInitStruct_-56 to i32
  %v2_800670e = call i32 @HAL_RCC_OscConfig(i32 %v2_800670c)
  %v3_8006712 = icmp eq i32 %v2_800670e, 0
  br i1 %v3_8006712, label %dec_label_pc_800671e, label %dec_label_pc_8006716

dec_label_pc_8006716:                             ; preds = %entry
  %v3_800670e = inttoptr i32 %v2_800670e to i8*
  call void @_Error_Handler(i8* %v3_800670e, i32 255)
  br label %dec_label_pc_800671e

dec_label_pc_800671e:                             ; preds = %entry, %dec_label_pc_8006716
  %v4_8006720 = getelementptr inbounds %anon_struct_103, %anon_struct_103* %RCC_ClkInitStruct_-72, i32 0, i32 0
  store i32 7, i32* %v4_8006720, align 8
  %v4_8006730 = call i32 @HAL_RCC_ClockConfig(%anon_struct_103* nonnull %RCC_ClkInitStruct_-72, i32 1)
  %v3_8006734 = icmp eq i32 %v4_8006730, 0
  br i1 %v3_8006734, label %dec_label_pc_8006742, label %dec_label_pc_8006738

dec_label_pc_8006738:                             ; preds = %dec_label_pc_800671e
  %v5_8006730 = inttoptr i32 %v4_8006730 to i8*
  call void @_Error_Handler(i8* %v5_8006730, i32 268)
  br label %dec_label_pc_8006742

dec_label_pc_8006742:                             ; preds = %dec_label_pc_800671e, %dec_label_pc_8006738
  %v3_8006744 = getelementptr inbounds %anon_struct_108, %anon_struct_108* %PeriphClkInit_-96, i32 0, i32 0
  store i32 32, i32* %v3_8006744, align 8
  %v3_800674c = call i32 @HAL_RCCEx_PeriphCLKConfig(%anon_struct_108* nonnull %PeriphClkInit_-96)
  %v2_8006750 = icmp eq i32 %v3_800674c, 0
  br i1 %v2_8006750, label %dec_label_pc_800675e, label %dec_label_pc_8006754

dec_label_pc_8006754:                             ; preds = %dec_label_pc_8006742
  %v2_800675a = inttoptr i32 %v3_800674c to i8*
  call void @_Error_Handler(i8* %v2_800675a, i32 275)
  br label %dec_label_pc_800675e

dec_label_pc_800675e:                             ; preds = %dec_label_pc_8006742, %dec_label_pc_8006754
  ret void

; uselistorder directives
  uselistorder i32 %v4_8006730, { 1, 0 }
  uselistorder i32 %v2_800670e, { 1, 0 }
  uselistorder i32* %RCC_OscInitStruct_-56, { 1, 0 }
  uselistorder i32 255, { 3, 5, 4, 0, 1, 2 }
  uselistorder label %dec_label_pc_800675e, { 1, 0 }
  uselistorder label %dec_label_pc_8006742, { 1, 0 }
  uselistorder label %dec_label_pc_800671e, { 1, 0 }
}

define void @TIM_Base_SetConfig(i32 %TIMx, i32 %Structure) local_unnamed_addr {
entry:
  %v1_800687c = inttoptr i32 %TIMx to i32*
  %v2_800687c = load i32, i32* %v1_800687c, align 4
  %v9_8006880 = icmp eq i32 %TIMx, 1073818624
  br i1 %v9_8006880, label %dec_label_pc_800689e, label %dec_label_pc_8006884

dec_label_pc_8006884:                             ; preds = %entry
  %v9_8006888 = icmp eq i32 %TIMx, 1073741824
  br i1 %v9_8006888, label %dec_label_pc_800689e, label %dec_label_pc_800688c

dec_label_pc_800688c:                             ; preds = %dec_label_pc_8006884
  %v9_800688e = icmp eq i32 %TIMx, 1073742848
  br i1 %v9_800688e, label %dec_label_pc_800689e, label %dec_label_pc_800689e.thread

dec_label_pc_800689e.thread:                      ; preds = %dec_label_pc_800688c
  br label %dec_label_pc_80068a4

dec_label_pc_800689e:                             ; preds = %entry, %dec_label_pc_8006884, %dec_label_pc_800688c
  %v3_8006896 = and i32 %v2_800687c, -113
  %v1_800689a = add i32 %Structure, 4
  %v2_800689a = inttoptr i32 %v1_800689a to i32*
  %v3_800689a = load i32, i32* %v2_800689a, align 4
  %v2_800689c = or i32 %v3_800689a, %v3_8006896
  br i1 %v9_8006880, label %dec_label_pc_80068c4, label %dec_label_pc_80068a4

dec_label_pc_80068a4:                             ; preds = %dec_label_pc_800689e.thread, %dec_label_pc_800689e
  %v0_80068c81 = phi i32 [ %v2_800687c, %dec_label_pc_800689e.thread ], [ %v2_800689c, %dec_label_pc_800689e ]
  %v9_80068a8 = icmp eq i32 %TIMx, 1073741824
  br i1 %v9_80068a8, label %dec_label_pc_80068c4, label %dec_label_pc_80068ac

dec_label_pc_80068ac:                             ; preds = %dec_label_pc_80068a4
  %v9_80068ae = icmp eq i32 %TIMx, 1073742848
  br i1 %v9_80068ae, label %dec_label_pc_80068c4, label %dec_label_pc_80068b2

dec_label_pc_80068b2:                             ; preds = %dec_label_pc_80068ac
  %v9_80068b4 = icmp eq i32 %TIMx, 1073750016
  br i1 %v9_80068b4, label %dec_label_pc_80068c4, label %dec_label_pc_80068b8

dec_label_pc_80068b8:                             ; preds = %dec_label_pc_80068b2
  %v9_80068ba = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_80068ba, label %dec_label_pc_80068c4, label %dec_label_pc_80068be

dec_label_pc_80068be:                             ; preds = %dec_label_pc_80068b8
  %v9_80068c0 = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_80068c0, label %dec_label_pc_80068c4, label %dec_label_pc_80068d2

dec_label_pc_80068c4:                             ; preds = %dec_label_pc_80068be, %dec_label_pc_80068b8, %dec_label_pc_80068b2, %dec_label_pc_80068ac, %dec_label_pc_80068a4, %dec_label_pc_800689e
  %v0_80068c8 = phi i32 [ %v0_80068c81, %dec_label_pc_80068be ], [ %v0_80068c81, %dec_label_pc_80068b8 ], [ %v0_80068c81, %dec_label_pc_80068b2 ], [ %v0_80068c81, %dec_label_pc_80068ac ], [ %v0_80068c81, %dec_label_pc_80068a4 ], [ %v2_800689c, %dec_label_pc_800689e ]
  %v3_80068ca = and i32 %v0_80068c8, -769
  %v1_80068ce = add i32 %Structure, 12
  %v2_80068ce = inttoptr i32 %v1_80068ce to i32*
  %v3_80068ce = load i32, i32* %v2_80068ce, align 4
  %v2_80068d0 = or i32 %v3_80068ce, %v3_80068ca
  br label %dec_label_pc_80068d2

dec_label_pc_80068d2:                             ; preds = %dec_label_pc_80068be, %dec_label_pc_80068c4
  %v0_80068d4 = phi i32 [ %v0_80068c81, %dec_label_pc_80068be ], [ %v2_80068d0, %dec_label_pc_80068c4 ]
  %v3_80068d6 = and i32 %v0_80068d4, -129
  %v1_80068d8 = add i32 %Structure, 20
  %v2_80068d8 = inttoptr i32 %v1_80068d8 to i32*
  %v3_80068d8 = load i32, i32* %v2_80068d8, align 4
  %v2_80068da = or i32 %v3_80068d8, %v3_80068d6
  store i32 %v2_80068da, i32* %v1_800687c, align 4
  %v1_80068e0 = add i32 %Structure, 8
  %v2_80068e0 = inttoptr i32 %v1_80068e0 to i32*
  %v3_80068e0 = load i32, i32* %v2_80068e0, align 4
  %v2_80068e2 = add i32 %TIMx, 44
  %v3_80068e2 = inttoptr i32 %v2_80068e2 to i32*
  store i32 %v3_80068e0, i32* %v3_80068e2, align 4
  %v1_80068e4 = inttoptr i32 %Structure to i32*
  %v2_80068e4 = load i32, i32* %v1_80068e4, align 4
  %v2_80068e6 = add i32 %TIMx, 40
  %v3_80068e6 = inttoptr i32 %v2_80068e6 to i32*
  store i32 %v2_80068e4, i32* %v3_80068e6, align 4
  br i1 %v9_8006880, label %dec_label_pc_80068fa, label %dec_label_pc_80068ee

dec_label_pc_80068ee:                             ; preds = %dec_label_pc_80068d2
  %v9_80068f0 = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_80068f0, label %dec_label_pc_80068fa, label %dec_label_pc_80068f4

dec_label_pc_80068f4:                             ; preds = %dec_label_pc_80068ee
  %v9_80068f6 = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_80068f6, label %dec_label_pc_80068fa, label %dec_label_pc_80068fe

dec_label_pc_80068fa:                             ; preds = %dec_label_pc_80068f4, %dec_label_pc_80068ee, %dec_label_pc_80068d2
  %v1_80068fa = add i32 %Structure, 16
  %v2_80068fa = inttoptr i32 %v1_80068fa to i32*
  %v3_80068fa = load i32, i32* %v2_80068fa, align 4
  %v2_80068fc = add i32 %TIMx, 48
  %v3_80068fc = inttoptr i32 %v2_80068fc to i32*
  store i32 %v3_80068fa, i32* %v3_80068fc, align 4
  br label %dec_label_pc_80068fe

dec_label_pc_80068fe:                             ; preds = %dec_label_pc_80068f4, %dec_label_pc_80068fa
  %v2_8006900 = add i32 %TIMx, 20
  %v3_8006900 = inttoptr i32 %v2_8006900 to i32*
  store i32 1, i32* %v3_8006900, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v2_800689c, { 1, 0 }
  uselistorder i32 48, { 2, 1, 0, 3, 4, 5, 6, 7, 8, 9, 10, 11 }
  uselistorder i32 40, { 3, 4, 5, 6, 15, 7, 8, 10, 9, 11, 12, 13, 0, 14, 1, 2, 16, 17 }
  uselistorder i32 44, { 1, 2, 17, 3, 15, 4, 5, 6, 7, 8, 9, 13, 11, 10, 12, 0, 14, 16 }
  uselistorder i32 1073741824, { 2, 3, 0, 1 }
  uselistorder i32 %Structure, { 0, 1, 5, 4, 3, 2 }
  uselistorder i32 %TIMx, { 6, 2, 10, 0, 1, 3, 4, 8, 7, 5, 9, 14, 13, 12, 11 }
  uselistorder label %dec_label_pc_80068fe, { 1, 0 }
  uselistorder label %dec_label_pc_80068d2, { 1, 0 }
  uselistorder label %dec_label_pc_80068a4, { 1, 0 }
  uselistorder label %dec_label_pc_800689e, { 2, 1, 0 }
}

define void @TIM_ETR_SetConfig(i32 %TIMx, i32 %TIM_ExtTRGPrescaler, i32 %TIM_ExtTRGPolarity, i32 %ExtTRGFilter) local_unnamed_addr {
entry:
  %v1_800691e = add i32 %TIMx, 8
  %v2_800691e = inttoptr i32 %v1_800691e to i32*
  %v3_800691e = load i32, i32* %v2_800691e, align 4
  %v3_8006926 = and i32 %v3_800691e, -65281
  %v3_800692a = mul i32 %ExtTRGFilter, 256
  %v2_800692c = or i32 %TIM_ExtTRGPolarity, %TIM_ExtTRGPrescaler
  %v2_800692e = or i32 %v2_800692c, %v3_800692a
  %v2_8006930 = or i32 %v2_800692e, %v3_8006926
  store i32 %v2_8006930, i32* %v2_800691e, align 4
  ret void
}

define void @TIM_ITRx_SetConfig(i32 %TIMx, i16 %InputTriggerSource) local_unnamed_addr {
entry:
  %tmp = sext i16 %InputTriggerSource to i32
  %v1_800693c = add i32 %TIMx, 8
  %v2_800693c = inttoptr i32 %v1_800693c to i32*
  %v3_800693c = load i32, i32* %v2_800693c, align 4
  %v3_8006942 = and i32 %v3_800693c, -120
  %v2_8006948 = or i32 %tmp, 7
  %v2_800694a = or i32 %v3_8006942, %v2_8006948
  store i32 %v2_800694a, i32* %v2_800693c, align 4
  ret void

; uselistorder directives
  uselistorder i32 -120, { 1, 0 }
}

define void @TIM_OC1_SetConfig(i32 %TIMx, %anon_struct_89* %OC_Config) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_89* %OC_Config to i32
  store i32 0, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  %v1_8006958 = add i32 %TIMx, 32
  %v2_8006958 = inttoptr i32 %v1_8006958 to i32*
  %v3_8006958 = load i32, i32* %v2_8006958, align 4
  %v3_800695a = and i32 %v3_8006958, -2
  store i32 %v3_800695a, i32* %v2_8006958, align 4
  store i32 %v3_800695a, i32* %r2.global-to-local, align 4
  %v1_8006962 = add i32 %TIMx, 4
  %v2_8006962 = inttoptr i32 %v1_8006962 to i32*
  %v3_8006962 = load i32, i32* %v2_8006962, align 4
  %v1_8006964 = add i32 %TIMx, 24
  %v2_8006964 = inttoptr i32 %v1_8006964 to i32*
  %v3_8006964 = load i32, i32* %v2_8006964, align 4
  %v3_800696e = and i32 %v3_8006964, -116
  store i32 %v3_800696e, i32* %r4.global-to-local, align 4
  %tmp7 = getelementptr inbounds %anon_struct_89, %anon_struct_89* %OC_Config, i32 0, i32 0
  %v3_8006972 = load i32, i32* %tmp7, align 4
  %v2_8006974 = or i32 %v3_8006972, %v3_800696e
  store i32 %v2_8006974, i32* %r4.global-to-local, align 4
  %v3_800697a = and i32 %v3_8006958, -4
  store i32 %v3_800697a, i32* %r2.global-to-local, align 4
  %v2_800697e = add i32 %tmp, 8
  %v3_800697e = inttoptr i32 %v2_800697e to i32*
  %v4_800697e = load i32, i32* %v3_800697e, align 4
  %v2_8006980 = or i32 %v4_800697e, %v3_800697a
  store i32 %v2_8006980, i32* %r2.global-to-local, align 4
  %v9_8006984 = icmp eq i32 %TIMx, 1073818624
  br i1 %v9_8006984, label %dec_label_pc_80069ae, label %dec_label_pc_800698a

dec_label_pc_800698a:                             ; preds = %entry
  %v9_800698c = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_800698c, label %dec_label_pc_80069ae, label %dec_label_pc_8006992

dec_label_pc_8006992:                             ; preds = %dec_label_pc_800698a
  %v9_8006994 = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_8006994, label %dec_label_pc_80069ae, label %dec_label_pc_80069ae.thread

dec_label_pc_80069ae.thread:                      ; preds = %dec_label_pc_8006992
  br label %dec_label_pc_80069b4

dec_label_pc_80069ae:                             ; preds = %entry, %dec_label_pc_800698a, %dec_label_pc_8006992
  %v3_800699e = and i32 %v2_8006980, -9
  store i32 %v3_800699e, i32* %r2.global-to-local, align 4
  %v2_80069a2 = add i32 %tmp, 12
  %v3_80069a2 = inttoptr i32 %v2_80069a2 to i32*
  %v4_80069a2 = load i32, i32* %v3_80069a2, align 4
  %v2_80069a4 = or i32 %v4_80069a2, %v3_800699e
  %v3_80069aa = and i32 %v2_80069a4, -5
  store i32 %v3_80069aa, i32* %r2.global-to-local, align 4
  br i1 %v9_8006984, label %dec_label_pc_80069c0, label %dec_label_pc_80069b4

dec_label_pc_80069b4:                             ; preds = %dec_label_pc_80069ae.thread, %dec_label_pc_80069ae
  %v9_80069b6 = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_80069b6, label %dec_label_pc_80069c0, label %dec_label_pc_80069ba

dec_label_pc_80069ba:                             ; preds = %dec_label_pc_80069b4
  %v9_80069bc = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_80069bc, label %dec_label_pc_80069c0, label %dec_label_pc_80069da

dec_label_pc_80069c0:                             ; preds = %dec_label_pc_80069ba, %dec_label_pc_80069b4, %dec_label_pc_80069ae
  %v3_80069ce = and i32 %v3_8006962, -769
  %v2_80069d2 = add i32 %tmp, 20
  %v3_80069d2 = inttoptr i32 %v2_80069d2 to i32*
  %v4_80069d2 = load i32, i32* %v3_80069d2, align 4
  %v2_80069d4 = or i32 %v4_80069d2, %v3_80069ce
  %v2_80069d6 = add i32 %tmp, 24
  %v3_80069d6 = inttoptr i32 %v2_80069d6 to i32*
  %v4_80069d6 = load i32, i32* %v3_80069d6, align 4
  %v2_80069d8 = or i32 %v4_80069d6, %v2_80069d4
  br label %dec_label_pc_80069da

dec_label_pc_80069da:                             ; preds = %dec_label_pc_80069ba, %dec_label_pc_80069c0
  %v0_80069da = phi i32 [ %v3_8006962, %dec_label_pc_80069ba ], [ %v2_80069d8, %dec_label_pc_80069c0 ]
  store i32 %v0_80069da, i32* %v2_8006962, align 4
  %v0_80069dc = load i32, i32* %r4.global-to-local, align 4
  store i32 %v0_80069dc, i32* %v2_8006964, align 4
  %v2_80069de = add i32 %tmp, 4
  %v3_80069de = inttoptr i32 %v2_80069de to i32*
  %v4_80069de = load i32, i32* %v3_80069de, align 4
  %v2_80069e0 = add i32 %TIMx, 52
  %v3_80069e0 = inttoptr i32 %v2_80069e0 to i32*
  store i32 %v4_80069de, i32* %v3_80069e0, align 4
  %v0_80069e2 = load i32, i32* %r2.global-to-local, align 4
  store i32 %v0_80069e2, i32* %v2_8006958, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v3_8006962, { 1, 0 }
  uselistorder i32 %v3_800695a, { 1, 0 }
  uselistorder i32* %r2.global-to-local, { 2, 0, 1, 3, 4, 5, 6 }
  uselistorder i32 -5, { 1, 2, 0, 3, 4, 5 }
  uselistorder i32 -4, { 2, 0, 3, 4, 1, 6, 5, 7 }
  uselistorder i32 %TIMx, { 0, 8, 1, 5, 4, 7, 6, 2, 3 }
  uselistorder label %dec_label_pc_80069da, { 1, 0 }
  uselistorder label %dec_label_pc_80069b4, { 1, 0 }
  uselistorder label %dec_label_pc_80069ae, { 2, 1, 0 }
}

define void @TIM_OC2_SetConfig(i32 %TIMx, %anon_struct_89* %OC_Config) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_89* %OC_Config to i32
  store i32 0, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  %v1_80069fc = add i32 %TIMx, 32
  %v2_80069fc = inttoptr i32 %v1_80069fc to i32*
  %v3_80069fc = load i32, i32* %v2_80069fc, align 4
  %v3_8006a00 = and i32 %v3_80069fc, -17
  store i32 %v3_8006a00, i32* %v2_80069fc, align 4
  store i32 %v3_8006a00, i32* %r2.global-to-local, align 4
  %v1_8006a06 = add i32 %TIMx, 4
  %v2_8006a06 = inttoptr i32 %v1_8006a06 to i32*
  %v3_8006a06 = load i32, i32* %v2_8006a06, align 4
  %v1_8006a08 = add i32 %TIMx, 24
  %v2_8006a08 = inttoptr i32 %v1_8006a08 to i32*
  %v3_8006a08 = load i32, i32* %v2_8006a08, align 4
  %v3_8006a1a = and i32 %v3_8006a08, -29441
  store i32 %v3_8006a1a, i32* %r4.global-to-local, align 4
  %tmp7 = getelementptr inbounds %anon_struct_89, %anon_struct_89* %OC_Config, i32 0, i32 0
  %v3_8006a1e = load i32, i32* %tmp7, align 4
  %v3_8006a20 = mul i32 %v3_8006a1e, 256
  %v2_8006a22 = or i32 %v3_8006a20, %v3_8006a1a
  store i32 %v2_8006a22, i32* %r4.global-to-local, align 4
  %v3_8006a28 = and i32 %v3_80069fc, -49
  store i32 %v3_8006a28, i32* %r2.global-to-local, align 4
  %v2_8006a2c = add i32 %tmp, 8
  %v3_8006a2c = inttoptr i32 %v2_8006a2c to i32*
  %v4_8006a2c = load i32, i32* %v3_8006a2c, align 4
  %v3_8006a2e = mul i32 %v4_8006a2c, 16
  %v2_8006a30 = or i32 %v3_8006a2e, %v3_8006a28
  store i32 %v2_8006a30, i32* %r2.global-to-local, align 4
  %v9_8006a34 = icmp eq i32 %TIMx, 1073818624
  br i1 %v9_8006a34, label %dec_label_pc_8006a60.thread, label %dec_label_pc_8006a66

dec_label_pc_8006a60.thread:                      ; preds = %entry
  %v3_8006a4e = and i32 %v2_8006a30, -129
  store i32 %v3_8006a4e, i32* %r2.global-to-local, align 4
  %v2_8006a52 = add i32 %tmp, 12
  %v3_8006a52 = inttoptr i32 %v2_8006a52 to i32*
  %v4_8006a52 = load i32, i32* %v3_8006a52, align 4
  %v3_8006a54 = mul i32 %v4_8006a52, 16
  %v2_8006a56 = or i32 %v3_8006a54, %v3_8006a4e
  %v3_8006a5c = and i32 %v2_8006a56, -65
  store i32 %v3_8006a5c, i32* %r2.global-to-local, align 4
  br label %dec_label_pc_8006a72

dec_label_pc_8006a66:                             ; preds = %entry
  %v9_8006a3c = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_8006a3c, label %dec_label_pc_8006a72, label %dec_label_pc_8006a6c

dec_label_pc_8006a6c:                             ; preds = %dec_label_pc_8006a66
  %v9_8006a44 = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_8006a44, label %dec_label_pc_8006a72, label %dec_label_pc_8006a90

dec_label_pc_8006a72:                             ; preds = %dec_label_pc_8006a60.thread, %dec_label_pc_8006a6c, %dec_label_pc_8006a66
  %v3_8006a80 = and i32 %v3_8006a06, -3073
  %v2_8006a84 = add i32 %tmp, 20
  %v3_8006a84 = inttoptr i32 %v2_8006a84 to i32*
  %v4_8006a84 = load i32, i32* %v3_8006a84, align 4
  %v3_8006a86 = mul i32 %v4_8006a84, 4
  %v2_8006a88 = or i32 %v3_8006a86, %v3_8006a80
  %v2_8006a8a = add i32 %tmp, 24
  %v3_8006a8a = inttoptr i32 %v2_8006a8a to i32*
  %v4_8006a8a = load i32, i32* %v3_8006a8a, align 4
  %v3_8006a8c = mul i32 %v4_8006a8a, 4
  %v2_8006a8e = or i32 %v3_8006a8c, %v2_8006a88
  br label %dec_label_pc_8006a90

dec_label_pc_8006a90:                             ; preds = %dec_label_pc_8006a6c, %dec_label_pc_8006a72
  %v0_8006a90 = phi i32 [ %v3_8006a06, %dec_label_pc_8006a6c ], [ %v2_8006a8e, %dec_label_pc_8006a72 ]
  store i32 %v0_8006a90, i32* %v2_8006a06, align 4
  %v0_8006a92 = load i32, i32* %r4.global-to-local, align 4
  store i32 %v0_8006a92, i32* %v2_8006a08, align 4
  %v2_8006a94 = add i32 %tmp, 4
  %v3_8006a94 = inttoptr i32 %v2_8006a94 to i32*
  %v4_8006a94 = load i32, i32* %v3_8006a94, align 4
  %v2_8006a96 = add i32 %TIMx, 56
  %v3_8006a96 = inttoptr i32 %v2_8006a96 to i32*
  store i32 %v4_8006a94, i32* %v3_8006a96, align 4
  %v0_8006a98 = load i32, i32* %r2.global-to-local, align 4
  store i32 %v0_8006a98, i32* %v2_80069fc, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v3_8006a06, { 1, 0 }
  uselistorder i32* %r2.global-to-local, { 2, 0, 1, 3, 4, 5, 6 }
  uselistorder i32 56, { 0, 9, 1, 2, 3, 4, 5, 6, 7, 8 }
  uselistorder i32 %TIMx, { 1, 0, 6, 5, 4, 2, 3 }
  uselistorder label %dec_label_pc_8006a90, { 1, 0 }
  uselistorder label %dec_label_pc_8006a72, { 1, 2, 0 }
}

define void @TIM_OC3_SetConfig(i32 %TIMx, %anon_struct_89* %OC_Config) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_89* %OC_Config to i32
  store i32 0, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  %v1_8006ab0 = add i32 %TIMx, 32
  %v2_8006ab0 = inttoptr i32 %v1_8006ab0 to i32*
  %v3_8006ab0 = load i32, i32* %v2_8006ab0, align 4
  %v3_8006ab6 = and i32 %v3_8006ab0, -257
  store i32 %v3_8006ab6, i32* %v2_8006ab0, align 4
  store i32 %v3_8006ab6, i32* %r2.global-to-local, align 4
  %v1_8006abc = add i32 %TIMx, 4
  %v2_8006abc = inttoptr i32 %v1_8006abc to i32*
  %v3_8006abc = load i32, i32* %v2_8006abc, align 4
  %v1_8006abe = add i32 %TIMx, 28
  %v2_8006abe = inttoptr i32 %v1_8006abe to i32*
  %v3_8006abe = load i32, i32* %v2_8006abe, align 4
  %v3_8006ac8 = and i32 %v3_8006abe, -116
  store i32 %v3_8006ac8, i32* %r4.global-to-local, align 4
  %tmp7 = getelementptr inbounds %anon_struct_89, %anon_struct_89* %OC_Config, i32 0, i32 0
  %v3_8006acc = load i32, i32* %tmp7, align 4
  %v2_8006ace = or i32 %v3_8006acc, %v3_8006ac8
  store i32 %v2_8006ace, i32* %r4.global-to-local, align 4
  %v3_8006ad6 = and i32 %v3_8006ab0, -769
  store i32 %v3_8006ad6, i32* %r2.global-to-local, align 4
  %v2_8006ada = add i32 %tmp, 8
  %v3_8006ada = inttoptr i32 %v2_8006ada to i32*
  %v4_8006ada = load i32, i32* %v3_8006ada, align 4
  %v3_8006adc = mul i32 %v4_8006ada, 256
  %v2_8006ade = or i32 %v3_8006adc, %v3_8006ad6
  store i32 %v2_8006ade, i32* %r2.global-to-local, align 4
  %v9_8006ae2 = icmp eq i32 %TIMx, 1073818624
  br i1 %v9_8006ae2, label %dec_label_pc_8006b10.thread, label %dec_label_pc_8006b16

dec_label_pc_8006b10.thread:                      ; preds = %entry
  %v3_8006afe = and i32 %v2_8006ade, -2049
  store i32 %v3_8006afe, i32* %r2.global-to-local, align 4
  %v2_8006b02 = add i32 %tmp, 12
  %v3_8006b02 = inttoptr i32 %v2_8006b02 to i32*
  %v4_8006b02 = load i32, i32* %v3_8006b02, align 4
  %v3_8006b04 = mul i32 %v4_8006b02, 256
  %v2_8006b06 = or i32 %v3_8006b04, %v3_8006afe
  %v3_8006b0c = and i32 %v2_8006b06, -1025
  store i32 %v3_8006b0c, i32* %r2.global-to-local, align 4
  br label %dec_label_pc_8006b22

dec_label_pc_8006b16:                             ; preds = %entry
  %v9_8006aea = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_8006aea, label %dec_label_pc_8006b22, label %dec_label_pc_8006b1c

dec_label_pc_8006b1c:                             ; preds = %dec_label_pc_8006b16
  %v9_8006af2 = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_8006af2, label %dec_label_pc_8006b22, label %dec_label_pc_8006b40

dec_label_pc_8006b22:                             ; preds = %dec_label_pc_8006b10.thread, %dec_label_pc_8006b1c, %dec_label_pc_8006b16
  %v3_8006b30 = and i32 %v3_8006abc, -12289
  %v2_8006b34 = add i32 %tmp, 20
  %v3_8006b34 = inttoptr i32 %v2_8006b34 to i32*
  %v4_8006b34 = load i32, i32* %v3_8006b34, align 4
  %v3_8006b36 = mul i32 %v4_8006b34, 16
  %v2_8006b38 = or i32 %v3_8006b36, %v3_8006b30
  %v2_8006b3a = add i32 %tmp, 24
  %v3_8006b3a = inttoptr i32 %v2_8006b3a to i32*
  %v4_8006b3a = load i32, i32* %v3_8006b3a, align 4
  %v3_8006b3c = mul i32 %v4_8006b3a, 16
  %v2_8006b3e = or i32 %v3_8006b3c, %v2_8006b38
  br label %dec_label_pc_8006b40

dec_label_pc_8006b40:                             ; preds = %dec_label_pc_8006b1c, %dec_label_pc_8006b22
  %v0_8006b40 = phi i32 [ %v3_8006abc, %dec_label_pc_8006b1c ], [ %v2_8006b3e, %dec_label_pc_8006b22 ]
  store i32 %v0_8006b40, i32* %v2_8006abc, align 4
  %v0_8006b42 = load i32, i32* %r4.global-to-local, align 4
  store i32 %v0_8006b42, i32* %v2_8006abe, align 4
  %v2_8006b44 = add i32 %tmp, 4
  %v3_8006b44 = inttoptr i32 %v2_8006b44 to i32*
  %v4_8006b44 = load i32, i32* %v3_8006b44, align 4
  %v2_8006b46 = add i32 %TIMx, 60
  %v3_8006b46 = inttoptr i32 %v2_8006b46 to i32*
  store i32 %v4_8006b44, i32* %v3_8006b46, align 4
  %v0_8006b48 = load i32, i32* %r2.global-to-local, align 4
  store i32 %v0_8006b48, i32* %v2_8006ab0, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v3_8006abc, { 1, 0 }
  uselistorder i32* %r2.global-to-local, { 2, 0, 1, 3, 4, 5, 6 }
  uselistorder i32 60, { 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 10, 12, 13, 19, 25, 20, 24, 14, 21, 22, 23, 16, 15, 17, 26 }
  uselistorder i32 12, { 38, 39, 40, 46, 1, 41, 42, 43, 44, 45, 47, 8, 3, 9, 10, 48, 49, 2, 11, 4, 12, 50, 51, 13, 14, 15, 16, 17, 52, 53, 54, 55, 56, 57, 18, 106, 107, 113, 19, 114, 58, 108, 109, 110, 59, 60, 61, 62, 63, 64, 65, 66, 67, 118, 119, 68, 69, 70, 20, 71, 76, 72, 73, 21, 74, 22, 5, 23, 24, 25, 26, 77, 75, 27, 28, 29, 30, 31, 33, 32, 34, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 0, 92, 93, 94, 95, 96, 6, 97, 7, 98, 99, 100, 101, 102, 103, 104, 105, 35, 111, 36, 37, 112, 115, 116, 117, 120, 121, 122 }
  uselistorder i32 -769, { 0, 1, 3, 4, 5, 2 }
  uselistorder i32 %TIMx, { 1, 4, 5, 6, 3, 0, 2 }
  uselistorder label %dec_label_pc_8006b40, { 1, 0 }
  uselistorder label %dec_label_pc_8006b22, { 1, 2, 0 }
}

define void @TIM_OC4_SetConfig(i32 %TIMx, %anon_struct_89* %OC_Config) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %tmp = ptrtoint %anon_struct_89* %OC_Config to i32
  store i32 0, i32* %r2.global-to-local, align 4
  store i32 0, i32* %r3.global-to-local, align 4
  %v1_8006b60 = add i32 %TIMx, 32
  %v2_8006b60 = inttoptr i32 %v1_8006b60 to i32*
  %v3_8006b60 = load i32, i32* %v2_8006b60, align 4
  %v3_8006b66 = and i32 %v3_8006b60, -4097
  store i32 %v3_8006b66, i32* %v2_8006b60, align 4
  store i32 %v3_8006b66, i32* %r3.global-to-local, align 4
  %v1_8006b6c = add i32 %TIMx, 4
  %v2_8006b6c = inttoptr i32 %v1_8006b6c to i32*
  %v3_8006b6c = load i32, i32* %v2_8006b6c, align 4
  %v1_8006b6e = add i32 %TIMx, 28
  %v2_8006b6e = inttoptr i32 %v1_8006b6e to i32*
  %v3_8006b6e = load i32, i32* %v2_8006b6e, align 4
  %v3_8006b80 = and i32 %v3_8006b6e, -29441
  store i32 %v3_8006b80, i32* %r2.global-to-local, align 4
  %tmp7 = getelementptr inbounds %anon_struct_89, %anon_struct_89* %OC_Config, i32 0, i32 0
  %v3_8006b84 = load i32, i32* %tmp7, align 4
  %v3_8006b86 = mul i32 %v3_8006b84, 256
  %v2_8006b88 = or i32 %v3_8006b86, %v3_8006b80
  store i32 %v2_8006b88, i32* %r2.global-to-local, align 4
  %v3_8006b90 = and i32 %v3_8006b60, -12289
  store i32 %v3_8006b90, i32* %r3.global-to-local, align 4
  %v2_8006b94 = add i32 %tmp, 8
  %v3_8006b94 = inttoptr i32 %v2_8006b94 to i32*
  %v4_8006b94 = load i32, i32* %v3_8006b94, align 4
  %v3_8006b96 = mul i32 %v4_8006b94, 4096
  %v2_8006b98 = or i32 %v3_8006b96, %v3_8006b90
  store i32 %v2_8006b98, i32* %r3.global-to-local, align 4
  %v9_8006b9c = icmp eq i32 %TIMx, 1073818624
  br i1 %v9_8006b9c, label %dec_label_pc_8006bac, label %dec_label_pc_8006ba0

dec_label_pc_8006ba0:                             ; preds = %entry
  %v9_8006ba2 = icmp eq i32 %TIMx, 1073824768
  br i1 %v9_8006ba2, label %dec_label_pc_8006bac, label %dec_label_pc_8006ba6

dec_label_pc_8006ba6:                             ; preds = %dec_label_pc_8006ba0
  %v9_8006ba8 = icmp eq i32 %TIMx, 1073825792
  br i1 %v9_8006ba8, label %dec_label_pc_8006bac, label %dec_label_pc_8006bbc

dec_label_pc_8006bac:                             ; preds = %dec_label_pc_8006ba6, %dec_label_pc_8006ba0, %entry
  %v3_8006bb2 = and i32 %v3_8006b6c, -16385
  %v2_8006bb6 = add i32 %tmp, 20
  %v3_8006bb6 = inttoptr i32 %v2_8006bb6 to i32*
  %v4_8006bb6 = load i32, i32* %v3_8006bb6, align 4
  %v3_8006bb8 = mul i32 %v4_8006bb6, 64
  %v2_8006bba = or i32 %v3_8006bb8, %v3_8006bb2
  br label %dec_label_pc_8006bbc

dec_label_pc_8006bbc:                             ; preds = %dec_label_pc_8006ba6, %dec_label_pc_8006bac
  %v0_8006bbc = phi i32 [ %v3_8006b6c, %dec_label_pc_8006ba6 ], [ %v2_8006bba, %dec_label_pc_8006bac ]
  store i32 %v0_8006bbc, i32* %v2_8006b6c, align 4
  %v0_8006bbe = load i32, i32* %r2.global-to-local, align 4
  store i32 %v0_8006bbe, i32* %v2_8006b6e, align 4
  %v2_8006bc0 = add i32 %tmp, 4
  %v3_8006bc0 = inttoptr i32 %v2_8006bc0 to i32*
  %v4_8006bc0 = load i32, i32* %v3_8006bc0, align 4
  %v2_8006bc2 = add i32 %TIMx, 64
  %v3_8006bc2 = inttoptr i32 %v2_8006bc2 to i32*
  store i32 %v4_8006bc0, i32* %v3_8006bc2, align 4
  %v0_8006bc4 = load i32, i32* %r3.global-to-local, align 4
  store i32 %v0_8006bc4, i32* %v2_8006b60, align 4
  ret void

; uselistorder directives
  uselistorder i32 1073825792, { 0, 1, 2, 4, 3, 5, 6 }
  uselistorder i32 1073824768, { 0, 1, 2, 4, 3, 5, 6 }
  uselistorder i32 28, { 3, 4, 5, 6, 7, 1, 2, 8, 16, 17, 18, 9, 11, 10, 12, 13, 14, 15, 19, 20, 0 }
  uselistorder i32 %TIMx, { 6, 5, 0, 3, 4, 1, 2 }
  uselistorder label %dec_label_pc_8006bbc, { 1, 0 }
}

define void @TIM_TI1_ConfigInputStage(i32 %TIMx, i32 %TIM_ICPolarity, i32 %TIM_ICFilter) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  store i32 %TIM_ICFilter, i32* %r2.global-to-local, align 4
  store i32 %TIM_ICPolarity, i32* %r3.global-to-local, align 4
  store i32 %TIM_ICFilter, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  %v1_8006bde = add i32 %TIMx, 32
  %v2_8006bde = inttoptr i32 %v1_8006bde to i32*
  %v3_8006bde = load i32, i32* %v2_8006bde, align 4
  store i32 %v3_8006bde, i32* %r2.global-to-local, align 4
  %v3_8006be0 = load i32, i32* %v2_8006bde, align 4
  %v3_8006be2 = and i32 %v3_8006be0, -2
  store i32 %v3_8006be2, i32* %v2_8006bde, align 4
  %v1_8006be8 = add i32 %TIMx, 24
  %v2_8006be8 = inttoptr i32 %v1_8006be8 to i32*
  %v3_8006be8 = load i32, i32* %v2_8006be8, align 4
  %v3_8006bee = and i32 %v3_8006be8, -241
  %v0_8006bf2 = load i32, i32* %r4.global-to-local, align 4
  %v3_8006bf2 = mul i32 %v0_8006bf2, 16
  %v2_8006bf4 = or i32 %v3_8006bf2, %v3_8006bee
  %v0_8006bf8 = load i32, i32* %r2.global-to-local, align 4
  %v3_8006bfa = and i32 %v0_8006bf8, -11
  %v1_8006c00 = load i32, i32* %r3.global-to-local, align 4
  %v2_8006c00 = or i32 %v1_8006c00, %v3_8006bfa
  store i32 %v2_8006c00, i32* %r2.global-to-local, align 4
  store i32 %v2_8006bf4, i32* %v2_8006be8, align 4
  %v0_8006c06 = load i32, i32* %r2.global-to-local, align 4
  store i32 %v0_8006c06, i32* %v2_8006bde, align 4
  ret void

; uselistorder directives
  uselistorder i32* %r2.global-to-local, { 1, 2, 3, 4, 5, 0 }
  uselistorder i32 -2, { 4, 5, 1, 0, 6, 7, 8, 9, 10, 11, 2, 3, 12 }
  uselistorder i32 %TIMx, { 1, 0 }
}

define void @TIM_TI2_ConfigInputStage(i32 %TIMx, i32 %TIM_ICPolarity, i32 %TIM_ICFilter) local_unnamed_addr {
entry:
  %r2.global-to-local = alloca i32, align 4
  %r3.global-to-local = alloca i32, align 4
  %r4.global-to-local = alloca i32, align 4
  store i32 %TIM_ICFilter, i32* %r2.global-to-local, align 4
  store i32 %TIM_ICPolarity, i32* %r3.global-to-local, align 4
  store i32 %TIM_ICFilter, i32* %r4.global-to-local, align 4
  store i32 0, i32* %r2.global-to-local, align 4
  %v1_8006c14 = add i32 %TIMx, 32
  %v2_8006c14 = inttoptr i32 %v1_8006c14 to i32*
  %v3_8006c14 = load i32, i32* %v2_8006c14, align 4
  %v3_8006c18 = and i32 %v3_8006c14, -17
  store i32 %v3_8006c18, i32* %v2_8006c14, align 4
  %v1_8006c1c = add i32 %TIMx, 24
  %v2_8006c1c = inttoptr i32 %v1_8006c1c to i32*
  %v3_8006c1c = load i32, i32* %v2_8006c1c, align 4
  %v3_8006c26 = and i32 %v3_8006c1c, -61441
  %v0_8006c2a = load i32, i32* %r4.global-to-local, align 4
  %v3_8006c2a = mul i32 %v0_8006c2a, 4096
  %v2_8006c2c = or i32 %v3_8006c2a, %v3_8006c26
  %v3_8006c32 = and i32 %v3_8006c14, -177
  %v0_8006c36 = load i32, i32* %r3.global-to-local, align 4
  %v3_8006c36 = mul i32 %v0_8006c36, 16
  %v2_8006c38 = or i32 %v3_8006c36, %v3_8006c32
  store i32 %v2_8006c38, i32* %r2.global-to-local, align 4
  store i32 %v2_8006c2c, i32* %v2_8006c1c, align 4
  %v0_8006c3c = load i32, i32* %r2.global-to-local, align 4
  store i32 %v0_8006c3c, i32* %v2_8006c14, align 4
  ret void

; uselistorder directives
  uselistorder i32* %r2.global-to-local, { 1, 2, 3, 0 }
  uselistorder i32 4096, { 0, 1, 3, 4, 2 }
  uselistorder i32 24, { 7, 8, 2, 3, 4, 5, 6, 0, 1, 9, 10, 11, 12, 13, 14, 27, 28, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 29, 30, 31 }
  uselistorder i32 %TIMx, { 1, 0 }
}

define void @WriteNewNodeId(i32 %nodeid) local_unnamed_addr {
entry:
  %PAGEError_-12 = alloca i32, align 4
  %EraseInitStruct_-24 = alloca %anon_struct_104, align 8
  %v4_8006c40 = getelementptr inbounds %anon_struct_104, %anon_struct_104* %EraseInitStruct_-24, i32 0, i32 0
  store i32 %nodeid, i32* @r4, align 4
  store i32 0, i32* %PAGEError_-12, align 4
  store i32 0, i32* %v4_8006c40, align 8
  %v1_8006c52 = call i32 @HAL_FLASH_Unlock()
  store i32 52, i32* inttoptr (i32 1073881100 to i32*), align 4
  %v5_8006c60 = call i32 @HAL_FLASHEx_Erase(%anon_struct_104* nonnull %EraseInitStruct_-24, i32* nonnull %PAGEError_-12)
  %v3_8006c64 = icmp eq i32 %v5_8006c60, 0
  br i1 %v3_8006c64, label %dec_label_pc_8006c70, label %dec_label_pc_8006c68

dec_label_pc_8006c68:                             ; preds = %entry
  %v6_8006c60 = inttoptr i32 %v5_8006c60 to i8*
  call void @_Error_Handler(i8* %v6_8006c60, i32 0)
  br label %dec_label_pc_8006c70

dec_label_pc_8006c70:                             ; preds = %entry, %dec_label_pc_8006c68
  %v0_8006c70 = load i32, i32* @r4, align 4
  store i32 0, i32* @r3, align 4
  %v4_8006c78 = sext i32 %v0_8006c70 to i64
  %v5_8006c78 = call i32 @HAL_FLASH_Program(i32 2, i32 ptrtoint (i32* @nodeid to i32), i64 %v4_8006c78)
  %v1_8006c7c = call i32 @HAL_FLASH_Lock()
  ret void

; uselistorder directives
  uselistorder i32 %v5_8006c60, { 1, 0 }
  uselistorder i32* inttoptr (i32 1073881100 to i32*), { 1, 2, 3, 4, 5, 6, 0, 7, 8, 9 }
  uselistorder label %dec_label_pc_8006c70, { 1, 0 }
}

define void @WriteNumbertoLeds(i8 %n) local_unnamed_addr {
entry:
  %tmp = sext i8 %n to i32
  %v3_8006c92 = urem i32 %tmp, 2
  %v4_8006c92 = icmp eq i32 %v3_8006c92, 0
  br i1 %v4_8006c92, label %dec_label_pc_8006ca0, label %dec_label_pc_8006c98

dec_label_pc_8006c98:                             ; preds = %entry
  store i32 1, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006ca6

dec_label_pc_8006ca0:                             ; preds = %entry
  store i32 1, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006ca6

dec_label_pc_8006ca6:                             ; preds = %dec_label_pc_8006c98, %dec_label_pc_8006ca0
  %v2_8006ca81 = zext i8 %n to i32
  %v3_8006ca8 = and i32 %v2_8006ca81, 2
  %v5_8006ca8 = icmp eq i32 %v3_8006ca8, 0
  br i1 %v5_8006ca8, label %dec_label_pc_8006cb6, label %dec_label_pc_8006cae

dec_label_pc_8006cae:                             ; preds = %dec_label_pc_8006ca6
  store i32 2, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006cbc

dec_label_pc_8006cb6:                             ; preds = %dec_label_pc_8006ca6
  store i32 2, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006cbc

dec_label_pc_8006cbc:                             ; preds = %dec_label_pc_8006cae, %dec_label_pc_8006cb6
  %v3_8006cbe = and i32 %v2_8006ca81, 4
  %v5_8006cbe = icmp eq i32 %v3_8006cbe, 0
  br i1 %v5_8006cbe, label %dec_label_pc_8006ccc, label %dec_label_pc_8006cc4

dec_label_pc_8006cc4:                             ; preds = %dec_label_pc_8006cbc
  store i32 8, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006cd2

dec_label_pc_8006ccc:                             ; preds = %dec_label_pc_8006cbc
  store i32 8, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006cd2

dec_label_pc_8006cd2:                             ; preds = %dec_label_pc_8006cc4, %dec_label_pc_8006ccc
  %v3_8006cd4 = and i32 %v2_8006ca81, 8
  %v5_8006cd4 = icmp eq i32 %v3_8006cd4, 0
  br i1 %v5_8006cd4, label %dec_label_pc_8006ce2, label %dec_label_pc_8006cda

dec_label_pc_8006cda:                             ; preds = %dec_label_pc_8006cd2
  store i32 16, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006ce8

dec_label_pc_8006ce2:                             ; preds = %dec_label_pc_8006cd2
  store i32 16, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006ce8

dec_label_pc_8006ce8:                             ; preds = %dec_label_pc_8006cda, %dec_label_pc_8006ce2
  %v3_8006cea = and i32 %v2_8006ca81, 16
  %v5_8006cea = icmp eq i32 %v3_8006cea, 0
  br i1 %v5_8006cea, label %dec_label_pc_8006cf8, label %dec_label_pc_8006cf0

dec_label_pc_8006cf0:                             ; preds = %dec_label_pc_8006ce8
  store i32 32, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006cfe

dec_label_pc_8006cf8:                             ; preds = %dec_label_pc_8006ce8
  store i32 32, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006cfe

dec_label_pc_8006cfe:                             ; preds = %dec_label_pc_8006cf0, %dec_label_pc_8006cf8
  %v3_8006d00 = and i32 %v2_8006ca81, 32
  %v5_8006d00 = icmp eq i32 %v3_8006d00, 0
  br i1 %v5_8006d00, label %dec_label_pc_8006d0e, label %dec_label_pc_8006d06

dec_label_pc_8006d06:                             ; preds = %dec_label_pc_8006cfe
  store i32 64, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006d14

dec_label_pc_8006d0e:                             ; preds = %dec_label_pc_8006cfe
  store i32 64, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006d14

dec_label_pc_8006d14:                             ; preds = %dec_label_pc_8006d06, %dec_label_pc_8006d0e
  %v3_8006d16 = and i32 %v2_8006ca81, 64
  %v5_8006d16 = icmp eq i32 %v3_8006d16, 0
  br i1 %v5_8006d16, label %dec_label_pc_8006d24, label %dec_label_pc_8006d1c

dec_label_pc_8006d1c:                             ; preds = %dec_label_pc_8006d14
  store i32 128, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006d2a

dec_label_pc_8006d24:                             ; preds = %dec_label_pc_8006d14
  store i32 128, i32* inttoptr (i32 1207960616 to i32*), align 8
  br label %dec_label_pc_8006d2a

dec_label_pc_8006d2a:                             ; preds = %dec_label_pc_8006d1c, %dec_label_pc_8006d24
  ret void

; uselistorder directives
  uselistorder i32 64, { 5, 4, 6, 21, 0, 1, 2, 3, 22, 7, 8, 9, 10, 11, 27, 12, 28, 13, 14, 15, 16, 30, 23, 24, 25, 26, 17, 18, 29, 31, 19, 20 }
  uselistorder i32 32, { 8, 7, 9, 26, 27, 22, 23, 24, 25, 10, 5, 28, 29, 30, 3, 4, 31, 0, 1, 32, 39, 45, 11, 12, 13, 33, 14, 40, 41, 42, 15, 16, 34, 35, 17, 18, 36, 37, 38, 2, 19, 43, 20, 44, 21, 6 }
  uselistorder label %dec_label_pc_8006d2a, { 1, 0 }
  uselistorder label %dec_label_pc_8006d14, { 1, 0 }
  uselistorder label %dec_label_pc_8006cfe, { 1, 0 }
  uselistorder label %dec_label_pc_8006ce8, { 1, 0 }
  uselistorder label %dec_label_pc_8006cd2, { 1, 0 }
  uselistorder label %dec_label_pc_8006cbc, { 1, 0 }
  uselistorder label %dec_label_pc_8006ca6, { 1, 0 }
}

define void @_Error_Handler(i8* %file, i32 %line) local_unnamed_addr {
entry:
  br label %dec_label_pc_8006db4

dec_label_pc_8006db4:                             ; preds = %dec_label_pc_8006db4, %entry
  store i32 128, i32* inttoptr (i32 1207960616 to i32*), align 8
  %v0_8006d56 = call i32 @__ARM_common_switch8()
  store i32 1, i32* inttoptr (i32 1207960600 to i32*), align 8
  br label %dec_label_pc_8006db4

; uselistorder directives
  uselistorder i32 128, { 2, 3, 4, 5, 11, 6, 7, 8, 13, 9, 12, 1, 0, 10 }
}

define i32 @__ARM_common_switch8() local_unnamed_addr {
entry:
  %v3_8006dc0 = load i32, i32* @r4, align 4
  %v2_8006dc6 = load i8, i8* inttoptr (i32 -1 to i8*), align 1
  %v3_8006dc6 = zext i8 %v2_8006dc6 to i32
  %v0_8006dca = load i32, i32* @r3, align 4
  %v3_8006dca = icmp ult i32 %v0_8006dca, %v3_8006dc6
  br i1 %v3_8006dca, label %dec_label_pc_8006dd8, label %dec_label_pc_8006dce

dec_label_pc_8006dce:                             ; preds = %entry, %dec_label_pc_8006dd8
  %v1_8006dce = phi i32 [ %v3_8006dc6, %entry ], [ %.0, %dec_label_pc_8006dd8 ]
  %v0_8006dd2 = phi i32 [ 0, %entry ], [ %v0_8006dce.pre, %dec_label_pc_8006dd8 ]
  %v2_8006dce = add i32 %v0_8006dd2, %v1_8006dce
  %v3_8006dce = inttoptr i32 %v2_8006dce to i8*
  %v4_8006dce = load i8, i8* %v3_8006dce, align 1
  %v6_8006dce = zext i8 %v4_8006dce to i32
  %v2_8006dd0 = mul nuw nsw i32 %v6_8006dce, 2
  %v2_8006dd2 = add i32 %v2_8006dd0, %v0_8006dd2
  call void @__pseudo_branch(i32 %v2_8006dd2)
  br label %dec_label_pc_8006dd8

dec_label_pc_8006dd8:                             ; preds = %entry, %dec_label_pc_8006dce
  %v0_8006dce.pre = phi i32 [ %v3_8006dc0, %dec_label_pc_8006dce ], [ 0, %entry ]
  %.0 = phi i32 [ %v2_8006dd2, %dec_label_pc_8006dce ], [ undef, %entry ]
  br label %dec_label_pc_8006dce

; uselistorder directives
  uselistorder i32 undef, { 1, 0 }
  uselistorder label %dec_label_pc_8006dd8, { 1, 0 }
  uselistorder label %dec_label_pc_8006dce, { 1, 0 }
}

declare void @__set_PRIMASK(i32) local_unnamed_addr

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
entry:
  store i32 %argc, i32* @r3, align 4
  store i32 0, i32* @r4, align 4
  %v2_8006e36 = load i32, i32* inttoptr (i32 1073881088 to i32*), align 8192
  %v2_8006e3a = or i32 %v2_8006e36, 16
  store i32 %v2_8006e3a, i32* inttoptr (i32 1073881088 to i32*), align 8192
  call void @SystemClock_Config()
  call void @MX_GPIO_Init()
  call void @MX_DMA_Init()
  call void @MX_ADC_Init()
  call void @MX_I2C1_Init()
  call void @MX_TIM1_Init()
  store i32 256, i32* inttoptr (i32 1207960616 to i32*), align 8
  store i32 16384, i32* inttoptr (i32 -536813312 to i32*), align 256
  %v2_8006e6e = load i32, i32* inttoptr (i32 1073818624 to i32*), align 1024
  %v2_8006e72 = or i32 %v2_8006e6e, 1
  store i32 %v2_8006e72, i32* inttoptr (i32 1073818624 to i32*), align 1024
  %v3_8006e7a = load i32, i32* inttoptr (i32 1073818636 to i32*), align 4
  %v2_8006e7e = or i32 %v3_8006e7a, 2
  store i32 %v2_8006e7e, i32* inttoptr (i32 1073818636 to i32*), align 4
  %v4_8006e8a = call i32 @ADC_Start_DMA(i32 536871960, i32* inttoptr (i32 536872312 to i32*), i32 10)
  %v0_8006f5c6 = load i32, i32* @r4, align 4
  %v7_8006f5c8 = icmp eq i32 %v0_8006f5c6, 2
  br i1 %v7_8006f5c8, label %dec_label_pc_8006f60, label %dec_label_pc_8006e90

dec_label_pc_8006e90:                             ; preds = %entry, %dec_label_pc_8006f5c.backedge
  %v2_8006e94 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8006e96 = inttoptr i32 %v2_8006e94 to i32*
  %v2_8006e96 = load i32, i32* %v1_8006e96, align 4
  %v3_8006e98 = add i32 %v2_8006e96, 18
  %v4_8006e98 = inttoptr i32 %v3_8006e98 to i8*
  store i8 0, i8* %v4_8006e98, align 1
  %v2_8006e9c = load i8, i8* bitcast (i32* @nodeid to i8*), align 4
  %v6_8006ea2 = call i32 @CO_init(i32 0, i8 %v2_8006e9c, i16 100)
  %v2_8006eaa = icmp eq i32 %v6_8006ea2, 0
  br i1 %v2_8006eaa, label %dec_label_pc_8006ed4.lr.ph.lr.ph, label %dec_label_pc_8006eae

dec_label_pc_8006eae:                             ; preds = %dec_label_pc_8006e90
  %v2_8006eb2 = inttoptr i32 %v6_8006ea2 to i8*
  call void @_Error_Handler(i8* %v2_8006eb2, i32 0)
  br label %dec_label_pc_8006ed4.lr.ph.lr.ph

dec_label_pc_8006ed4.lr.ph.lr.ph:                 ; preds = %dec_label_pc_8006eae, %dec_label_pc_8006e90
  %v2_8006eb8 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8006eba = add i32 %v2_8006eb8, 20
  %v2_8006eba = inttoptr i32 %v1_8006eba to i32*
  %v3_8006eba = load i32, i32* %v2_8006eba, align 4
  call void @CO_SYNC_initCallback(i32 %v3_8006eba, void (i8)* bitcast (void (i8)** @global_var_80007d9.263 to void (i8)*))
  %v2_8006ec4 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8006ec6 = inttoptr i32 %v2_8006ec4 to i32*
  %v2_8006ec6 = load i32, i32* %v1_8006ec6, align 4
  call void @CO_CANsetNormalMode(i32 %v2_8006ec6)
  store i32 0, i32* @r4, align 4
  %v2_8006ed0 = load i16, i16* inttoptr (i32 536870920 to i16*), align 8
  %v3_8006ed0 = zext i16 %v2_8006ed0 to i32
  br label %dec_label_pc_8006ed4

dec_label_pc_8006ed4:                             ; preds = %dec_label_pc_8006f4athread-pre-split.loopexit.dec_label_pc_8006ed4_crit_edge, %dec_label_pc_8006ed4.lr.ph.lr.ph
  %v1_8006ed8 = phi i32 [ %v1_8006ed8.pre, %dec_label_pc_8006f4athread-pre-split.loopexit.dec_label_pc_8006ed4_crit_edge ], [ %v3_8006ed0, %dec_label_pc_8006ed4.lr.ph.lr.ph ]
  %v2_8006ed6 = load i16, i16* inttoptr (i32 536870920 to i16*), align 8
  %v3_8006ed6 = zext i16 %v2_8006ed6 to i32
  store i32 %v3_8006ed6, i32* @r6, align 4
  %v2_8006ed8 = sub i32 %v3_8006ed6, %v1_8006ed8
  %v1_8006eda = urem i32 %v2_8006ed8, 65536
  store i32 %v1_8006eda, i32* @r7, align 4
  store i32 %v3_8006ed6, i32* @r5, align 4
  %v1_8006ee0 = trunc i32 %v2_8006ed8 to i16
  %v2_8006ee4 = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v7_8006ee6 = call i32 @CO_process(i32 %v2_8006ee4, i16 %v1_8006ee0, i16* null)
  store i32 %v7_8006ee6, i32* @r4, align 4
  %v2_8006eee = load i32, i32* inttoptr (i32 536871904 to i32*), align 32
  %v1_8006ef0 = add i32 %v2_8006eee, 16
  %v2_8006ef0 = inttoptr i32 %v1_8006ef0 to i32*
  %v3_8006ef0 = load i32, i32* %v2_8006ef0, align 4
  %v2_8006ef4 = add i32 %v3_8006ef0, 7
  %v3_8006ef4 = inttoptr i32 %v2_8006ef4 to i8*
  %v4_8006ef4 = load i8, i8* %v3_8006ef4, align 1
  %tmp20 = icmp sgt i8 %v4_8006ef4, -1
  %. = zext i1 %tmp20 to i32
  call void @HAL_GPIO_WritePin(i32 1207960576, i16 256, i32 %.)
  %v2_8006f12 = load i32, i32* inttoptr (i32 536870928 to i32*), align 16
  %v2_8006f14 = icmp eq i32 %v2_8006f12, 0
  br i1 %v2_8006f14, label %dec_label_pc_8006f3e, label %dec_label_pc_8006f18

dec_label_pc_8006f18:                             ; preds = %dec_label_pc_8006ed4
  store i32 0, i32* inttoptr (i32 536870928 to i32*), align 16
  %v2_8006f20 = load i32, i32* inttoptr (i32 536870924 to i32*), align 4
  %v1_8006f22 = call i32 @__asm_sxth.i32(i32 %v2_8006f20)
  %v2_8006f22 = trunc i32 %v1_8006f22 to i16
  store i16 %v2_8006f22, i16* inttoptr (i32 536871036 to i16*), align 4
  %v2_8006f2a = load i32, i32* inttoptr (i32 536870924 to i32*), align 4
  %v1_8006f2c = call i32 @__asm_sxth.i32(i32 %v2_8006f2a)
  %v2_8006f2c = trunc i32 %v1_8006f2c to i16
  store i16 %v2_8006f2c, i16* inttoptr (i32 536871168 to i16*), align 256
  %v2_8006f36 = load i32, i32* inttoptr (i32 536870940 to i32*), align 4
  %v1_8006f38 = call i32 @__asm_sxth.i32(i32 %v2_8006f36)
  %v2_8006f38 = trunc i32 %v1_8006f38 to i16
  store i16 %v2_8006f38, i16* inttoptr (i32 536871038 to i16*), align 2
  br label %dec_label_pc_8006f3e

dec_label_pc_8006f3e:                             ; preds = %dec_label_pc_8006ed4, %dec_label_pc_8006f18
  %v2_8006f40 = load i32, i32* inttoptr (i32 536870944 to i32*), align 32
  %v7_8006f42 = icmp eq i32 %v2_8006f40, 1
  br i1 %v7_8006f42, label %dec_label_pc_8006f4a.dec_label_pc_8006f4e_crit_edge, label %dec_label_pc_8006f4athread-pre-split.loopexit

dec_label_pc_8006f4athread-pre-split.loopexit:    ; preds = %dec_label_pc_8006f3e
  %v0_8006f4a.pr = load i32, i32* @r4, align 4
  %v2_8006f4a3 = icmp eq i32 %v0_8006f4a.pr, 0
  br i1 %v2_8006f4a3, label %dec_label_pc_8006f4athread-pre-split.loopexit.dec_label_pc_8006ed4_crit_edge, label %dec_label_pc_8006f4e

dec_label_pc_8006f4athread-pre-split.loopexit.dec_label_pc_8006ed4_crit_edge: ; preds = %dec_label_pc_8006f4athread-pre-split.loopexit
  %v1_8006ed8.pre = load i32, i32* @r5, align 4
  br label %dec_label_pc_8006ed4

dec_label_pc_8006f4a.dec_label_pc_8006f4e_crit_edge: ; preds = %dec_label_pc_8006f3e
  store i32 1, i32* @r4, align 4
  br label %dec_label_pc_8006f4e

dec_label_pc_8006f4e:                             ; preds = %dec_label_pc_8006f4athread-pre-split.loopexit, %dec_label_pc_8006f4a.dec_label_pc_8006f4e_crit_edge
  %v0_8006f5c11 = phi i32 [ 1, %dec_label_pc_8006f4a.dec_label_pc_8006f4e_crit_edge ], [ %v0_8006f4a.pr, %dec_label_pc_8006f4athread-pre-split.loopexit ]
  %v2_8006f50 = load i32, i32* inttoptr (i32 536870944 to i32*), align 32
  %v2_8006f52 = icmp eq i32 %v2_8006f50, 0
  br i1 %v2_8006f52, label %dec_label_pc_8006f5c.backedge, label %dec_label_pc_8006f56

dec_label_pc_8006f5c.backedge:                    ; preds = %dec_label_pc_8006f4e, %dec_label_pc_8006f56
  %v0_8006f5c = phi i32 [ %v0_8006f5c11, %dec_label_pc_8006f4e ], [ %v0_8006f5c.pre, %dec_label_pc_8006f56 ]
  %v7_8006f5c = icmp eq i32 %v0_8006f5c, 2
  br i1 %v7_8006f5c, label %dec_label_pc_8006f60, label %dec_label_pc_8006e90

dec_label_pc_8006f56:                             ; preds = %dec_label_pc_8006f4e
  call void @usermenu()
  %v0_8006f5c.pre = load i32, i32* @r4, align 4
  br label %dec_label_pc_8006f5c.backedge

dec_label_pc_8006f60:                             ; preds = %dec_label_pc_8006f5c.backedge, %entry
  call void @CO_delete(i32 0)
  ret i32 0

; uselistorder directives
  uselistorder i32 %v2_8006ed8, { 1, 0 }
  uselistorder void (i32)* @CO_delete, { 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder void (i32, i16, i32)* @HAL_GPIO_WritePin, { 1, 0 }
  uselistorder i16 256, { 2, 0, 1 }
  uselistorder i8 -1, { 2, 9, 3, 4, 5, 6, 7, 8, 10, 0, 1 }
  uselistorder i32 7, { 1, 2, 3, 0, 4, 5, 7, 8, 9, 10, 6, 11, 12, 13, 14 }
  uselistorder i32* @r7, { 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 34, 4, 35, 1, 36, 37, 38, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 5, 39, 2, 32, 33, 40, 41, 42, 43, 3, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 0, 67, 68, 69 }
  uselistorder i32 65536, { 1, 41, 42, 43, 44, 40, 45, 46, 47, 48, 39, 49, 38, 2, 3, 4, 5, 50, 6, 7, 8, 9, 10, 11, 13, 12, 15, 14, 17, 16, 18, 19, 21, 20, 0, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
  uselistorder i32* @r6, { 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 4, 132, 2, 0, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 72, 73, 74, 75, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 76, 77, 78, 71, 79, 80, 81, 82, 83, 84, 111, 112, 113, 114, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 98, 1, 99, 100, 97, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 133, 3, 134, 135, 136, 137, 138, 139, 140 }
  uselistorder i32 20, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 38, 39, 13, 14, 15, 16, 17, 18, 19, 20, 21, 0, 22, 23, 27, 24, 25, 28, 26, 29, 30, 31, 32, 33, 34, 35, 36, 43, 44, 37, 40, 41, 42, 45 }
  uselistorder void (i8*, i32)* @_Error_Handler, { 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i16 100, { 1, 0, 2 }
  uselistorder i32 18, { 1, 0, 6, 7, 2, 3, 4, 5, 8 }
  uselistorder i32* inttoptr (i32 536871904 to i32*), { 0, 1, 2, 3, 4, 16, 17, 13, 14, 15, 10, 11, 12, 18, 19, 20, 21, 22, 23, 24, 9, 8, 25, 26, 27, 7, 6, 28, 29, 30, 31, 5, 32, 33 }
  uselistorder i32 536871960, { 1, 2, 3, 4, 5, 6, 0, 7 }
  uselistorder i32* inttoptr (i32 1073818636 to i32*), { 1, 0 }
  uselistorder i32 16384, { 2, 3, 0, 1 }
  uselistorder i32* inttoptr (i32 1207960616 to i32*), { 1, 0, 8, 7, 6, 5, 4, 3, 2 }
  uselistorder i32 16, { 44, 25, 27, 26, 28, 0, 1, 2, 3, 4, 5, 45, 6, 29, 22, 46, 24, 47, 48, 7, 8, 10, 9, 49, 50, 51, 52, 11, 98, 12, 53, 99, 30, 100, 101, 31, 54, 32, 55, 56, 57, 58, 33, 59, 60, 61, 62, 63, 64, 34, 35, 36, 105, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 23, 79, 80, 81, 37, 38, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 39, 93, 94, 95, 96, 13, 97, 40, 102, 14, 103, 15, 16, 17, 18, 19, 104, 20, 21, 41, 42, 43 }
  uselistorder i32* @r3, { 1, 18, 3, 19, 20, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 21, 22, 23, 24, 17, 0, 25, 2 }
  uselistorder label %dec_label_pc_8006f5c.backedge, { 1, 0 }
  uselistorder label %dec_label_pc_8006f4e, { 1, 0 }
  uselistorder label %dec_label_pc_8006f3e, { 1, 0 }
  uselistorder label %dec_label_pc_8006e90, { 1, 0 }
}

define void @usermenu() local_unnamed_addr {
entry:
  %v3_8007154 = load i32, i32* @r4, align 4
  %v6_8007154 = load i32, i32* @r5, align 4
  %v2_8007158 = load i8, i8* bitcast (i32* @nodeid to i8*), align 4
  %v3_8007158 = zext i8 %v2_8007158 to i32
  store i32 %v3_8007158, i32* @r4, align 4
  store i32 %v3_8007158, i32* @r5, align 4
  call void @WriteNumbertoLeds(i8 %v2_8007158)
  %v2_80071a81 = load i32, i32* inttoptr (i32 536870944 to i32*), align 32
  %v7_80071aa3 = icmp eq i32 %v2_80071a81, 2
  br i1 %v7_80071aa3, label %dec_label_pc_80071ae, label %dec_label_pc_8007164

dec_label_pc_8007164:                             ; preds = %entry, %dec_label_pc_80071a6.loopexit
  %v3_8007168 = load i32, i32* inttoptr (i32 1207959568 to i32*), align 16
  %v2_800716c = and i32 %v3_8007168, 4
  %v4_800716c = icmp eq i32 %v2_800716c, 0
  %v0_8007190.pre.pre = load i32, i32* @r4, align 4
  %v7_8007174 = icmp slt i32 %v0_8007190.pre.pre, 3
  %or.cond10 = or i1 %v4_800716c, %v7_8007174
  br i1 %or.cond10, label %dec_label_pc_800717a, label %dec_label_pc_8007176

dec_label_pc_8007176:                             ; preds = %dec_label_pc_8007164
  %v1_8007176 = add i32 %v0_8007190.pre.pre, -1
  %v1_8007178 = urem i32 %v1_8007176, 256
  store i32 %v1_8007178, i32* @r4, align 4
  br label %dec_label_pc_800717a

dec_label_pc_800717a:                             ; preds = %dec_label_pc_8007164, %dec_label_pc_8007176
  %v0_8007190.pre = phi i32 [ %v1_8007178, %dec_label_pc_8007176 ], [ %v0_8007190.pre.pre, %dec_label_pc_8007164 ]
  %v3_800717e = load i32, i32* inttoptr (i32 1207959568 to i32*), align 16
  %v2_8007182 = and i32 %v3_800717e, 8
  %v4_8007182 = icmp ne i32 %v2_8007182, 0
  %v6_800718a = icmp slt i32 %v0_8007190.pre, 126
  %or.cond = and i1 %v4_8007182, %v6_800718a
  %extract.t11 = trunc i32 %v0_8007190.pre to i8
  br i1 %or.cond, label %dec_label_pc_800718c, label %dec_label_pc_8007190

dec_label_pc_800718c:                             ; preds = %dec_label_pc_800717a
  %v1_800718c = add i32 %v0_8007190.pre, 1
  %v1_800718e = urem i32 %v1_800718c, 256
  store i32 %v1_800718e, i32* @r4, align 4
  %extract.t = trunc i32 %v1_800718e to i8
  br label %dec_label_pc_8007190

dec_label_pc_8007190:                             ; preds = %dec_label_pc_800717a, %dec_label_pc_800718c
  %v0_8007190.off0 = phi i8 [ %extract.t, %dec_label_pc_800718c ], [ %extract.t11, %dec_label_pc_800717a ]
  call void @WriteNumbertoLeds(i8 %v0_8007190.off0)
  store i32 250, i32* inttoptr (i32 536870948 to i32*), align 4
  br label %dec_label_pc_800719e

dec_label_pc_800719e:                             ; preds = %dec_label_pc_800719e, %dec_label_pc_8007190
  %v2_80071a0 = load i32, i32* inttoptr (i32 536870948 to i32*), align 4
  %v2_80071a2 = icmp eq i32 %v2_80071a0, 0
  br i1 %v2_80071a2, label %dec_label_pc_80071a6.loopexit, label %dec_label_pc_800719e

dec_label_pc_80071a6.loopexit:                    ; preds = %dec_label_pc_800719e
  %v2_80071a8 = load i32, i32* inttoptr (i32 536870944 to i32*), align 32
  %v7_80071aa = icmp eq i32 %v2_80071a8, 2
  br i1 %v7_80071aa, label %dec_label_pc_80071ae, label %dec_label_pc_8007164

dec_label_pc_80071ae:                             ; preds = %dec_label_pc_80071a6.loopexit, %entry
  %v0_80071ae = load i32, i32* @r5, align 4
  %v1_80071ae = load i32, i32* @r4, align 4
  %v9_80071ae = icmp eq i32 %v0_80071ae, %v1_80071ae
  br i1 %v9_80071ae, label %dec_label_pc_80071b8, label %dec_label_pc_80071b2

dec_label_pc_80071b2:                             ; preds = %dec_label_pc_80071ae
  call void @WriteNewNodeId(i32 %v1_80071ae)
  br label %dec_label_pc_80071b8

dec_label_pc_80071b8:                             ; preds = %dec_label_pc_80071ae, %dec_label_pc_80071b2
  call void @WriteNumbertoLeds(i8 0)
  store i32 0, i32* inttoptr (i32 536870944 to i32*), align 32
  store i32 %v3_8007154, i32* @r4, align 4
  store i32 %v6_8007154, i32* @r5, align 4
  ret void

; uselistorder directives
  uselistorder i32 %v0_8007190.pre, { 1, 0, 2 }
  uselistorder i32 %v1_8007178, { 1, 0 }
  uselistorder i32 %v0_8007190.pre.pre, { 0, 2, 1 }
  uselistorder i8 0, { 60, 20, 61, 62, 63, 64, 65, 66, 67, 68, 0, 1, 2, 69, 70, 71, 72, 73, 74, 75, 76, 77, 79, 78, 80, 81, 82, 83, 84, 55, 9, 10, 11, 21, 22, 12, 23, 85, 86, 87, 13, 88, 89, 90, 24, 56, 91, 92, 93, 48, 49, 50, 25, 26, 27, 28, 29, 94, 95, 96, 97, 98, 99, 46, 47, 100, 101, 30, 102, 103, 104, 105, 14, 7, 8, 106, 107, 32, 31, 33, 34, 109, 108, 110, 111, 57, 112, 35, 15, 113, 116, 117, 36, 114, 115, 118, 119, 51, 52, 120, 121, 122, 123, 124, 125, 126, 127, 37, 137, 138, 139, 133, 134, 135, 136, 140, 141, 142, 128, 129, 130, 131, 132, 143, 5, 144, 145, 146, 147, 53, 58, 38, 148, 149, 3, 6, 150, 4, 151, 152, 153, 154, 155, 156, 16, 17, 18, 39, 19, 157, 40, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 54, 59, 41, 42, 43, 45, 168, 169, 170, 171, 172, 173, 174, 175, 176, 44, 177, 178, 179 }
  uselistorder i32 1, { 216, 108, 217, 218, 135, 136, 137, 138, 183, 182, 45, 46, 44, 61, 62, 60, 22, 23, 29, 28, 82, 81, 7, 6, 139, 140, 186, 185, 184, 190, 189, 188, 187, 141, 191, 0, 142, 1, 143, 144, 145, 192, 128, 129, 27, 30, 130, 219, 220, 221, 147, 222, 223, 148, 146, 224, 225, 102, 103, 109, 104, 24, 25, 26, 194, 193, 226, 227, 110, 111, 112, 113, 114, 115, 228, 229, 56, 54, 53, 55, 52, 149, 150, 195, 151, 230, 131, 152, 69, 153, 84, 156, 281, 2, 116, 154, 155, 282, 73, 75, 74, 296, 117, 157, 158, 65, 68, 66, 67, 132, 231, 125, 95, 70, 232, 233, 51, 159, 58, 59, 133, 57, 196, 283, 284, 285, 286, 287, 288, 289, 290, 160, 291, 118, 119, 76, 77, 134, 83, 292, 293, 3, 161, 4, 5, 197, 47, 163, 234, 164, 235, 236, 162, 237, 238, 239, 240, 96, 97, 98, 90, 91, 241, 165, 242, 166, 243, 78, 79, 80, 120, 19, 18, 167, 92, 168, 124, 63, 244, 297, 298, 86, 87, 299, 300, 301, 94, 11, 169, 245, 246, 126, 247, 248, 249, 127, 250, 72, 170, 200, 199, 198, 171, 181, 203, 202, 201, 257, 258, 206, 205, 204, 15, 251, 252, 41, 40, 39, 42, 43, 99, 253, 254, 100, 93, 255, 10, 256, 88, 89, 207, 64, 259, 260, 211, 210, 209, 208, 261, 172, 101, 36, 37, 107, 279, 48, 49, 50, 262, 263, 38, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 33, 276, 277, 35, 121, 122, 278, 212, 34, 280, 31, 32, 85, 173, 302, 214, 213, 71, 174, 16, 17, 175, 294, 295, 215, 13, 12, 14, 176, 123, 21, 20, 177, 178, 179, 105, 106, 180, 303, 8, 9 }
  uselistorder i32 8, { 33, 35, 34, 36, 40, 41, 42, 43, 44, 45, 56, 0, 1, 29, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 57, 58, 59, 60, 61, 62, 63, 2, 3, 64, 65, 31, 4, 5, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 136, 6, 135, 143, 7, 77, 27, 78, 137, 37, 138, 8, 139, 9, 10, 140, 11, 79, 80, 81, 82, 12, 83, 84, 150, 14, 13, 85, 86, 87, 88, 89, 90, 132, 16, 15, 144, 18, 17, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 111, 112, 102, 30, 19, 20, 107, 21, 108, 109, 103, 104, 22, 105, 106, 110, 23, 128, 129, 130, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 24, 125, 25, 126, 127, 131, 38, 32, 133, 134, 39, 141, 28, 142, 145, 26, 146, 147, 148, 149, 151, 152, 153, 154, 155, 156, 157 }
  uselistorder i32 256, { 1, 2, 32, 3, 4, 5, 6, 7, 33, 30, 34, 35, 36, 31, 37, 38, 8, 9, 10, 11, 0, 12, 13, 14, 15, 16, 17, 19, 20, 18, 21, 22, 23, 24, 25, 26, 27, 28, 29, 39 }
  uselistorder i32 -1, { 48, 47, 2, 1, 37, 49, 3, 34, 7, 8, 9, 10, 11, 12, 5, 6, 13, 4, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 32, 50, 24, 27, 26, 25, 28, 29, 0, 30, 51, 36, 39, 40, 38, 41, 52, 35, 53, 54, 42, 43, 55, 56, 44, 31, 45, 33, 46 }
  uselistorder i32 3, { 0, 40, 26, 10, 11, 8, 9, 7, 6, 4, 5, 2, 3, 12, 13, 14, 15, 31, 32, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 47, 48, 33, 34, 35, 36, 27, 28, 41, 42, 43, 44, 45, 37, 38, 49, 50, 51, 39, 59, 60, 30, 52, 1, 53, 54, 55, 56, 57, 58, 46, 29 }
  uselistorder i32 4, { 42, 43, 55, 56, 57, 58, 59, 2, 3, 60, 61, 62, 68, 44, 54, 30, 63, 64, 65, 66, 67, 69, 70, 71, 72, 73, 74, 75, 0, 34, 76, 77, 78, 79, 35, 80, 81, 82, 83, 84, 85, 86, 87, 88, 4, 141, 5, 6, 142, 7, 157, 8, 9, 36, 89, 90, 91, 143, 144, 145, 146, 45, 147, 148, 149, 150, 151, 152, 153, 92, 41, 93, 10, 11, 94, 95, 96, 12, 97, 46, 47, 48, 165, 166, 167, 13, 98, 120, 99, 37, 14, 100, 38, 15, 101, 102, 103, 104, 16, 105, 39, 17, 40, 18, 106, 19, 137, 158, 20, 114, 32, 107, 108, 109, 49, 50, 110, 111, 21, 115, 1, 112, 113, 33, 31, 117, 116, 118, 119, 134, 121, 122, 51, 123, 29, 124, 125, 126, 127, 128, 22, 129, 28, 130, 131, 132, 23, 133, 135, 136, 52, 138, 24, 25, 139, 140, 154, 155, 156, 159, 160, 161, 162, 163, 164, 53, 168, 169, 26, 27 }
  uselistorder i32 2, { 88, 52, 89, 53, 63, 0, 64, 65, 66, 1, 67, 68, 59, 60, 61, 62, 90, 73, 74, 72, 75, 71, 76, 69, 70, 77, 55, 2, 3, 91, 78, 92, 56, 4, 5, 79, 93, 6, 94, 46, 47, 48, 49, 50, 7, 9, 8, 118, 10, 119, 51, 11, 12, 13, 14, 57, 35, 36, 37, 38, 39, 15, 16, 17, 18, 120, 121, 95, 19, 96, 20, 80, 97, 21, 98, 22, 40, 99, 23, 24, 81, 82, 122, 123, 25, 26, 27, 100, 41, 101, 105, 42, 43, 58, 103, 102, 104, 28, 115, 29, 106, 83, 107, 108, 109, 110, 111, 112, 113, 114, 30, 84, 85, 116, 117, 86, 87, 31, 54, 44, 45, 32, 33, 34 }
  uselistorder i32* inttoptr (i32 536870944 to i32*), { 1, 2, 0, 4, 3 }
  uselistorder void (i8)* @WriteNumbertoLeds, { 2, 1, 0 }
  uselistorder i32 10, { 0, 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 3 }
  uselistorder i32* @r5, { 8, 9, 10, 11, 0, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 174, 175, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 91, 6, 92, 4, 93, 94, 95, 96, 97, 98, 99, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 100, 7, 101, 5, 102, 106, 107, 108, 109, 85, 86, 87, 88, 89, 90, 103, 104, 105, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 1, 123, 124, 125, 126, 127, 128, 2, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 3, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 176, 177, 178, 179 }
  uselistorder i32 0, { 137, 255, 256, 257, 0, 141, 258, 99, 138, 259, 260, 139, 261, 140, 262, 2, 1, 263, 264, 265, 266, 267, 268, 269, 270, 142, 271, 143, 144, 145, 146, 299, 300, 147, 148, 291, 292, 149, 150, 293, 294, 151, 152, 295, 296, 153, 154, 297, 298, 272, 155, 156, 273, 157, 158, 274, 516, 275, 161, 159, 160, 276, 126, 164, 162, 163, 277, 167, 165, 166, 278, 279, 168, 169, 280, 3, 170, 171, 281, 172, 282, 173, 283, 4, 5, 6, 7, 174, 175, 176, 177, 127, 128, 178, 284, 285, 286, 287, 288, 289, 179, 180, 8, 181, 9, 182, 183, 184, 185, 290, 35, 186, 36, 187, 129, 188, 189, 301, 191, 192, 190, 194, 195, 193, 302, 133, 196, 303, 304, 305, 306, 307, 308, 309, 310, 113, 311, 312, 114, 313, 314, 315, 316, 317, 318, 319, 320, 115, 321, 322, 323, 116, 324, 325, 326, 327, 328, 117, 329, 330, 331, 332, 56, 333, 334, 335, 197, 118, 336, 337, 338, 339, 340, 119, 67, 341, 61, 62, 120, 342, 343, 344, 345, 57, 346, 347, 348, 63, 64, 65, 349, 350, 10, 130, 198, 199, 201, 202, 200, 351, 68, 69, 352, 517, 71, 518, 107, 108, 109, 110, 70, 111, 100, 203, 204, 519, 520, 548, 72, 547, 19, 101, 549, 550, 205, 353, 20, 354, 73, 355, 356, 11, 357, 358, 359, 560, 206, 37, 208, 360, 207, 361, 131, 209, 210, 211, 212, 521, 523, 522, 524, 526, 525, 527, 74, 528, 529, 551, 213, 552, 12, 530, 531, 532, 533, 362, 214, 215, 216, 217, 218, 219, 363, 134, 38, 364, 365, 34, 30, 366, 75, 367, 368, 369, 370, 371, 372, 220, 221, 222, 76, 373, 374, 31, 223, 77, 224, 375, 225, 226, 227, 112, 376, 377, 553, 458, 459, 378, 379, 79, 380, 381, 80, 382, 383, 384, 385, 386, 387, 81, 388, 78, 389, 82, 390, 83, 391, 84, 392, 504, 228, 229, 505, 506, 554, 230, 231, 555, 556, 21, 32, 232, 437, 102, 438, 439, 39, 440, 233, 135, 136, 393, 394, 40, 41, 42, 395, 396, 397, 234, 398, 399, 400, 401, 43, 402, 403, 404, 405, 406, 407, 408, 409, 85, 410, 411, 412, 413, 414, 415, 416, 235, 417, 44, 418, 419, 236, 420, 86, 421, 14, 15, 238, 422, 423, 87, 424, 22, 425, 426, 237, 427, 428, 429, 430, 431, 23, 33, 239, 441, 455, 456, 45, 457, 121, 432, 433, 434, 46, 47, 435, 442, 443, 448, 449, 450, 451, 452, 48, 88, 89, 453, 454, 445, 446, 447, 436, 444, 90, 18, 91, 491, 492, 493, 16, 17, 66, 240, 494, 24, 98, 495, 496, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 241, 472, 49, 473, 50, 474, 475, 51, 477, 478, 479, 25, 103, 476, 26, 480, 242, 481, 482, 483, 52, 484, 485, 486, 487, 488, 104, 489, 132, 92, 490, 497, 27, 105, 498, 499, 244, 500, 243, 501, 502, 53, 54, 503, 507, 508, 509, 510, 93, 94, 511, 512, 245, 246, 95, 557, 247, 513, 58, 59, 514, 515, 534, 250, 248, 249, 536, 13, 251, 537, 252, 253, 538, 539, 540, 28, 541, 542, 29, 543, 544, 96, 545, 55, 546, 558, 60, 122, 123, 124, 559, 254, 561, 562, 563, 97, 564, 125, 565, 566, 535, 106, 567, 568, 569, 570, 571, 572, 573, 574 }
  uselistorder i32* @r4, { 36, 37, 38, 39, 0, 40, 41, 1, 42, 35, 43, 44, 33, 45, 182, 46, 47, 48, 49, 2, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 3, 91, 92, 93, 94, 100, 101, 95, 96, 4, 97, 5, 98, 99, 466, 467, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 6, 114, 115, 116, 117, 118, 7, 119, 120, 121, 122, 123, 124, 125, 126, 8, 127, 128, 129, 130, 131, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 468, 469, 470, 506, 507, 471, 474, 472, 473, 475, 476, 477, 478, 479, 480, 481, 484, 482, 483, 485, 486, 9, 487, 488, 508, 509, 510, 511, 512, 513, 144, 145, 146, 147, 148, 149, 150, 10, 151, 152, 11, 153, 154, 12, 155, 156, 13, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 445, 14, 15, 446, 447, 448, 449, 450, 451, 515, 16, 17, 516, 517, 518, 18, 519, 520, 181, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 19, 222, 223, 224, 225, 226, 227, 228, 21, 22, 229, 20, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 23, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 24, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 326, 327, 25, 328, 329, 330, 331, 336, 337, 338, 339, 340, 341, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 332, 333, 334, 335, 428, 429, 430, 431, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 26, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 27, 28, 29, 403, 404, 405, 34, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 30, 31, 32, 420, 421, 422, 423, 424, 425, 426, 427, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 452, 453, 454, 455, 456, 457, 458, 459, 521, 522, 460, 461, 462, 463, 464, 465, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 514, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544 }
  uselistorder label %dec_label_pc_80071b8, { 1, 0 }
  uselistorder label %dec_label_pc_8007190, { 1, 0 }
  uselistorder label %dec_label_pc_800717a, { 1, 0 }
  uselistorder label %dec_label_pc_8007164, { 1, 0 }
}

declare i32 @__asm_sxtb.i32(i32) local_unnamed_addr

declare i32 @__asm_sxth.i32(i32) local_unnamed_addr

declare i32 @__decompiler_undefined_function_0() local_unnamed_addr

declare i16 @__decompiler_undefined_function_1() local_unnamed_addr

declare %anon_struct_29 @__decompiler_undefined_function_2() local_unnamed_addr

declare void (i8*, %anon_struct_31*)* @__decompiler_undefined_function_3() local_unnamed_addr

declare i8* @__decompiler_undefined_function_4() local_unnamed_addr

declare i8 @__decompiler_undefined_function_5() local_unnamed_addr

declare %anon_struct_30 @__decompiler_undefined_function_6() local_unnamed_addr

declare i16* @__decompiler_undefined_function_7() local_unnamed_addr

declare i8** @__decompiler_undefined_function_8() local_unnamed_addr

declare i32* @__decompiler_undefined_function_9() local_unnamed_addr

declare [8 x i8] @__decompiler_undefined_function_10() local_unnamed_addr

declare %anon_struct_107 @__decompiler_undefined_function_11() local_unnamed_addr

declare %anon_struct_107.22 @__decompiler_undefined_function_12() local_unnamed_addr

declare i64 @__decompiler_undefined_function_13() local_unnamed_addr

declare %anon_struct_107.24 @__decompiler_undefined_function_14() local_unnamed_addr

declare [16 x i8] @__decompiler_undefined_function_15() local_unnamed_addr

declare %anon_struct_76 @__decompiler_undefined_function_16() local_unnamed_addr

declare %anon_struct_107.38 @__decompiler_undefined_function_17() local_unnamed_addr

declare %anon_struct_100.42 @__decompiler_undefined_function_18() local_unnamed_addr

declare %anon_struct_89 @__decompiler_undefined_function_19() local_unnamed_addr

declare %anon_struct_99 @__decompiler_undefined_function_20() local_unnamed_addr

declare %anon_struct_93 @__decompiler_undefined_function_21() local_unnamed_addr

declare %anon_struct_100 @__decompiler_undefined_function_22() local_unnamed_addr

declare %anon_struct_103 @__decompiler_undefined_function_23() local_unnamed_addr

declare %anon_struct_108 @__decompiler_undefined_function_24() local_unnamed_addr

declare %anon_struct_104 @__decompiler_undefined_function_25() local_unnamed_addr

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #0

attributes #0 = { noreturn nounwind }
