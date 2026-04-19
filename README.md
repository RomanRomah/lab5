# lab5
mux4to1.v:
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




tb_mux4to1.v:
module tb_mux4to1;
// Оголошуємо змінні для підключення до нашого пристрою
reg [7:0] D0, D1, D2, D3; reg [1:0] A;
wire [7:0] Q;


// Підключаємо наш мультиплексор (uut - unit under test) mux4to1 uut (
.D0(D0), .D1(D1), .D2(D2), .D3(D3),
.A(A), .Q(Q)
);


// Блок, який автоматично задає сигнали
initial begin
// Виводимо результати в консоль (як у прикладі)
$monitor("Time = %0t | A = %b | Q = %b", $time, A, Q);


// Задаємо інформаційні входи
D0 = 8'b11110000; D1 = 8'b00001111; D2 = 8'b10101010; D3 = 8'b01010101;

// Перебираємо адреси з затримкою в 10 одиниць часу
A = 2'b00; #10; A = 2'b01; #10; A = 2'b10; #10; A = 2'b11; #10;





end
// Автоматично завершуємо симуляцію
$finish;

endmodule
