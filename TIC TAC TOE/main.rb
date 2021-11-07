class Board
    attr_accessor :winner
    def initialize
        @board = Array.new(3){Array.new(3," ")}
        @winner = ""
        how_to_play
    end


    public
    def print_board
        @board.each do |row|
            puts row.to_s
        end
    end

    def add_mark(mark, x_positon,y_position)
        @board[x_positon][y_position] = mark
        check_for_winner
        print_board
    end


    private

    def how_to_play
        puts "This is a simple Tic TAC TOE Game\nThis is a 3 x 3 board game\nStarting by (0,0) at upper left corner\nEnding by (2,2) at bottom right corner\nThat X increases at right direction an Y increases ant bottom direction\nInput form [X,O] x_position y_position"
    end

    def check_for_winner
       @winner = check_diagonals
       @winner = check_rows
       @winner = check_columns

    end

    def check_diagonals 
        if ((@board[0][0] == @board[1][1]) && (@board[1][1] == @board[2][2])) ||
            ((@board[0][2] == @board[1][1]) && (@board[1][1] == @board[2][0]))
          @board[1][1]
        end
    end

    def check_columns
        #check columns
        if (@board[0][0] == @board[1][0]) && (@board[1][0] == @board[2][0])
            @board[1][0]
        end
        if (@board[0][1] == @board[1][1]) && (@board[1][1] == @board[2][1])
            @board[1][1]
        end
        if (@board[0][2] == @board[1][2]) && (@board[1][2] == @board[2][2])
            @board[1][2]
        end
    end

    def check_rows
         #check rows
         if (@board[0][0] == @board[0][1]) && (@board[0][1] == @board[0][2])
            @board[0][1]
        end
        if (@board[1][0] == @board[1][1]) && (@board[1][1] == @board[1][2])
            @board[1][1]
        end
        if (@board[2][0] == @board[2][1]) && (@board[2][1] == @board[2][2])
            @board[2][1]
        end
    end

end




def main
    #create board and wait for user inputs
    board = Board.new()
    board.print_board()
    while board.winner.strip.empty?
        input = gets.chomp.split(" ")
        board.add_mark(input[0].downcase,input[2].to_i,input[1].to_i)
    end
    puts "Winner is #{board.winner}"

end

main()