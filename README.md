# Retro-Frame Codepage Specifications

**Endeavor: Retro-Frame**  
**Repository: \<[http://source.retro-frame.net/cp](http://source.retro-frame.net/cp)\>**  
**Version: 1.0!0 (dev)**  
**Compliance: Retro-Frame 1.0**  
**License: MIT (see `LICENSE`)**  

Copyright (c) 2026 Ingo Boehmer \<ingo@retro-leisure.net\>

All product names, logos, and brands are property of their respective owners.


## Contents

1. Overview

2. General codepage documentation

3. Codepage specifications

4. Codepage code files

5. Binary codepage files

6. Test files

7. References


## 1. Overview

In modern world, the leading character set is **Unicode** which is encoded by
a set of standardized UTF-based character encodings. However, in earlier times,
multiple character sets and character encodings existed.

While most of those character sets are encoded by a single byte (and consisted
thus of no more than 256 codepoints), some character sets are represented by a
single byte or a sequence of two bytes (e.g. Shift JIS). In addition, some
statful encodings existed which use control characters like SHIFT-OUT and
SHIFT-IN to switch between character sets.

As it seems infeasible to implement all of the possible (often vendor-specific)
codepages, the **Retro-Frame Data Format Specifications** repository provides
some file formats which may be used to specify or use codepages in a program
(see `doc/rf-cp.txt` for more details) which are used for codepage
specifications provided by this repository (Retro-C provides the simple
standard C command line tool **RFCPTOOL** which is capable to translate the
different codepage file formats from one to another).

**Retro-Frame** is a Retro-Endeavor that provides common documentation (i.e.
definitions, guidelines, templates and generic specifications) as well as
topic-related specifications (covered by individual repositories like this
one related to codepage specifications) which are intended for use in
retrospective programming and may be used as a whole or partially for other
purposes.

* The **Retro-Frame Common Documentation** repository provides common
  definitions, guidelines, templates and generic specifications.

* This repository is part of the ***Retro-Frame Specifications***. Subject to
  the ***Retro-Frame Codepage Specifications*** are mappings of character
  encodings with an element size of one byte (i.e. codepages) to Retro-Frame
  character codepoints (see **Retro-Frame Common Documentation**,
  `spec/rf-char.txt`) which are a superset of Unicode.


## 2. General codepage documentation

The directory `doc/` is intended to contain general codepage documentation:

* `doc/rf-cp.txt` provides general descriptions of codepages and codepage
  files.


## 3. Codepage specifications

The directory `spec/` contains codepage specifications by providing files in
the Codepage Specifications (CPSPEC) data format (see **Retro-Frame Data
Format Specifications**, `spec/rfdf-cpspec.txt`).

Currently, the following CPSPEC files are provided:

* `spec/APPLE.CPS` provides vendor-specific codepages of Apple. This includes a
  vendor-specific variant of Shift-JIS.

* `spec/ASCII.CPS` provides native ASCII codepages as well as MS-DOS codepages
  from Microsoft where the first 128 codepoints are regular ASCII.

* `spec/CASIO.CPS` provides vendor-specific codepages of Casio used by some
  calculators.

* `spec/CYRILLIC.CPS` provides Russian codepages specified by GOST standards.

* `spec/EBCDIC.CPS` provides EBCDIC-based vendor-specific codepages of
  IBM formerly used on IBM mainframe computers.

* `spec/JIS.CPS` provides Japanese codepages specified by JIS standards.

* `spec/MS-DOS.CPS` provides the MS-DOS codepages from `spec/ASCII.CPS` except
  that the codepoints 1 through 31 are taken from `spec/OEM.CPS` but preserving
  the control characters BEL, BS, LF, CR, SUB and ESC from the original ASCII
  codepage.

* `spec/OEM.CPS` provides the MS-DOS codepages from `spec/ASCII.CPS` except
  that the codepoints 1 through 31 represent graphical dingbats rather than the
  original ASCII control characters.

* `spec/ROT13.CPS` provides so-called ROT13 letter substitution for some
  character domains (only the codepoints of the letters must be known as all
  other codepoints are preserved). If applied twice, the original encoding
  results.

* `spec/SINCLAIR.CPS` provides vendor-specific codepages of Sinclair,
  particularly of the ZX80 and ZX81 computers.

* `spec/WINDOWS.CPS` specific Windows codepages from Microsoft where the first
  128 codepoints are regular ASCII. This includes a vendor-specific
  variant of Shift-JIS.

* `spec/ZX.CPS` provides the ZX80 and ZX81 codepages from `spec/SINCLAIR.CPS`
  using a different codepage domain.

You might set the environment variable `RETROCPSDIR` to a directory where those
files are located.


## 4. Codepage code files

The directory `res/` contains codepage specifications by providing files in
the Codepage Code (CPCODE) data format (see **Retro-Frame Data Format
Specifications**, `spec/rfdf-cpcode.txt`).

Currently, the following CPCODE files are provided:

* `res/ASCII.CPC`
* `res/CESU-8.CPC`
* `res/CESU-8X.CPC`
* `res/DOS-437.CPC`
* `res/DOS-850.CPC`
* `res/LATIN-1.CPC`
* `res/PCS.CPC`
* `res/UCS-2BE.CPC`
* `res/UCS-2LE.CPC`
* `res/UCS-4BE.CPC`
* `res/UCS-4LE.CPC`
* `res/UTF-8.CPC`
* `res/UTF-8X.CPC`
* `res/UTF-16BE.CPC`
* `res/UTF-16LE.CPC`
* `res/UTF-32BE.CPC`
* `res/UTF-32LE.CPC`


## 5. Binary codepage files

The directory `bin/` contains binary codepage files translated from the
codepags code files (see chapter 4) which are ready to use in the CP data
format (see **Retro-Frame Data Format Specifications**, `spec/rfdf-cp.txt`).

Currently, the following CP files are provided:

* `bin/ASCII.CP`
* `bin/CESU-8.CP`
* `bin/CESU-8X.CP`
* `bin/DOS-437.CP`
* `bin/DOS-850.CP`
* `bin/LATIN-1.CP`
* `bin/PCS.CP`
* `bin/UCS-2BE.CP`
* `bin/UCS-2LE.CP`
* `bin/UCS-4BE.CP`
* `bin/UCS-4LE.CP`
* `bin/UTF-8.CP`
* `bin/UTF-8X.CP`
* `bin/UTF-16BE.CP`
* `bin/UTF-16LE.CP`
* `bin/UTF-32BE.CP`
* `bin/UTF-32LE.CP`

You might set the environment variable `RETROCPDIR` to a directory where those
files are located.


## 6. Test files

The directory `test/` contains CPCODE and CPSPEC test files as well as some
text files which represent some simple text fragments (e.g. "HELLO") encoded by
specific codepages.

Currently, the following CPCODE test file is provided:

* `test/cpcode/TEST.CPC`

Currently, the following CPSPEC test files are provided:

* `test/cpspec/DBCSTEST.CPS`
* `test/cpspec/MBCSTEST.CPS`
* `test/cpspec/MINIMAL.CPS`
* `test/cpspec/REFTEST.CPS`
* `test/cpspec/REFTEST2.CPS`
* `test/cpspec/SELFREF.CPS`
* `test/cpspec/SHIFTREF.CPS`
* `test/cpspec/SIMPLE.CPS`
* `test/cpspec/TEST-*.CPS` where * is a 3-digit number from 000 to 017

Currently, the following text test files are provided:

* `test/text/CESU-8.TXT`
* `test/text/CESU-8_BOM.TXT`
* `test/text/EBCDIC-037-1140.TXT`
* `test/text/EBCDIC-273-1141.TXT`
* `test/text/EBCDIC-500-1148.TXT`
* `test/text/LATIN-1.TXT`
* `test/text/SHIFT-JIS.TXT`
* `test/text/UTF-8.TXT`
* `test/text/UTF-8_BOM.TXT`
* `test/text/UTF-16BE.TXT`
* `test/text/UTF-16BE_BOM.TXT`
* `test/text/UTF-16LE.TXT`
* `test/text/UTF-16LE_BOM.TXT`
* `test/text/UTF-32BE.TXT`
* `test/text/UTF-32BE_BOM.TXT`
* `test/text/UTF-32LE.TXT`
* `test/text/UTF-32LE_BOM.TXT`


## 7. References

### Retro-Frame

Retro-Frame homepage, see
\<[http://source.retro-frame.net/](http://source.retro-frame.net/)\>.

### Retro-Frame Common Documentation

Retro-Frame Common Documentation repository, see
\<[http://source.retro-frame.net/common](http://source.retro-frame.net/common)\>.

### Retro-Frame Data Format Specifications

Retro-Frame Data Format Specifications repository, see
\<[http://source.retro-frame.net/format](http://source.retro-frame.net/format)\>.

### RFCPTOOL

For the source code of the Retro-C software RFCPTOOL (Retro-Frame Codepage
Tool) see
\<[http://source.retro-c.net/comp.stdc.rfcptool](http://source.retro-c.net/comp.stdc.rfcptool)\>.

### Unicode

The Unicode(R) Standard, The Unicode Consortium, for latest version see
<https://www.unicode.org/versions/latest/>.
