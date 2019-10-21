class Deck
    attr_accessor :cards

    def initialize
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @cards = []
        rank.each do |rank|
            suit.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        rand_card = @cards.sample
        @cards.delete(rand_card)
    end
end

class Card
    attr_accessor :suit, :rank, :deck

    @@all = []

    def initialize(suit, rank)
        @rank = rank
        @suit = suit

        @@all << self
    end

    def self.all
        @@all 
    end
end
