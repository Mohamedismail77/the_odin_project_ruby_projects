class Board
    attr_accessor :winner
    def initialize
        @board = Array.new(3){Array.new(3," ")}
        @winner = ""
    end


    public
    def printBoard
        @board.each do |row|
            puts row.to_s
        end
    end

    def addMark(mark, x_positon,y_position)
        @board[x_positon][y_position] = mark
        checkForWinner
        printBoard
    end


    private
    def createCell(value)
        for i in 0...3 do
            puts "***"
            puts "*#{value}*"
            puts "***"
        end
    end

    def checkForWinner
        if ((@board[0][0] == @board[1][1]) && (@board[1][1] == @board[2][2])) ||
            ((@board[0][2] == @board[1][1]) && (@board[1][1] == @board[2][0]))
          @winner = @board[1][1]
          return
        end

        #check columns
        if (@board[0][0] == @board[1][0]) && (@board[1][0] == @board[2][0])
            @winner = @board[1][0]
            return
        end
        if (@board[0][1] == @board[1][1]) && (@board[1][1] == @board[2][1])
            @winner = @board[1][1]
            return
        end
        if (@board[0][2] == @board[1][2]) && (@board[1][2] == @board[2][2])
            @winner = @board[1][2]
            return
        end


        #check rows
        if (@board[0][0] == @board[0][1]) && (@board[0][1] == @board[0][2])
            @winner = @board[0][1]
            return
        end
        if (@board[1][0] == @board[1][1]) && (@board[1][1] == @board[1][2])
            @winner = @board[1][1]
            return
        end
        if (@board[2][0] == @board[2][1]) && (@board[2][1] == @board[2][2])
            @winner = @board[2][1]
            return
        end
     
    
    end

end




def main
    #create board and wait for user inputs
    board = Board.new()
    board.printBoard()
    while board.winner.strip.empty?
        input = gets.chomp.split(" ")
        board.addMark(input[0],input[1].to_i,input[2].to_i)
    end
    puts "Winner is #{board.winner}"

end

main()