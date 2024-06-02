#!/bin/bash

case "$1" in
    --date)
        date
        ;;
    --logs)
        num_files=${2:-100}
        for ((i=1; i<=num_files; i++))
        do
            filename="log$i.txt"
            echo -e "Nazwa pliku: $filename\nNazwa skryptu: $0\nData: $(date)" > $filename
        done
        ;;
    --help)
        echo "Dostępne opcje:"
        echo "--date          Wyświetla dzisiejszą datę"
        echo "--logs [num]    Tworzy pliki logx.txt (domyślnie 100 plików, opcjonalnie [num] plików)"
        echo "--help          Wyświetla wszystkie dostępne opcje"
        ;;
    *)
        echo "Nieznana opcja: $1"
        ;;
esac