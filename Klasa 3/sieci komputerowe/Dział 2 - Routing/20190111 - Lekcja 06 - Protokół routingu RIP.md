# Lekcja 6 - Protokół routingu RIP

## Cechy protokołu RIP (Routing Information Protocol)

Routery wymieniają się swoimi tablicami routingu co określone odstępy czasu - RIP standardowo co 30 sekund (z małymi różnicami). Metryką trasy w protokole RIP jest ilość hopów, jaką musi pokonać pakiet, by dotrzeć do sieci/hosta (1-14; 15 = trasa nieosiągalna). Jest to "głośny" protokół - co 30 sekund wymieniamy pełne tablice. Tylko druga wersja protokołu RIP2 lub RIPv2 przesyła maskę dla trasy.

## Zasada działania


Protokół RIP rozsyła swoją tablicę routingu do sąsiednich routerów, a one wpisują sobie informacje na temat najlepszych tras do swojej tablicy. Jeśli mają lepszą trasę, to jej nie wpisują.

Protokołu RIP najlepiej nie stosować - są lepsze, efektywniejsze i o większych możliwościach.

`Ctrl-Shift-6` - anuluj wykonywanie komendy
