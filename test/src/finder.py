import re
import glob


from os.path import *


def getpackagename(path):
    with open(path) as inf:
        for line in inf:
            line = line.strip()
            matches = re.match(r"^package\s+(\S+)\s+is.*", line)
            if matches:
                return matches.group(1)



def ada2file(name):
    return name.lower().replace(".", "-")

TEST_CASE_SPEC = """with AUnit.Test_Cases;
package %(name)s is

   type Test_Case is new Aunit.Test_Cases.Test_Case with null record;

   function Name (Test : Test_Case) return Aunit.Message_String;

   procedure Register_Tests (Test : in out Test_Case);

end %(name)s;
"""

TEST_REGISTRATION = """      Register_Routine (Test => Test, Routine => Test_%(name)s'Access, Name => "Test_%(name)s");"""
TEST_ROUTINE = """   procedure Test_%(name)s (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_%(name)s;

   """

TEST_CASE_BODY = """with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body %(name)s is
   use AUnit.Assertions;
   use Interfaces.C;
   ----------
   -- Name --
   ----------
   Test_Name : constant String := GNAT.Source_Info.Enclosing_Entity;
   function Name (Test : Test_Case) return Aunit.Message_String is
   begin
      return Aunit.Format (Test_Name);
   end Name;

%(testroutines)s


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
%(testregistrations)s
   end Register_Tests;

end %(name)s;
"""


TEST_SUITS_SPEC = """with AUnit.Test_Suites;
package %(name)s is
   function Suit return AUnit.Test_Suites.Access_Test_Suite;
end %(name)s;
"""

TEST_SUITS_BODY = """with AUnit.Test_Suites;
package body %(name)s is


   Tc : aliased Test_Case;
   Test_Suit : aliased AUnit.Test_Suites.Test_Suite;

   function Suit return AUnit.Test_Suites.Access_Test_Suite is
   begin
      Test_Suit.Add_Test (Tc'Access);
      return Test_Suit'Access;
   end Suit;

end %(name)s;"""

TEST_MAIN = """with AUnit.Reporter.Text;
with AUnit.Run;
with %(suit)s;

procedure %(name)s is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end %(name)s;
"""

class test:
    def __init__(self, name, names):
        self.name = name
        self.names = names
        self.tc_name = self.name + ".Tests"
        self.suit_name = self.tc_name + ".Suits"
        self.main_name = self.tc_name + ".Main"
    def write(self, path, data):
        if not exists(path):
            with open(path, "w") as outf:
                outf.write(data)

    def write_spec(self, name, data):
        self.write(ada2file(name) + ".ads", data)

    def write_body(self, name, data):
        self.write(ada2file(name) + ".adb", data)

    def write_test_case(self):
        self.write_spec(self.tc_name,
                        TEST_CASE_SPEC % {"name": self.tc_name})
        testroutines = []
        testregistrations = []
        for name in names:
            testroutines.append(TEST_ROUTINE % {"name": name})
            testregistrations.append(TEST_REGISTRATION % {"name": name})

        self.write_body(self.tc_name,
                        TEST_CASE_BODY % {"name": self.tc_name,
                                          "testroutines": "\n".join(testroutines),
                                          "testregistrations": "\n".join(testregistrations)})

    def write_test_suit(self):
        self.write_spec(self.suit_name,
                        TEST_SUITS_SPEC % {"name": self.suit_name})

        self.write_body(self.suit_name,
                        TEST_SUITS_BODY % {"name": self.suit_name})

    def write_test_main(self):
        self.write_body(self.main_name,
                        TEST_MAIN % {"name": self.main_name,
                                     "suit": self.suit_name})

    def write_all(self):
        self.write_test_case()
        self.write_test_suit()
        self.write_test_main()


def toName(s):
    if '"' in s:
        if s == '"+"':
            return "add"
        elif s == '"-"':
            return "subtract"
        elif s == '"*"':
            return "multiply"
        elif s == '"/"':
            return "divide"
        elif s == '"="':
            return "equals"
        elif s == '">"':
            return "greater_then"
        elif s == '">="':
            return "greater_then_or_equal"
        elif s == '"<"':
            return "less_then"
        elif s == '"<="':
            return "les_then_or_equal"
        elif s == '"not"':
            return "not"

    return s


for path in glob.glob("../src/*.ads"):

    name = getpackagename(path)
    matcher = re.compile(r"\s*function\s+(\S+)\s+return\s+(\S+);")
    matcher2 = re.compile(r"\s*(function|procedure)\s+(\S+)")
    with open(path) as inf:
        print name
        names = []
        for line in inf:
            line = line.strip()
            matches = matcher.match(line)
            if matches:
                print "   %s  %s" % (toName(matches.group(1)), matches.group(2))
                names.append(toName(matches.group(1)))
            else:
                matches = matcher2.match(line)
                if matches:
                    print "   %s" % (toName(matches.group(2)))
                    names.append(toName(matches.group(2)))
    t = test(name, names)
    t.write_all()
