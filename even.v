`timescale 1ns / 1ps

// Even Parity Generator
// Generates a parity bit such that the total number of 1's
// in the input data and parity bit is always even.

module even_parity_generator(
    input  [3:0] data,   // 4-bit input data
    output parity        // Even parity output bit
);

    // XOR of all input bits generates the even parity bit
    assign parity = data[0] ^ data[1] ^ data[2] ^ data[3];

endmodule
