       IDENTIFICATION DIVISION.
       PROGRAM-ID. noronha_g_cs3322_25sp_A1.
  
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 TOP-HEADER.
           05 W-INVOICE PIC A(7) VALUE "Invoice".
           05 W-SPACES-65 PIC X(65) VALUE SPACES.
           05 W-SPACES-72 PIC X(72) VALUE SPACES.
           05 W-SOLD-TO PIC X(8) VALUE "Sold To:".
           05 W-SPACES-64 PIC X(64) VALUE SPACES.
           05 W-SOLD-VAL-01 PIC X(72) VALUE "WTAMU".
           05 W-SOLD-VAL-02 PIC X(72) VALUE "Box 60877".
       
       01 TABLE-HEADER.
           05 W-NUM PIC X(4) VALUE "No. ".
           05 W-DESC PIC A(36) VALUE "Description".
           05 W-QUANT PIC A(9) VALUE "Quantity".
           05 W-UP PIC A(11) VALUE "Unit Price".
           05 W-AMOUNT PIC A(12) VALUE "Amount".
           
           05 W-NUM-01 PIC 9(2) VALUE 01.
           05 W-NUM-02 PIC 9(2) VALUE 02.
           05 W-NUM-03 PIC 9(2) VALUE 03.
           
           05 W-DESC-01 PIC X(36) VALUE "Chair".
           05 W-DESC-02 PIC X(33) VALUE "Copier paper".
           05 W-DESC-03 PIC X(33) VALUE "USB drives 16 GB".


           05 W-QUANT-VAL-01 PIC 9(9) VALUE 11.
           05 W-QUANT-VAL-02 PIC 9(9) VALUE 22.
           05 W-QUANT-VAL-03 PIC 9(9) VALUE 103.
           05 W-QUANT-VAL-F PIC ZZZZZZZZZ.

           01 W-UP-VAL-01 PIC 9(8)V99 VALUE 25.0.
           01 W-UP-VAL-02 PIC 9(8)V99 VALUE 5.24.
           01 W-UP-VAL-03 PIC 9(8)V99 VALUE 7.39.
           01 W-UP-VAL-F PIC ZZZZ,ZZZ.99.

           01 W-AMT-VAL-01 PIC $9(7)V99 VALUE 275.0.
           01 W-AMT-VAL-02 PIC $9(7)V99 VALUE 576.40.
           01 W-AMT-VAL-03 PIC $9(7)V99 VALUE 761.17.
           01 W-AMT-VAL-F PIC Z,ZZZ,ZZZ.99.

       01 BOTTOM-HEADER.
           05 W-SPACES-41 PIC X(41) VALUE SPACES.
           05 W-SUB PIC X(17) VALUE "Subtotal:".
           05 W-PF PIC X(17) VALUE "Processing Fee:".
           05 W-TAX PIC X(17) VALUE "Taxes:".
           05 W-TOTAL PIC X(17) VALUE "Total:".

           05 W-FORMAT PIC $ZZ,ZZZ,ZZZ.99.
           05 W-SUB-VAL PIC $9(8)V99 VALUE 1612.57.
           05 W-PF-VAL PIC $9(8)V99 VALUE 19.11.
           05 W-TAX-VAL PIC $9(8)V99 VALUE 133.04.
           05 W-TOTAL-VAL PIC $9(8)V99 VALUE 1764.72.
           
       PROCEDURE DIVISION.
           DISPLAY W-INVOICE W-SPACES-65.
           DISPLAY W-SPACES-72.
           DISPLAY W-SOLD-TO W-SPACES-64.
           DISPLAY W-SOLD-VAL-01
           DISPLAY W-SOLD-VAL-02
           DISPLAY W-SPACES-72.
           DISPLAY W-NUM W-DESC W-QUANT W-UP W-AMOUNT
           
           MOVE W-QUANT-VAL-01 TO W-QUANT-VAL-F
           MOVE W-UP-VAL-01 TO W-UP-VAL-F
           MOVE W-AMT-VAL-01 TO W-AMT-VAL-F
           DISPLAY W-NUM-01 SPACE SPACE W-DESC-01 W-QUANT-VAL-F 
           W-UP-VAL-F W-AMT-VAL-F.

           MOVE W-QUANT-VAL-02 TO W-QUANT-VAL-F
           MOVE W-UP-VAL-02 TO W-UP-VAL-F
           MOVE W-AMT-VAL-02 TO W-AMT-VAL-F
           DISPLAY W-NUM-02 SPACE SPACE W-DESC-02 W-QUANT-VAL-F 
           W-UP-VAL-F W-AMT-VAL-F.

           MOVE W-QUANT-VAL-03 TO W-QUANT-VAL-F
           MOVE W-UP-VAL-03 TO W-UP-VAL-F
           MOVE W-AMT-VAL-03 TO W-AMT-VAL-F
           DISPLAY W-NUM-03 SPACE SPACE W-DESC-03 W-QUANT-VAL-F 
           W-UP-VAL-F W-AMT-VAL-F.
           DISPLAY W-SPACES-72.
           DISPLAY W-SPACES-72.

           MOVE W-SUB-VAL TO W-FORMAT.
           DISPLAY W-SPACES-41 W-SUB W-FORMAT.

           MOVE W-PF-VAL TO W-FORMAT.
           DISPLAY W-SPACES-41 W-PF W-FORMAT.

           MOVE W-TAX-VAL TO W-FORMAT.
           DISPLAY W-SPACES-41 W-TAX W-FORMAT.

           MOVE W-TOTAL-VAL TO W-FORMAT.
           DISPLAY W-SPACES-41 W-TOTAL W-FORMAT.
           

        
           STOP RUN.
