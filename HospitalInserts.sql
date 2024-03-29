--Sekwencje
DROP SEQUENCE oddzial_id_seq;
DROP SEQUENCE pracownik_id_seq;
DROP SEQUENCE lekarz_id_seq;
DROP SEQUENCE sala_id_seq;
DROP SEQUENCE karta_id_seq;
DROP SEQUENCE lek_id_seq;
DROP SEQUENCE zabieg_id_seq;


CREATE SEQUENCE oddzial_id_seq;
CREATE SEQUENCE pracownik_id_seq;
CREATE SEQUENCE lekarz_id_seq;
CREATE SEQUENCE sala_id_seq;
CREATE SEQUENCE karta_id_seq;
CREATE SEQUENCE lek_id_seq;
CREATE SEQUENCE zabieg_id_seq;

 -- Oddzialy

INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Pediatria', 'Kielce', 'Grunwaldzka', '1', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Chirurgia', 'Kielce', 'Grunwaldzka', '2', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Okulistyka', 'Kielce', 'Grunwaldzka', '3', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Kardiologia', 'Kielce', 'Grunwaldzka', '4', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Neurologia', 'Kielce', 'Grunwaldzka', '5', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Laryngologia', 'Kielce', 'Grunwaldzka', '6', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Ortopedia', 'Kielce', 'Grunwaldzka', '7', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Neonatologiczny', 'Kielce', 'Grunwaldzka', '8', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Nefrologia', 'Kielce', 'Grunwaldzka', '9', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Psychiatria', 'Kielce', 'Grunwaldzka', '10', '25-736');
INSERT INTO oddzial VALUES (oddzial_id_seq.NEXTVAL, 'Paliacja', 'Kielce', 'Grunwaldzka', '11', '25-736');


-- Pracownicy

INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 1, 64111492484, 'Marian', 'Konewka', 'Konserwator', 2500, '111222333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 1, 82020353229, 'Marianna', 'Konewka', 'Sprz?aczka', 2500, '111222334', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 2, 82061365746, 'Zdzis?w', 'Nowak', 'Konserwator', 2600, '543222333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 2, 69100625638,  'Kornel', 'Tutaj', 'Piel?niarz', 2800, '111753333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 3, 72082757257, 'Joanna', 'Papaj', 'Piel?niarka', 2800, '111222412', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 4, 79012333534, 'Kamil', 'Wakszmucki', 'Piel?niarz', 2800, '111983333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 10, 88062245348, 'Andrzej', 'Kolejarz', 'Ochroniarz', 2300, '532222333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 10, 74051626245, 'Wac?w', 'Tam', 'Ochroniarz', 2300, '111981333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 5, 63060275674, 'Dawid', 'Szynka', 'Informatyk', 9999, '111324333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 6, 74092039181, 'Karolina', 'Strata', 'Sekretarka', 2900, '991222333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 3, 84100454185, 'Wasilij', 'Papataj', 'Piel?niarz', 2800, '854222412', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 4, 70100973119, 'Antonina', 'Michalczyk', 'Piel?niarka', 2800, '643983333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 1, 90103091696, 'Dawid', 'Szynka', 'Ochroniarz', 2300, '532532333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 10, 89061881285, 'Tomasz', 'Problem', 'Bazodanowiec', 9999, '765981976', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 3, 64082272753, 'Karol', 'Marcinkowski', 'Technik', 3000, '331676333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 7, 61091781393, 'Magda', 'Pionel', 'Sekretarka', 2900, '991222999', 0);


INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 1, 84070986833, 'Wies?w', 'M?zka', 'Lekarz', 6800, '987983333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 2, 79123175858, 'Andrzej', 'Martyniuk', 'Lekarz', 6800, '532222333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 3, 80111927216, 'Karmil', 'Czekaj', 'Lekarz', 6800, '987981333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 4, 61042382833, 'Teresa', 'Witam', 'Lekarz', 6800, '111324999', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 5, 70043085676, 'Micha�', 'Rze?ik', 'Lekarz', 6800, '991786333', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 6, 72092738482, 'Pawe�', 'Tombreno', 'Lekarz', 6800, '854563412', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 7, 84030337567, 'Paulina', 'Stonoga', 'Lekarz', 6800, '643983757', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 8, 69062869271, 'Joanna', 'Kaszanka', 'Lekarz', 6800, '532532999', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 9, 82102172779, 'Diego', 'Manino', 'Lekarz', 6800, '974981976', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 10, 76011152665, 'Marian', 'Pazera', 'Lekarz', 6800, '331676395', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 11, 76112152365, 'Dorbromi?', 'Ogier', 'Lekarz', 6800, '991864999', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 5, 12334512376, 'Lena', 'Zielinska', 'Lekarz', 6500, '567103871', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 6, 97645601295, 'Jakub', 'W?cik', 'Lekarz', 4500,'567982341', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 1, 68492058021,'Liliana', 'Malinowska', 'Lekarz', 7350, '656789123', 0);
INSERT INTO pracownik VALUES (pracownik_id_seq.NEXTVAL, 4, 90020896781, 'Maciej', 'Cybulski', 'Lekarz', 3000, '959402956', 0);


--lekarze

INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 17, 'Pediatria', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 18, 'Chirurgia', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 19, 'Okulistyka', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 20, 'Kardiologia', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 21, 'Neurologia', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 22, 'Laryngologia', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 23, 'Ortopedia', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 24, 'Neonatologiczny', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 25, 'Nefrologia', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 26, 'Psychiatria', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 27, 'Paliacja', '150c', '142b');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 28, 'Neurologia', '111c', '45');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 29, 'Laryngologia', '118a', '37');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 30, 'Ortopedia', '301', '46');
INSERT INTO lekarz VALUES (lekarz_id_seq.NEXTVAL, 31, 'Kardiologia', '291', '91');

--sale
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 1, '1a', 'Zabiegowe', 10, 1);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 2, '2a', 'Zabiegowe', 10, 2);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 3, '3a', 'Zabiegowe', 10, 3);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 3, '3b', 'Operacyjne', 10, 3);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 3, '3c', 'Pooperacyjne', 10, 3);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 4, '4a', 'Zabiegowe', 10, 4);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 5, '5a', 'Zabiegowe', 10, 5);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 6, '6a', 'Zabiegowe', 10, 6);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 6, '6b', 'Operacyjne', 10, 6);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 6, '6c', 'Pooperacyjne', 10, 6);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 7, '7a', 'Zabiegowe', 10, 7);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 8, '8a', 'Zabiegowe', 10, 8);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 9, '9a', 'Zabiegowe', 10, 9);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 10, '10a', 'Izolatka', 1, 10);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 10, '10b', 'Izolatka', 1, 10);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 10, '10c', 'Izolatka', 1, 10);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 10, '10d', 'Izolatka', 1, 10);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 10, '10e', 'Izolatka', 1, 10);
INSERT INTO sala VALUES (sala_id_seq.NEXTVAL, 11, '11a', 'Zabiegowe', 10, 11);

