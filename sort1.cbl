      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROGRAM-SORT.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
               SELECT INPUT3 ASSIGN TO DISK.
               SELECT INPUT4 ASSIGN TO DISK.
               SELECT OUTPUT1 ASSIGN TO DISK.
               SELECT WORK ASSIGN TO DISK.
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD INPUT3.
       01 DATA-MAHASISWA3.
           05 NPM-MAHASISWA3  PIC 9(5).
           05 NAMA-MAHASISWA3 PIC A(25).
       FD INPUT4.
       01 DATA-MAHASISWA4.
           05 NPM-MAHASISWA4  PIC 9(5).
           05 NAMA-MAHASISWA4  PIC A(25).

       FD OUTPUT1.
       01 DATA-MHS-SORT.
           05 NPM-MAHASISWA  PIC 9(5).
           05 NAMA-MAHASISWA  PIC A(25).
       SD WORK.
       01 WORKFILE-MAHASISWA.
           05 NPM   PIC 9(5).
           05 NAMA  PIC A(25).

       PROCEDURE DIVISION.
           SORT WORK ON ASCENDING KEY NPM-MAHASISWA
           USING INPUT3, INPUT4 GIVING OUTPUT1.
           DISPLAY 'FILE BERHASIL DISORTIR'.
       STOP RUN.
