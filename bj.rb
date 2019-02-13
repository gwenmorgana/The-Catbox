# Blackjack Game

Suits = ["Clubs", "Hearts", "Spades", "Diamonds"]
Ranks = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
$d = []

class Card
  include Enumerable
  # class variables (private)
  @@suit_value = Hash[Suits.each_with_index.to_a]
  @@rank_value = Hash[Ranks.each_with_index.to_a]

  attr_reader :rank, :suit
  attr_accessor :value

  
