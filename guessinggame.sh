function guess {
	file_count=$(ls | wc -l)

	echo "Guess how many files are in the current directory:"

	read response

	while [[ $response -ne $file_count ]]
	do
		if [[ $response -gt $file_count ]]
		then
			echo "Too high! Guess again:"
		else
			echo "Too low! Guess again:"
		fi

		read response
	done

	echo "Congrats! Your guess was spot on."
}

guess
