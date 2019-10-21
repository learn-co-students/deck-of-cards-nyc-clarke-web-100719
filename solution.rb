class Deck

    attr_reader :cards

    @@suits =["Hearts", "Clubs", "Diamonds", "Spades"]
    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    def initialize
            @cards = []
            @@suits.each{|suit|
                @@ranks.each{|rank|
                    @cards << Card.new(suit, rank)        
                }
            }
    end

    def choose_card
        cards.pop
    end
end

class Card
    attr_accessor :rank, :suit

    def initialize(suit, rank)

        @rank = rank
        @suit = suit

    end

end

