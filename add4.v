// DSCH 3.5
// 30/08/2022 09:46:36
// F:\D-windows\A_A-Freelance-2022\Deep-Learn-Keras\A-numerique-op\Mini_projet_dsch35\add4\add4.sch

module add4( C[0],C[1],C[2],C[3],B[0],B[1],B[2],B[3],
 Sum[3],Sum[2],Sum[1],Sum[0],Carry_16);
 input C[0],C[1],C[2],C[3],B[0],B[1],B[2],B[3];
 output Sum[3],Sum[2],Sum[1],Sum[0],Carry_16;
 wire w3,w5,w9,w18,w19,w20,w21,w22;
 wire w23,w24,w25,w26,w27,w28,w29,w30;
 wire w31,w32,w33;
 nand #(1) nand2_1_1(w18,C[1],B[1]);
 nand #(1) nand2_2_2(w19,C[1],w3);
 nand #(1) nand2_3_3(w20,B[1],w3);
 nand #(2) nand3_4_4(w5,w20,w19,w18);
 xor #(1) xor2_5_5(Sum[1],w21,C[1]);
 xor #(1) xor2_6_6(w21,w3,B[1]);
 nand #(1) nand2_1_7(w22,C[2],B[2]);
 nand #(1) nand2_2_8(w23,C[2],w5);
 nand #(1) nand2_3_9(w24,B[2],w5);
 nand #(2) nand3_4_10(w9,w24,w23,w22);
 xor #(1) xor2_5_11(Sum[2],w25,C[2]);
 xor #(1) xor2_6_12(w25,w5,B[2]);
 nand #(1) nand2_1_13(w26,C[0],B[0]);
 nand #(1) nand2_2_14(w27,C[0],vss);
 nand #(1) nand2_3_15(w28,B[0],vss);
 nand #(2) nand3_4_16(w3,w28,w27,w26);
 xor #(1) xor2_5_17(Sum[0],w29,C[0]);
 xor #(1) xor2_6_18(w29,vss,B[0]);
 nand #(1) nand2_1_19(w30,C[3],B[3]);
 nand #(1) nand2_2_20(w31,C[3],w9);
 nand #(1) nand2_3_21(w32,B[3],w9);
 nand #(1) nand3_4_22(Carry_16,w32,w31,w30);
 xor #(1) xor2_5_23(Sum[3],w33,C[3]);
 xor #(1) xor2_6_24(w33,w9,B[3]);
endmodule

// Simulation parameters in Verilog Format

// Simulation parameters
// C[0] CLK 1 1
// C[1] CLK 2 2
// C[2] CLK 4 4
// C[3] CLK 8 8
// B[0] CLK 16 16
// B[1] CLK 32 32
// B[2] CLK 64 64
// B[3] CLK 128 128
