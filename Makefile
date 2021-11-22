default: build

clean:
	rm remove-adid-on-boot.zip

build:
	zip -9r remove-adid-on-boot.zip META-INF LICENSE module.prop README.md service.sh
