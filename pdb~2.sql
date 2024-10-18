SELECT p.nr_vin, 
            p.rok_produkcji,
            p.data_pierwszej_rejestracji,
            mp.marka,
            mp.nazwa, 
            mp.rodzaj,
            mp.typ,
            mp.kategoria_pojazdu,
            mp.numer_swiadectwa_homo,
            kp.numer_karty_pojazdu,
            dr.numer_dowodu_rej
                FROM pojazd p INNER JOIN wlasciciel_pojazd wp ON wp.pojazd_id_pojazdu = p.id_pojazdu
                INNER JOIN model_pojazdu mp ON mp.id_model_pojazdu = p.model_pojazdu_id_model_pojazdu
                INNER JOIN karta_pojazdu kp ON kp.pojazd_id_pojazdu = p.id_pojazdu
                INNER JOIN dowod_rejestracyjny dr ON dr.pojazd_id_pojazdu = p.id_pojazdu
                INNER JOIN tablica_rejestracyjna tb ON tb.pojazd_id_pojazdu = p.id_pojazdu
                WHERE tb.numer_rejestracyjny = 'WOT12345'