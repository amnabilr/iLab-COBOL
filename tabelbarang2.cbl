      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. TABEL-BARANG.
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
       01 TABEL-STOK-BARANG.
           02 BARANG OCCURS 3 TIMES.
               03 STOK OCCURS 2 TIMES.
                   04 STOK-BARANG  PIC 9(3).

       01 SUBSCRIPT-TABEL.
           02 SUBSCRIPT-BARANG     PIC 9.
           02 SUBSCRIPT-JML-STOK   PIC 9.
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-UTAMA.
           PERFORM INPUT-TABEL.
           PERFORM TAMPIL-TABEL.
       STOP RUN.

       INPUT-TABEL.
           DISPLAY 'INPUT DATA STOK BARANG PADA GUDANG : '.
           PERFORM ISI-DATA
               VARYING SUBSCRIPT-BARANG  FROM 1 BY 1
               UNTIL SUBSCRIPT-BARANG  > 3
               AFTER SUBSCRIPT-JML-STOK  FROM 1 BY 1
               UNTIL SUBSCRIPT-JML-STOK  > 2.

       ISI-DATA.
           DISPLAY 'BARANG', SUBSCRIPT-BARANG,
           'JUMLAH STOK GUDANG ', SUBSCRIPT-JML-STOK, ':'.
           ACCEPT STOK-BARANG(SUBSCRIPT-BARANG, SUBSCRIPT-JML-STOK).

       TAMPIL-TABEL.
           DISPLAY 'MENAMPILKAN ISI TABEL NILAI MAHASISWA : '.
           PERFORM DISPLAY-DATA
               VARYING SUBSCRIPT-BARANG  FROM 1 BY 1
               UNTIL SUBSCRIPT-BARANG  > 3
               AFTER SUBSCRIPT-JML-STOK  FROM 1 BY 1
               UNTIL SUBSCRIPT-JML-STOK  > 2.
       DISPLAY-DATA.
           DISPLAY 'BARANG ', SUBSCRIPT-BARANG,
           'JUMLAH STOK GUDANG ', SUBSCRIPT-JML-STOK, ':',
           STOK-BARANG(SUBSCRIPT-BARANG, SUBSCRIPT-JML-STOK).
           DISPLAY ' '.
       END PROGRAM TABEL-BARANG.
