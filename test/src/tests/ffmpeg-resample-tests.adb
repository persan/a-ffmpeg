
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.resample.Tests is
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

   procedure Test_version (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_version;

   
   procedure Test_configuration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_configuration;

   
   procedure Test_license (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_license;

   
   procedure Test_get_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_class;

   
   procedure Test_alloc_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_alloc_context;

   
   procedure Test_open (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open;

   
   procedure Test_is_open (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_open;

   
   procedure Test_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_close;

   
   procedure Test_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free;

   
   procedure Test_build_matrix (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_build_matrix;

   
   procedure Test_get_matrix (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_matrix;

   
   procedure Test_set_matrix (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_matrix;

   
   procedure Test_set_channel_mapping (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_channel_mapping;

   
   procedure Test_set_compensation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_compensation;

   
   procedure Test_get_out_samples (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_out_samples;

   
   procedure Test_convert (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_convert;

   
   procedure Test_get_delay (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_delay;

   
   procedure Test_available (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_available;

   
   procedure Test_read (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_read;

   
   procedure Test_convert_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_convert_frame;

   
   procedure Test_config (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_config;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_version'Access, Name => "Test_version");
      Register_Routine (Test => Test, Routine => Test_configuration'Access, Name => "Test_configuration");
      Register_Routine (Test => Test, Routine => Test_license'Access, Name => "Test_license");
      Register_Routine (Test => Test, Routine => Test_get_class'Access, Name => "Test_get_class");
      Register_Routine (Test => Test, Routine => Test_alloc_context'Access, Name => "Test_alloc_context");
      Register_Routine (Test => Test, Routine => Test_open'Access, Name => "Test_open");
      Register_Routine (Test => Test, Routine => Test_is_open'Access, Name => "Test_is_open");
      Register_Routine (Test => Test, Routine => Test_close'Access, Name => "Test_close");
      Register_Routine (Test => Test, Routine => Test_free'Access, Name => "Test_free");
      Register_Routine (Test => Test, Routine => Test_build_matrix'Access, Name => "Test_build_matrix");
      Register_Routine (Test => Test, Routine => Test_get_matrix'Access, Name => "Test_get_matrix");
      Register_Routine (Test => Test, Routine => Test_set_matrix'Access, Name => "Test_set_matrix");
      Register_Routine (Test => Test, Routine => Test_set_channel_mapping'Access, Name => "Test_set_channel_mapping");
      Register_Routine (Test => Test, Routine => Test_set_compensation'Access, Name => "Test_set_compensation");
      Register_Routine (Test => Test, Routine => Test_get_out_samples'Access, Name => "Test_get_out_samples");
      Register_Routine (Test => Test, Routine => Test_convert'Access, Name => "Test_convert");
      Register_Routine (Test => Test, Routine => Test_get_delay'Access, Name => "Test_get_delay");
      Register_Routine (Test => Test, Routine => Test_available'Access, Name => "Test_available");
      Register_Routine (Test => Test, Routine => Test_read'Access, Name => "Test_read");
      Register_Routine (Test => Test, Routine => Test_convert_frame'Access, Name => "Test_convert_frame");
      Register_Routine (Test => Test, Routine => Test_config'Access, Name => "Test_config");
   end Register_Tests;

end FFMpeg.resample.Tests;
