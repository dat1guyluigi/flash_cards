require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  context 'initialize' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    it 'exists' do
      expect(deck).to be_a(Deck)
    end

    it 'has cards' do
      expect(deck.cards).to eq([card_1, card_2, card_3])
    end

    it 'can count cards' do
      expect(deck.count).to eq(3)
    end

    it 'shows cards with category' do
      expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
    end
  end
end
