require './lib/rps.rb'

describe "Rock Paper Scissors" do

    it "declares tie in case rock vs rock" do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('rock')
      game = RockPaperScissors.new('rock')
      expect(game.play(10)).to eq "tie!"
    end
  
    it "declares win in case rock beat scissors" do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('scissors')
      game = RockPaperScissors.new('rock')
      expect(game.play(10)).to eq "won!"
    end
  
    it "declares win in case paper beat rock" do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('rock')
      game = RockPaperScissors.new('paper')
      expect(game.play(10)).to eq "won!"
    end
  
    it "declares win in case scissors beat paper" do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('paper')
      game = RockPaperScissors.new('scissors')
      expect(game.play(10)).to eq "won!"
    end

    it "counts players' score" do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('paper')
      game = RockPaperScissors.new('scissors')
      game.play(10)
      game.play(10)
      expect(game.player_score).to eq 2
    end

    it 'playes until winning score is met' do
      allow_any_instance_of(RockPaperScissors).to receive(:random_choice).and_return('paper')
      game = RockPaperScissors.new('scissors')
      12.times {
        game.play(10)
      }
      expect(game.player_score).to eq 10
    end
  
end
  