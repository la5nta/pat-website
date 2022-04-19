# pat-website
Pat's home

## Making changes

Here be dragons!!

This actual webpage is generated using an older version of [hugo](https://github.com/gohugoio/hugo). The Makefile holds all the magic, including building the output directory (`./public/`) and deploying to the `gh-pages` branch using git subtree.

Changes to the web page should be made mainly by modifying the files in `./content` and `./layouts`. You can use the dev server (`make server`) to test your changes.

```
# Start the development server ("hot reload")
make server

# Re-build the public/ directory
make build-static

# Deploy (requires repo write access)
make deploy
```
