README.md: guessinggame.sh
	echo "##  Game: guess the number of files in the current directory" >  README.md
	echo "### Part of The Unix Workbench (coursera) assessment" >> README.md
	echo "make run/README.md creation:" >> README.md
	date '+%Y-%m-%d %H:%M:%S' >> README.md
	echo "<br/>Count of lines in guessinggame.sh file:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
