      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. barang.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
           SELECT INFO-BRG ASSIGN TO 'barang.dat'
           ORGANIZATION IS RELATIVE
           ACCESS MODE IS SEQUENTIAL
           FILE STATUS IS FS.
       DATA DIVISION.
       FILE SECTION.
       FD INFO-BRG.
       01 DATA-BRG.
       02 KODE-BRG.
           03 TIPE-BARANG    PIC A.
           03 NO-PRODUKSI    PIC 9(4).
       02 TGL-MSK.
           03 TANGGAL        PIC 99.
           03 BULAN          PIC 99.
           03 TAHUN          PIC 9999.
       02 NAMA-BRG           PIC A(22).
       02 HARGA-BRG          PIC 99V999.
       02 SUPPLIER           PIC X(13).

       WORKING-STORAGE SECTION.
       77 FS PIC XX.

       PROCEDURE DIVISION.
       OPEN EXTEND INFO-BRG.
           MOVE 'D' TO TIPE-BARANG.
           MOVE 0087 TO NO-PRODUKSI.

           MOVE 02 TO TANGGAL.
           MOVE 08 TO BULAN.
           MOVE 1997 TO TAHUN.

           MOVE 'MEJA KAYU JATI BELANDA' TO NAMA-BRG.
           MOVE 89.999 TO HARGA-BRG.
           MOVE 'PT.Sinar Alam' TO SUPPLIER.
               WRITE DATA-BRG
           END-WRITE.
           CLOSE INFO-BRG.
       DISPLAY 'Selesai, record sudah diinputkan'.
       STOP RUN.