--Pacjenci
INSERT INTO Pacjent VALUES (00000000000, 'Pacjent', 'Anonimowy', TO_DATE('1970/01/01', 'yyyy/mm/dd'), '000000000');
INSERT INTO Pacjent VALUES (87030836913, 'Andrzej', 'Komoda', TO_DATE('2019/01/01', 'yyyy/mm/dd'), '547043400');
INSERT INTO Pacjent VALUES (67061098799, 'Kacper', 'Ko?dziejczyk', TO_DATE('2018/12/19', 'yyyy/mm/dd'), '467086537');
INSERT INTO Pacjent VALUES (83060349216, 'Antoni', 'Czerwiec', TO_DATE('2017/01/12', 'yyyy/mm/dd'), '782579803');
INSERT INTO Pacjent VALUES (90082265516, 'Leszek', 'Kropydlak', TO_DATE('2016/12/23', 'yyyy/mm/dd'), '263214944');
INSERT INTO Pacjent VALUES (69100469296, 'Kilian', 'Fallens', TO_DATE('2018/11/09', 'yyyy/mm/dd'), '863214945');
INSERT INTO Pacjent VALUES (72101999152, 'Ryszard', 'Skanu', TO_DATE('2018/08/02', 'yyyy/mm/dd'), '569523585');
INSERT INTO Pacjent VALUES (84010867194, 'Arkadiusz', 'Szybczak', TO_DATE('2018/07/09', 'yyyy/mm/dd'), '569443585');
INSERT INTO Pacjent VALUES (87061092623, 'Hanna', 'Mostowiak', TO_DATE('2017/07/12', 'yyyy/mm/dd'), '367330735');
INSERT INTO Pacjent VALUES (99122599541, 'Anna', 'Jurczak', TO_DATE('2019/01/08', 'yyyy/mm/dd'), '553221648');
INSERT INTO Pacjent VALUES (54112977426, 'Janina', 'Kostecka', TO_DATE('2018/11/12', 'yyyy/mm/dd'), '67756728');
INSERT INTO Pacjent VALUES (73082781622, 'Bogus?wa', 'Linda', TO_DATE('2018/02/14', 'yyyy/mm/dd'), '866685659');
INSERT INTO Pacjent VALUES (73102672925, 'Rozalia', 'Cyrkon', TO_DATE('2019/01/02', 'yyyy/mm/dd'), '382371863');
INSERT INTO Pacjent VALUES (53070577686, 'Iwona', 'Kajzerka', TO_DATE('2017/01/13', 'yyyy/mm/dd'), '995126457');
INSERT INTO Pacjent VALUES (90061259387, 'Anna', 'Fatygowa', TO_DATE('2018/12/12', 'yyyy/mm/dd'), '266663539');
INSERT INTO Pacjent VALUES (85062869592, 'Kacper','Korde?a', TO_DATE('2016/09/11', 'yyyy/mm/dd'), '352856740');
INSERT INTO Pacjent VALUES (51101212652, 'Magda', 'Wressler', TO_DATE('2016/09/11', 'yyyy/mm/dd'), '777771216');

