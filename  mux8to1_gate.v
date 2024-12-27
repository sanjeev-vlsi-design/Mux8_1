module mux8to1_gate (
    input [7:0] d,      
    input [2:0] sel,    
    output y            
);
    wire [7:0] w;
    and (w[0], d[0], ~sel[2], ~sel[1], ~sel[0]);
    and (w[1], d[1], ~sel[2], ~sel[1], sel[0]);
    and (w[2], d[2], ~sel[2], sel[1], ~sel[0]);
    and (w[3], d[3], ~sel[2], sel[1], sel[0]);
    and (w[4], d[4], sel[2], ~sel[1], ~sel[0]);
    and (w[5], d[5], sel[2], ~sel[1], sel[0]);
    and (w[6], d[6], sel[2], sel[1], ~sel[0]);
    and (w[7], d[7], sel[2], sel[1], sel[0]);
    or (y, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7]);

endmodule



