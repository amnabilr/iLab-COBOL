       IDENTIFICATION DIVISION.
       PROGRAM-ID. inspect1.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Kata-1 pic X(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Masukkan String : ".
            ACCEPT kata-1.
            INSPECT kata-1 REPLACING ALL "I" BY "*"
            DISPLAY "String setelah diganti : " kata-1.
            STOP RUN.
       END PROGRAM inspect1.
