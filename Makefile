prepare:
	cmake -E tar xJ include.zip
	cmake -E tar xJ libs.zip
	mkdir -p build

clean:
	rm -rf build include libs

gh:
	git add -A; git commit -m "`date` - `uname`"; git push;
