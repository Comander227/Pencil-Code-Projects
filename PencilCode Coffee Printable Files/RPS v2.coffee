# Set Up My Choices

choices = ['Rock', 'Paper', 'Scissors'];
playerScore = 0;
compScore = 0;
tiesCount = 0;


hide();

# Functions

reset = () -> 
  cs();
  movexy -50, 100;
  for choice in choices
    button choice, do (choice) -> -> play(choice)
    movexy 80, 0;
  

clearScore = () ->
  cs();
  playerScore = 0;
  compScore = 0;
  tiesCount = 0;
  reset();

  

play = (userChoice) ->
  computerChoice = choices[random 3];
  
  pu();
  cs();
  
  movexy -100, 50;
  write "You chose: " + userChoice;
  movexy 0, -30;
  write "Compter chose: " + computerChoice;
  
  
  if userChoice is computerChoice
    result = "It's A Tie.";
    tiesCount += 1;
  else if (userChoice is 'Rock' and computerChoice is 'Scissors') or (userChoice is 'Paper' and computerChoice is 'Rock') or (userChoice is 'Scissors' and computerChoice is 'Paper')
    result = "You Win!";
    playerScore += 1;
  else
    result = "You Lose!";
    compScore += 1;
    
  movexy 0, -30;
  write result;
  movexy 0, -30;
  write "You: " + playerScore;
  movexy 0, -30;
  write "Computer: " + compScore;
  movexy 0, -30;
  write "Ties: " + tiesCount;
  
  button "Play Again", do () -> -> reset();
  button "Clear Scores", do () -> -> clearScore();


movexy -50, 100;
for choice in choices
  button choice, do (choice) -> -> play(choice)
  movexy 80, 0;
  
