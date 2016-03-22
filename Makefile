all:
	mkdir -p ./build/META-INF
	javac -d ./build FittsTaskTwo.java FittsTaskTwoBlock.java FittsTaskTwoConfiguration.java FittsTaskTwoSequence.java FittsTaskTwoSetup.java FittsTaskTwoTrial.java Throughput.java
	cp FittsTaskTwo.cfg ./build/
	cp MANIFEST.MF ./build/META-INF/
	cp *.class ./build/
	cd ./build; jar cvmf META-INF/MANIFEST.MF FittsTaskTwo.jar *.class *.cfg

run: all
	cd build; java -jar FittsTaskTwo.jar

clean:
	rm -r build
	rm -r tracebuild

trace:
	mkdir -p ./tracebuild
	javac -d ./tracebuild FittsTaskTwoTrace.java
	cd ./tracebuild; jar cvf FittsTaskTwoTrace.jar *.class

tracerun: trace
	cd tracebuild; java FittsTaskTwoTrace
