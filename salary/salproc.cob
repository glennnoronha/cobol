       IDENTIFICATION DIVISION.
       PROGRAM-ID. SALPROC.
       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT EDATA ASSIGN TO INPUT1
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD EDATA.
       01 FD-EDATA.
           05 EID PIC X(11).
           05 EPOS PIC X(10).
           05 ESAL PIC 9(7).
           05 BLK PIC A(52).
       
       WORKING-STORAGE SECTION.
       01 WS-EDATA.
           05 WS-EID PIC X(11).
           05 WS-EPOS PIC X(10).
           05 WS-ESAL PIC 9(7).
           05 WS-BLK PIC A(52) VALUE SPACES.

       01 WS-EOF PIC A.

       01 WS-COUNT PIC 9(2) VALUE ZEROES.
       01 WS-AVG PIC 9(9).

       01 WS-CEO-SAL PIC 9(9).
       01 WS-DIFF PIC 9(9).
       PROCEDURE DIVISION.
           OPEN INPUT EDATA.
           PERFORM UNTIL WS-EOF = "Y"
              READ EDATA INTO WS-EDATA
                 AT END MOVE "Y" TO WS-EOF
                 NOT AT END
                    DISPLAY WS-EPOS OF WS-EDATA
                    ADD WS-ESAL OF WS-EDATA TO WS-AVG
                    ADD 1 TO WS-COUNT
                    IF WS-EPOS OF WS-EDATA = "CEO"
                       MOVE WS-ESAL OF WS-EDATA TO WS-CEO-SAL
                    END-IF
              END-READ
           END-PERFORM.
           CLOSE EDATA.
           COMPUTE WS-AVG = WS-AVG / WS-COUNT.
           DISPLAY "Average Salary is :" WS-AVG.
           DISPLAY "CEO Salary is :" WS-CEO-SAL.
           COMPUTE WS-DIFF = WS-CEO-SAL - WS-AVG.
           DISPLAY "CEO is making $" WS-DIFF " more than average".
           STOP RUN.
           