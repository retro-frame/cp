RFFF/1.0?CP-SPEC/1.0


LATIN-1
(
    =   /
)


437, OEM-US, DOS-US, DOS-LATIN-US
(
    =   /

    80: 00C7  00FC  00E9  00E2  00E4  00E0  00E5  00E7  00EA  00EB  00E8  00EF  00EE  00EC  00C4  00C5
        00C9  00E6  00C6  00F4  00F6  00F2  00FB  00F9  00FF  00D6  00DC  00A2  00A3  00A5  20A7  0192
        00E1  00ED  00F3  00FA  00F1  00D1  00AA  00BA  00BF  2310  00AC  00BD  00BC  00A1  00AB  00BB
        2591  2592  2593  2502  2524  2561  2562  2556  2555  2563  2551  2557  255D  255C  255B  2510
        2514  2534  252C  251C  2500  253C  255E  255F  255A  2554  2569  2566  2560  2550  256C  2567
        2568  2564  2565  2559  2558  2552  2553  256B  256A  2518  250C  2588  2584  258C  2590  2580
        03B1  00DF  0393  03C0  03A3  03C3  00B5  03C4  03A6  0398  03A9  03B4  221E  03C6  03B5  2229
        2261  00B1  2265  2264  2320  2321  00F7  2248  00B0  2219  00B7  221A  207F  00B2  25A0  00A0
)


858, DOS-LATIN-1-MODIFIED, DOS-LATIN-1-EUR  ; CODEPAGE 850 WITH EURO SIGN
(
    =   DOS-LATIN-1

    D5: 20AC  ; REPLACE DOTLESS I BY EURO SIGN
)


850, DOS-LATIN-1
(
    =   /

    80: 00C7  00FC  00E9  00E2  00E4  00E0  00E5  00E7  00EA  00EB  00E8  00EF  00EE  00EC  00C4  00C5
        00C9  00E6  00C6  00F4  00F6  00F2  00FB  00F9  00FF  00D6  00DC  00F8  00A3  00D8  00D7  0192
        00E1  00ED  00F3  00FA  00F1  00D1  00AA  00BA  00BF  00AE  00AC  00BD  00BC  00A1  00AB  00BB
        2591  2592  2593  2502  2524  00C1  00C2  00C0  00A9  2563  2551  2557  255D  00A2  00A5  2510
        2514  2534  252C  251C  2500  253C  00E3  00C3  255A  2554  2569  2566  2560  2550  256C  00A4
        00F0  00D0  00CA  00CB  00C8  0131  00CD  00CE  00CF  2518  250C  2588  2584  00A6  00CC  2580
        00D3  00DF  00D4  00D2  00F5  00D5  00B5  00FE  00DE  00DA  00DB  00D9  00FD  00DD  00AF  00B4
        00AD  00B1  2017  00BE  00B6  00A7  00F7  00B8  00B0  00A8  00B7  00B9  00B3  00B2  25A0  00A0
)


1963  ; STANDARD X3.4-1963
(
        =   /
    60: =   -
    7F: /     ; KEEP DEL (DELETE)

    ; DEVIATIONS FROM ASCII 1967 (GUESSED):

    01: /     ; MAP SOM (START OF MESSAGE) TO SOH (START OF HEADING)
    02: /     ; MAP EOA (END OF ADDRESS) TO STX (START OF TEXT)
    03: /     ; MAP EOM (END OF MESSAGE) TO ETX (END OF TEXT)
    05: /     ; MAP WRU ("WHO ARE YOU?") TO ENQ (ENQUIRY)
    06: -     ; MARK RU ("ARE YOU...?") INVALID
    08: /     ; MAP FE0 (FORMAT EFFECTOR 0) TO BS (BACKSPACE)
    10: /     ; MAP DC0 (DEVICE CONTROL 0) TO DLE (DATA LINK ESCAPE)
    15: /     ; MAP ERR (ERROR) TO NAK (NEGATIVE ACKNOWLEDGE)
    17: /     ; MAP LEM (LOGICAL END OF MEDIA) TO ETB (END OF TRANSMISSION BLOCK) RATHER THAN EM (END OF MEDIUM)
    18: -     ; MARK S0 (SEPARATOR 0) INVALID
    19: -     ; MARK S1 (SEPARATOR 1) INVALID
    1A: -     ; MARK S2 (SEPARATOR 2) INVALID
    1B: -     ; MARK S3 (SEPARATOR 3) INVALID
    1C: /     ; MAP S4 (SEPARATOR 4) TO FS (FILE SEPARATOR)
    1D: /     ; MAP S5 (SEPARATOR 5) TO GS (GROUP SEPARATOR)
    1E: /     ; MAP S6 (SEPARATOR 6) TO RS (RECORD SEPARATOR)
    1F: /     ; MAP S7 (SEPARATOR 7) TO US (UNIT SEPARATOR)
    58: 2191  ; UPWARDS ARROW
    59: 2190  ; LEFTWARDS ARROW
    7C: 0006  ; ACK (ACKNOWLEDGE)
    7E: 001B  ; ESC (ESCAPE)
)


