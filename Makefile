README.txt: jamestomasino.1 ## generate readme file
	MANWIDTH=80 man ./jamestomasino.1 | col -bx > README.txt
