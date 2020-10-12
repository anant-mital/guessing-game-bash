create: guessinggame.sh 
	touch README.md
	echo "# Guessing Game " > README.md
	echo "  "
	echo "Date and time at which make was run :" >> README.md
	date >> README.md
	echo "  "
	echo "The bash script guessinggame.sh contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
