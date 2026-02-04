.PHONY: react
react:
	cd react && npm run build

clean: 
	rm -rf react/dist/