build: build-heroku-24

build-heroku-24:
	@echo "Building imagemagick in Docker for heroku-24..."
	@docker run --user root -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-24" -w /buildpack heroku/heroku:24-build scripts/build_imagemagick imagemagick-heroku-24.tar.gz
