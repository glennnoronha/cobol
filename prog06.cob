       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog06.
  
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      
       01 PAY-TO-STR PIC A(7) VALUE "PAY TO ".
       01 NAME-STR PIC X(65).
       01 BLANK-STR PIC A(60) VALUE SPACES.
       01 AMOUNT PIC $Z(3),Z(3).9(2).
      
 
       PROCEDURE DIVISION.
           MOVE "Glenn Noronha" TO NAME-STR.
           DISPLAY PAY-TO-STR NAME-STR.
           MOVE 123456.99 TO AMOUNT.
           DISPLAY BLANK-STR AMOUNT.
        
           STOP RUN.
