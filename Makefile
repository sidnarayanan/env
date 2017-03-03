# only generates ROOT dictionaries! compilation is left to SCRAM
PACKAGE=$(CMSSW_BASE)/src/PandaAnalysis/
INC=-I/cvmfs/cms.cern.ch/$(SCRAM_ARCH)/external/fastjet-contrib/1.020/include/ -I/cvmfs/cms.cern.ch/$(SCRAM_ARCH)/external/fastjet/3.1.0/include/
BASIC=.bashrc .short-prompt.sh bin .vimrc .vim  .bash_aliases .gitconfig

.PHONY: personal work clean

personal: $(HOME)/.myenv_personal
work: $(HOME)/.myenv_work
clean:
	rm -f ~/.myenv_personal ~/.myenv_work

$(HOME)/.myenv_personal: $(BASIC)
	mkdir -p $(HOME)/.myenv_bkup
	for f in $?; do echo $$f; cp -r $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_personal
   
$(HOME)/.myenv_work: $(BASIC) .bash_t3
	mkdir -p $(HOME)/.myenv_bkup
	for f in $?; do echo $$f; cp -r $(HOME)/$$f $(HOME)/.myenv_bkup/; cp -rT $$f $(HOME)/$$f; done
	date >> $(HOME)/.myenv_work

