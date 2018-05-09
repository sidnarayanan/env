BASIC=.bashrc .short-prompt.sh $(wildcard bin/*) .vimrc .vim  .bash_aliases .gitconfig .inputrc

.PHONY: personal work submit clean restore

personal: $(HOME)/.myenv_personal
work: $(HOME)/.myenv_work
submit: $(HOME)/.myenv_submit
clean:
	rm -f $(HOME)/.myenv_personal $(HOME)/.myenv_work $(HOME)/.myenv_submit 
restore:
	cp -rv $(HOME)/.myenv_bkup/* $(HOME)/

$(HOME)/.myenv_personal: $(BASIC) .bash_personal
	mkdir -p $(HOME)/.myenv_bkup
	mkdir -p $(HOME)/bin/
	for f in $?; do echo $$f; cp -rv $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rvT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_personal
   
$(HOME)/.myenv_work: $(BASIC) .bash_t3
	mkdir -p $(HOME)/.myenv_bkup
	mkdir -p $(HOME)/bin/
	for f in $?; do echo $$f; cp -rv $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rvT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_work

$(HOME)/.myenv_submit: $(BASIC) .bash_submit
	mkdir -p $(HOME)/.myenv_bkup
	mkdir -p $(HOME)/bin/
	for f in $?; do echo $$f; cp -rv $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rvT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_submit
