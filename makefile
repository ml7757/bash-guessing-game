all: readme.md info git

DATE=$(shell date +"%d %b %Y")
TIME=$(shell date +"%H:%M:%S")
LINES=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")

readme.md:
	touch README.md

info: readme.md guessinggame.sh
	echo "# Bash Guessing Game" > README.md
	echo "* The make command was run on **${DATE}** at **${TIME}**" >> README.md
	echo "* There are **${LINES}** lines of code in guessinggame.sh" >> README.md

git: readme.md
	git add README.md
	git commit -m "readme.md added"
	git push

clean:
	rm README.md
