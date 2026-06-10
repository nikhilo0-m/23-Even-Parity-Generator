`timescale 1ns/1ps

module even_parity_generator_tb;

    reg  [3:0] data;     // Test input
    wire parity;         // Output parity bit

    // Instantiate the DUT (Device Under Test)
    even_parity_generator uut (
        .data(data),
        .parity(parity)
    );

    initial begin
        // Apply test vectors
        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0011; #10;
        data = 4'b0111; #10;
        data = 4'b1111; #10;

        // End simulation
        $finish;
    end

    initial begin
        // Display input and output values
        $monitor("Time=%0t Data=%b Parity=%b",
                 $time, data, parity);
    end

endmodule

