README.md: guessinggame.sh
	echo "# Juego de Adivinanzas\n" > README.md
	echo "Fecha y hora de creación: $$(date)" >> README.md
	echo "Número de líneas de código en guessinggame.sh: $$(cat guessinggame.sh | wc -l)" >> README.md

.PHONY: clean
clean:
	rm -f README.md
