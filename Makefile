INC_PATH=-I. -I./cppunit_install/include/
LIB_PATH=-L./cppunit_install/lib
STATIC_PATH=./cppunit_install/lib
LIBS=libcppunit.a


check : addertests
	./addertests

addertests : adder_test.o
	g++ $(INC_PATH) -o addertests adder_test.o $(STATIC_PATH)/$(LIBS)

adder_test.o : adder_test.cpp
	g++ $(INC_PATH) -c adder_test.cpp

clean :
	rm -rf *.o addertests
