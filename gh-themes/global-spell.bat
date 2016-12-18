@ECHO OFF
ECHO:
ECHO ==============================================================================
ECHO                                PANDOC IS MAGICK                               
ECHO ==============================================================================
ECHO Update all theme examples: Let the magick begin...
ECHO:
ECHO              Hocus pocus, tontus talontus, vade celeriter jubeo!              
ECHO:
FOR /D %%i IN (./*) DO (
	CD %%i
	CALL abracadabra
	CD ..
)
ECHO ==============================================================================
