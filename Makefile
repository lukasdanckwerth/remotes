install:
	@install -m 755 remotes /usr/local/bin
	@which remotes

uninstall:
	rm -rf /usr/local/bin/remotes

.PHONY: install uninstall
