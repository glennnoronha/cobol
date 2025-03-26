       IDENTIFICATION DIVISION.
       PROGRAM-ID. MTABLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WSF-0 PIC 99.
       01 WSF-1 PIC B99.
       01 WSF-2 PIC B99.
       01 WSF-3 PIC B99.
       01 WSF-4 PIC B99.
       01 WSF-5 PIC B99.
       01 WSF-6 PIC B99.
       01 WSF-7 PIC B99.
       01 WSF-8 PIC B99.
       01 WSF-9 PIC B99.
       01 WS-INC PIC 9 VALUE 1.
       01 WS-TMP PIC 99.
       01 WS-SPACE2 PIC AA VALUE SPACES.
       
       PROCEDURE DIVISION.
           MOVE 1 TO WSF-1.
           MOVE 2 TO WSF-2.
           MOVE 3 TO WSF-3.
           MOVE 4 TO WSF-4.
           MOVE 5 TO WSF-5.
           MOVE 6 TO WSF-6.
           MOVE 7 TO WSF-7.
           MOVE 8 TO WSF-8.
           MOVE 9 TO WSF-9.
           DISPLAY WS-SPACE2, WSF-1, WSF-2, WSF-3, WSF-4, WSF-5, WSF-6, 
              WSF-7, WSF-8, WSF-9
           PERFORM 9 TIMES
              MOVE WS-INC TO WSF-0
              COMPUTE WS-TMP = WS-INC * 1
              MOVE WS-TMP TO WSF-1

              COMPUTE WS-TMP = WS-INC * 2
              MOVE WS-TMP TO WSF-2

              COMPUTE WS-TMP = WS-INC * 3
              MOVE WS-TMP TO WSF-3

              COMPUTE WS-TMP = WS-INC * 4
              MOVE WS-TMP TO WSF-4

              COMPUTE WS-TMP = WS-INC * 5
              MOVE WS-TMP TO WSF-5

              COMPUTE WS-TMP = WS-INC * 6
              MOVE WS-TMP TO WSF-6

              COMPUTE WS-TMP = WS-INC * 7
              MOVE WS-TMP TO WSF-7

              COMPUTE WS-TMP = WS-INC * 8
              MOVE WS-TMP TO WSF-8

              COMPUTE WS-TMP = WS-INC * 9
              MOVE WS-TMP TO WSF-9

              DISPLAY WSF-0, WSF-1, WSF-2, WSF-3, WSF-4, WSF-5, WSF-6, 
              WSF-7, WSF-8, WSF-9

              ADD 1 to WS-INC
           END-PERFORM

           STOP RUN.
