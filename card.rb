class Card
    attr_reader :value, :suit
    def initialize (value, suit)
        suits = ["clubs", "spades", "hearts", "diamonds"]
        if value.is_a?(Integer) && value >= 1 && value < 14
            @value = value
        else raise ArgumentError, "Invalid value"
        end
        if suits.include?(suit.downcase)
            @suit = suit
        else raise ArgumentError, "Invalid suit"
        end
    end
    def value
        p @value.to_i
    end
    def suit
        p @suit.to_s
    end
    def face
        if @value > 1 && @value < 11
            p @value.to_s
        elsif @value == 1
            p 'Ace'
        elsif @value == 11
            p 'Jack'
        elsif @value == 12
            p 'Queen'
        elsif @value == 13
            p 'King'
        end
    end
end