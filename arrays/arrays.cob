       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAYS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * 01 WS-STUDENT.
      *     05 WS-GRADE-1 PIC 9(3)V9(3).
      *     05 WS-GRADE-2 PIC 9(3)V9(3).
      *     05 WS-GRADE-3 PIC 9(3)V9(3).
      *     05 WS-GRADE-4 PIC 9(3)V9(3).
      * array of 4 grades
       01 WS-STUDENT.
           05 WS-GRADES PIC 9(3)V9(3) OCCURS 4 TIMES.

       01 WS-COUNT PIC 9 VALUE 1.
       
       PROCEDURE DIVISION.
           MOVE 95.4 TO WS-GRADES OF WS-STUDENT (1)
           MOVE 75.2 TO WS-GRADES OF WS-STUDENT (2)
           MOVE 69.9 TO WS-GRADES OF WS-STUDENT (3)
           MOVE 100.0 TO WS-GRADES OF WS-STUDENT (4)
           
           PERFORM 4 TIMES
                DISPLAY "GRADE " WS-COUNT " = " WS-GRADES OF 
                WS-STUDENT (WS-COUNT)
                ADD 1 TO WS-COUNT
           END-PERFORM.

           STOP RUN.
