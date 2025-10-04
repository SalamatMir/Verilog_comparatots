// 4-bit comparator
module comparator_8_bit (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output reg        gt,   // a > b
    output reg        eq,   // a == b
    output reg        lt    // a < b
);

    always @(*) begin
        if (a > b) begin
            gt = 1;
            eq = 0;
            lt = 0;
        end 
        else if (a == b) begin
            gt = 0;
            eq = 1;
            lt = 0;
        end 
        else begin
            gt = 0;
            eq = 0;
            lt = 1;
        end
    end

endmodule
