
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.avdevice.Tests is
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


   procedure Test_register_all (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register_all;


   procedure Test_av_input_audio_device_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_input_audio_device_next;


   procedure Test_av_input_video_device_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_input_video_device_next;


   procedure Test_av_output_audio_device_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_output_audio_device_next;


   procedure Test_av_output_video_device_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_output_video_device_next;


   procedure Test_app_to_dev_control_message (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_app_to_dev_control_message;


   procedure Test_dev_to_app_control_message (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_dev_to_app_control_message;


   procedure Test_capabilities_create (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_capabilities_create;


   procedure Test_capabilities_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_capabilities_free;


   procedure Test_list_devices (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_list_devices;


   procedure Test_free_list_devices (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free_list_devices;


   procedure Test_list_input_sources (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_list_input_sources;


   procedure Test_list_output_sinks (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_list_output_sinks;




   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_version'Access, Name => "Test_version");
      Register_Routine (Test => Test, Routine => Test_configuration'Access, Name => "Test_configuration");
      Register_Routine (Test => Test, Routine => Test_license'Access, Name => "Test_license");
      Register_Routine (Test => Test, Routine => Test_register_all'Access, Name => "Test_register_all;");
      Register_Routine (Test => Test, Routine => Test_av_input_audio_device_next'Access, Name => "Test_av_input_audio_device_next");
      Register_Routine (Test => Test, Routine => Test_av_input_video_device_next'Access, Name => "Test_av_input_video_device_next");
      Register_Routine (Test => Test, Routine => Test_av_output_audio_device_next'Access, Name => "Test_av_output_audio_device_next");
      Register_Routine (Test => Test, Routine => Test_av_output_video_device_next'Access, Name => "Test_av_output_video_device_next");
      Register_Routine (Test => Test, Routine => Test_app_to_dev_control_message'Access, Name => "Test_app_to_dev_control_message");
      Register_Routine (Test => Test, Routine => Test_dev_to_app_control_message'Access, Name => "Test_dev_to_app_control_message");
      Register_Routine (Test => Test, Routine => Test_capabilities_create'Access, Name => "Test_capabilities_create");
      Register_Routine (Test => Test, Routine => Test_capabilities_free'Access, Name => "Test_capabilities_free");
      Register_Routine (Test => Test, Routine => Test_list_devices'Access, Name => "Test_list_devices");
      Register_Routine (Test => Test, Routine => Test_free_list_devices'Access, Name => "Test_free_list_devices");
      Register_Routine (Test => Test, Routine => Test_list_input_sources'Access, Name => "Test_list_input_sources");
      Register_Routine (Test => Test, Routine => Test_list_output_sinks'Access, Name => "Test_list_output_sinks");
   end Register_Tests;

end FFMpeg.avdevice.Tests;
