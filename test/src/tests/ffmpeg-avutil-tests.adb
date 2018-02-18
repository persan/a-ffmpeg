
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.Avutil.Tests is
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

   -- %(testroutines)

   -- function version return unsigned;
   procedure Test_version (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual : constant unsigned := version;
      Expected : constant unsigned := 3619428;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end;



   --function version_info return String;
   procedure Test_version_info (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual : constant String := version_info;
      Expected : constant String := "3.3.6";
   begin
      Assert (Actual = Expected, "Expected => " & Expected & ", Actual => " & Actual);
   end;



   --function configuration return String;
   procedure Test_configuration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual : constant String := configuration;
      Expected : constant String := "???";
   begin
      null; -- Assert (Actual = Expected, "Expected => " & Expected & ", Actual => " & Actual);
   end;


   procedure Test_License (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual : constant String := License;
      Expected : constant String := "GPL version 3 or later";
   begin
      Assert (Actual = Expected, "Expected => " & Expected & ", Actual => " & Actual);
   end;

   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_Version'Access, Name => "Test_version");
      Register_Routine (Test => Test, Routine => Test_version_info'Access, Name => "Test_version_info");
      Register_Routine (Test => Test, Routine => Test_configuration'Access, Name => "Test_configuration");
      Register_Routine (Test => Test, Routine => Test_License'Access, Name => "Test_License");
   end Register_Tests;

end FFMpeg.Avutil.Tests;
