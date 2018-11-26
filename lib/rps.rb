class RockPaperScissors
  attr_accessor :player_score
  
      def initialize(guess)
        @player_1_guess = guess
        @player_score = @computer_score = @ties = 0
      end

    def play(winning_score)
      while @player_score < winning_score && @computer_score < winning_score         
       
        @computer_choice = random_choice
    
        if @player_1_guess == @computer_choice
          return "tie!"
        elsif (@player_1_guess == "rock" && @computer_choice == "scissors") ||
              (@player_1_guess == "paper" && @computer_choice == "rock") ||
              (@player_1_guess == "scissors" && @computer_choice == "paper")
              @player_score += 1
          return "won!"
        else
          @player_score += 1
          return "lost!"
        end
      end
    end
    
      def random_choice
        number_to_choice(Random.new.rand(1...4))
      end

    private
  
    def number_to_choice(number)
      case number
      when 1
        choice = "rock"
      when 2
        choice = "paper"
      when 3
        choice = "scissors"
      end
      return number
    end
  
  end
  