USE Dostawa;

INSERT INTO DOSTAWCY (DOSTAWCA, ADRES1, ADRES2, MIASTO, STAN, KOD, TELEFON, KONTAKT, TEL_WEW, WARUNKI, RABAT)
VALUES ('Fragile Express', 'Chiral Network 2', NULL, 'Central Knot City', true, '00-001', '+48000000000',
        'samporter@bridg.es', '000000001', NULL, 0.2);

INSERT INTO KLIENT (KLIENT, NAZWISKO, IMIE, ADRES, MIASTO, STAN, KOD, TELEFON, TRANSAKCJE)
VALUES ('Bridges',
        'Hardman',
        'Die',
        'Chiralium 3',
        'Mountain Knot City',
        0,
        '00-010',
        '+48000000001',
        3);

INSERT INTO PERSONEL (NAZWISKO, IMIE, INICIAL, DZIAL, TELEFON, SPECJALN, UWAGI, NAGRODY, DATA_ZATR, STOPIEN, ZWOLNIONY,
                      PELNY_ETAT, WYDAJNOSC, WSKAZNIK, PENSJA, STANOWISKO, STAZ, ADRES1, ADRES2, MIASTO, STAN, KOD)
VALUES ('Porter Bridges',
        'Sam',
        'SPB',
        'Finansy',
        '+48000000002',
        'żonglerka',
        NULL,
        NULL,
        NOW(),
        'Zaawansowany',
        false,
        true,
        99.9,
        99.9,
        6969.5,
        'Finansjer',
        NOW(),
        'Fountain 2',
        '3',
        'Edge Knot City',
        true,
        '00-012');

INSERT INTO TOWARY (ID_DOSTAW, DATA_ZAMOW, NAZWA, OPIS, CZAS_REALIZ, CENA, IL_DO_ZAM, IL_NA_STAN, NIE_KONT, KOSZT,
                    KOMENTARZ)
VALUES (1,
        NOW(),
        'Krzesło',
        'Metalowe krzesło',
        7,
        69.9,
        4,
        5183958,
        'nie',
        25,
        NULL);

INSERT INTO TRANSAK (ID_PRACOW, ID_KLIENTA, ID_TOWARU, DATA_TRAN, ILOSC, NR_ZAM, UWAGI, FAKTURA) VALUES (1, 1, 1, NOW(), 3, 777, 'Ten klient zostawił podniesioną klapę w toalecie', 1);

SELECT *
FROM TRANSAK;