def shuffle(cards)
end

def game()
    suit_deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 100]
    complete_deck = []
    for x in 1..4 do
        for c in suit_deck
            complete_deck.push(c)
        end
    end

    puts complete_deck
end

game()