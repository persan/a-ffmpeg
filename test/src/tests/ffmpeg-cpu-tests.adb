
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.cpu.Tests is
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

   procedure Test_get_cpu_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_cpu_flags;

   
   procedure Test_force_cpu_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_force_cpu_flags;

   
   procedure Test_set_cpu_flags_mask (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_cpu_flags_mask;

   
   procedure Test_parse_cpu_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parse_cpu_flags;

   
   procedure Test_parse_cpu_caps (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parse_cpu_caps;

   
   procedure Test_cpu_count (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_cpu_count;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_get_cpu_flags'Access, Name => "Test_get_cpu_flags");
      Register_Routine (Test => Test, Routine => Test_force_cpu_flags'Access, Name => "Test_force_cpu_flags");
      Register_Routine (Test => Test, Routine => Test_set_cpu_flags_mask'Access, Name => "Test_set_cpu_flags_mask");
      Register_Routine (Test => Test, Routine => Test_parse_cpu_flags'Access, Name => "Test_parse_cpu_flags");
      Register_Routine (Test => Test, Routine => Test_parse_cpu_caps'Access, Name => "Test_parse_cpu_caps");
      Register_Routine (Test => Test, Routine => Test_cpu_count'Access, Name => "Test_cpu_count");
   end Register_Tests;

end FFMpeg.cpu.Tests;
