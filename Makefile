#run linux.sh
linux: clean
	chmod 744 ./bin/linux.sh
	./bin/linux.sh

#run cleanup.sh
clean:
	chmod 744 ./bin/cleanup.sh
	./bin/cleanup.sh
