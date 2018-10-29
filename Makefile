run:
	./sentry

rebuild-sentry:
	curl -fsSLo- https://raw.githubusercontent.com/samueleaton/sentry/master/install.cr | crystal eval

shards:
	shards install

install: shards rebuild-sentry

build:
	crystal build -o weycoin_site ./src/wey.cr

build-release:
	crystal build --stats --progress --release --verbose -o weycoin_site ./src/wey.cr

stop-screen:
	screen -S weycoin_site -X quit

run-release:
	screen -S weycoin_site -d -m ./weycoin_site

restart:
	make build-release
	make stop-screen
	make run-release