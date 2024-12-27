module mux8to1_df (
    input [7:0] d,     
    input [2:0] sel,    
    output y            
);
    assign y = (sel == 3'b000) ? d[0] :
               (sel == 3'b001) ? d[1] :
               (sel == 3'b010) ? d[2] :
               (sel == 3'b011) ? d[3] :
               (sel == 3'b100) ? d[4] :
               (sel == 3'b101) ? d[5] :
               (sel == 3'b110) ? d[6] :
                                 d[7];
endmodule



