### Description details:

- 2 player game
- turn based game
- each turn consists of:
  - math question is generated:
  - determined by picking two numbers between 1 and 20
- the player whose turn it is:
  - is prompted with the question
    - either answers the question correctly or loses a life
- each player has:
  - 3 lives at game start
  - a score tracking where they stand
- when game ends:
  - occurs when one of the players lose all their lives.
    - at this point the game should announce who won and what the other player's score is.

### exanple prompt for reference:

- Player 1: What does 5 plus 3 equal?
- "> 9"
- Player 1: Seriously? No!
- P1: 2/3 vs P2 3/3
- --- NEW TURN ---
- Player 2: What does 2 plus 6 equal?
- "> 8"
- Player 2: YES! you are correct.
- P1: 2/3 vs P2: 3/3
- --- NEW TURN ---
- --- some time later ---
- Player 1 wins with a score of 1/3
- --- GAME OVER ---
- Good bye!

### entity considerations

1. question logic

- written as the QuestionLogic module
- consists of methods on that class that do the various things that happen each turn
  - generates question
  - handles logic regarding quesiton interaction.

2. players

- written as the Players class
- handles player attributes such as:

  - lives
  - score
  - current

3. message references

- written as MessageReferences module
- handles various re-used messges like:

  - " --- NEW TURN ---"
  - " P1: x/x vs P2 x/x"
  - "Player x: Seriously? No!"
  - "Player x: Yes! you are correct."
  - "Player x: What does x y z equal?"
  - also handles some single reference messages like:
    - " ---GAME OVER ---"
    - "Good bye!

4. overall game logic (will be main.rb by convention)

- root of project
- combines all above classes.
