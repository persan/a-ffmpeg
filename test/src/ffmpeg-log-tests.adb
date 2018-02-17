
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.log.Tests is
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

   procedure Test_log (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_log;

   
   procedure Test_vlog (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_vlog;

   
   procedure Test_get_level (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_level;

   
   procedure Test_set_level (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_level;

   
   procedure Test_set_callback (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_callback;

   
   procedure Test_default_callback (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_callback;

   
   procedure Test_default_item_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_item_name;

   
   procedure Test_default_get_category (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_get_category;

   
   procedure Test_format_line (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_format_line;

   
   procedure Test_format_line2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_format_line2;

   
   procedure Test_set_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_flags;

   
   procedure Test_get_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_flags;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_log'Access, Name => "Test_log");
      Register_Routine (Test => Test, Routine => Test_vlog'Access, Name => "Test_vlog");
      Register_Routine (Test => Test, Routine => Test_get_level'Access, Name => "Test_get_level");
      Register_Routine (Test => Test, Routine => Test_set_level'Access, Name => "Test_set_level");
      Register_Routine (Test => Test, Routine => Test_set_callback'Access, Name => "Test_set_callback");
      Register_Routine (Test => Test, Routine => Test_default_callback'Access, Name => "Test_default_callback");
      Register_Routine (Test => Test, Routine => Test_default_item_name'Access, Name => "Test_default_item_name");
      Register_Routine (Test => Test, Routine => Test_default_get_category'Access, Name => "Test_default_get_category");
      Register_Routine (Test => Test, Routine => Test_format_line'Access, Name => "Test_format_line");
      Register_Routine (Test => Test, Routine => Test_format_line2'Access, Name => "Test_format_line2");
      Register_Routine (Test => Test, Routine => Test_set_flags'Access, Name => "Test_set_flags");
      Register_Routine (Test => Test, Routine => Test_get_flags'Access, Name => "Test_get_flags");
   end Register_Tests;

end FFMpeg.log.Tests;
