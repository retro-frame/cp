RFFF/1.0?CP-SPEC/1.0

1
(
    0001
    > 2
    > 3
)

2 < TAG0
(
    0002
    > 3
)

3
(
    0003
    < TAG0  ; SHIFT-IN TO TABLE TAG0
    <<      ; SHIFT-IN TO PREVIOUS TABLE
)

ASCII-MULTI < TAG0
(
    = ASCII-SHIFT-OUT-LATIN-1
    0E: > MULTI
)

ASCII-SHIFT-OUT-LATIN-1
(
    = /
    80: = -
    0E: > /  ; NO SHIFT BACK SO ONCE SHIFTED OUT TO LATIN-1 WE WILL STUCK THERE
)

MULTI < TAG1
(
    = /
    0A: > A > B > C > D > E < TAG1
)

A(A 0F:<TAG0) B(B 0F:< TAG0) C(C 0F:<TAG0 ) D(D 0F:< TAG0 ) E(E 0F:<TAG1)
