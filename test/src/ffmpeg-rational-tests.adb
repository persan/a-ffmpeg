
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body Ffmpeg.Rational.Tests is
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

   procedure Test_Create (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Create;

   
   procedure Test_add (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_add;

   
   procedure Test_subtract (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_subtract;

   
   procedure Test_multiply (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_multiply;

   
   procedure Test_divide (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_divide;

   
   procedure Test_equals (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_equals;

   
   procedure Test_greater_then (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_greater_then;

   
   procedure Test_greater_then_or_equal (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_greater_then_or_equal;

   
   procedure Test_less_then (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_less_then;

   
   procedure Test_les_then_or_equal (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_les_then_or_equal;

   
   procedure Test_not (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_not;

   
   procedure Test_To_Long_Float (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_To_Long_Float;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_Create'Access, Name => "Test_Create");
      Register_Routine (Test => Test, Routine => Test_add'Access, Name => "Test_add");
      Register_Routine (Test => Test, Routine => Test_subtract'Access, Name => "Test_subtract");
      Register_Routine (Test => Test, Routine => Test_multiply'Access, Name => "Test_multiply");
      Register_Routine (Test => Test, Routine => Test_divide'Access, Name => "Test_divide");
      Register_Routine (Test => Test, Routine => Test_equals'Access, Name => "Test_equals");
      Register_Routine (Test => Test, Routine => Test_greater_then'Access, Name => "Test_greater_then");
      Register_Routine (Test => Test, Routine => Test_greater_then_or_equal'Access, Name => "Test_greater_then_or_equal");
      Register_Routine (Test => Test, Routine => Test_less_then'Access, Name => "Test_less_then");
      Register_Routine (Test => Test, Routine => Test_les_then_or_equal'Access, Name => "Test_les_then_or_equal");
      Register_Routine (Test => Test, Routine => Test_not'Access, Name => "Test_not");
      Register_Routine (Test => Test, Routine => Test_To_Long_Float'Access, Name => "Test_To_Long_Float");
   end Register_Tests;

end Ffmpeg.Rational.Tests;
