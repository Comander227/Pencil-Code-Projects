RPS Pencil Code
# Set up choices
choices = ['Rock', 'Paper', 'Scissors']

# Function to handle user choice
play = (userChoice) ->
  # Generate computer choice
  computerChoice = choices[Math.floor Math.random() * 3]
  
  # Clear previous results
  pen up
  clear()
  
  # Show player and computer choices
  move -100, 50
  write "You chose: " + userChoice, "blue"
  move 0, -30
  write "Computer chose: " + computerChoice, "red"
  
  # Determine winner
  if userChoice is computerChoice
    result = "It's a tie!"
  else if (userChoice is 'Rock' and computerChoice is 'Scissors') or 
          (userChoice is 'Paper' and computerChoice is 'Rock') or 
          (userChoice is 'Scissors' and computerChoice is 'Paper')
    result = "You win!"
  else
    result = "Computer wins!"

  # Display result
  move 0, -30
  write result, "purple"

# Create buttons for each choice
move -50, 100
for choice in choices
  button choice, do (choice) -> -> play(choice)
  move 80, 0