1967, 1968, DEFAULT  ; STANDARD X3.4-1967/-1968 (HIGH BIT MUST BE ZERO)
(
        =   /
    80: =   -
)


PE  ; EVEN PARITY (ASCII-PE)
(
        ; HIGH BIT CLEAR:

        0000     -     -  0003     -  0005  0006     -     -  0009  000A     -  000C     -     -  000F
           -  0011  0012     -  0014     -     -  0017  0018     -     -  001B     -  001D  001E     -
           -  0021  0022     -  0024     -     -  0027  0028     -     -  002B     -  002D  002E     -
        0030     -     -  0033     -  0035  0036     -     -  0039  003A     -  003C     -     -  003F
           -  0041  0042     -  0044     -     -  0047  0048     -     -  004B     -  004D  004E     -
        0050     -     -  0053     -  0055  0056     -     -  0059  005A     -  005C     -     -  005F
        0060     -     -  0063     -  0065  0066     -     -  0069  006A     -  006C     -     -  006F
           -  0071  0072     -  0074     -     -  0077  0078     -     -  007B     -  007D  007E     -

        ; HIGH BIT SET:

           -  0001  0002     -  0004     -     -  0007  0008     -     -  000B     -  000D  000E     -
        0010     -     -  0013     -  0015  0016     -     -  0019  001A     -  001C     -     -  001F
        0020     -     -  0023     -  0025  0026     -     -  0029  002A     -  002C     -     -  002F
           -  0031  0032     -  0034     -     -  0037  0038     -     -  003B     -  003D  003E     -
        0040     -     -  0043     -  0045  0046     -     -  0049  004A     -  004C     -     -  004F
           -  0051  0052     -  0054     -     -  0057  0058     -     -  005B     -  005D  005E     -
           -  0061  0062     -  0064     -     -  0067  0068     -     -  006B     -  006D  006E     -
        0070     -     -  0073     -  0075  0076     -     -  0079  007A     -  007C     -     -  007F
)


PO  ; ODD PARITY (ASCII-PO)
(
        ; HIGH BIT CLEAR:

           -  0001  0002     -  0004     -     -  0007  0008     -     -  000B     -  000D  000E     -
        0010     -     -  0013     -  0015  0016     -     -  0019  001A     -  001C     -     -  001F
        0020     -     -  0023     -  0025  0026     -     -  0029  002A     -  002C     -     -  002F
           -  0031  0032     -  0034     -     -  0037  0038     -     -  003B     -  003D  003E     -
        0040     -     -  0043     -  0045  0046     -     -  0049  004A     -  004C     -     -  004F
           -  0051  0052     -  0054     -     -  0057  0058     -     -  005B     -  005D  005E     -
           -  0061  0062     -  0064     -     -  0067  0068     -     -  006B     -  006D  006E     -
        0070     -     -  0073     -  0075  0076     -     -  0079  007A     -  007C     -     -  007F

        ; HIGH BIT SET:

        0000     -     -  0003     -  0005  0006     -     -  0009  000A     -  000C     -     -  000F
           -  0011  0012     -  0014     -     -  0017  0018     -     -  001B     -  001D  001E     -
           -  0021  0022     -  0024     -     -  0027  0028     -     -  002B     -  002D  002E     -
        0030     -     -  0033     -  0035  0036     -     -  0039  003A     -  003C     -     -  003F
           -  0041  0042     -  0044     -     -  0047  0048     -     -  004B     -  004D  004E     -
        0050     -     -  0053     -  0055  0056     -     -  0059  005A     -  005C     -     -  005F
        0060     -     -  0063     -  0065  0066     -     -  0069  006A     -  006C     -     -  006F
           -  0071  0072     -  0074     -     -  0077  0078     -     -  007B     -  007D  007E     -
)
