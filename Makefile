BASIC=.bashrc .short-prompt.sh $(wildcard bin/*) .vimrc .vim  .bash_aliases .gitconfig

.PHONY: personal work clean

personal: $(HOME)/.myenv_personal
work: $(HOME)/.myenv_work
clean:
	rm -f ~/.myenv_personal ~/.myenv_work

$(HOME)/.myenv_personal: $(BASIC) .bash_personal
	mkdir -p $(HOME)/.myenv_bkup
	mkdir -p $(HOME)/bin/
	for f in $?; do echo $$f; cp -r $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_personal
   
$(HOME)/.myenv_work: $(BASIC) .bash_t3
	mkdir -p $(HOME)/.myenv_bkup
	mkdir -p $(HOME)/bin/
	for f in $?; do echo $$f; cp -r $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_work

