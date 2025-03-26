       IDENTIFICATION DIVISION.
       PROGRAM-ID. perfvar.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WS-X1 PIC 9 VALUE 1.
       01 WS-X2 PIC 99.
       01 WS-X3 PIC 9 VALUE 2.
  
       PROCEDURE DIVISION.
           PERFORM VARYING WS-X2 FROM WS-X1 BY WS-X3 UNTIL WS-X2 > 9
              DISPLAY WS-X2
           END-PERFORM.

           STOP RUN.
