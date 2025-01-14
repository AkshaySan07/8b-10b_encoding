`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SSwitch Technologies
// Engineer: Akshay V
// 
// Create Date: 10/09/2024 11:38:49 PM
// Design Name: Phsical Layer (Logical)
// Module Name: table_8b10b
// Project Name: PCIexpress
//////////////////////////////////////////////////////////////////////////////////

module table_8b10b (
    input [7:0] data_in,
    input       rd,
    output reg [9:0] encoded
);

    always @(*) begin
        case (rd)
        1'b0: begin
            case (data_in[7:5])
                3'b000: encoded[3:0] = 4'b1011;
                3'b001: encoded[3:0] = 4'b1001;
                3'b010: encoded[3:0] = 4'b0101;
                3'b011: encoded[3:0] = 4'b1100;
                3'b100: encoded[3:0] = 4'b1101;
                3'b101: encoded[3:0] = 4'b1010;
                3'b110: encoded[3:0] = 4'b0110;
                3'b111: encoded[3:0] = 4'b1110;
                default: encoded[3:0] = 4'bxxxx; // Handle default case
            endcase

        // Additional logic for encoding_6 when rd = 1'b0
            case (data_in[4:0]) // Assuming 'data_in' is a 5-bit input
                5'd0 : encoded[9:4] = 6'b100111;
                5'd1 : encoded[9:4] = 6'b011101;
                5'd2 : encoded[9:4] = 6'b101101;
                5'd3 : encoded[9:4] = 6'b110001;  // Does not depend on RD
                5'd4 : encoded[9:4] = 6'b110101;
                5'd5 : encoded[9:4] = 6'b101001;  // Does not depend on RD
                5'd6 : encoded[9:4] = 6'b011001;
                5'd7 : encoded[9:4] = 6'b111000;
                5'd8 : encoded[9:4] = 6'b111001;
                5'd9 : encoded[9:4] = 6'b100101;  // Does not depend on RD
                5'd10: encoded[9:4] = 6'b010101;
                5'd11: encoded[9:4] = 6'b110100;
                5'd12: encoded[9:4] = 6'b001101;
                5'd13: encoded[9:4] = 6'b101100;  // Does not depend on RD
                5'd14: encoded[9:4] = 6'b011100;
                5'd15: encoded[9:4] = 6'b010111;
                5'd16: encoded[9:4] = 6'b011011;
                5'd17: encoded[9:4] = 6'b100011;
                5'd18: encoded[9:4] = 6'b010011;
                5'd19: encoded[9:4] = 6'b110010;
                5'd20: encoded[9:4] = 6'b001011;
                5'd21: encoded[9:4] = 6'b101010;  // Does not depend on RD
                5'd22: encoded[9:4] = 6'b011010;
                5'd23: encoded[9:4] = 6'b111010;
                5'd24: encoded[9:4] = 6'b110011;
                5'd25: encoded[9:4] = 6'b100110;  // Does not depend on RD
                5'd26: encoded[9:4] = 6'b010110;
                5'd27: encoded[9:4] = 6'b110110;
                5'd28: encoded[9:4] = 6'b001110;
                5'd29: encoded[9:4] = 6'b101110;
                5'd30: encoded[9:4] = 6'b011110;
                5'd31: encoded[9:4] = 6'b101011;  // Does not depend on RD
                default: encoded[9:4] = 6'bxxxxxx; // Handle unexpected cases
            endcase
        end
        
        1'b1: begin
            case (data_in[7:5])
                3'b000: encoded[3:0] = 4'b0100;
                3'b001: encoded[3:0] = 4'b1001;
                3'b010: encoded[3:0] = 4'b0101;
                3'b011: encoded[3:0] = 4'b0011;
                3'b100: encoded[3:0] = 4'b0010;
                3'b101: encoded[3:0] = 4'b1010;
                3'b110: encoded[3:0] = 4'b0110;
                3'b111: encoded[3:0] = 4'b0001;
                default: encoded[3:0] = 4'bxxxx; // Handle default case
            endcase

            // Additional logic for encoding[9:4] when rd = 1'b1
            case (data_in[4:0]) // Assuming 'data_in' is a 5-bit input
                5'd0 : encoded[9:4] = 6'b011000;
                5'd1 : encoded[9:4] = 6'b100010;
                5'd2 : encoded[9:4] = 6'b010010;
                5'd3 : encoded[9:4] = 6'b110001;  // Does not depend on RD
                5'd4 : encoded[9:4] = 6'b001010;
                5'd5 : encoded[9:4] = 6'b101001;  // Does not depend on RD
                5'd6 : encoded[9:4] = 6'b011001;
                5'd7 : encoded[9:4] = 6'b000111;
                5'd8 : encoded[9:4] = 6'b000110;
                5'd9 : encoded[9:4] = 6'b100101;  // Does not depend on RD
                5'd10: encoded[9:4] = 6'b010101;
                5'd11: encoded[9:4] = 6'b110100;
                5'd12: encoded[9:4] = 6'b001101;
                5'd13: encoded[9:4] = 6'b101100;  // Does not depend on RD
                5'd14: encoded[9:4] = 6'b011100;
                5'd15: encoded[9:4] = 6'b101000;
                5'd16: encoded[9:4] = 6'b100100;
                5'd17: encoded[9:4] = 6'b100011;
                5'd18: encoded[9:4] = 6'b010011;
                5'd19: encoded[9:4] = 6'b110010;
                5'd20: encoded[9:4] = 6'b001011;
                5'd21: encoded[9:4] = 6'b101010;  // Does not depend on RD
                5'd22: encoded[9:4] = 6'b011010;
                5'd23: encoded[9:4] = 6'b000101;
                5'd24: encoded[9:4] = 6'b001100;
                5'd25: encoded[9:4] = 6'b100110;  // Does not depend on RD
                5'd26: encoded[9:4] = 6'b010110;
                5'd27: encoded[9:4] = 6'b001001;
                5'd28: encoded[9:4] = 6'b001110;
                5'd29: encoded[9:4] = 6'b010001;
                5'd30: encoded[9:4] = 6'b100001;
                5'd31: encoded[9:4] = 6'b010100;  // Does not depend on RD
                default: encoded[9:4] = 6'bxxxxxx; // Handle unexpected cases
            endcase
        end
        endcase
    end
    
endmodule