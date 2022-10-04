import random

def diceRoll(min, max):
    return random.randint(min, max)

def scoreBoard(scoreOne, scoreTwo):
    print("playerOne: ",scoreOne," playerTwo: ",scoreTwo,"\n")

def playerOne(scoreOne, scoreTwo):
        while scoreOne != 0:
            scoreBoard(scoreOne, scoreTwo)
            userChoice = int(input("playerOne, what would you like to do? Enter 0 to exit the game, 1 to continue rolling, 2 to hold your score: "))
            if userChoice == 0:
                scoreBoard(scoreOne, scoreTwo)
                exit(0)
            elif userChoice == 1:
                die = diceRoll(1,6)
                if die == 6:
                    print("playerOne rolled a 6, the game ended.")
                    scoreBoard(scoreOne, scoreTwo)
                    exit(0)
                else:
                   print("playerOne rolled a ",die,".")
                   scoreOne += die
                   playerTwo(scoreOne, scoreTwo)
            elif input == 2:
                scoreBoard(scoreOne, scoreTwo)
                print("playerOne held their score, it's playerTwo's turn.")
                playerTwo(scoreOne, scoreTwo)

def playerTwo(scoreOne, scoreTwo):
        while scoreTwo != 0:
            scoreBoard(scoreOne, scoreTwo)
            userChoice = int(input("playerTwo, what would you like to die? Enter 0 to exit the game, 1 to continue rolling, 2 to hold your score: "))
            if userChoice == 0:
                scoreBoard(scoreOne, scoreTwo)
                exit(0)
            elif userChoice == 1:
                die = diceRoll(1,6)
                if die == 6:
                    print("playerTwo rolled a 6, the game ended.")
                    scoreBoard(scoreOne, scoreTwo)
                    exit(0)
                else:
                   print("playerTwo rolled a ",die,".")
                   scoreTwo += die
                   playerOne(scoreOne, scoreTwo)
            elif input == 2:
                scoreBoard(scoreOne, scoreTwo)
                print("playerTwo held their score, it's playerOne's turn.")
                playerOne(scoreOne, scoreTwo)

scoreOne: int=10 #initialising the score as 10
scoreTwo: int=10

print("------GAME INSTRUCTIONS------")
print("All players start with 10 points.")
print("If the number on the dice is 1, 2, 3, 4 or 5, the number is added to each player’s score. If the number is 6, the score of all players is reduced to zero.")
print("Before the dice is rolled each player is given the choice of continuing or taking their current score as their final score.")
print("This process is repeated until a 6 is rolled and the game ends. All players still playing at this point receive zero as their final score.\n")

playerOne(scoreOne, scoreTwo)
playerTwo(scoreOne, scoreTwo)
