      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. BAGIAN.
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
       LINKAGE SECTION.
       01 BG-NAMA PIC A(20).
       01 BG-KELAS PIC X(5).
       01 BG-ALAMAT PIC X(20).

       PROCEDURE DIVISION USING BG-NAMA, BG-KELAS, BG-ALAMAT.
       DISPLAY 'Berikut Program Bagian : '.
       MOVE 'Dinda' to BG-NAMA.
       MOVE '8AA99' to BG-KELAS.
       MOVE 'Depok' to BG-ALAMAT.
            EXIT PROGRAM.
       END PROGRAM BAGIAN.
