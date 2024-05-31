#!/bin/bash

# Función para contar el número de archivos en el directorio actual
count_files() {
    local num_files=$(ls -l | grep "^-" | wc -l)
    echo $num_files
}

# Función principal del juego
guessing_game() {
    local num_files=$(count_files)
    local guess=-1

    echo "¡=== Bienvenido ==== :D!"
    echo "Adivina cuántos archivos hay en el directorio actual."

    while [ $guess -ne $num_files ]; do
        read -p "Introduce tu estimación: " guess

        if [ $guess -lt $num_files ]; then
            echo "Tu estimación es demasiado baja."
        elif [ $guess -gt $num_files ]; then
            echo "Tu estimación es demasiado alta."
        fi
    done

    echo "¡Felicidades! Has adivinado correctamente que hay $num_files archivos en el directorio."
}

# Llamada a la función principal del juego
guessing_game