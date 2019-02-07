.PHONY: install
install:~/.bash_profile ~/.bashrc ~/bin/sd ~/bin/fex ~/bin/thaw
	echo "export PATH=\"~/bin:$$PATH\"" >> ~/.bashrc
	echo "alias wer=\"ps aux|grep `whoami`\"" >> ~/.bashrc
	echo "alias nof=\"echo `hostname`|mail `whoami` -s Notisfy\"" >> ~/.bashrc
	echo "alias git-tree='git log --graph --all --format=\"%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s\"'" >> ~/.bashrc
~/bin/sd: /tmp/sd/sd ~/bin
	cp $< $@
~/bin/fex: /tmp/fex/fex ~/bin
	cp $< $@
~/bin/thaw: /tmp/thaw/thaw ~/bin
	cp $< $@
/tmp/sd/sd: /tmp/sd
	cd $<; gcc -o sd program.c
/tmp/fex/fex: /tmp/fex
	cd $<; gcc -o fex program.c
/tmp/thaw/thaw: /tmp/thaw
	cd $<; gcc -o thaw program.c
/tmp/sd:
	cd /tmp;git clone git@github.com:tawada/sd.git
/tmp/fex:
	cd /tmp;git clone git@github.com:tawada/fex.git
/tmp/thaw:
	cd /tmp;git clone git@github.com:tawada/thaw.git

~/bin:
	mkdir -p ~/bin
~/.bashrc:
	touch $@
~/.bash_profile:
	touch $@
	echo "if [ -f ~/.bashrc ]; then" >> $@
	echo "  . ~/.bashrc" >> $@
	echo "fi" >> $@

.PHONY: clean
clean:
	yes|rm -rf /tmp/sd
	yes|rm -rf /tmp/fex
	yes|rm -rf /tmp/thaw

