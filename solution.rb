class Deck
    attr_reader :cards 
    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        ranks.each do |rank|
            suits.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
        
    end

    def choose_card
         rand_card = cards.sample
         cards.delete(rand_card)
    end
end

class Card
    attr_reader :suit, :rank
    attr_accessor :deck
    @@all = []
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end
end
