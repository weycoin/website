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