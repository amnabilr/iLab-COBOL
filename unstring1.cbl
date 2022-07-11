       IDENTIFICATION DIVISION.
       PROGRAM-ID. unstring1.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 menu pic 9.
       01 String1 PIC A(25).
       01 sub-str1 PIC A(12).
       01 sub-str2 PIC A(10).
       01 GAB-KATA PIC A(25).
       01 PENGHITUNG PIC 99 value 1.
       PROCEDURE DIVISION.
       Menu-pilihan.
           DISPLAY 'Menu'
           DISPLAY '1. String'
           DISPLAY '2. Unstring'
           DISPLAY '--------------'
           DISPLAY 'Masukkan pilihan anda (1/2) ?'
           ACCEPT menu.
           IF menu = '1',go to MENU-1
               ELSE go to MENU-2.

       MENU-1.

           DISPLAY 'Masukkan kata-1 :'.
           ACCEPT sub-str1.
           DISPLAY 'Masukkan kata-2 :'.
           ACCEPT sub-str2.


           STRING sub-str1 DELIMITED BY SIZE
            sub-str2 DELIMITED BY SIZE
            INTO GAB-KATA WITH POINTER PENGHITUNG
            ON OVERFLOW DISPLAY 'Oveflow!!'
            END-STRING.

           DISPLAY 'Gabungan kedua kata adalah : ' GAB-KATA
           STOP RUN.

       MENU-2.
           DISPLAY 'Masukkan string :'.
           ACCEPT String1.
       UNSTRING String1 DELIMITED BY SPACE
           INTO sub-str1, sub-str2
       END-UNSTRING.

           DISPLAY 'Kata pertama : ' sub-str1.
           DISPLAY 'Kata kedua   : ' sub-str2.
       END PROGRAM unstring1.
