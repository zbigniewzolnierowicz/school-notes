# Lekcja 07 - Protokół IGRP (Interior Gateway Routing Protocol)

## IGRP

To własnościowy protokół firmy Cisco wykorzystywany w sieciach IPv4 opracowany w 1984 roku. Do jego podstawowych cech charakterystycznych należą:

- wyznaczanie złożonej metryki na podstawie szerokości pasma, opóźnienia, obciążenia i niezawodności,
- aktualizacje wysyłane są na adres rozgłoszeniowy co kilka sekund.

## EIGRP

W 1992 roku protokół IGRP został zastąpiony przez Enhanced Interior Gateway Routing Protocol (EIGRP). Podobnie jak RIPv2, protokół EIGRP wspiera obsługę techniki VLSM i CIDR. Używany w sieciach o wielkości nieprzekraczającej 50 routerów. EIGRP zwiększa efektywność, zmniejsza liczbę wysyłanych aktualizacji i wspiera bezpieczną wymianę komunikatów. Obsługuje sumaryzację i wspiera uwierzytelnianie.

### Ograniczone i wyzwalane aktualizacje

EIGRP nie wysyła aktualizacji okresowych. Aktualizacje wysyłane są tylko wtedy, gdy zajdą zmiany w tablicy routingu. Dzięki temu ograniczono obciążenie sieci. Aktyalizacje wyzwalane oznaczają, że EIGRP wysyła je tylko do sąsiadów, którzy ich potrzebują. Dzięki temu zużywane jest mniejsze pasmo, co jest istotne zwłaszcza w dużych sieciach.

### Mechanizm podtrzymywania połączenia

Komunikaty o bardzo małych rozmiarach tzw. HELLO, używane są przez EIGRP do wykrywania sąsiadów i do tworzenia z nimi przyległości. Dzięki temu zużywa się mniej zasobów sieciowych w porównaniu z aktualizacjami okresowymi.

### Tablica topologii

Przechowuje wszystkie trasy, poznane dzięki sąsiadom, algorytm DUAL może dodawać trasy zapasowe do tablicy topologii EIGRP.

### Szybkie osiąganie zbieżności

Protokół ten w większości przypadków osiąga stan zbieżności najszybciej ze wszystkich protokołów klasy IGP, ponieważ zawiera informacje o alternatywnych trasach, dzięki czemu umiżliwia niemal natycmiastową zbieżność. Jeśli podstawowa trasa staje się niedostępna, router może skorzystać z trasy alternatywnej. Przełączenie się na alternatywną trasę jest automatyczne i nie wymaga innych routerów.

### Wsparcie obsługi różnych protokołów warstwy sieciowej

EIGRP używa modułów PDM (Protocol Dependent Modules), co oznacza, że jest jedynym protokołem , który wspiera obsługę protokołów innych niż IPv4 i IPv6, np, przestarzałego protokołu IPX lub AppleTalk.
