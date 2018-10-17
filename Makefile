.PHONY: install
install:~/bin sd fex thaw
	cd sd;gcc -o sd program.c && mv sd ~/bin/
	cd fex;gcc -o fex program.c && mv fex ~/bin/
	cd thaw;gcc -o thaw program.c && mv thaw ~/bin/
	echo "alias PATH=~/bin:$PATH" >> ~/.bashrc
	echo "alias wer=\"ps aux|grep `whoami`\"" >> ~/.bashrc
	echo "alias nof=\"echo `hostname`|mail `whoami` -s Notisfy\"" >> ~/.bashrc
sd:
	git clone git@github.com:tawada/sd.git
fex:
	git clone git@github.com:tawada/fex.git
thaw:
	git clone git@github.com:tawada/thaw.git

~/bin:
	mkdir -p ~/bin
