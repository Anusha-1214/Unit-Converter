`timescale 1ns/1ps

module unit_converter_tb;

    reg clk;
    reg reset;

    reg [2:0] mode;
    reg [15:0] input_value;

    wire [31:0] output_value;


    // --------------------------------
    // DUT
    // --------------------------------

    unit_converter DUT (

        .clk(clk),
        .reset(reset),

        .mode(mode),
        .input_value(input_value),

        .output_value(output_value)

    );


    // --------------------------------
    // CLOCK
    // --------------------------------

    always #5 clk = ~clk;


    initial begin

        // --------------------------------
        // INITIAL VALUES
        // --------------------------------

        clk = 0;

        reset = 1;

        mode = 3'b000;

        input_value = 0;


        // --------------------------------
        // RESET
        // --------------------------------

        #10;

        reset = 0;


        // --------------------------------
        // TEST 1
        // Meter -> Centimeter
        // 5 m = 500 cm
        // --------------------------------

        mode = 3'b000;

        input_value = 16'd5;

        #10;

        $display("--------------------------------");
        $display("Meter to Centimeter");
        $display("Input = %d m", input_value);
        $display("Output = %d cm", output_value);


        // --------------------------------
        // TEST 2
        // Centimeter -> Meter
        // 500 cm = 5 m
        // --------------------------------

        mode = 3'b001;

        input_value = 16'd500;

        #10;

        $display("--------------------------------");
        $display("Centimeter to Meter");
        $display("Input = %d cm", input_value);
        $display("Output = %d m", output_value);


        // --------------------------------
        // TEST 3
        // Kilometer -> Meter
        // 3 km = 3000 m
        // --------------------------------

        mode = 3'b010;

        input_value = 16'd3;

        #10;

        $display("--------------------------------");
        $display("Kilometer to Meter");
        $display("Input = %d km", input_value);
        $display("Output = %d m", output_value);


        // --------------------------------
        // TEST 4
        // Kilogram -> Gram
        // 7 kg = 7000 g
        // --------------------------------

        mode = 3'b011;

        input_value = 16'd7;

        #10;

        $display("--------------------------------");
        $display("Kilogram to Gram");
        $display("Input = %d kg", input_value);
        $display("Output = %d g", output_value);


        // --------------------------------
        // TEST 5
        // Gram -> Kilogram
        // 5000 g = 5 kg
        // --------------------------------

        mode = 3'b100;

        input_value = 16'd5000;

        #10;

        $display("--------------------------------");
        $display("Gram to Kilogram");
        $display("Input = %d g", input_value);
        $display("Output = %d kg", output_value);


        // --------------------------------
        // TEST 6
        // Hour -> Minute
        // 2 hours = 120 minutes
        // --------------------------------

        mode = 3'b101;

        input_value = 16'd2;

        #10;

        $display("--------------------------------");
        $display("Hour to Minute");
        $display("Input = %d hour", input_value);
        $display("Output = %d minutes", output_value);


        // --------------------------------
        // TEST 7
        // Minute -> Second
        // 5 minutes = 300 seconds
        // --------------------------------

        mode = 3'b110;

        input_value = 16'd5;

        #10;

        $display("--------------------------------");
        $display("Minute to Second");
        $display("Input = %d minutes", input_value);
        $display("Output = %d seconds", output_value);


        // --------------------------------
        // TEST 8
        // Second -> Minute
        // 120 seconds = 2 minutes
        // --------------------------------

        mode = 3'b111;

        input_value = 16'd120;

        #10;

        $display("--------------------------------");
        $display("Second to Minute");
        $display("Input = %d seconds", input_value);
        $display("Output = %d minutes", output_value);


        #10;

        $finish;

    end

endmodule
