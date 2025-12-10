`timescale 1ns / 1ps
module boot_rom (
    input  wire [11:0] addr,
    output wire [15:0] data
);

    reg [15:0] rom [0:2047];

    initial begin
        $readmemh("boot.hex", rom);
    end

    assign data = rom[addr];
endmodule

