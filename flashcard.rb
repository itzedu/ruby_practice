module Flashcards
  class Application
    def initialize
      @decks = []
    end

    def << deck
      @decks << deck
    end

    def play
      display_decks
      puts "Pick a deck"
      deck = get_deck
      deck.play
    end

    def display_decks
      @decks.each {|deck| puts deck.name}
    end

    def get_deck
      name = gets.chomp
      @decks.detect {|deck| deck.name == name}
    end
  end


  class Card
    attr_accessor :front, :back

    def initialize front, back
      @front = front
      @back = back
    end

    def correct? guess
      guess == @back
    end

    def play
      puts "#{front} > "
      guess = gets.chomp
      if correct? guess
        puts "Correct"
      else
        puts "Incorrect, the answer was #{back}"
      end
    end 
  end 

  class MultipleAnswerCard < Card
    def correct? guess
      answers = @back.split(",")
      answers.any? {|answer| answer == guess} 
    end
  end

  class Deck
    attr_accessor :name, :cards
    
    def initialize name
      @name = name
      @cards = []
    end

    def << card
      @cards << card
    end

    def play
      shuffle
      puts "Playing the #{name} deck"
      @cards.each(&:play)
    end

    def shuffle
      @cards.shuffle!
    end
  end
end

card1 = Flashcards::Card.new("cat", "neko")
card2 = Flashcards::Card.new("dog", "inu")
card3 = Flashcards::Card.new("snake", "hebi")
card = Flashcards::MultipleAnswerCard.new("Violin", "baiorin,viorin")

deck1 = Flashcards::Deck.new("Japanese")
deck1 << card1
deck1 << card2
deck1 << card3
deck1 << card


deck2 = Flashcards::Deck.new("Russian")

app = Flashcards::Application.new
app << deck1
app << deck2
app.play


