RFFF/1.0?CP-SPEC/1.0:ASCII


; ------------------------------------------------------------
; KOI-7 N0 CHARACTER SET (LATIN) WITH UNIVERSAL CURRENCY SIGN:
; ------------------------------------------------------------

GOST-13052, GOST-27463, GOST-13052-N0, GOST-27463-N0
(
    =   KOI7-N0

    24: 00A4  ; REPLACE DOLLAR SIGN BY UNIVERSAL CURRENCY SIGN
)


; ------------------------------------------------------------
; KOI-7 N2 CHARACTER SET (MIXED) WITH UNIVERSAL CURRENCY SIGN:
; ------------------------------------------------------------

GOST-13052-N2, GOST-27463-N2
(
    =   KOI7-N2

    24: 00A4  ; REPLACE DOLLAR SIGN BY UNIVERSAL CURRENCY SIGN
)


; --------------------------------------------------------------
; KOI-7 N1 CHARACTER SET (RUSSIAN) WITH UNIVERSAL CURRENCY SIGN:
; --------------------------------------------------------------

GOST-13052-N1, GOST-27463-N1
(
    =   KOI7-N1

    24: 00A4  ; REPLACE DOLLAR SIGN BY UNIVERSAL CURRENCY SIGN
)


; -------------------------------
; KOI-7 N0 CHARACTER SET (LATIN):
; -------------------------------

KOI7, KOI-7, KOI7-N0, KOI-7-N0, KOI7-SWITCHED
(
    =   DEFAULT  ; BASED ON DEFAULT ASCII

    ; USE RETRO-FRAME SHIFT-IN / SHIFT-OUT MECHANISM:

    0E: > KOI7-N1
    0F: .
)


; -------------------------------
; KOI-7 N2 CHARACTER SET (MIXED):
; -------------------------------

KOI7-N2, KOI-7-N2, SHORT-KOI
(
    =   DEFAULT  ; BASED ON DEFAULT ASCII

    60: == KOI7-N1  ; CODEPOINTS 60..7F ARE TAKEN FROM KOI-7 N1
)


; ---------------------------------
; KOI-7 N1 CHARACTER SET (RUSSIAN):
; ---------------------------------

KOI7-N1, KOI-7-N1
(
    =   DEFAULT  ; BASED ON DEFAULT ASCII

    40: 044E  0430  0431  0446  0434  0435  0444  0433  0445  0438  0439  043A  043B  043C  043D  043E
        043F  044F  0440  0441  0442  0443  0436  0432  044C  044B  0437  0448  044D  0449  0447  044A
        042E  0410  0411  0426  0414  0415  0424  0413  0425  0418  0419  041A  041B  041C  041D  041E
        041F  042F  0420  0421  0422  0423  0416  0412  042C  042B  0417  0428  042D  0429  0427

    ; USE RETRO-FRAME SHIFT-IN / SHIFT-OUT MECHANISM:

    0E: .
    0F: <<
)
