module parameterized_alu #(
    parameter WIDTH = 8
)(
    input  [WIDTH-1:0] A,
    input  [WIDTH-1:0] B,
    input  [3:0] ALU_Sel,
    output reg [WIDTH-1:0] Result,
    output reg CarryOut,
    output Zero
);

assign Zero = (Result == 0);

always @(*) begin
    CarryOut = 0;

    case(ALU_Sel)
        4'b0000: {CarryOut, Result} = A + B;   // ADD
        4'b0001: {CarryOut, Result} = A - B;   // SUB
        4'b0010: Result = A & B;               // AND
        4'b0011: Result = A | B;               // OR
        4'b0100: Result = A ^ B;               // XOR
        4'b0101: Result = ~(A | B);            // NOR
        4'b0110: Result = A << 1;              // Shift Left
        4'b0111: Result = A >> 1;              // Shift Right
        4'b1000: Result = (A > B) ? 1 : 0;     // Greater
        4'b1001: Result = (A == B) ? 1 : 0;    // Equal
        default: Result = 0;
    endcase
end

endmodule
