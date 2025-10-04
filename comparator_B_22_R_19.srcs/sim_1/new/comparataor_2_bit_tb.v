module comprator_tb ;
	reg a, b;

	wire c, d, e;

	comprator dut(
		.a(a),
		.b(b),
		.gt(c),
		.eq(d),
		.lt(e)

    );

    initial begin
        // Apply all input combinations
        $display("Time | a  b | > = < ");
        $monitor("%4t | %b  %b | %b %b %b",
                 $time, a, b, a_gt_b, a_eq_b, a_lt_b);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=0; b=2; #10;
        a=0; b=3; #10;

        a=1; b=0; #10;
        a=1; b=1; #10;
        a=1; b=2; #10;
        a=1; b=3; #10;

        a=2; b=0; #10;
        a=2; b=1; #10;
        a=2; b=2; #10;
        a=2; b=3; #10;

        a=3; b=0; #10;
        a=3; b=1; #10;
        a=3; b=2; #10;
        a=3; b=3; #10;

        $stop;
    end

endmodule

