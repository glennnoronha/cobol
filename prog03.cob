       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog01.
       AUTHOR. Glenn Noronha.
       INSTALLATION. WTAMU CS 3322.
       DATE-WRITTEN. 01/27/2025.
       DATE-COMPILED. 01/27/2025.
       SECURITY. Non-confidential.
       
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 VAL-01 PIC 9(4) VALUE ZEROES.
       01 STR-01 PIC X(6) VALUE "A1B2C3".

       PROCEDURE DIVISION.
           DISPLAY "Hello COBOL".
           DISPLAY VAL-01.
           DISPLAY STR-01.
           STOP RUN.
