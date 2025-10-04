

// 2-bit comparator
module comparator_2_bit (
    input  [1:0] a,
    input  [1:0] b,
    output       gt,   // a > b
    output       eq,   // a == b
    output       lt    // a < b
);

    assign gt = (a > b);
    assign eq = (a == b);
    assign lt = (a < b);

endmodule
