
all:
	@echo run \'make install\' to install these configs
	@echo *** WARNING, BACKUP YOUR CONFIGS FIRST, THEY WILL BE OVERWRITTEN

install:
	@if [ -d "$(HOME)/.config/nvim" ]; then \
		rm -ri $(HOME)/.config/nvim/; \
	fi
	@if [ -d "$(HOME)/.local/share/nvim" ]; then \
		rm -rf $(HOME)/.local/share/nvim/; \
	fi
	@ln -sf $(PWD) $(HOME)/.config/nvim
	@rm -rf ./plugin
	@echo *** WARNING, CONFIGS ARE NOW LINKED TO THIS FOLDER FOR EASY GIT MANAGEMENT

	#TODO backup folder

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/pfetch
