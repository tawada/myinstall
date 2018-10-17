.PHONY: install
install:
	git clone git@github.com:tawada/sd.git
	cd sd;gcc -o sd program.c && mv sd ~/.bin/
	git clone git@github.com:tawada/fex.git
	cd fex;gcc -o fex program.c && mv fex ~/.bin/
	git clone git@github.com:tawada/thaw.git
	cd thaw;gcc -o thaw program.c && mv thaw ~/.bin/
	
