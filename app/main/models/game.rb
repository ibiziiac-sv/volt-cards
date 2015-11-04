class Game < Volt::Model
  field :secret, String
  field :score, Numeric
  field :cards
  DECK = [
    {rank: '10'},
    {rank: 'J' },
    {rank: 'K' },
    {rank: 'Q' },
    {rank: 'A' }
  ]

  def start_round
    self.secret = DECK.sample[:rank]
    self.cards = DECK.shuffle
    self
  end
end
