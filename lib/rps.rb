class RockPaperScissors
      def initialize(guess)
        @plaer_1_guess = guess
      end
    
    def play
      @computer_choice = random_choice
  
      if @plaer_1_guess == @computer_choice
        return "tie!"
      elsif (@plaer_1_guess == "rock" && @computer_choice == "scissors") ||
            (@plaer_1_guess == "paper" && @computer_choice == "rock") ||
            (@plaer_1_guess == "scissors" && @computer_choice == "paper")
        return "won!"
      else
        return "lost!"
      end
    end
  
    def random_choice
      number_to_choice(Random.new.rand(1...4))
    end

    private
  
    def number_to_choice(number)
      case number
      when 1
        number = "rock"
      when 2
        number = "paper"
      when 3
        number = "scissors"
      end
      return number
    end
  
  end
  