       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog01.
       AUTHOR. Glenn Noronha.
       INSTALLATION. WTAMU CS 3322.
       DATE-WRITTEN. 01/27/2025.
       DATE-COMPILED. 01/27/2025.
       SECURITY. Non-confidential.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TRANSACTION-REC.
      * instead of PIC AA9999 do below
           05 INVOICE-NO PIC A(2)9(4).
           05 LOCATION.
              10 WAREHOUSE PIC XXXX.
      * instead of doing PIC AAAAAAAA do below
              10 CITY PIC A(9).
              10 JOB-LOT PIC X(11).
           05 PRODUCT-DESC.
              10 NO-OF-ITEMS.
                 15 ITEM-SIZE PIC 9(10).
                 15 ITEM-MODEL PIC A(4)X(3)A(2).
              10 ITEM-NAME PIC X(20).
       
       PROCEDURE DIVISION.
           DISPLAY "Hello COBOL".


           STOP RUN.
