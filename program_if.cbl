       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.

       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       01 NILAI PIC S9(5).
       PROCEDURE DIVISION.
       MULAI.
           DISPLAY "MASUKKAN BILANGAN :"
           ACCEPT NILAI.
           IF NILAI GREATER THAN OR EQUAL 0 THEN
              DISPLAY "Bilangan ini merupakan bilangan positif"
           ELSE
              DISPLAY "Bilangan ini merupakan bilangan negatif"
           END-IF.
       SELESAI.
           STOP RUN.
