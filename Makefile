all:
	mkdir -p ./build
	javac -d ./build FittsTaskTwo.java FittsTaskTwoBlock.java FittsTaskTwoConfiguration.java FittsTaskTwoSequence.java FittsTaskTwoSetup.java FittsTaskTwoTrial.java Throughput.java
	cp FittsTaskTwo.cfg ./build/
	cp *.class ./build/
	cd ./build; jar cvf FittsTaskTwo.jar *.class *.cfg

run: all
	cd build; java FittsTaskTwo

clean:
	rm -r build
	rm -r tracebuild

trace:
	mkdir -p ./tracebuild
	javac -d ./tracebuild FittsTaskTwoTrace.java
	cd ./tracebuild; jar cvf FittsTaskTwoTrace.jar *.class

tracerun: trace
	cd tracebuild; java FittsTaskTwoTrace
