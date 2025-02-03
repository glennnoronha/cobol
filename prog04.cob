       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog04.
  
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * since PIC 9(3) value will only be last 3 digitsL 234 
       01 WVAL-01 PIC 9(3) VALUE 1234.
      
      * V means implied decimal point 
       01 WVAL-02 PIC 9(3)V9(2) VALUE 123.45.

       PROCEDURE DIVISION.
           DISPLAY "VALUE IS " WVAL-01.
           DISPLAY "VALUE IS " WVAL-02.
        
           STOP RUN.
