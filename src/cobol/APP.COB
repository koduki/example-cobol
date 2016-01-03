000100 IDENTIFICATION                     DIVISION.
000200 PROGRAM-ID.                        APP.
000300 DATA                               DIVISION.
000400 WORKING-STORAGE                    SECTION.
000500 01 ARG1                            PIC 9(2).
000600 01 ARG2                            PIC 9(2).
000700 01 RESULT                          PIC 9(4).
000800 PROCEDURE                          DIVISION.
000900 ARGS-INPUT                         SECTION.
001000      ACCEPT ARG1 FROM CONSOLE.
001100      ACCEPT ARG2 FROM CONSOLE.
001200 MAIN                               SECTION.
001300      COMPUTE RESULT = ARG1 + ARG2.
001400 JSON-OUTPUT                        SECTION.
001500      DISPLAY "{arg1:" ARG1 ",arg2:" ARG2 ",result:" RESULT "}" .
001600 JSON-FIN                           SECTION.
001700      STOP RUN.
