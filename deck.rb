require "./card"

class Deck
    attr_accessor :cards
    def initialize
        @cards = []
        values = (1..13).to_a
        suits = ["Clubs", "Hearts", "Diamonds", "Spades"]
        values.each do |value|
            suits.each do |suit|
                @cards << Card.new(value, suit)
            end
        end
    end
    def shuffle
        p @cards.shuffle!
    end
    def draw
        p @cards.slice!(rand(@cards.length))
    end
end