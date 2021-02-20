require './deck'
require './card'

puts "What would you like to do?"
puts "Create a single (c)ard, Create a new (d)eck"

option = gets.downcase.chomp

case option
when "c"
    continue = "y"
    while continue == "y"
        puts "\nWhat value?"
        x_value = gets.to_i
        while x_value < 1 || x_value > 13
            puts "Invalid value, must be between 1 and 13. Try again:"
            x_value = gets.to_i
        end
        puts "\nWhat suit?"
        x_suit = gets.chomp
        while x_suit.downcase != "clubs" && x_suit.downcase != "spades" && x_suit.downcase != "hearts" && x_suit.downcase != "diamonds"
            puts "Invalid suit. Please try again:"
            x_suit = gets.chomp
        end
        card = Card.new(x_value, x_suit)
        puts "\nYour card is the #{card.face} of #{card.suit}."
        puts "\nCreate another card? (Y)es or (N)o"
        continue = gets.downcase.chomp
end
when "d"
    deck = Deck.new
    p deck
    continue = "y"
    while continue == "y"
        puts "\nDo you want to (s)huffle deck or (d)raw a random card?"
        deck_action = gets.downcase.chomp
        if deck_action == "d"
            deck.draw
        elsif deck_action == "s"
            deck.shuffle
        end
        puts "\nPerform another operation? (Y)es or (N)o"
        continue = gets.downcase.chomp
    end
end





