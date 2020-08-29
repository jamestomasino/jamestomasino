help:
	@echo "targets:"
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sed -n 's/^\(.*\): \(.*\)##\(.*\)/  \1|\3/p' \
	| column -t  -s '|'

README.txt: jamestomasino.1 ## generate readme file
	man ./jamestomasino.1 | col -bx > README.txt

.PHONY: help
