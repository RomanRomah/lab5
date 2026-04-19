module mux4to1 (
input [7:0] D0, D1, D2, D3,
input [1:0] A, output reg [7:0] Q
);
always @(*) begin case(A)
2'b00: Q = D0;
2'b01: Q = D1;
2'b10: Q = D2;
2'b11: Q = D3;
endcase
end endmodule
