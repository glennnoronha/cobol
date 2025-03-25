       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG12.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A PIC 9(3) VALUE ZEROES.
       PROCEDURE DIVISION.
           PERFORM  UNTIL WS-A > 17
              IF NOT FUNCTION MOD(WS-A, 2) = 0
                 DISPLAY WS-A " is an odd number"
              END-IF
              ADD 1 TO WS-A
           END-PERFORM
      
           STOP RUN.
