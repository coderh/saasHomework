class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)

    strategy1 = player1[1].downcase
    strategy2 = player2[1].downcase

    
    if (strategy1 != 'p' and strategy1 != 's' and strategy1 != 'r') or (strategy2 != 'p' and strategy2 != 's' and strategy2 != 'r') 
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S")
    end

    if (strategy1 == 'p' and strategy2 == 's') or
      (strategy1 == 's' and strategy2 == 'r') or
      (strategy1 == 'r' and strategy2 == 'p')
      player2
    elsif (strategy2 == 'p' and strategy1 == 's') or
      (strategy2 == 's' and strategy1 == 'r') or
      (strategy2 == 'r' and strategy1 == 'p') or
      (strategy1 == strategy2)
      player1
    end
  end

  def self.tournament_winner(tournament)

    if tournament[0][0].is_a?(String)
      self.winner(tournament[0], tournament[1])
    else
      self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))    
    end
  end

end