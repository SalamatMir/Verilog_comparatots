`timescale 1ns/1ps

module comparator_4_bit_tb;

    reg  [3:0] a, b;
    wire       gt, eq, lt;

    // Instantiate DUT
    comparator_4_bit dut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );

    integer i, j;

    initial begin
        $display("Time |   a   b  | > = < ");
        $monitor("%4t | %2d  %2d | %b %b %b",
                  $time, a, b, gt, eq, lt);

        // Loop through all 16 × 16 = 256 combinations
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                a = i;
                b = j;
                #10;  // wait 10ns between each test
            end
        end

        $stop;
    end

endmodule
