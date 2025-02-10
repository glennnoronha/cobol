       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog08.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           
       01 WS-VAL-01 PIC 9(3)V9(2).
       01 WS-VAL-02 PIC 9(3)V9(2).

       PROCEDURE DIVISION.
           DISPLAY '--- ADDITION ---'
           MOVE 25.6 TO WS-VAL-01.
           DISPLAY 'Original Value: ' WS-VAL-01.
           ADD 1 1 1 TO WS-VAL-01.
           DISPLAY 'Add 1 + 1 + 1 to Value: ' WS-VAL-01.
           
           MOVE 25.6 to WS-VAL-01.
           ADD 1 1 1 WS-VAL-01 TO WS-VAL-01.
           DISPLAY 'Add 1 + 1 + 1 and Value to Value: ' WS-VAL-01.

           ADD 1 TO 1 GIVING WS-VAL-01.
           DISPLAY 'Add 1 to 1: ' WS-VAL-01.

      * the variable after TO is not changed here
           ADD 1 1 WS-VAL-01 TO WS-VAL-02 GIVING WS-VAL-01.
           DISPLAY WS-VAL-01.
           DISPLAY WS-VAL-02.
           
           DISPLAY '--- SUBTRACTION ---'
           MOVE 10 TO WS-VAL-01.
           SUBTRACT 2.2 FROM WS-VAL-01.
           DISPLAY '10 - 2.2 = ' WS-VAL-01.
           SUBTRACT WS-VAL-01 FROM WS-VAL-01.
           DISPLAY 'Value - Value = ' WS-VAL-01.

           MOVE 10 TO WS-VAL-01.
           SUBTRACT WS-VAL-01 FROM WS-VAL-01 GIVING WS-VAL-01.
           DISPLAY 'Value - Value (GIVING)= ' WS-VAL-01.
           
           DISPLAY '--- MULTIPLICATION ---'
           MOVE 2 TO WS-VAL-01.
           DISPLAY 'Value: 2'
           MULTIPLY 2 BY WS-VAL-01.
           DISPLAY '2 * Value = ' WS-VAL-01.
           
           MOVE 2 TO WS-VAL-01.
           MULTIPLY WS-VAL-01 BY WS-VAL-01 GIVING WS-VAL-01 WS-VAL-01.
           DISPLAY WS-VAL-01.
           
           DISPLAY '--- DIVISION ---'
           MOVE 2 TO WS-VAL-01.
           DIVIDE 3 INTO WS-VAL-01.
           DISPLAY '2 (Value) / 3 = ' WS-VAL-01.
           DIVIDE WS-VAL-01 INTO WS-VAL-01.
           DISPLAY 'Value / Value = ' WS-VAL-01.

           STOP RUN.
