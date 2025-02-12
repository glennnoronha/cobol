       IDENTIFICATION DIVISION.
       PROGRAM-ID. temp_conv.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 CEL PIC 9(5)V9(5) VALUE 32.
       01 CELO PIC 9(5)V9(2).
       01 FAH PIC Z(5).Z(5).

       PROCEDURE DIVISION.
           MOVE CEL TO CELO.
           MULTIPLY 9 BY CEL.
           DIVIDE 5 INTO CEL.
           ADD 32 TO CEL GIVING FAH.
           DISPLAY CELO " Celcius is" FAH.

           STOP RUN.
