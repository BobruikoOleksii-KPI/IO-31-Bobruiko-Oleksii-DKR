// === Top-Level ALB Module ===
module Mega_Lab_ALB_Bobruiko (
    input [3:0] MR, MS,
    input CI,
    input [2:0] ALB_MI,
    output [3:0] F_ALB,
    output CO, VO, NO, ZO
);

    wire [3:0] sum, diff, and_out, or_out;
    wire co_add, co_sub;

    // Arithmetic Units
    add4 ADD (.A(MR), .B(MS), .CI(CI), .S(sum), .CO(co_add));
    sub4 SUB (.A(MR), .B(MS), .CI(CI), .D(diff), .CO(co_sub));

    // Logic Units
    assign and_out = MR & MS;
    assign or_out = MR | MS;

    // Multiplexer
    reg [3:0] mux_out;
    always @(*) begin
        case (ALB_MI)
            3'b000: mux_out = diff;
            3'b001: mux_out = and_out;
            3'b010: mux_out = or_out;
            3'b011: mux_out = sum;
            default: mux_out = 4'b0000;
        endcase
    end

    assign F_ALB = mux_out;

    // CO Logic
    assign CO = (ALB_MI == 3'b011) ? co_add : 
                (ALB_MI == 3'b000) ? co_sub : 1'b0;

    // VO Logic: overflow for signed add/sub (XOR of last 2 carry bits)
    wire c3_add, c2_add, c3_sub, c2_sub;
    assign {c3_add, c2_add} = {co_add, (sum[3] ^ sum[2])};
    assign {c3_sub, c2_sub} = {co_sub, (diff[3] ^ diff[2])};
    assign VO = (ALB_MI == 3'b011) ? (c3_add ^ c2_add) :
                (ALB_MI == 3'b000) ? (c3_sub ^ c2_sub) : 1'b0;

    // NO: sign bit of result
    assign NO = F_ALB[3];

    // ZO: all bits are 0
    assign ZO = (F_ALB == 4'b0000);

endmodule

// === 4-bit Adder ===
module add4(
    input [3:0] A, B,
    input CI,
    output [3:0] S,
    output CO
);
    assign {CO, S} = A + B + CI;
endmodule

// === 4-bit Subtractor: A - B - 1 + CI ===
module sub4(
    input [3:0] A, B,
    input CI,
    output [3:0] D,
    output CO
);
    wire [4:0] result;
    assign result = A + (~B) + CI;
    assign D = result[3:0];
    assign CO = result[4];
endmodule