# Variables
README = README.md
SCRIPT = guessinggame.sh

# Default target
all: $(README)

# Rule to generate the README.md
$(README): $(SCRIPT)
	echo "# Guessing Game" > $(README)
	echo "\n## Project Details" >> $(README)
	echo "- Date and time of make: $$(date)" >> $(README)
	echo "- Number of lines in guessinggame.sh: $$(wc -l < $(SCRIPT))" >> $(README)

clean:
	rm -f $(README)
