require './lib/rps.rb'

describe "Rock Paper Scissors" do

    it "declares tie in case rock vs rock" do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('rock')
      game = RockPaperScissors.new('rock')
      expect(game.play).to eq "tie!"
    end
  
    it "declres win in case rock beat scissors" do
        allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('scissors')
      game = RockPaperScissors.new('rock')
      expect(game.play).to eq "won!"
    end
  
    it "declres win in case paper beat rock" do
        allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('rock')
      game = RockPaperScissors.new('paper')
      expect(game.play).to eq "won!"
    end
  
    it "declres win in case scissors beat paper" do
        allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('paper')
      game = RockPaperScissors.new('scissors')
      expect(game.play).to eq "won!"
    end
  
end
  