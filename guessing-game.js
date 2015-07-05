
// Generate a random number between 1 and 100.
number = Math.round((Math.random() * 100))%100  + 1;


// Do this loop for each guess. Leave the loop when the guess is
// correct or when 7 incorrect guesses have been made.

counter = 0;
do
	{
	counter++;

	guess = prompt("What's your guess?");
	console.log("Guess #"+counter+" was "+guess+".");

	if (guess == number) {
		alert("Congratulations! You guessed correctly!");
		}
	else  {
		if (guess < number)  {
			alert("Too small. Guess again.");
			}
		else  {
			alert("Too big. Guess again.");
			}
		}

		
	} while (counter <7 && guess != number);

if (guess != number) {
		alert("Sorry, you lose. The number was " + number+".");
		}

