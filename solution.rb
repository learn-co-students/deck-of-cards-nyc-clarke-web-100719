class Deck

    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits =  ["Hearts", "Clubs", "Diamonds", "Spades"]

        ranks.each do |rank|
            suits.each do |suit|
                card = Card.new(suit, rank)
                card.deck = self
            end
        end
    end

    def cards
        Card.all.select { |card| card.deck == self }
    end

    def choose_card
        dealt_card = cards.sample
        Card.all.delete(dealt_card)
        dealt_card
    end
end

class Card
    attr_reader :rank, :suit
    attr_accessor :deck

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