--Karta choroby
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 51101212652, 15, 6, TO_DATE('2016/09/11 17-41', 'yyyy/mm/dd HH24-MI'), TO_DATE('2016/09/11 19-41', 'yyyy/mm/dd HH24-MI'), 'Symulacja choroby', 'Duszno?i, b? w klatce piersiowej');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 90082265516,  9, 13, TO_DATE('2016/12/23 11-29', 'yyyy/mm/dd HH24-MI'), TO_DATE('2017/01/03 08-00', 'yyyy/mm/dd HH24-MI'), 'Kamienie nerkowe', 'Silny b? przy oddawaniu moczu');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 83060349216,  11, 6, TO_DATE('2017/01/12 22-41', 'yyyy/mm/dd HH24-MI'), TO_DATE('2017/01/14 12-00', 'yyyy/mm/dd HH24-MI'), 'Zatrucie alkoholowe', 'Wymioty, padaczka');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 87061092623, 10, 14, TO_DATE('2017/07/12 14-14', 'yyyy/mm/dd HH24-MI'), TO_DATE('2017/07/12 16-20', 'yyyy/mm/dd HH24-MI'), 'Nie stwierdzono choroby', 'Pacjentka twierdzi, ? ma wizje, ? umrze za 10 dni');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 87061092623, 11, 19, TO_DATE('2017/07/22 13-34', 'yyyy/mm/dd HH24-MI'), TO_DATE('2017/07/22 17-34', 'yyyy/mm/dd HH24-MI'), 'Zgon', 'Brak przytomo?i, prawdopodobnie p?ni?y krwiak');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 73082781622, 14, 1, TO_DATE('2018/02/14 11-10', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/02/15 11-10', 'yyyy/mm/dd HH24-MI'), 'St?czenie', 'Silny b? lewego biodra');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 84010867194, 7, 11, TO_DATE('2018/07/09 13-13', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/07/10 15-00', 'yyyy/mm/dd HH24-MI'), 'Z?manie ko?i lewej promieniowej', 'Z?manie ko?i lewej promieniowej');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 72101999152,  6, 8, TO_DATE('2018/08/02 03-59', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/08/14 15-00', 'yyyy/mm/dd HH24-MI'), 'Zgon', 'Silny b? podczas oddychania i prze?kania');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 69100469296,  6, 10, TO_DATE('2018/11/09 07-59', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/12/24 15-00', 'yyyy/mm/dd HH24-MI'), 'Zaawansowany rak krtani', 'Krwawienie podczas kaszlu');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 87030836913,  4, 6, TO_DATE('2019/01/01 12-41', 'yyyy/mm/dd HH24-MI'), NULL, NULL, 'Mocny b? g?wy, wysokie ci?ienie');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 83060349216,  11, 6, TO_DATE('2019/01/01 20-33', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/03 12-00', 'yyyy/mm/dd HH24-MI'), 'Zatrucie alkoholowe', 'Wymioty, padaczka');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 73102672925, 3, 5, TO_DATE('2019/01/02 21-10', 'yyyy/mm/dd HH24-MI'), NULL, NULL, 'Silny b? lewego oka');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 99122599541, 2, 2, TO_DATE('2019/01/08 18-20', 'yyyy/mm/dd HH24-MI'), NULL, NULL, 'Silny b? brzucha, cz?te wymioty');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 67061098799,  5, 7, TO_DATE('2018/12/19 07-21', 'yyyy/mm/dd HH24-MI'), NULL, NULL, 'Gor?zka, silne b?e, agresja');
INSERT INTO karta_choroby VALUES (karta_id_seq.NEXTVAL, 51101212652, 15, 6, TO_DATE('2019/01/16 11-00', 'yyyy/mm/dd HH24-MI'), NULL, NULL, 'Duszno?i, b? w klatce piersiowej');

--Leki

INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Adrenalina WZF', '300 ?/0,3 ml', 200, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Antytoksyna botulinowa ABE', '5000 j.m', 10, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Asentra', '100 mg', 15, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Benodil', '0,125 mg/ml', 0, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Bepanthen Eye', ' ', 5, 'Jedno opakowanie blisko ko?a daty przydatn?i');
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Biseptol', '240 mg/5 ml', 23, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Bunondol (tabletki)', '0,2 mg', 30, NULL); --Przeciwb?owy
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Bunondol (zastrzyki)', '0,2 mg', 30, NULL); --Przeciwb?owy
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Galvus', '50 mg', 0, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'GalvuGeloplasma', '100 ml', 3, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Desloratadine Genoptim', ' 0,5 mg/ml', 7, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Detreman', '1 mg', 8, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Lercan', '10 mg', 2, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Raevretan', '3mg', 7, NULL);
INSERT INTO leki VALUES(lek_id_seq.NEXTVAL, 'Opelol', '20 ml/2mg', 13, NULL);

