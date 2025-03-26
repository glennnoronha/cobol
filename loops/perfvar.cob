       IDENTIFICATION DIVISION.
       PROGRAM-ID. perfvar.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WS-X1 PIC 9.
       01 WS-X2 PIC 9.
       
       PROCEDURE DIVISION.
           PERFORM VARYING WS-X2 FROM 1 BY 1 UNTIL WS-X2 = 3
              DISPLAY WS-X2
           END-PERFORM.

           STOP RUN.
