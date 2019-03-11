# Blackjack Game
# these are hashes. later they are converted to an array by to_a
# This hash stores the four suits of cards
Suits = ["Clubs", "Hearts", "Spades", "Diamonds"]
# this hash stores the possible cards being drawn by dealer
Ranks = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
$d = []

# initiates the Card class, which becomes a global constant
class Card
  # calls the Enumerable modules which holds methods for searching, sorting
  include Enumerable
  # class variables (private)
  @@suit_value = Hash[Suits.each_with_index.to_a] # converts the hash into an array
  @@rank_value = Hash[Ranks.each_with_index.to_a]
# the attribute reader and accessor are a method called on the current class and :name is a paramater that I pass to that method
  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(rank, suit)
    @rank = rank # create an instance variable, @@ is a class variable
    @suit = suit
  end

  def value
    value = case @rank.to_i # variable equals (switch statement) the initialize rank function to integer (to_i)
    when 1 # when 1 is drawn it is 11
      11
    when 2..10 # when between 2 and 10, the rank is unchanged
      @rank
    when 11..13
      10
    else
      nil
    end
  end

  def display_rank
    case @rank
    when "11"
      "Jack"
    when "12"
      "Queen"
    when "13"
      "King"
    when "1"
      "Ace"
    else
      @rank
    end
  end

  def to_s
    "#{display_rank} of #{@suit}, value #{value}"
  end
end

# Below is the test function
# card = Card.new(12,"Spades")
# puts card.to_s

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    Suits.each do |suit|
      Ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end
  def draw
    @cards.pop
  end
  def remaining
    @cards.length
  end
end

# d.cards.each do |card|
# puts card.to_s
# end

class Player
  attr_accessor :hand, :hand_value, :ace_count
  def initialize
    @hand = []
    @hand_value = 0
    @ace_count = ace_count
    2.times do
      card = $d.draw
      @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
      @hand << card
    end

    def hit
      card = $d.draw
      @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
      @hand_value -= 10
    end
  end

  def switch_ace
    while @hand_value > 21 && @ace_count > 0
      @ace_count -= 1
      @hand_value -= 10
    end
  end

  def to_s
    puts "#{@hand.to_s}, total value #{@hand_value}"
  end
end
################################################################################

# Testing the code
$d = Deck.new
$d.shuffle!
puts "A new deck has been shuffled and there are #{$d.remaining} cards"

playah = Player.new
puts "Player's hand:"
puts playah.to_s
dealah = Player.new

if playah.hand_value == 21
  puts "Player wins with Blackjack!"
  puts "Dealer's hand:"
  puts dealah.to_s
else
  until playah.hand_value > 21
    playah.switch_ace
    puts "Do you want to hit(h) or stay(s)?"
    action = $stdin.gets.chomp
    if action == "h"
      puts "You chose to hit, here's your new hand"
      playah.hit
      puts playah.to_s
    else
      puts "You chose to stay, here's your final hand"
      puts playah.to_s
      break
    end
  end

  puts "Dealer's hand:"
  puts dealah.to_s

  if playah.hand_value <= 21
    if playah.hand_value > dealah.hand_value
      puts "Player wins"
    elsif playah.hand_value == dealah.hand_value
      puts "Dealer and Player tied"
    else
      puts "Dealer wins"
    end
  else
    puts "Player busts. Dealer wins"
  end
end

puts "There are #{$d.remaining} cards in the deck"
