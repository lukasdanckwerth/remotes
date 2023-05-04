NAME=project
VERSION=0.0.1
GIT_DIRTY := $(git status -s)

tag:
	ifneq ($(shell git diff-index --quiet HEAD; echo $$?), 0)
		$(error "There are uncomitted changes.")
	else
		./remotes --version
	endif

install:
	install -m 755 remotes /usr/local/bin

uninstall:
	rm -rf /usr/local/bin/remotes
