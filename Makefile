build-static:
	hugo

deploy:
	git subtree push --prefix public git@github.com:la5nta/pat-website.git gh-pages

server:
	hugo server -D
