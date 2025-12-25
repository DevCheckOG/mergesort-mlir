#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<f80, dense<128> : vector<2xi64>>, #dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi64>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>>} {

  llvm.mlir.global private unnamed_addr constant @".str"("%d \00") {addr_space = 0 : i32, alignment = 1 : i64}
  llvm.mlir.global private unnamed_addr constant @".str.1"("\0A\00") {addr_space = 0 : i32, alignment = 1 : i64}
  llvm.mlir.global private unnamed_addr constant @__const.main.arr(dense<[38, 27, 43, 3, 9, 82, 10]> : tensor<7xi32>) {addr_space = 0 : i32, alignment = 16 : i64, dso_local} : !llvm.array<7 x i32>
  llvm.mlir.global private unnamed_addr constant @".str.2"("Arreglo original: \00") {addr_space = 0 : i32, alignment = 1 : i64}
  llvm.mlir.global private unnamed_addr constant @".str.3"("Arreglo ordenado: \00") {addr_space = 0 : i32, alignment = 1 : i64}

  llvm.func @merge(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32, %arg3: i32) {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    %17 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.sub %17, %18 overflow<nsw>  : i32
    %20 = llvm.add %19, %0 overflow<nsw>  : i32
    llvm.store %20, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %21 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.sub %21, %22 overflow<nsw>  : i32
    llvm.store %23, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    %24 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.sext %24 : i32 to i64
    %26 = llvm.mul %25, %1  : i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr
    llvm.store %27, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %28 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.sext %28 : i32 to i64
    %30 = llvm.mul %29, %1  : i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr
    llvm.store %31, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %2, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:
    %32 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.icmp "slt" %32, %33 : i32
    llvm.cond_br %34, ^bb2, ^bb4
  ^bb2:
    %35 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.add %36, %37 overflow<nsw>  : i32
    %39 = llvm.sext %38 : i32 to i64
    %40 = llvm.getelementptr inbounds %35[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %43 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %41, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:
    %46 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.add %46, %0 overflow<nsw>  : i32
    llvm.store %47, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:
    llvm.store %2, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:
    %48 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.icmp "slt" %48, %49 : i32
    llvm.cond_br %50, ^bb6, ^bb8
  ^bb6:
    %51 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.add %52, %0 overflow<nsw>  : i32
    %54 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.add %53, %54 overflow<nsw>  : i32
    %56 = llvm.sext %55 : i32 to i64
    %57 = llvm.getelementptr inbounds %51[%56] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.getelementptr inbounds %59[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %58, %62 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:
    %63 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.add %63, %0 overflow<nsw>  : i32
    llvm.store %64, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:
    llvm.store %2, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %2, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    %65 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %65, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:
    %66 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %67 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.icmp "slt" %66, %67 : i32
    llvm.cond_br %68, ^bb10, ^bb11(%3 : i1)
  ^bb10:
    %69 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %70 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %71 = llvm.icmp "slt" %69, %70 : i32
    llvm.br ^bb11(%71 : i1)
  ^bb11(%72: i1):
    llvm.cond_br %72, ^bb12, ^bb16
  ^bb12:
    %73 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %74 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %75 = llvm.sext %74 : i32 to i64
    %76 = llvm.getelementptr inbounds %73[%75] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %79 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %80 = llvm.sext %79 : i32 to i64
    %81 = llvm.getelementptr inbounds %78[%80] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> i32
    %83 = llvm.icmp "sle" %77, %82 : i32
    llvm.cond_br %83, ^bb13, ^bb14
  ^bb13:
    %84 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %85 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.sext %85 : i32 to i64
    %87 = llvm.getelementptr inbounds %84[%86] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> i32
    %89 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %90 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %91 = llvm.sext %90 : i32 to i64
    %92 = llvm.getelementptr inbounds %89[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %88, %92 {alignment = 4 : i64} : i32, !llvm.ptr
    %93 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %94 = llvm.add %93, %0 overflow<nsw>  : i32
    llvm.store %94, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb14:
    %95 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %96 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %97 = llvm.sext %96 : i32 to i64
    %98 = llvm.getelementptr inbounds %95[%97] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %99 = llvm.load %98 {alignment = 4 : i64} : !llvm.ptr -> i32
    %100 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %101 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %102 = llvm.sext %101 : i32 to i64
    %103 = llvm.getelementptr inbounds %100[%102] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %99, %103 {alignment = 4 : i64} : i32, !llvm.ptr
    %104 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %105 = llvm.add %104, %0 overflow<nsw>  : i32
    llvm.store %105, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:
    %106 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %107 = llvm.add %106, %0 overflow<nsw>  : i32
    llvm.store %107, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb16:
    llvm.br ^bb17
  ^bb17:  // 2 preds: ^bb16, ^bb18
    %108 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %109 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %110 = llvm.icmp "slt" %108, %109 : i32
    llvm.cond_br %110, ^bb18, ^bb19
  ^bb18:
    %111 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %112 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %113 = llvm.sext %112 : i32 to i64
    %114 = llvm.getelementptr inbounds %111[%113] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %115 = llvm.load %114 {alignment = 4 : i64} : !llvm.ptr -> i32
    %116 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %117 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %118 = llvm.sext %117 : i32 to i64
    %119 = llvm.getelementptr inbounds %116[%118] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %115, %119 {alignment = 4 : i64} : i32, !llvm.ptr
    %120 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %121 = llvm.add %120, %0 overflow<nsw>  : i32
    llvm.store %121, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    %122 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %123 = llvm.add %122, %0 overflow<nsw>  : i32
    llvm.store %123, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17 {loop_annotation = #loop_annotation}
  ^bb19:
    llvm.br ^bb20
  ^bb20:
    %124 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %125 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %126 = llvm.icmp "slt" %124, %125 : i32
    llvm.cond_br %126, ^bb21, ^bb22
  ^bb21:
    %127 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %128 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %129 = llvm.sext %128 : i32 to i64
    %130 = llvm.getelementptr inbounds %127[%129] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %131 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> i32
    %132 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %133 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %134 = llvm.sext %133 : i32 to i64
    %135 = llvm.getelementptr inbounds %132[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %131, %135 {alignment = 4 : i64} : i32, !llvm.ptr
    %136 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %137 = llvm.add %136, %0 overflow<nsw>  : i32
    llvm.store %137, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    %138 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %139 = llvm.add %138, %0 overflow<nsw>  : i32
    llvm.store %139, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb20 {loop_annotation = #loop_annotation}
  ^bb22:
    %140 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%140) : (!llvm.ptr) -> ()
    %141 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%141) : (!llvm.ptr) -> ()
    llvm.return
  }


  llvm.func @mergeSort(%arg0: !llvm.ptr {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: i32 {llvm.noundef}) {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %2 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %3 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    %6 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %7 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %8 = llvm.icmp "slt" %6, %7 : i32
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:
    %9 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %12 = llvm.sub %10, %11 overflow<nsw>  : i32
    %13 = llvm.sdiv %12, %1  : i32
    %14 = llvm.add %9, %13 overflow<nsw>  : i32
    llvm.store %14, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    %15 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %16 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %17 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.call @mergeSort(%15, %16, %17) : (!llvm.ptr, i32, i32) -> ()
    %18 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %19 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %20 = llvm.add %19, %0 overflow<nsw>  : i32
    %21 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.call @mergeSort(%18, %20, %21) : (!llvm.ptr, i32, i32) -> ()
    %22 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.call @merge(%22, %23, %24, %25) : (!llvm.ptr, i32, i32, i32) -> ()
    llvm.br ^bb2
  ^bb2:
    llvm.return
  }

  llvm.func @printArray(%arg0: !llvm.ptr {llvm.noundef}, %arg1: i32 {llvm.noundef}) {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant("\0A\00") : !llvm.array<2 x i8>
    %3 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %4 = llvm.mlir.constant("%d \00") : !llvm.array<4 x i8>
    %5 = llvm.mlir.addressof @".str" : !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %1, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.icmp "slt" %9, %10 : i32
    llvm.cond_br %11, ^bb2, ^bb4
  ^bb2:
    %12 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %13 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %14 = llvm.sext %13 : i32 to i64
    %15 = llvm.getelementptr inbounds %12[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %17 = llvm.call @printf(%5, %16) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
    llvm.br ^bb3
  ^bb3:
    %18 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.add %18, %0 overflow<nsw>  : i32
    llvm.store %19, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:
    %20 = llvm.call @printf(%3) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return
  }

  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(dense<[38, 27, 43, 3, 9, 82, 10]> : tensor<7xi32>) : !llvm.array<7 x i32>
    %3 = llvm.mlir.addressof @__const.main.arr : !llvm.ptr
    %4 = llvm.mlir.constant(28 : i64) : i64
    %5 = llvm.mlir.constant(7 : i32) : i32
    %6 = llvm.mlir.constant("Arreglo original: \00") : !llvm.array<19 x i8>
    %7 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %8 = llvm.mlir.constant(0 : i64) : i64
    %9 = llvm.mlir.constant("Arreglo ordenado: \00") : !llvm.array<19 x i8>
    %10 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.array<7 x i32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memcpy"(%12, %3, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %5, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    %14 = llvm.call @printf(%7) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %15 = llvm.getelementptr inbounds %12[%8, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x i32>
    %16 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.call @printArray(%15, %16) : (!llvm.ptr, i32) -> ()
    %17 = llvm.getelementptr inbounds %12[%8, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x i32>
    %18 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.sub %18, %0 overflow<nsw>  : i32
    llvm.call @mergeSort(%17, %1, %19) : (!llvm.ptr, i32, i32) -> ()
    %20 = llvm.call @printf(%10) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %21 = llvm.getelementptr inbounds %12[%8, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x i32>
    %22 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.call @printArray(%21, %22) : (!llvm.ptr, i32) -> ()
    llvm.return %1 : i32
  }

  llvm.func @malloc(i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
  llvm.func @free(!llvm.ptr {llvm.noundef})
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> i32
}
