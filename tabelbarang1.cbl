      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. INPUT-NAMABARANG.
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
       77 n PIC 99.
       01 TABEL-NAMA-BRG.
           02 NAMA-BRG PIC X(20) OCCURS 4 TIMES.
       PROCEDURE DIVISION.
       PROGRAM-UTAMA.
           PERFORM INPUT-NAMA-BRG
               VARYING n FROM 1 BY 1 UNTIL N > 4.
           PERFORM TAMPILKAN-NAMA-BRG
               VARYING n FROM 1 BY 1 UNTIL N > 4.
           STOP RUN.

       INPUT-NAMA-BRG.
           DISPLAY 'MASUKKAN NAMA BARANG : '.
           ACCEPT NAMA-BRG(n).

       TAMPILKAN-NAMA-BRG.
           DISPLAY 'BARANG KE-',n, ':' NAMA-BRG(n).
           MAIN-PROCEDURE.

       END PROGRAM INPUT-NAMABARANG.
