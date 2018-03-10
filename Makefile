INC_PATH=-I/. -I/./cppunit_install/include/
LIB_PATH=-L/./cppunit_install/lib
STATIC_PATH=./cppunit_install/lib
LIBS=libcppunit.a


check : addertests
	./addtests

addertests : adder_test.o
	g++ $(LIB_PATH) -o addtests adder_test.o $(STATIC_PATH)/$(LIBS)

clean :
	rm -rf *.o funtools addertests sort addtests bst string sorttests sortstests median *.dSYM a.out
