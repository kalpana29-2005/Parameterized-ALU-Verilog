`timescale 1ns/1ps

module tb_parameterized_alu;

parameter WIDTH = 8;

reg  [WIDTH-1:0] A, B;
reg  [3:0] ALU_Sel;
wire [WIDTH-1:0] Result;
wire CarryOut;
wire Zero;

// Instantiate ALU
parameterized_alu #(WIDTH) uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .CarryOut(CarryOut),
    .Zero(Zero)
);

// ? REQUIRED FOR WAVEFORM
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_parameterized_alu);
end

// Stimulus
initial begin
    $display("Time\tA\tB\tSel\tResult\tCarry\tZero");
    $monitor("%0t\t%d\t%d\t%b\t%d\t%b\t%b",
              $time, A, B, ALU_Sel, Result, CarryOut, Zero);

    A = 10; B = 5;

    ALU_Sel = 4'b0000; #10;
    ALU_Sel = 4'b0001; #10;
    ALU_Sel = 4'b0010; #10;
    ALU_Sel = 4'b0011; #10;
    ALU_Sel = 4'b0100; #10;
    ALU_Sel = 4'b0101; #10;
    ALU_Sel = 4'b0110; #10;
    ALU_Sel = 4'b0111; #10;
    ALU_Sel = 4'b1000; #10;
    ALU_Sel = 4'b1001; #10;

    A = 0; B = 0; ALU_Sel = 4'b0000; #10;
    A = 255; B = 1; ALU_Sel = 4'b0000; #10;

    $finish;   // ? important
end

endmodule
