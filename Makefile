all: build-image

build-image:
	docker build -t tlsarchiver/dbcontainer .

upload-image: build-image
	docker push tlsarchiver/dbcontainer
