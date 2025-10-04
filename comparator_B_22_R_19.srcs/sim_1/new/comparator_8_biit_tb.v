module comparator_8_biit_tb;

    reg  [7:0] a, b;
    wire       gt, eq, lt;

    // initialize dut
    comparator_8_bit dut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );

    integer i;

    initial begin
        $display("Time |     a      b   | gt eq lt");
        $monitor("%4t | %3d   %3d   |  %b  %b  %b",
                 $time, a, b, gt, eq, lt);

        a = 8'd0;   b = 8'd0;   #10;
        a = 8'd5;   b = 8'd10;  #10;
        a = 8'd10;  b = 8'd5;   #10;
        a = 8'd25;  b = 8'd25;  #10;
        a = 8'd255; b = 8'd100; #10;
        a = 8'd100; b = 8'd255; #10;
        a = 8'd128; b = 8'd128; #10;


        for (i = 0; i < 10; i = i + 1) begin
            a = $random % 256;
            b = $random % 256;
            #10;
        end

        $finish;
    end

endmodule
