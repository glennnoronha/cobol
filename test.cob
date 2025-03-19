       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXAM1REVIEW.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-X1 PIC 9(2)V999 VALUE 1.
       01 WS-X2 PIC 9(2)V999 VALUE 2.

       PROCEDURE DIVISION.

      * 1 + 2 to 1 = 4
           ADD WS-X1 WS-X2 TO WS-X1.
      * 2 x 2 = 4
           MULTIPLY WS-X2 BY WS-X2.
      * Should display 4
           DISPLAY WS-X2.
      
      * WS-X2 = 2
           MOVE 2 TO WS-X2.
      * 4 + 2 + 2 + 4 to 4 = 16
           ADD WS-X1 WS-X2 WS-X2 WS-X1 TO WS-X1.
      * Should display 4
           DISPLAY WS-X1.


           MOVE 4 TO WS-X1.
           MOVE 9 TO WS-X2.
      * 9 / 4 into WS-X1 = 2.25
           DIVIDE WS-X2 BY -X1 GIVING WS-X1.
           DISPLAY WS-X1.

           STOP RUN.
