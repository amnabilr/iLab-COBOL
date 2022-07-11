      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. program-utama.
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
       01 NAMA PIC A(20) VALUE 'Budiman'.
       01 NPM PIC X(8) VALUE '55443322'.
       01 KELAS PIC X(5).
       01 ALAMAT PIC X(20).
       PROCEDURE DIVISION.
       CALL 'BAGIAN' USING NAMA, NPM, KELAS, ALAMAT.
       DISPLAY 'Masukkan Nama   : ' NAMA.
       DISPLAY 'Masukkan NPM    : ' NPM.
       DISPLAY 'Masukkan Kelas  : ' KELAS.
       DISPLAY 'Masukkan Alamat : ' ALAMAT.
            STOP RUN.

       END PROGRAM program-utama.
