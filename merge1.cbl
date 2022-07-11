      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROGRAM-MERGE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT INPUT1 ASSIGN TO DISK.
               SELECT INPUT2 ASSIGN TO DISK.
               SELECT OUTPUT-FILE ASSIGN TO DISK.
               SELECT WORK ASSIGN TO DISK.

       DATA DIVISION.
          FILE SECTION.
          FD INPUT1.
           01 DATA-MAHASISWA1.
           05 NPM-MAHASISWA1  PIC 9(5).
           05 NAMA-MAHASISWA1 PIC A(25).
          FD INPUT2.
           01 DATA-MAHASISWA2.
           05 NPM-MAHASISWA2   PIC 9(5).
           05 NAMA-MAHASISWA2  PIC A(25).

          FD OUTPUT-FILE.
           01 DATA-MHS-MERGE.
           05 NPM-MAHASISWA  PIC 9(5).
           05 NAMA-MAHASISWA  PIC A(25).
       SD WORK.
       01 WORKFILE-MAHASISWA.
           05 NPM   PIC 9(5).
           05 NAMA  PIC A(25).
      *-----------------------
       WORKING-STORAGE SECTION.
      *-----------------------
       PROCEDURE DIVISION.
       MERGE WORK ON ASCENDING KEY NPM-MAHASISWA
           USING INPUT1, INPUT2 GIVING OUTPUT-FILE.
           DISPLAY 'FILE BERHASIL DIGABUNGKAN'.
       STOP RUN.
