class Board
	def initialize
		@grid = [[nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil],
				 [nil,nil,nil,nil,nil,nil,nil,nil]
				]
	end

	def show
		puts "|	#{@grid[0][0]}	|	#{@grid[0][1]}	|	#{@grid[0][2]}	|	#{@grid[0][3]}	|	#{@grid[0][4]}	|	#{@grid[0][5]}	|	#{@grid[0][6]}	|	#{@grid[0][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[1][0]}	|	#{@grid[1][1]}	|	#{@grid[1][2]}	|	#{@grid[1][3]}	|	#{@grid[1][4]}	|	#{@grid[1][5]}	|	#{@grid[1][6]}	|	#{@grid[1][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[2][0]}	|	#{@grid[2][1]}	|	#{@grid[2][2]}	|	#{@grid[2][3]}	|	#{@grid[2][4]}	|	#{@grid[2][5]}	|	#{@grid[2][6]}	|	#{@grid[2][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[3][0]}	|	#{@grid[3][1]}	|	#{@grid[3][2]}	|	#{@grid[3][3]}	|	#{@grid[3][4]}	|	#{@grid[3][5]}	|	#{@grid[3][6]}	|	#{@grid[3][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[4][0]}	|	#{@grid[4][1]}	|	#{@grid[4][2]}	|	#{@grid[4][3]}	|	#{@grid[4][4]}	|	#{@grid[4][5]}	|	#{@grid[4][6]}	|	#{@grid[4][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[5][0]}	|	#{@grid[5][1]}	|	#{@grid[5][2]}	|	#{@grid[5][3]}	|	#{@grid[5][4]}	|	#{@grid[5][5]}	|	#{@grid[5][6]}	|	#{@grid[5][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[6][0]}	|	#{@grid[6][1]}	|	#{@grid[6][2]}	|	#{@grid[6][3]}	|	#{@grid[6][4]}	|	#{@grid[6][5]}	|	#{@grid[6][6]}	|	#{@grid[6][7]}	|"
		puts "---------------------------------------------------------------------------------------------------------------------------------"
		puts "|	#{@grid[7][0]}	|	#{@grid[7][1]}	|	#{@grid[7][2]}	|	#{@grid[7][3]}	|	#{@grid[7][4]}	|	#{@grid[7][5]}	|	#{@grid[7][6]}	|	#{@grid[7][7]}	|"
	end
	
	def insert(x,y,value)
		@grid[x][y] = value
	end	

	def get(x, y)
		@grid[x][y]
	end

end

class Pieces

end



class Pawn < Pieces
	attr_accessor :name

	def to_s
		"unknown color"
	end

end


class WhitePawn < Pawn
	def to_s
		"WP"
	end
end


class BlackPawn < Pawn
	def to_s
		"BP"
	end
end



class Game
	def initialize
		@b = Board.new
		@wp1 = WhitePawn.new
		@wp2 = WhitePawn.new
		@wp3 = WhitePawn.new
		@wp4 = WhitePawn.new
		@wp5 = WhitePawn.new
		@wp6 = WhitePawn.new
		@wp7 = WhitePawn.new
		@wp8 = WhitePawn.new

		@b.insert(1,0, @wp1)
		@b.insert(1,1, @wp2)
		@b.insert(1,2, @wp3)
		@b.insert(1,3, @wp4)
		@b.insert(1,4, @wp5)
		@b.insert(1,5, @wp6)
		@b.insert(1,6, @wp7)
		@b.insert(1,7, @wp8)


		@bp1 = BlackPawn.new
		@bp2 = BlackPawn.new
		@bp3 = BlackPawn.new
		@bp4 = BlackPawn.new
		@bp5 = BlackPawn.new
		@bp6 = BlackPawn.new
		@bp7 = BlackPawn.new
		@bp8 = BlackPawn.new

		@b.insert(6,0, @bp1)
		@b.insert(6,1, @bp2)
		@b.insert(6,2, @bp3)
		@b.insert(6,3, @bp4)
		@b.insert(6,4, @bp5)
		@b.insert(6,5, @bp6)
		@b.insert(6,6, @bp7)
		@b.insert(6,7, @bp8)


		@b.show
		@game_in_progress = true
		@game_loop
	end
		
	def game_loop
		while @game_in_progress == true do
			puts "What piece would you like to move? [0-7],[0,7]:"
			input = gets.chomp
			x = input.split(",")[0].to_i
			y = input.split(",")[1].to_i
			hand = @b.get(x,y)
			@b.insert(x,y, nil)
			

			puts "Where would you like it to move? [0-7], [0-7]:"
			input2 = gets.chomp
			a = input2.split(",")[0].to_i
			b = input2.split(",")[1].to_i
			@b.insert(a,b, hand)

			@b.show
		

		end
 
	end



end

