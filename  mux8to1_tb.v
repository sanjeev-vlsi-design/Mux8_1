module mux8to1_tb;
    reg [7:0] d;        
    reg [2:0] sel;      
    wire y_gate, y_df, y_bm; 
    mux8to1_gate u1 (.d(d), .sel(sel), .y(y_gate));
    mux8to1_df u2 (.d(d), .sel(sel), .y(y_df));
    mux8to1_bm u3 (.d(d), .sel(sel), .y(y_bm));
    initial begin
        $display("Time\tSel\tD\t\tY_gate\tY_df\tY_bm");
        d = 8'b10101010; sel = 3'b000; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b001; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b010; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b011; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b100; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b101; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b110; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        d = 8'b10101010; sel = 3'b111; #10;
        $display("%0t\t%b\t%b\t%b\t%b\t\t%b", $time, sel, d, y_gate, y_df, y_bm);
        #10;
        $stop;
    end
endmodule


