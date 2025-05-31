// === Testbench for ALB module ===
`timescale 1ns / 1ps

module Mega_Lab_ALB_Bobruiko_tb;

    // Inputs
    reg [3:0] MR, MS;
    reg CI;
    reg [2:0] ALB_MI;

    // Outputs
    wire [3:0] F_ALB;
    wire CO, VO, NO, ZO;

    // Instantiate the Unit Under Test (UUT)
    TestDKR uut (
        .MR(MR),
        .MS(MS),
        .CI(CI),
        .ALB_MI(ALB_MI),
        .F_ALB(F_ALB),
        .CO(CO),
        .VO(VO),
        .NO(NO),
        .ZO(ZO)
    );

    initial begin
        $display("Time\tMR\tMS\tCI\tMI\t| Result\tCO\tVO\tNO\tZO");
        $monitor("%g\t%b\t%b\t%b\t%b\t| %b\t%b\t%b\t%b\t%b", 
            $time, MR, MS, CI, ALB_MI, F_ALB, CO, VO, NO, ZO);

        // Initial state
        MR = 4'b0000; MS = 4'b0000; CI = 0; ALB_MI = 3'b000;
        #10;

        // ADD: 6 + 3 + CI=1 = 10 (0xA)
        MR = 4'b0110; MS = 4'b0011; CI = 1; ALB_MI = 3'b011; #10;

        // SUB: 6 - 3 - 1 + CI=1 = 3
        MR = 4'b0110; MS = 4'b0011; CI = 1; ALB_MI = 3'b000; #10;

        // AND: 6 & 3 = 2
        MR = 4'b0110; MS = 4'b0011; CI = 0; ALB_MI = 3'b001; #10;

        // OR: 6 | 3 = 7
        MR = 4'b0110; MS = 4'b0011; CI = 0; ALB_MI = 3'b010; #10;

        // SUB: 3 - 6 - 1 + CI=0 = underflow
        MR = 4'b0011; MS = 4'b0110; CI = 0; ALB_MI = 3'b000; #10;

        // ADD: 15 + 1 + 1 = 17 (overflow in 4-bit)
        MR = 4'b1111; MS = 4'b0001; CI = 1; ALB_MI = 3'b011; #10;

        // Test Zero result: 5 - 5 - 1 + 1 = 0
        MR = 4'b0101; MS = 4'b0101; CI = 1; ALB_MI = 3'b000; #10;

        $finish;
    end

endmodule