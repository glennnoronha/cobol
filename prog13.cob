       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG13.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 a PIC 9(2) VALUE 1.
       01 b PIC 9(2) VALUE 1.
       01 product PIC 9(2).

       PROCEDURE DIVISION.
           PERFORM 9 TIMES
              COMPUTE product = a * b 
              DISPLAY PRODUCT
              PERFORM 9 TIMES
                 COMPUTE product = b * a
                 DISPLAY product
                 ADD 1 to a
                 ADD 1 to b
              END-PERFORM
           END-PERFORM

           STOP RUN.
