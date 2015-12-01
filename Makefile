
.PHONY: scraper-base

images: scraper-base

scraper-base:
	docker build -t pudo/scraper-base:latest scraper-base
	docker push pudo/scraper-base:latest
