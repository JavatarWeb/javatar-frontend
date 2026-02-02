.PHONY: react
react:
	cd react && npm run build

clean:
	docker stop javatar-nginx
	docker rm javatar-nginx
	docker build -t javatar-frontend .
	docker run -d -p 80:80 -p 443:443 --name javatar-nginx javatar-frontend

clean-all: clean
	rm -rf react/dist/
