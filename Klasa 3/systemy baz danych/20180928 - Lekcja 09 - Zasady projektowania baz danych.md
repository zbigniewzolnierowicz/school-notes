# Lekcja 8 - Zasady projektowania baz danych

## Projektowanie modelu konceptualnego bazy danych

Model konceptualny nie jest zależny od struktur fizycznych, modelu danych, oprogramowanie, SZBD, języka programowania, etc.

Do tworzenia medalu graficznego schematu nbazy danych wykorzystywane są diagramy związków encji, z których najpopularniejsze są diagramy ERD _(ang. Entity Relationship Diagram)_. Pozwalają one na modelowanie struktur danych oraz związków zachodzących między tymi strukturami. Nadają się szczególnie do modelowania relacyjnych baz danych, ponieważ umożliwiają prawie bezpośrednie przekształcenie diagramu w schemat relacyjny.

- określenie występujących zbiorów encji
- określenie atrybutów przypisanych do poszczególnych encji
- określenie dziedziny poszczególnych atrybutów
- ustalenie kluczy podstawowych
- określenie typów występujących związków
- zweryfikowanie utworzonego modelu

## Diagramy związków encji

Diagramy ERD składają się z trzech rodzajów elementów:

- zbiorów encji
- atrybutów encji
- związków zachodzących między encjami

## Encja

Encja to reprezentacja obiektu przechowywanego w bazie danych. Graficzną reprezentacją encji jest prostokąt z nazwą encji zapisaną w liczbie pojedynczej.

| Książka           |
| ----------------- |
| nr_w_wykazie      |
| tytuł             |
| rok wydania       |
| autor             |
| stan w bibliotece |

## Związek

Związek jest to powiązanie między dwiema lub kilkoma encjami. Kążdy związek ma dwa końce, do których przypisane są następujące atrybuty:

- nazwa
- liczebność związku
- uczestnictwo w związku; atrybut ten określa, czy związek jest opcjonalny (niewymagany), czy obligatoryjny (wymagany)

Graficzna reprezentacja związków zachodzących między encjami

| jeden do jednego | jeden do wielu | wiele do wielu |
| --- | --- | --- |
| `-+------------+-` | `-+----------<-` |`->----------<-` |
| po każdej stronie związku bierze udział po jednej instancji encji | po jednej stronie związku bierze udział po jednej instancji encji, a po drugiej wiele instancji | po obu stronach związku bierze udział wiele instancji encji |

Graficzna reprezentacja opcjonalności związku

| związek opcjonalny   | związek obligatoryjny   |
| :------------------: | :---------------------: |
| `----------------o-` | `------------------||-` |
| można                | wymaga                  |

### Jeden do jednego

Klient MOŻE posiadać NIP, ale NIP WYMAGA klienta.

### Jeden do wielu

Klient składa zamówienie - klient składa zamówienie (lub kilka zamówień), a zamówienie jest składane przez jednego klienta.

### Wiele do wielu

Dostawca dostarcza towar - wiele dostawców dostarcza wiele towarów, wiele towarów jest dostarczanych przez wielu sprzedawców.

### Diagramy Chena

Diagramy Chena pozwalaą w sposób graficzny przedstawić model projektu bazy danych i związków zachodzących pomiędzy encjami

| Kształt   | Odpowiednik |
| --------- | ----------- |
| prostokąt | encja       |
| koło      | atrybut     |
| romb      | związek     |

### Notacja Barkera (notacja Oracle)

W notacji tej w odróżnieniu od notacji Martina związki wymagane oznacza się ciągłą linią związków, natomiast opcjonalne (nie wymagalne) - przerywaną.

### Diagram Venna

Zgodnie z założeniami Venna, encje reprezentowane sa przez owale, wewnątrz których znajdują się instancje.

Jeśli poprowadzimy poziome linie pomiędzy instancjami dwóch encji, zgodnie ze związkami zachodzącymi w rzeczywistości, w łatwy sposób możemy zilustrować liczebność i uczestnictwo w związku.

![Diagram do ćwiczenia](./Lekcja_8_diagram.png)

Bilet (id_biletu, miejsce, id_rezerwacji, id_lotu, cena, klasa)

Lot (cel_podrozy, data_wylotu, id_lotu, miejsce_wylotu, nr_samolotu, dlugosc_lotu, nr_pasa_wylot, nr_pasa_ladowanie)

Klient (imie, nazwisko, pesel, data_urodzenia, kraj, nr_paszportu, id_klienta)

Rezerwacja (id_rezerwacji, id_klienta, id_biletu, wartość)

Klient rezerwuje jedną (lub wiele) rezerwacji

Rezerwacja jest rezerwowana przez jednego klienta

Rezerwacja dotyczy jednego (lub wielu) biletu

Bilet dotyczy jednej rezerwacji.

Bilet dotyczy jednego lotu.

Jeden lot ma jeden lub wiele biletów.

## Zadanie domowe

System zamawiania pizzy

Pizza z konkretnymi składnikami
