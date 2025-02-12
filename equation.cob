       IDENTIFICATION DIVISION.
       PROGRAM-ID. equation.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      
      * EQUATION: A^2 + B^3 x (A - C^2)^2 / (A + B)^2 x (B - C)^2
       
       01 A PIC 9(3)V9(2) VALUE 2.0.
       01 B PIC 9(3)V9(2) VALUE 3.0.
       01 C PIC 9(3)V9(2) VALUE 4.0.
       01 A-SQUARE        PIC 9(5)V9(2).
       01 B-CUBE          PIC 9(5)V9(2).
       01 C-SQUARE        PIC 9(5)V9(2).
       01 TEMP            PIC 9(5)V9(2).
       01 TEMP-SQUARE     PIC 9(5)V9(2).
       01 FINAL-TERM      PIC 9(7)V9(2).
       01 NUMERATOR       PIC 9(7)V9(2).
       01 A-PLUS-B        PIC 9(5)V9(2).
       01 A-PLUS-B-SQUARE PIC 9(7)V9(2).
       01 B-MINUS-C       PIC 9(5)V9(2).
       01 B-MINUS-C-SQUARE PIC 9(7)V9(2).
       01 DENOMINATOR     PIC 9(9)V9(2).
       01 RESULT          PIC 9(6)V9(4).
       01 RESULT-F        PIC ZZZZZZ.ZZZZ.

       PROCEDURE DIVISION.
      * NUMERATOR
      * A^2
           MULTIPLY A BY A GIVING A-SQUARE.
      * B^3     
           MULTIPLY B BY B GIVING B-CUBE.
           MULTIPLY B-CUBE BY B GIVING B-CUBE.
      * C^2     
           MULTIPLY C BY C GIVING C-SQUARE.
      * A - C^2
           SUBTRACT C-SQUARE FROM A GIVING TEMP.
      * (A - C^2)^2
           MULTIPLY TEMP BY TEMP GIVING TEMP-SQUARE.
      * B^3 x (A - C^2)^2
           MULTIPLY B-CUBE BY TEMP-SQUARE GIVING FINAL-TERM.
      * A^2 + B^3 x (A - C^2)^2
           ADD A-SQUARE TO FINAL-TERM GIVING NUMERATOR.
      * DENOMINATOR
      * (A + B)
           ADD A TO B GIVING A-PLUS-B.
      * (A + B)^2
           MULTIPLY A-PLUS-B BY A-PLUS-B GIVING A-PLUS-B-SQUARE.
      * (B - C)
           SUBTRACT C FROM B GIVING B-MINUS-C.
      * (B - C)^2
           MULTIPLY B-MINUS-C BY B-MINUS-C GIVING B-MINUS-C-SQUARE.
      * (A + B)^2 x (B - C)^2
           MULTIPLY A-PLUS-B-SQUARE BY B-MINUS-C-SQUARE GIVING 
           DENOMINATOR.
      * A^2 + B^3 x (A - C^2)^2 / (A + B)^2 x (B - C)^2
           DIVIDE NUMERATOR BY DENOMINATOR GIVING RESULT.
           MOVE RESULT TO RESULT-F.
           
           DISPLAY "Final Result: " RESULT-F.

           STOP RUN.
