--B A R D Z O  W A Z N E !
SET SERVEROUTPUT ON;
--Dodawanie pacjenta

CREATE OR REPLACE PROCEDURE dodaj_pacjenta (
    PESEL_pacjenta pacjent.PESEL%TYPE,
    imie_pacjenta pacjent.imie%TYPE,
    nazwisko_pacjenta pacjent.nazwisko%TYPE,
    numer_telefonu_pacjenta pacjent.numer_telefonu%TYPE
    )
IS
    szukana_osoba pacjent%ROWTYPE;
BEGIN
    SELECT * INTO szukana_osoba FROM pacjent WHERE PESEL_pacjenta = pacjent.PESEL;
    dbms_output.ENABLE;
    dbms_output.put_line('Pacjent istnieje, zamiast tego przyjmij pacjenta');
    EXCEPTION WHEN No_Data_Found THEN
        INSERT INTO pacjent VALUES (PESEL_pacjenta, imie_pacjenta, nazwisko_pacjenta, sysdate, numer_telefonu_pacjenta);
END;
/
--Przyjmowanie pacjenta
CREATE OR REPLACE FUNCTION uzyskaj_id_oddzialu (nazwa_szukanego_oddzialu oddzial.nazwa_oddzialu%TYPE)
RETURN oddzial.id_oddzialu%TYPE
IS
    tmp oddzial%ROWTYPE;
BEGIN
    SELECT * INTO tmp FROM oddzial WHERE oddzial.nazwa_oddzialu = nazwa_szukanego_oddzialu;
    RETURN tmp.id_oddzialu;
    EXCEPTION WHEN No_Data_Found THEN
        RETURN 0;
END;
/

CREATE OR REPLACE FUNCTION szukaj_sali (
    nazwa_szukanego_oddzialu oddzial.nazwa_oddzialu%TYPE,
    numer_szukanej_sali sala.numer_sali%TYPE
    )
RETURN sala.id_sali%TYPE
IS
    id_oddzialu_sali oddzial.id_oddzialu%TYPE;
    tmp sala%ROWTYPE;
    nie_ma_oddzialu EXCEPTION;
BEGIN
    id_oddzialu_sali := uzyskaj_id_oddzialu(nazwa_szukanego_oddzialu);
    IF id_oddzialu_sali != 0 THEN
        BEGIN
            SELECT * INTO tmp FROM sala 
                WHERE sala.id_oddzialu = id_oddzialu_sali AND sala.numer_sali = numer_szukanej_sali;
        EXCEPTION when No_Data_Found THEN
            RETURN 0;
        END;
    ELSE 
        RAISE nie_ma_oddzialu;
    END IF;
    RETURN tmp.id_sali;
    EXCEPTION WHEN nie_ma_oddzialu THEN
        RETURN -1;
END;
/
        
CREATE OR REPLACE FUNCTION sprawdz_karte_choroby (PESEL_pacjenta pacjent.PESEL%TYPE)
RETURN BOOLEAN
IS
    CURSOR cur IS
        SELECT * FROM karta_choroby WHERE karta_choroby.pacjent = PESEL_pacjenta AND karta_choroby.data_wypisu IS NULL;
    wynik BOOLEAN;
    it NUMBER := 0;
        
BEGIN
    FOR tmp IN cur LOOP
        it := it + 1;
    END LOOP;
    IF it = 0 THEN wynik := TRUE;
    ELSE wynik := FALSE;
    END IF;
    RETURN wynik;
END;
/

CREATE OR REPLACE PROCEDURE przyjmij_pacjenta (
    PESEL_pacjenta pacjent.PESEL%TYPE,
    nazwa_oddzialu_pacjenta oddzial.nazwa_oddzialu%TYPE,
    numer_sali_pacjenta sala.numer_sali%TYPE
)
IS
    tmp karta_choroby%ROWTYPE;
    tmp_pacjent pacjent%ROWTYPE;
    id_szukanej_sali NUMBER; 
    pacjent_przyjety EXCEPTION;
    nie_ma_oddzalu EXCEPTION;
    nie_ma_sali EXCEPTION;
