       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog05.
  
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      
       01 WVAL-01 PIC 9(5)V9(2) VALUE 1234.15.
      
      * getting rid of leading zeroes
       01 WMAL PIC Z(5).Z(2).

       01 WDOL PIC $(5).9(2).

       01 WDOL2 PIC $Z(3),Z(3).9(2).
 
       PROCEDURE DIVISION.
           DISPLAY "ORIGINAL VALUE IS " WVAL-01.
           
           MOVE WVAL-01 TO WMAL.
           DISPLAY "NEW VALUE IS " WMAL.
           
           MOVE WVAL-01 TO WDOL.
           DISPLAY "DOLLAR VALUE IS " WDOL.
           
           MOVE WVAL-01 TO WDOL2.
           DISPLAY "COMMAS " WDOL2.
        
           STOP RUN.
