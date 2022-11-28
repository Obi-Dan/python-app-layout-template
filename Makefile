help :
	@echo 'Usage: make <command>'
	@echo 'Commands:'
	@echo '  install                    Install dependencies'
	@echo
	@echo '  run                        Run the app'
	@echo '  test                       Run unit tests'
.PHONY : help

install :
	python -m pip install \
		--no-warn-script-location \
		--requirement requirements.txt \
		--requirement requirements_dev.txt
.PHONY : install

run :
	python ./src/runner.py
.PHONY : run

test :
	python -m pytest
.PHONY : test
