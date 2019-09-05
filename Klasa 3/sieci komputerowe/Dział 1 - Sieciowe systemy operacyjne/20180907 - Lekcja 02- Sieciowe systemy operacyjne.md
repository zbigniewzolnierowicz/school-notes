# Lekcja 2 - Sieciowe systemy operacyjne

## Typy sieci komputerowych

### Peer-to-peer

Zastosowanie w małych firmach, w których jest mała liczba komputerów.

Udostępnianie drukarek i plików Windows.

### Client-server

Praca z domeną, Active Directory.

Administrator nigdy nie pracuje na serwerze.

## Historia i rodzaje sieciowych systemów operacyjnych

- ARPANET (koniec lat 70.)
- podział na MILNET i Internet (nowy ARPANET) (1983)
- początek sieciowych systemów operacyjnych (lata 90.)

Rodzaje sieciowych systemów operacyjnych

- w pełni serwerowy
- z uruchamianymi usługami
- Tylko dla urządzeń (iOS, RouterOS)

## Przykłady SSO

### Windows NT / Windows 2000 / Windows Server

| Sieciowy system operacyjny                                                                                                                                            | System, z którym SSO najlepiej współpracuje | Dodatkowe informacje                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| Windows NT 4.0 Server                                                                                                                                                 | Windows NT 4.0 Workstation                  | Wprowadzono system plików NTFS                                                                         |
| Windows 2000 Server                                                                                                                                                   | Windows 2000 Professional                   | Rozpoczęto wprowadzanie Active Directory                                                               |
| Windows Server 2003                                                                                                                                                   | Windows XP Professional                     | Wprowadzono wersję SBS (Small Business Server, później znany jako Essentials), GPO do Active Directory |
| Windows Server 2003 R2                                                                                                                                                | Windows XP Professional Service Pack 3      | Wsparcie USB 2.0, lepsza współpraca z kartami bezprzewodowymi, biblioteka .NET Framework               |
| Windows Server 2008                                                                                                                                                   | Windows Vista Business                      | Wprowadzono wersję Core bez środowiska graficznego, ostatnia wersja 32-bitowa                          |
| Windows Server 2008 R2                                                                                                                                                | Windows 7 Professional                      | Rozszerzono Active Directory, wprowadzono nowe wersje usług                                            |
| Windows Server 2012                                                                                                                                                   | Windows 8 Pro                               | Brak przycisku Start, Metro UI                                                                         |
| Windows Server 2012 R2                                                                                                                                                | Windows 8.1 Pro                             | Przywrócono przycisk Start, wprowadzono Hyper-V, wprowadzono Powershell                                |
| Windows Server 2016                                                                                                                                                   | Windows 10 Pro                              | Licencja subskrybencka                                                                                 |
| UNIX/Linux (Red Hat Enterprise Linux (RHEL), SUSE Linux Enterprise Server (SLES)), Oracle Linux (wcześniej Oracle Enterprise Linux), Novell NetWare -> NDS/eDirectory | -                                           | -                                                                                                      |
| Mac OS X Server -> OS X -> macOS                                                                                                                                      | macOS                                       | -                                                                                                      |

## Zadania administratora sieci komputerowych

### Zadania pielęgnacyjne

- Kontrola zajętości zasobów (np. czy miejsce na dysku się kończy)
- Archiwizacja systemu plików
- Kontrola atrybutów związanych z utrzymaniem bezpieczeństwa systemów
- podejmowanie działań dla utrzymania poziomu bezpieczeństwa

### Obsługa żądań użytkowników

- Ustalanie zezwoleń na dostęp użytkowników do zasobów
- Powiadamianie użytkowników o zmianach w systemie
- Przydzielanie adresów IP i nadzór nad współpracą użytkownika z siecią
- Usuwanie awarii

### Działania w ramach ochrony systemu

- Zarządzanie hasłami (ustalanie polityki haseł)
- Ochrona plików i katalogów systemowych
- Ochrona przed zagrożeniami zw. ze złośliwym oprogramowaniem

### Inne zadania

- Współpraca z webmasterem
- Współpraca z działem bezpieczeństwa
- Kontakt z firmami zewnętrznymi
- Nadzorowanie przetargów
- Kontrola legalności zainstalowanych systemów operacyjnych i oprogramowania