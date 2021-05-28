`include "config.sv"
`include "constants.sv"

module instruction_decoder(
    input [31:0] inst,
    output [6:0] inst_opcode,
    output [2:0] inst_funct3,
    output [6:0] inst_funct7,
    output [4:0] inst_rd,
    output [4:0] inst_rs1,
    output [4:0] inst_rs2
);
    logic [6:0] op;
    logic [2:0] f3;
    logic [6:0] f7;
    logic [4:0] RD;
    logic [4:0] RS1;
    logic [4:0] RS2;
    
    always_comb begin
        op = inst[6:0];
        RD= inst[11:7];
        f3 = inst[14:12];
        RS1 = inst[19:15];
        RS2 = inst[24:20];
        f7= inst[31:25];
    end
    assign inst_opcode = op;
    assign inst_rd = RD;
    assign inst_funct3 = f3;
    assign inst_rs1 = RS1;
    assign inst_rs2 = RS2;
    assign inst_funct7 = f7;

endmodule
