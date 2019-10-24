module validarJugadaLogic(input clock,// clock of the circuit 
								  input reset,
								  input ValidarJugada, 
								  input playerID,
								  input logic [3:0] position,
								  output V // Jugada finalizada 
								  );
								  
logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9; //Boxes with ID
logic [3:0] current_state;
logic en1, en2, en3, en4, en5, en6, en7, en8, en9;

regPos box1(en1, clock, reset, playerID, pos1);
regPos box2(en2, clock, reset, playerID, pos2);
regPos box3(en3, clock, reset, playerID, pos3);
regPos box4(en4, clock, reset, playerID, pos4);
regPos box5(en5, clock, reset, playerID, pos5);
regPos box6(en6, clock, reset, playerID, pos6);
regPos box7(en7, clock, reset, playerID, pos7);
regPos box8(en8, clock, reset, playerID, pos8);
regPos box9(en9, clock, reset, playerID, pos9);


// current state registers 
always_ff @(posedge clock, posedge reset) 
begin 
 if(reset)
	current_state <= 4'b0000;
	
	else
	current_state <= position;
end 

//Lógica Combinacional

always_comb begin 
case (current_state)
//--------------------------------------------------------------------//
 
 4'b0000:
	if(pos1 == 2'b00 && ValidarJugada)begin
		en1 = 1; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0001:
	if(pos2 == 2'b00 && ValidarJugada )begin
		en1 = 0; en2 = 1; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0010:
	if(pos3 == 2'b00 && ValidarJugada )begin
		en1 = 0; en2 = 0; en3 = 1; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0011:
	if(pos4 == 2'b00 && ValidarJugada)begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 1; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0100:
	if(pos5 == 2'b00 && ValidarJugada )begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 1; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0101:
	if(pos6 == 2'b00 && ValidarJugada)begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 1; en7 = 0; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0110:
	if(pos7 == 2'b00 && ValidarJugada)begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 1; en8 = 0; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b0111:
	if(pos8 == 2'b00 && ValidarJugada)begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 1; en9 = 0;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
 4'b1000:
	if(pos9 == 2'b00 && ValidarJugada)begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 1;
		V = 1;
		end
	else begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
	end
	
	default:
		begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		V = 0;
		end
endcase
end

endmodule 