BEGIN
    SELECT * INTO tmp_pacjent FROM pacjent WHERE pacjent.PESEL = PESEL_pacjenta;
    
    IF sprawdz_karte_choroby(PESEL_pacjenta) THEN
        BEGIN
            id_szukanej_sali := szukaj_sali( nazwa_oddzialu_pacjenta, numer_sali_pacjenta);
            IF id_szukanej_sali = 0 THEN
                RAISE nie_ma_sali;
            ELSIF id_szukanej_sali = -1 THEN
                RAISE nie_ma_oddzalu;
            ELSE 
                INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, PESEL_pacjenta, NULL, id_szukanej_sali, sysdate, NULL, NULL, NULL);
            END IF;
            
            EXCEPTION WHEN nie_ma_sali THEN
                dbms_output.ENABLE;
                dbms_output.put_line('Nie ma takiej sali');
            WHEN nie_ma_oddzalu THEN 
                dbms_output.ENABLE;
                dbms_output.put_line('Nie ma takiego oddzalu!');
        END;
    ELSE 
        RAISE pacjent_przyjety;
    END IF;
    
    EXCEPTION WHEN pacjent_przyjety THEN
        dbms_output.ENABLE;
        dbms_output.put_line('Taki pacient zostal przyjety!');
    WHEN No_Data_Found THEN
        dbms_output.ENABLE;
        dbms_output.put_line('Taki pacient nie istnieje!');
END;
/
--dodaj badanie
CREATE OR REPLACE FUNCTION znajdz_pracownika(
    imie_pracownika pracownik.imie%TYPE,
    nazwisko_pracownika pracownik.nazwisko%TYPE
    )
    RETURN NUMBER
    IS
        tmp pracownik.id_pracownika%TYPE;    
    BEGIN
        SELECT p.id_pracownika INTO tmp FROM pracownik p WHERE p.imie = imie_pracownika AND p.nazwisko = nazwisko_pracownika;
        IF tmp = 0 THEN
            RAISE no_data_found;
        ELSE RETURN tmp;
        END IF;
        EXCEPTION WHEN No_data_found THEN
            RETURN 0;
END;
/

CREATE OR REPLACE PROCEDURE dodaj_badanie(
    PESEL_pacjenta badanie.id_karty%TYPE,
    wzrost_pacjenta badanie.wzrost%TYPE,
    tetno_pacjenta badanie.tetno%TYPE,
    uwagi_pacjenta badanie.uwagi%TYPE,
    badanie_wstepne_pacjenta badanie.badanie_wstepne_flg%TYPE,
    imie_pracownika pracownik.imie%TYPE,
    nazwisko_pracownika pracownik.nazwisko%TYPE
)
IS
    id_karty_pacjenta karta_choroby.id_karty%TYPE;
    id_szukanego_pracownika pracownik.id_pracownika%TYPE;
    karta_istnieje BOOLEAN;
    nie_ma_karty EXCEPTION;
    nie_ma_pracownika EXCEPTION;
BEGIN
    id_szukanego_pracownika := znajdz_pracownika(imie_pracownika,nazwisko_pracownika);
    IF id_szukanego_pracownika = 0 THEN
        RAISE nie_ma_pracownika;
    ELSE
        BEGIN
        karta_istnieje := sprawdz_karte_choroby(PESEL_pacjenta);
        IF karta_istnieje = TRUE THEN
            RAISE nie_ma_karty;
        ELSE
            SELECT id_karty INTO id_karty_pacjenta FROM karta_choroby WHERE karta_choroby.pacjent = PESEL_pacjenta; 
            INSERT INTO badanie VALUES(id_karty_pacjenta, id_szukanego_pracownika, sysdate, wzrost_pacjenta, tetno_pacjenta, uwagi_pacjenta, badanie_wstepne_pacjenta);
        END IF;
        EXCEPTION WHEN nie_ma_karty THEN 
        dbms_output.ENABLE;
        dbms_output.put_line('Nie ma takiego pacjenta');
        END;
    END IF; 
    EXCEPTION WHEN nie_ma_pracownika THEN
        dbms_output.ENABLE;
        dbms_output.put_line('Nie ma takiego pracownika');
END;
/