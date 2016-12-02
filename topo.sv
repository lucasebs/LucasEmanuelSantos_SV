module topo(
    input logic clock,
    output logic led
);

logic [24:0]cont;
logic [1:0]clock1hz;
logic [1:0]clock10hz;

always_ff@(posedgle clock)
        begin
                if(cont == 24999999)
                        begin
                                cont <= 25'd0;
                                clock1hz <= ~ clock1hz;
                        end

                else if(cont == 2499999)
                        begin
                                cont <= 25'd0;
                                clock10hz <= ~ clock10hz;
                        end
                else
                        cont <= cont + 1'b1;
        end
endmodule
