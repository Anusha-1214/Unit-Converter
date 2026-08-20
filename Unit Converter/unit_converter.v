module unit_converter (
    input clk,
    input reset,

    // Conversion mode
    input [2:0] mode,

    // Input value
    input [15:0] input_value,

    // Converted value
    output reg [31:0] output_value
);

    always @(posedge clk or posedge reset) begin

        if (reset) begin

            output_value <= 32'd0;

        end

        else begin

            case (mode)

                // --------------------------------
                // 000: Meter -> Centimeter
                // 1 m = 100 cm
                // --------------------------------

                3'b000:
                    output_value <= input_value * 100;


                // --------------------------------
                // 001: Centimeter -> Meter
                // 100 cm = 1 m
                // --------------------------------

                3'b001:
                    output_value <= input_value / 100;


                // --------------------------------
                // 010: Kilometer -> Meter
                // 1 km = 1000 m
                // --------------------------------

                3'b010:
                    output_value <= input_value * 1000;


                // --------------------------------
                // 011: Kilogram -> Gram
                // 1 kg = 1000 g
                // --------------------------------

                3'b011:
                    output_value <= input_value * 1000;


                // --------------------------------
                // 100: Gram -> Kilogram
                // --------------------------------

                3'b100:
                    output_value <= input_value / 1000;


                // --------------------------------
                // 101: Hour -> Minute
                // 1 hour = 60 minutes
                // --------------------------------

                3'b101:
                    output_value <= input_value * 60;


                // --------------------------------
                // 110: Minute -> Second
                // 1 minute = 60 seconds
                // --------------------------------

                3'b110:
                    output_value <= input_value * 60;


                // --------------------------------
                // 111: Second -> Minute
                // --------------------------------

                3'b111:
                    output_value <= input_value / 60;


                // --------------------------------
                // Default
                // --------------------------------

                default:
                    output_value <= 32'd0;

            endcase

        end

    end

endmodule
