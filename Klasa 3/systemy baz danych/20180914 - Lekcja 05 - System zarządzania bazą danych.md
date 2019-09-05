# Lekcja 5 - System zarządzania bazą danych

**System Zarządzania Bazą Danych** _(ang. **D**ata**b**ase **M**anagement **S**ystem)_ pełni funkcję pośrednika pomiędzy zapisanymi danymi a użytkownikiem bądź programem chcącym z tych danych skorzystać.

System zarządzania bazą danych musi posiadać mechanizmy, które pozwalają administrować zbiorami danych umieszczonymi w bazie, zapewniają bezpieczeństwo i integralność danych, umożliwiają dostęp do danych za pomocą SQL, zapewniają wielodostępowość oraz pozwalają na autoryzację dostępu do danych.

## Trójwarstwowa architektura SZBD

System zarządzania bazą danych jest pośrednikiem (buforem) pomiędzy programami użytkowymi, użytkownikiem końcowym i bazą danych.

W 1976 ANSI-SPARC zaproponował trzypoziomową architekturę SZBD:

- **poziom zewnętrzny (użytkownika)** - opisuje jak użytkownicy widzą dane,
- **poziom koncepcyjny (pojęciowy)** - opisuje widok wszystkich danych w bazie. Poziom ten opisuje logiczny widok baz danych, bez szczegółów dotyczących realizacji,
- **poziom wewnętrzny (fizyczny)** - opisuje sposób przechowywania danych oraz metody dostępu do nich.

Pomiędzy warstwami istnieją dwa poziomy odwzorowania przekładające się na dwa poziomy niezależności danych:

- **logiczna niezależność danych** - oznacza niewrażliwość schematów zewnętrznych na zmiany w schemacie koncepcyjnym,
- **fizyczna niezależność danych** - oznacza niewrażliwośc schematu koncepcyjnego na zmiany w schemacie fizycznym

## Funkcje SZBD

- Funkcje CRUD _(Create, Read, Update, Delete)_
- Obsługa słownika danych - przechowywanie metadanych (danych o danych)
- Zarządzanie transakcjami
- Sterowanie współbieżnością
- Odtwarzanie po awarii
- Kontrola uprawnień użytkownika
- Komunikacja danych (wymiana danych w systemie technologii informacyjnej)
- Wymuszanie więzów integralności
- Udostępnianie narzędzi do administrowania bazą danych (do importowania, eksportowania, monitorowania operacji, monitorowania wydajności)

## Zadania SZBD - podane przez Codd'a w roku 1982

## Zadanie domowe: 5 przykładów SZBD

- **Microsoft SQL Server** - napisany przez Microsoft, pierwsza wersja to SQL Server 1.0, napisana dla systemu operacyjnego IBM OS/2 w 1989. Obecnie, najnowszą wersją jest Microsoft SQL Server 2017, wydane 2 października 1989.
- **MySQL** - system zarządzania bazami danych rozwijany przez szwedzką firmę MySQL AB, która w 16 stycznia 2008 została wykupiona przez Sun Microsystems, a ta 27 stycznia 2010 roku przez Oracle. Wydawany albo na licencji komercyjnej albo GNU GPL. Pierwsze wydanie zostało wypuszczone 23 maja 1995, najnowsza stabilna wersja to wersja 8.0.11, wydana 19 kwietnia 2018 roku.
- **MariaDB** – system zarządzania bazami danych stworzona przez grupę (głównie) byłych pracowników MySQL AB, pod przewodnictwem Michaela Wideniusa, współtwórcy MySQL. Pierwsze wydanie nastąpiło 22 stycznia 2009, a obecna najnowsza wersja stabilna to 10.3.9 wydana 15 sierpnia 2018 roku.
- **MongoDB** - system zarządzania bazą danych wydawany przez MongoDB Inc. pod licencją GNU AGPL. Pierwsze wydanie nastąpiło w roku 2009, a aktualna wersja stabilna to 3.4.10, wydana 31 października 2017 roku.
- **PostgreSQL** - jeden z najpopularniejszych systemów zarządzania bazami danych, na początku opracowany przez Uniwersytet Kalifornijski w Berkley, obecnie przez PostgreSQL Global Development Group. Pierwsze wydanie miało miejsce 1 maja 1995, a aktualna wersja stabilna to wersja 10.5 wydana 9 sierpnia 2018 roku.
