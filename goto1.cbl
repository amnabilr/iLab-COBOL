       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. goto1.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       77 kampus PIC 9.
       PROCEDURE DIVISION.
       Tanya.
           DISPLAY "Masukkan kode kampus dengan angka D,E,J,K (1,2,3,4)".
           ACCEPT Kampus.
           GO TO D,E,J,K DEPENDING ON Kampus
           GO TO Tanya.
           D.
              DISPLAY 'Kampus Depok'
              STOP RUN.
           E.
              DISPLAY 'Kampus Kelapa Dua'
              STOP RUN.
           J.
              DISPLAY 'Kampus Kalimalang'
              STOP RUN.
           K.
              DISPLAY 'Kampus Karawaci'
              STOP RUN.
       Selesai.
