NAME=project
VERSION=0.0.1

tag:
	[[ -z $(git status -s) ]] || (echo "Workding directory dirty." && exit 1)

install:
	install -m 755 remotes /usr/local/bin

uninstall:
	rm -rf /usr/local/bin/remotes
