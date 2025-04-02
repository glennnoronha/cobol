       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-X1 PIC 9(7) VALUE 9.
       01 WS-COUNT PIC 9(7) VALUE 2.
       01 WS-CHECK PIC 9(7) VALUE ZEROS.
       01 WS-TRUE-VAL PIC 9 VALUE 1.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-COUNT FROM 2 BY 1 UNTIL WS-COUNT = 
           WS-X1
              COMPUTE WS-CHECK = FUNCTION MOD(WS-X1,WS-COUNT)
              IF WS-CHECK = 0
                 MOVE 0 TO WS-TRUE-VAL
              END-IF
           END-PERFORM

           IF WS-TRUE-VAL = 0
              DISPLAY "No, " WS-X1 " is not a prime number."
           ELSE
              DISPLAY "Yes, " WS-X1 " is a prime number."
           END-IF
           STOP RUN.
