       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. contoh1.
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
       01 NILAI-MHS PIC 999.
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY 'Masukkan Nilai Anda :'.
            ACCEPT NILAI-MHS.
            PERFORM 5 TIMES
            EVALUATE NILAI-MHS
               WHEN 75 THRU 100
                  DISPLAY 'Selamat Anda Lulus'
               WHEN OTHER
                  DISPLAY 'Anda Harus Belajar Lebih Giat Lagi'
               END-EVALUATE
               END-PERFORM.
            STOP RUN.