--Lek-Pacj
INSERT INTO kart_lek VALUES(4, 3, '100mg');
INSERT INTO kart_lek VALUES(4, 3, '200mg');
INSERT INTO kart_lek VALUES(2, 6, '240mg');
INSERT INTO kart_lek VALUES(5, 1, '300 ?');
INSERT INTO kart_lek VALUES(8, 7, '0,1 mg');
INSERT INTO kart_lek VALUES(8, 1, '300 ?');
INSERT INTO kart_lek VALUES(3, 15, '1 mg');
INSERT INTO kart_lek VALUES(14, 7, '0,1 mg');
INSERT INTO kart_lek VALUES(5, 14, '3mg');
INSERT INTO kart_lek VALUES(1, 7, '0.2mg');
INSERT INTO kart_lek VALUES(11, 2, '0.5 mg');
INSERT INTO kart_lek VALUES(4, 5, '1 mg');
INSERT INTO kart_lek VALUES(6, 8, '0.2 mg');
INSERT INTO kart_lek VALUES(7, 10, '100 ml');
INSERT INTO kart_lek VALUES(13, 6, '240 mg');

-- Dyzury

INSERT INTO dyzur VALUES(1, TO_DATE('2019/01/11 17-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/12 07-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(1, TO_DATE('2019/01/13 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/13 19-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(1, TO_DATE('2019/01/15 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/15 19-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(2, TO_DATE('2019/01/11 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/11 19-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(2, TO_DATE('2019/01/13 17-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/14 07-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(3, TO_DATE('2019/01/16 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/16 19-00', 'yyyy/mm/dd HH24-MI'), NULL);

INSERT INTO dyzur VALUES(4, TO_DATE('2018/12/11 17-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/12/12 07-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(4, TO_DATE('2018/12/13 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/12/13 19-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(4, TO_DATE('2018/12/15 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2018/12/15 19-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(7, TO_DATE('2019/01/07 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/07 15-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(8, TO_DATE('2019/01/07 15-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/07 23-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(1, TO_DATE('2019/01/07 23-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/08 07-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(15, TO_DATE('2019/01/07 08-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/07 15-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(3, TO_DATE('2019/01/07 15-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/07 23-00', 'yyyy/mm/dd HH24-MI'), NULL);
INSERT INTO dyzur VALUES(11, TO_DATE('2019/01/07 23-00', 'yyyy/mm/dd HH24-MI'), TO_DATE('2019/01/08 07-00', 'yyyy/mm/dd HH24-MI'), NULL);

-- Badania

INSERT INTO badanie VALUES(1, 17, TO_DATE('2016/01/11 18-00', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 0);
INSERT INTO badanie VALUES(2, 17, TO_DATE('2017/01/03 08-10', 'yyyy/mm/dd HH24-MI'), 173, '60/min', 'brak', 0);
INSERT INTO badanie VALUES(3, 19, TO_DATE('2017/01/14 12-20', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 0);
INSERT INTO badanie VALUES(4, 19, TO_DATE('2017/01/12 16-00', 'yyyy/mm/dd HH24-MI'), 173, '60/min', 'brak', 0);
INSERT INTO badanie VALUES(5, 20, TO_DATE('2017/01/22 17-00', 'yyyy/mm/dd HH24-MI'), 173, '85/min', 'brak', 0);
INSERT INTO badanie VALUES(6, 21, TO_DATE('2018/01/15 11-00', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 0);
INSERT INTO badanie VALUES(7, 22, TO_DATE('2018/01/10 13-00', 'yyyy/mm/dd HH24-MI'), 173, '85/min', 'brak', 1);
INSERT INTO badanie VALUES(8, 19, TO_DATE('2018/01/14 09-00', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 0);
INSERT INTO badanie VALUES(9, 24, TO_DATE('2018/01/24 09-00', 'yyyy/mm/dd HH24-MI'), 173, '60/min', 'brak', 0);
INSERT INTO badanie VALUES(10, 26, TO_DATE('2018/01/14 09-00', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 0);
INSERT INTO badanie VALUES(11, 17, TO_DATE('2018/01/03 12-00', 'yyyy/mm/dd HH24-MI'), 173, '85/min', 'brak', 1);
INSERT INTO badanie VALUES(12, 20, TO_DATE('2019/01/26 15-00', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 1);
INSERT INTO badanie VALUES(13, 19, TO_DATE('2019/01/25 20-05', 'yyyy/mm/dd HH24-MI'), 173, '70/min', 'brak', 0);
INSERT INTO badanie VALUES(14, 30, TO_DATE('2019/01/30 13-10', 'yyyy/mm/dd HH24-MI'), 173, '60/min', 'brak', 0);
INSERT INTO badanie VALUES(15, 29, TO_DATE('2019/01/16 14-00', 'yyyy/mm/dd HH24-MI'), 173, '85/min', 'brak', 0);

-- Zabiegi

INSERT INTO zabiegi VALUES(1, TO_DATE('2016/01/12 17-00', 'yyyy/mm/dd HH24-MI'), 'Zastrzyk', TO_DATE('2016/01/12 18-20', 'yyyy/mm/dd HH24-MI'), 1);
INSERT INTO zab_prac VALUES(1, 17);
INSERT INTO zabiegi VALUES(2, TO_DATE('2016/01/20 13-00', 'yyyy/mm/dd HH24-MI'), 'Zastrzyk', TO_DATE('2016/01/20 14-20', 'yyyy/mm/dd HH24-MI'), 2);
INSERT INTO zab_prac VALUES(2, 17);
INSERT INTO zabiegi VALUES(3, TO_DATE('2016/01/31 10-00', 'yyyy/mm/dd HH24-MI'), 'Opatrzenie', TO_DATE('2016/01/31 10-34', 'yyyy/mm/dd HH24-MI'), 2);
INSERT INTO zab_prac VALUES(3, 19);
INSERT INTO zabiegi VALUES(4, TO_DATE('2016/01/27 11-00', 'yyyy/mm/dd HH24-MI'), 'Operacja', TO_DATE('2016/01/27 16-00', 'yyyy/mm/dd HH24-MI'), 4);
INSERT INTO zab_prac VALUES(4, 20);
INSERT INTO zab_prac VALUES(4, 17);
INSERT INTO zab_prac VALUES(4, 4);
INSERT INTO zabiegi VALUES(5, TO_DATE('2016/01/23 12-00', 'yyyy/mm/dd HH24-MI'), 'Szczepienie', TO_DATE('2016/01/23 12-20', 'yyyy/mm/dd HH24-MI'), 11);
INSERT INTO zab_prac VALUES(5, 5);
INSERT INTO zabiegi VALUES(6, TO_DATE('2016/01/17 14-00', 'yyyy/mm/dd HH24-MI'), 'Zastrzyk', TO_DATE('2016/01/17 15-00', 'yyyy/mm/dd HH24-MI'), 12);
INSERT INTO zab_prac VALUES(6, 30);
INSERT INTO zabiegi VALUES(7, TO_DATE('2016/01/12 17-00', 'yyyy/mm/dd HH24-MI'), 'Zastrzyk', TO_DATE('2016/01/12 17-10', 'yyyy/mm/dd HH24-MI'), 13);
INSERT INTO zab_prac VALUES(7, 4);
INSERT INTO zabiegi VALUES(8, TO_DATE('2016/01/03 19-00', 'yyyy/mm/dd HH24-MI'), 'Gips', TO_DATE('2016/01/03 19-30', 'yyyy/mm/dd HH24-MI'), 1);
INSERT INTO zab_prac VALUES(8, 17);
INSERT INTO zabiegi VALUES(9, TO_DATE('2016/01/09 18-05', 'yyyy/mm/dd HH24-MI'), 'Zastrzyk', TO_DATE('2016/01/09 18-15', 'yyyy/mm/dd HH24-MI'), 12);
INSERT INTO zab_prac VALUES(9, 4);
INSERT INTO zabiegi VALUES(10, TO_DATE('2016/01/13 13-15', 'yyyy/mm/dd HH24-MI'), 'Szczepienie', TO_DATE('2016/01/13 13-30', 'yyyy/mm/dd HH24-MI'), 1);
INSERT INTO zab_prac VALUES(10, 4);

