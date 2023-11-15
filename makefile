.PHONY: help
help: makefile
	@tail -n +4 makefile | grep ".PHONY"


.PHONY: dev
dev:
	bun x tauri dev


.PHONY: dev-elm
dev-elm:
	bun x elm reactor


node_modules: package.json
	bun install


dist/index.html: src/Main.elm | node_modules
	bun x elm make $< \
		--optimize \
		--output=$@


src-tauri/target/release/bundle/macos/tauri-elm-app.app: node_modules src/Main.elm
	bun x tauri build


.PHONY: build
build: src-tauri/target/release/bundle/macos/tauri-elm-app.app



.PHONY: clean
clean:
	rm -rf dist
	rm -rf elm-stuff
	rm -rf node_modules/
	rm -rf src-tauri/target
