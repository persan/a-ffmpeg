
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.channel_layout.Tests is
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

   procedure Test_get_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_layout;

   
   procedure Test_get_extended_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_extended_channel_layout;

   
   procedure Test_get_channel_layout_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_layout_string;

   
   procedure Test_bprint_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bprint_channel_layout;

   
   procedure Test_get_channel_layout_nb_channels (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_layout_nb_channels;

   
   procedure Test_get_default_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_default_channel_layout;

   
   procedure Test_get_channel_layout_channel_index (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_layout_channel_index;

   
   procedure Test_channel_layout_extract_channel (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_channel_layout_extract_channel;

   
   procedure Test_get_channel_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_name;

   
   procedure Test_get_channel_description (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_description;

   
   procedure Test_get_standard_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_standard_channel_layout;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_get_channel_layout'Access, Name => "Test_get_channel_layout");
      Register_Routine (Test => Test, Routine => Test_get_extended_channel_layout'Access, Name => "Test_get_extended_channel_layout");
      Register_Routine (Test => Test, Routine => Test_get_channel_layout_string'Access, Name => "Test_get_channel_layout_string");
      Register_Routine (Test => Test, Routine => Test_bprint_channel_layout'Access, Name => "Test_bprint_channel_layout");
      Register_Routine (Test => Test, Routine => Test_get_channel_layout_nb_channels'Access, Name => "Test_get_channel_layout_nb_channels");
      Register_Routine (Test => Test, Routine => Test_get_default_channel_layout'Access, Name => "Test_get_default_channel_layout");
      Register_Routine (Test => Test, Routine => Test_get_channel_layout_channel_index'Access, Name => "Test_get_channel_layout_channel_index");
      Register_Routine (Test => Test, Routine => Test_channel_layout_extract_channel'Access, Name => "Test_channel_layout_extract_channel");
      Register_Routine (Test => Test, Routine => Test_get_channel_name'Access, Name => "Test_get_channel_name");
      Register_Routine (Test => Test, Routine => Test_get_channel_description'Access, Name => "Test_get_channel_description");
      Register_Routine (Test => Test, Routine => Test_get_standard_channel_layout'Access, Name => "Test_get_standard_channel_layout");
   end Register_Tests;

end FFMpeg.channel_layout.Tests;
