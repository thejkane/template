#include <iostream>
#include <cppunit/TestFixture.h>
#include <cppunit/TestAssert.h>
#include <cppunit/TestCaller.h>
#include <cppunit/TestSuite.h>
#include <cppunit/TestCase.h>
#include <cppunit/TestSuite.h>
#include <cppunit/ui/text/TestRunner.h>

#include "adder.hpp"

class AdderTest : public CppUnit::TestFixture {

public:
  AdderTest(){}
  virtual ~AdderTest() {
  }

  static CppUnit::Test *suite() {
    CppUnit::TestSuite* suiteOfTests = new CppUnit::TestSuite("AdderTests");
    suiteOfTests->addTest(new CppUnit::TestCaller<AdderTest>("AdderTests", &AdderTest::testAdd));
                                                                   
    return suiteOfTests;
  }

protected:
  void testAdd() {
    int a = 3;
    int b = 2;
    Adder adder;
    CPPUNIT_ASSERT(adder.add(a, b) == 5);
  }                          
};

int main() {
  CppUnit::TextUi::TestRunner runner;
  runner.addTest(AdderTest::suite());
  std::cout << "Running tests .." << std::endl;
  runner.run();
}
