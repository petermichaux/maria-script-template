.PHONY: clean

SRCS = src/header.js    \
       src/script-template.js

build: $(SRCS)
	mkdir -p build
	cat $(SRCS) >build/maria-script-template.js
	jsmin <build/maria-script-template.js >build/maria-script-template-tmp.js
	cat src/header.js build/maria-script-template-tmp.js >build/maria-script-template-min.js
	rm build/maria-script-template-tmp.js
	echo "define(['maria-amd'], function(maria) { // AMD" > build/maria-script-template-amd.js
	cat build/maria-script-template.js >> build//maria-script-template-amd.js
	echo "\n}); // AMD" >> build/maria-script-template-amd.js
	cp README.md build
	cp LICENSE build

clean:
	rm -rf build
