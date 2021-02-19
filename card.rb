class Card
    attr_reader :value, :suit
    def initialize (value, suit)
        @value = value
        @suit = suit
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