        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     POWER.

        DATA            DIVISION.
        WORKING-STORAGE SECTION.
	01 BASE                           PIC 9(2).
	01 EXPO                           PIC 9(2).
	01 RESULT                         PIC 9(4).
        PROCEDURE       DIVISION.
        ARGS-INPUT      SECTION.
	    ACCEPT BASE FROM CONSOLE.
	    ACCEPT EXPO FROM CONSOLE.
        MAIN            SECTION.
            COMPUTE RESULT = BASE ** EXPO. 
        JSON-OUTPUT     SECTION.
            DISPLAY "{base:" BASE ",expo:" EXPO ",result:" RESULT "}" .
        JSON-FIN.
            STOP RUN.
