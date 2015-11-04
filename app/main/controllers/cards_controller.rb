module Main
  class CardsController < Volt::ModelController
    private

    def guess_card
      if page._game._secret == attrs.rank
        flash._successes << "Nice!"
        page._game._score += 10
        page._game.start_round
      else
        flash._errors << "Try again!"
        page._game._score -= 10
      end
    end
  end
end
