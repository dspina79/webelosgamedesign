# Simple Pick a Number Game

# create a random number
def generate_number(max)
    return (rand() * max).to_i + 1
end

# play a round of guess the number
def play_round()
    print("What is your name? ")
    name = gets.chomp
    print("Hello #{name}. Welcome to the game!\n")
    max_num = 50
    actual_num = generate_number(max_num) 
    print("\nI am thinking of a number between 1 and #{max_num}. \nWhat is it?")
    tries = 0
    win = false

    # only allow 8 tries for now
    while tries < 8
        if tries == 0
            print("\nYour guess: ")
        else 
            print("\nTry again: ")
        end
        tries += 1
        guess = gets.chomp.to_i

        if guess == actual_num
            print("You got it, #{name}!!!\nYOU ARE A WINNER!!!\n")
            print("\nNumber of Tries: #{tries}\n\n")
            win = true
            break
        elsif guess < actual_num
            print("Sorry, the number is higher than #{guess}.\n")
        else
            print("Sorry, the number is lower than #{guess}.\n")
        end     
    end
    
    # assuming we are beyond 8 guesses
    if !win
        print("\nYou did not guess in the number of times required.")
        print("\nThe real numbers was #{actual_num}")
        print("\nGame Over\n\n\n")
    end
end

# start!
play_round()