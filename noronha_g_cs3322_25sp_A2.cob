       IDENTIFICATION DIVISION.
       PROGRAM-ID. noronha_g_cs3322_25sp_A2.
  
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 TOP-HEADER.
           05 W-INVOICE PIC A(72) VALUE "Invoice".
           05 W-SPACES-72 PIC X(72) VALUE SPACES.
           05 W-SOLD-TO PIC X(72) VALUE "Sold To:".
           05 W-SOLD-VAL-01 PIC X(72) VALUE "WTAMU".
           05 W-SOLD-VAL-02 PIC X(72) VALUE "Box 60877".
       
       01 TABLE-HEADER.
           05 W-NUM PIC X(5) VALUE "No. ".
           05 W-DESC PIC A(32) VALUE "Description".
           05 W-QUANT PIC A(8) VALUE "Quantity".
           05 W-UP PIC X(13) VALUE "   Unit Price".
           05 W-AMOUNT PIC X(14) VALUE "        Amount".
           05 W-DASH PIC X(72) VALUE ALL "-".
           
           05 W-NUM-01 PIC 9(5) VALUE 01.
           05 W-NUM-02 PIC 9(5) VALUE 02.
           05 W-NUM-03 PIC 9(5) VALUE 03.
           05 W-NUM-F PIC 99BBB.
           
           05 W-DESC-01 PIC X(32) VALUE "RTX 5090".
           05 W-DESC-02 PIC X(32) VALUE "Steinway & Sons Piano".
           05 W-DESC-03 PIC X(32) VALUE "Pilot G2 red fine 5-pack".


           05 W-QUANT-VAL-01 PIC 9(8) VALUE 100.
           05 W-QUANT-VAL-02 PIC 9(8) VALUE 3.
           05 W-QUANT-VAL-03 PIC 9(8) VALUE 12.
           05 W-QUANT-VAL-F PIC ZZZZZZZZ.

           01 W-UP-VAL-01 PIC 9(7)V99 VALUE 3099.95.
           01 W-UP-VAL-02 PIC 9(7)V99 VALUE 53170.23.
           01 W-UP-VAL-03 PIC 9(7)V99 VALUE 8.47.
           01 W-UP-VAL-F PIC $$,$$$,$$9.99.

           01 W-AMT-VAL-01 PIC 9(8)V99 VALUE 309995.00.
           01 W-AMT-VAL-02 PIC 9(8)V99 VALUE 159510.69.
           01 W-AMT-VAL-03 PIC 9(8)V99 VALUE 101.64.
           01 W-AMT-VAL-F PIC $$$,$$$,$$9.99.

       01 BOTTOM-HEADER.
           05 W-SPACES-37 PIC X(37) VALUE SPACES.
           05 W-SUB PIC X(19) VALUE "Subtotal:".
           05 W-PF PIC X(19) VALUE "Processing Fee:".
           05 W-TAX PIC X(19) VALUE "Taxes:".
           05 W-TOTAL PIC X(19) VALUE "Total:".

           05 W-FORMAT PIC $,$$$,$$$,$$9.99.
           05 W-SUB-VAL PIC 9(9)V99 VALUE ZERO.
           05 W-PF-VAL PIC 9(9)V99 VALUE ZERO.
           05 W-TAX-VAL PIC 9(9)V99 VALUE ZERO.
           05 W-TOTAL-VAL PIC 9(9)V99 VALUE ZERO.
           
       PROCEDURE DIVISION.
           DISPLAY W-INVOICE.
           DISPLAY W-SPACES-72.
           DISPLAY W-SOLD-TO.
           DISPLAY W-SOLD-VAL-01.
           DISPLAY W-SOLD-VAL-02.
           DISPLAY W-SPACES-72.
           DISPLAY W-NUM W-DESC W-QUANT W-UP W-AMOUNT.
           DISPLAY W-DASH.
           
           MOVE W-QUANT-VAL-01 TO W-QUANT-VAL-F.
           MOVE W-UP-VAL-01 TO W-UP-VAL-F.
           MOVE W-AMT-VAL-01 TO W-AMT-VAL-F.
           MOVE W-NUM-01 TO W-NUM-F.
           DISPLAY W-NUM-F W-DESC-01 W-QUANT-VAL-F
           W-UP-VAL-F W-AMT-VAL-F.

           MOVE W-QUANT-VAL-02 TO W-QUANT-VAL-F.
           MOVE W-UP-VAL-02 TO W-UP-VAL-F.
           MOVE W-AMT-VAL-02 TO W-AMT-VAL-F.
           MOVE W-NUM-02 TO W-NUM-F.
           DISPLAY W-NUM-F W-DESC-02 W-QUANT-VAL-F 
           W-UP-VAL-F W-AMT-VAL-F.

           MOVE W-QUANT-VAL-03 TO W-QUANT-VAL-F.
           MOVE W-UP-VAL-03 TO W-UP-VAL-F.
           MOVE W-AMT-VAL-03 TO W-AMT-VAL-F.
           MOVE W-NUM-03 TO W-NUM-F.
           DISPLAY W-NUM-F W-DESC-03 W-QUANT-VAL-F 
           W-UP-VAL-F W-AMT-VAL-F.
           DISPLAY W-SPACES-72.

      * SUBTOTAL
           ADD W-AMT-VAL-01 W-AMT-VAL-02 W-AMT-VAL-03 TO W-SUB-VAL.
           MOVE W-SUB-VAL TO W-FORMAT.
           DISPLAY W-SPACES-37 W-SUB W-FORMAT.
      
      * PROCESSING FEE
           MULTIPLY W-SUB-VAL BY .0147 GIVING W-PF-VAL ROUNDED.
           MOVE W-PF-VAL TO W-FORMAT.
           DISPLAY W-SPACES-37 W-PF W-FORMAT.

      * TAXES     
           MULTIPLY W-SUB-VAL BY .0825 GIVING W-TAX-VAL ROUNDED.
           MOVE W-TAX-VAL TO W-FORMAT.
           DISPLAY W-SPACES-37 W-TAX W-FORMAT.

      * TOTAL     
           ADD W-SUB-VAL W-PF-VAL W-TAX-VAL TO W-TOTAL-VAL.
           MOVE W-TOTAL-VAL TO W-FORMAT.
           DISPLAY W-SPACES-37 W-TOTAL W-FORMAT.
           STOP RUN.
