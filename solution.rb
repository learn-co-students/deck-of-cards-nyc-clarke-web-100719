class Deck
attr_accessor :cards 

@@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
@@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

def initialize
    @cards = []
    @@rank.each do |ran|
        @@suit.each do |sui|
            @cards << Card.new(sui,ran)
        end
    end
end

def choose_card
    cards.pop
end

end

class Card
attr_accessor :rank, :suit
    def initialize(suit,rank)
        @rank = rank
        @suit = suit
    end
end
