def play_round(p1Cards, p2Cards)
    player1_pile = []
    player2_pile = []

    while p1Cards.size() > 0 && p2Cards.size() > 0
        p1Card = p1Cards.pop()
        p2Card = p2Cards.pop()

        if p1Card >= p2Card
            #puts "Player 1 wins"
            player1_pile.push(p1Card)
            player1_pile.push(p2Card)
        else
            #puts "Player 2 wins"
            player2_pile.push(p2Card)
            player2_pile.push(p1Card)
        end
    end
    p1Cards += player1_pile
    p2Cards += player2_pile
    return [p1Cards, p2Cards]
end


def game()
    player1_cards = []
    player2_cards = []
    suit_deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 100]
    complete_deck = []
    for x in 1..4 do
        for c in suit_deck
            complete_deck.push(c)
        end
    end

    shuffled_deck = complete_deck.shuffle()
    
    # split
    p1 = true
    for c in shuffled_deck
        if p1
            player1_cards.push(c)
        else
            player2_cards.push(c)
        end
        p1 = !p1
    end

    rounds = 1
    while player1_cards.size() > 0 && player2_cards.size() > 0 do 
        round_result = play_round(player1_cards, player2_cards)
        player1_cards = round_result[0]
        player2_cards = round_result[1]
        #puts "Player 1: #{player1_cards.size()}"
        #puts "Player 2: #{player2_cards.size()}"
        rounds += 1
    end
    
    puts "After #{rounds} rounds."
    puts "Player 1: #{player1_cards.size()}"
    puts "Player 2: #{player2_cards.size()}"
end

game()