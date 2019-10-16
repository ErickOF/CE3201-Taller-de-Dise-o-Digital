module StateMachine(
	input clk, start, rst, TimeOut, Win, Tie, Player, Ready, V,
	output Time, ChangeTurn, ValidateWin, PlayRandom, ValidatePlay, PrintSprint, PrintWin,
);

logic [2:0] next_state;
logic [2:0] state;

always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		state<= 3'b000;
		end
	else begin
		state <= next_state;
		end
end


//combinational logic
always_comb begin
	case(state)
	3'b000:
	begin
		if(start) begin next_state = 3'b001; Time=1; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = 3'b000; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
	end
	3'b001:
	begin
		if(TimeOut) begin next_state = 3'b010; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=1; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
		else begin next_state = 3'b011; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
	end
	3'b010:
	begin
		next_state = 3'b101;//por el momento pasa directo
		//if(V) begin next_state = 3'b101; 
		//else next_state = 3'b001; 
	end
	3'b011:
	begin
		if(Ready) begin next_state = 3'b100; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=1; PrintSprint=0; PrintWin=0; end
		else begin next_state = 3'b001; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
	end
	3'b100:
	begin
		if(V) begin next_state = 3'b101; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=1; PrintWin=0; end
		else next_state = 3'b001; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
	end
	3'b101:
	begin
		if(~ Win && ~ Tie) begin next_state = 3'b110; Time=0; ChangeTurn=1; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = 3'b111; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=1; end
	end
	3'b110:
	begin
		next_state = 3'b001; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0;
	end
	3'b111:
	begin
		if(start) begin next_state = 3'b001; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = 3'b110; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
	end
	
	endcase

end

endmodule
