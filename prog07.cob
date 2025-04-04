       IDENTIFICATION DIVISION.
       PROGRAM-ID. prog07.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-MENU-TXT PIC A(4) VALUE "MENU".
       01 W-APP-TXT PIC A(10) VALUE "APPETIZERS".
       01 W-ENT-TXT PIC A(6) VALUE "ENTREE".

       01 W-APP-TXT-01 PIC X(40) VALUE "RAM STICKS".
       01 W-APP-TXT-02 PIC X(40) VALUE "THERMAL PASTE DIP".

       01 W-ENT-TXT-01 PIC X(34) VALUE "GPU GNOCCHI".
       01 W-ENT-TXT-02 PIC X(34) VALUE "SILICONE SLIDERS".
       01 W-ENT-TXT-03 PIC X(34) VALUE "BOOLEAN BURGER".
       
       01 W-APP-VAL-01 PIC $9(5)V99 VALUE 8.73.
       01 W-APP-VAL-02 PIC $9(5)V99 VALUE 19.45.
       01 W-APP-VAL-F PIC $ZZ,ZZZ.99.
       
       01 W-ENT-VAL-01 PIC $9(9)V99 VALUE 3714.92.
       01 W-ENT-VAL-02 PIC $9(9)V99 VALUE 426.31.
       01 W-ENT-VAL-03 PIC $9(9)V99 VALUE 1010101.01.
       01 W-ENT-VAL-F PIC $ZZZZ,ZZZ,ZZZ.99.

       01 W-SPACES-10 PIC A(10) VALUE SPACES.
       01 W-SPACES-22 PIC A(22) VALUE SPACES.
       01 W-SPACES-40 PIC A(40) VALUE SPACES.
       01 W-SPACES-44 PIC A(44) VALUE SPACES.
       01 W-SPACES-46 PIC A(46) VALUE SPACES.
       01 W-SPACES-50 PIC A(50) VALUE SPACES.
          
       

       PROCEDURE DIVISION.
           DISPLAY W-MENU-TXT W-SPACES-46 W-SPACES-22.
           
           DISPLAY W-SPACES-50 W-SPACES-22.
           
           DISPLAY W-APP-TXT W-SPACES-40 W-SPACES-22.
           
           DISPLAY W-SPACES-50 W-SPACES-22.
           
           MOVE W-APP-VAL-01 TO W-APP-VAL-F
           DISPLAY W-APP-TXT-01 W-APP-VAL-F W-SPACES-22.
           DISPLAY W-APP-TXT-02 W-APP-VAL-F W-SPACES-22.
           DISPLAY W-SPACES-50 W-SPACES-22.
           
           DISPLAY W-ENT-TXT W-SPACES-44 W-SPACES-22.
           
           MOVE W-ENT-VAL-01 TO W-ENT-VAL-F
           DISPLAY W-ENT-TXT-01 W-ENT-VAL-F W-SPACES-22.
           MOVE W-ENT-VAL-02 TO W-ENT-VAL-F
           DISPLAY W-ENT-TXT-02 W-ENT-VAL-F W-SPACES-22.
           MOVE W-ENT-VAL-03 TO W-ENT-VAL-F
           DISPLAY W-ENT-TXT-03 W-ENT-VAL-F W-SPACES-22.
           
           STOP RUN.
