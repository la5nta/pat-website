submodules:
	git submodule update --init --recursive

docker-image:
	docker build -t hugo .

build-static: docker-image submodules
	docker run --rm -v ${PWD}:/src hugo hugo

deploy:
	git subtree push --prefix public git@github.com:la5nta/pat-website.git gh-pages

server: docker-image submodules
	docker run -it --rm -v ${PWD}:/src -p 1313:1313/tcp hugo hugo server -D --bind 0.0.0.0
