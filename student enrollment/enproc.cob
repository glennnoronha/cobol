       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENPROC.
       ENVIRONMENT DIVISION. 
       
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT INFILE ASSIGN TO INPUT1
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.
           SELECT OUTFILE ASSIGN TO OUTPUT1
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
       FD INFILE.
       01 DATA-IN.
           05 BID PIC 9(6).
           05 COURSE-SUBJECT PIC A(4).
           05 COURSE-NUMBER PIC 9(4).
           05 BLANKS PIC A(66).
       FD OUTFILE
           DATA RECORD IS DATA-OUT.
       01 DATA-OUT.
           05 VERBAGE-1 PIC A(26) VALUE "The number of students in ".
           05 COURSE-INFO-SUB PIC A(4).
           05 COURSE-INFO-NUM PIC 9(4).
           05 VERBAGE-2 PIC A(4) VALUE " is ".
           05 COURSE-COUNT PIC ZZZZ.      
           05 BLANKS PIC X(38). 
       WORKING-STORAGE SECTION.

       01 WS-DATA-IN.
           05 WS-BID PIC 9(6).
           05 WS-COURSE-SUBJECT PIC A(4).
           05 WS-COURSE-NUMBER PIC 9(4).
           05 WS-BLANKS PIC A(66).

       01 WS-EOF PIC A VALUE 'N'.
       01 WS-COURSE-SUBJECT-QUERY-1 PIC A(4).
       01 WS-COURSE-NUMBER-QUERY-1 PIC 9(4).
       01 WS-COUNTER PIC 9(4) VALUE 0.
       
       PROCEDURE DIVISION.
           MOVE "CS" TO WS-COURSE-SUBJECT-QUERY-1.
           MOVE 3325 TO WS-COURSE-NUMBER-QUERY-1.
           OPEN INPUT INFILE
              OUTPUT OUTFILE
           PERFORM UNTIL WS-EOF = 'Y'
              READ INFILE INTO WS-DATA-IN
                 AT END MOVE "Y" TO WS-EOF
                 NOT AT END
                    IF WS-COURSE-SUBJECT OF WS-DATA-IN = 
                    WS-COURSE-SUBJECT-QUERY-1 AND WS-COURSE-NUMBER OF
                    WS-DATA-IN = WS-COURSE-NUMBER-QUERY-1
                        ADD 1 TO WS-COUNTER
                    END-IF
      *              WRITE DATA-OUT FROM WS-DATA-IN
              END-READ
           END-PERFORM.
           MOVE "The number of students in " TO VERBAGE-1 OF DATA-OUT.
           MOVE " is " TO VERBAGE-2 OF DATA-OUT.
           MOVE WS-COURSE-SUBJECT-QUERY-1 TO COURSE-INFO-SUB 
           OF DATA-OUT.
           MOVE WS-COURSE-NUMBER-QUERY-1 TO COURSE-INFO-NUM OF DATA-OUT.
           MOVE WS-COUNTER TO COURSE-COUNT OF DATA-OUT.
           WRITE DATA-OUT.
           CLOSE INFILE
                 OUTFILE.
           
           STOP RUN.
