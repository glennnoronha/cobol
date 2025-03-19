       IDENTIFICATION DIVISION.
       PROGRAM-ID. switch_statements.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-G1.
           05 WS-X1 Picture 9(3).
           05 0ABC PIC 9(4).
       01 WS-G2.
           05 WS-X1 PIC 9(3).
       
       01 MOOD PIC 9.

       01 WS-X2 PIC X(5).

       PROCEDURE DIVISION.
      *     MOVE 123 TO WS-X1 OF WS-G2.
      *     MOVE 456 TO WS-X1 OF WS-G1.
      *     ADD WS-X1 OF WS-G2 TO WS-X1 OF WS-G1 GIVING 0ABC OF WS-G1.
      *     DISPLAY 0ABC OF WS-G1.
           
           MOVE 4 TO MOOD.
           
           EVALUATE MOOD
               WHEN 1
                 DISPLAY "HAPPY"
               WHEN 2 THRU 4
                 DISPLAY "HUNGRY"
               WHEN 5 THRU 10
                 DISPLAY "SAD"    
           END-EVALUATE

           EVALUATE MOOD > 10 OR MOOD < 5
               WHEN TRUE
                  DISPLAY "TRUE"
               WHEN FALSE
                  DISPLAY "FALSE"
           END-EVALUATE

      * string switch case     
           MOVE "2" to WS-X2.
          
           EVALUATE WS-X2
               WHEN "1"
                  DISPLAY 1
               WHEN "2"
                  DISPLAY 2
               WHEN "3"
                  DISPLAY 3
           END-EVALUATE
           
           STOP RUN.
