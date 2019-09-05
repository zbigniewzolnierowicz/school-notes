# Lekcja 6 - Integralność danych

Integralność bazy danych to odpowiednie mechanizmy zabezpiezające przed skutkami:

- przypadkowych błędów logicznych
- konfliktów we współbieżym dostępie do danych
- awarii oprogramowania i sprzętu komputerowego

System integralny to taki, który **dostarcza nam wiarygodne dane** i jest zabezpieczony przed nieautoryzowaną modyfikacją informacji.

Systemy baz danych **powinny zapewniać** możliwość sprawdzania i ewentualnej korekty wprowadzanych danych oraz powinny zawierać odpowiednie mechanizmy zapewniające prawidłowe przetwarzanie danych.

Proces ochrony integralności obejmuje:

- kontrolę danych wejściowych oraz synchronizację dostępu do danych,
- poprawianie czyli korektę danych, cofanie i odtwarzanie stanu bazy,
- archiwizację poprzez tworzenie kopii bazy oraz zapisów działania systemu,
- testowanie czyli sprawdzanie poprawności zawartości bazy

## Integralność danych

**Integralność danych** oznacza, że baza danych stanowi odzwierciedlenie rzeczywistości. Integralność danych określamy również mianem **spójności danych**. Spójność danych związana jest z ich dokładnością - dane dokładnie odzwierciedlają modelowaną rzeczywistość. Dane muszą być poprawne i zgodne ze schematem bazy danych.

**_Integralność_** to zapewnienie **kompletności, poprawności i wiarygodności** danych zgromadzonych w bazie.

Pojęcie integralności obejmuje:

- **integralność statyczną**
  - Źródłem naruszenia **integralności statycznej są błędy logiczne** w danych oraz brak poprawnie skonstruowanego schematu bazy danych.
- **integralność transakcyjną**
  - Zagrożeniem **integralności transakcyjnej są awarie oprogramowania i sprzętu oraz współbieżny dostęp do danych**.

## Integralność statyczna

Integralność statyczna dotyczy poprawnie zaprojektowanego schematu bazy danych jak również spełnienia ograniczeń nałożonych na wartości atrybutów opisujących obiekty w bazie.

Istnieją **cztery typy integralności danych** konieczne do wdrożenia w trakcie procesu projektowania bazy danych. Trzy typu integralności danych opierają się na różnych aspektach struktury bazy danych. Typ czwarty opiera się na sposobie spojrzenia na dane i ich wykorzystania w ortanizacji.

### Integralność semantyczna

**Integralność semantyczna** _(inaczej zwana integralnością na poziomie pola czy też integralnością domeny)_ zapewnia odpowiednią strukturę każdego pola, odpowiednią ważność wartości występujących w każdym polu, ich spójność i dokładność, a także to, że pola tego samego typu są spójnie zdefiniowane w całej bazie danych.

**Jeżeli wartości danych spełniają wcześniej zdefiniowane i nałożone ograniczenia wówczas mówimy, że zachowana jest integralność semantyczna.**

Zapewnienie integralności semantycznej ma na celu zabezpieczenie danych przed celową lub przypadkową błędną modyfikacją danych, a więc odrzucenie wszelkich akcji powodujących niespójność bazy lub uruchomienie akcji, które przywracają poprawność i spójność bazy.

Integralność można wymusić w sposób **deklaratywny poprzez więzy integralności** oraz w sposób **proceduralny poprzez tzw. wyzwalacze** _(ang. triggers)_.

**Więzy integralności są to pewne warunki, które muszą być spełnione** poprzez określony podzbiór danych w bazie. Warunki te muszą pozostać prawdziwe przy każdej operacji modyfikacji w bazie danych. Każda operacja naruszająca te więzy musi zostać anulowana. Typowy przykład narzuconych ograniczeń: wartości atrybutów w danej tabeli muszą pochodzić z określonej dziedziny.

### Integralność encji

**Integralnością encji, czyli integralność na poziomie tabeli** zapewnia brak duplikowanych wierszy (krotek) oraz to, że pole (pola) identyfikujące każdą krotkę w tabeli jest unikatowe i nigdy nie zawiera wartości `Null`.

Integralność encji zapewnia się na etapie definiowania schematu bazy danych przez zdefiniowanie klucza głównego.

### Integralność referencyjna

**W systemie bazy danych tablice powiązane są między sobą kluczami.** Powiązania te realizowane są przez **klucze główne _(ang. primary key)_** i tzw. **klucze obce _(ang. foreign key)_**

Powiązania między kluczami encji pociągają za sobą konieczność określania reguł postępowania w wypadku wykonywania operacji na tabelach nadrzędnych w stosunku do innych tabel.

To właśnie **integralność referencyjna określa stany w jakich może znajdować się wartość klucza obcego w danej tabeli**. Wartość klucza obcego w danej tabeli musi być albo równa wartości klucza głównego w tabeli z nią powiązanej lub ewentualnie przyjąć wartość `Null`.

### Integralność biznesowa

## Podział na więzy integralności statycznej i dynamicznej

Więzy integralności dzielimy na statyczne i dynamiczne. Więzy **statyczne** muszą być spełnione w bieżącym i następnym stanie bazy.

Więzy **dynamiczne**, czy inaczej **temporalne**, określają poprawność danych w odniesieniu do historii stanów przechowywanych w bazie.

Dynamiczne więzy integralności to więzy, które w przeciwieństwie do statycznych więzów integralności obejmujących pojedynczy stan bazy, obejmują sekwencję stanów bazy danych.

## Model temporalny

**Model temporalny to model uwzględniający czas rejestracji danych oraz rzeczywisty czas zajścia zdarzeń.**

Temporalne więzy integralności określają poprawność danych zarówno dla bieżącego stanu bazy danych jaki i stanów poprzednich i przyszłych. Ogólnie są one przydatne wszędzie tam, gdzie sa istotne zależności czasowe między danymi. Np. można zadać taki warunek:

> Pensja pracownika nie może wzrosnąć o więcej niż 10% w ciągu 2 kolejnych posiedzeń zarządu.

W bazach statycznych możliwe jest tylko sprawdzenie warunku, czy np. pensja pracownika nie może wzrosnąć jednorazowo o więcej niż 10%.