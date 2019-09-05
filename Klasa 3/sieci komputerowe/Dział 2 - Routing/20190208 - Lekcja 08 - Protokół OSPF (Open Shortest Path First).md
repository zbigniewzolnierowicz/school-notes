# Lekcja 08 - Protokół OSPF (Open Shortest Path First)

## Cechy i właściwości OSPF

Tworzony od 1987 przez IETF. OSPFv2 opublikowana w RFC 1247 w 1998, ostatnia wersja OSPFv2 - RFC2328. Wersja obsługująca IPv6 - OSPFv3 - RFC2740 (2008).

- Metryką jest koszt trasy:
  - 100Mbit/s = 10
  - 1Gbit/s = 1\*

- Szybka konwergencja (zbieżność i relatywnie małe wymagania)
- Hierarchiczny podział na obszary
- OSPF posługuje się hierarchiczną strukturą sieci:
  - obszar backbone (area 0)
    - każdy z obszarów musi być podłączony do obszaru 0, jeśli nie może - przez link wirtualny
  - obszary podłączone różnych typów
  - Routery identyfikowae są za pomocą router-id. Większy router-id = wyższy priorytet.
    - Pierwszeństwo mają interfejsy loopback
- Używa algorytmu SPF (Shortest Path First) Dijkstry

### Algorytm SPF

Router utrzymuje osobną bazę topologii dl akażdego obszaru, do którego należy. Routery w tym samym obszarze posiadają tą samą bazę topologii. SPF działa osobno dla każdego obszaru.

## Role routerów

- **Internal Router** - wszystkie interfejsy w tym samym obszarze
- **Backbone Router** - wszystkie interfejsy w obszarze 0
- **Area Border Router (ABR)** - router posiada interfejsy przynajmniej w dwóch obszarach
- **Autonomous System Boundary Router (ASBR)** - redystrybucja informacji z innych RIB - tras połączonych, statycznych, RIP, EIGRP, itp.
