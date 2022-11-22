help :
	@echo 'Usage: make <command>'
	@echo 'Commands:'
	@echo '  install                    Install dependencies'
	@echo
	@echo '  test                       Run unit tests'
.PHONY : help

install :
	python -m pip install \
		--no-warn-script-location \
		--requirement requirements.txt \
		--requirement requirements_dev.txt
.PHONY : install

run :
	python ./app/runner.py
.PHONY : run

clean-run :
	$(MAKE) install
	$(MAKE) run
.PHONY : clean-run
