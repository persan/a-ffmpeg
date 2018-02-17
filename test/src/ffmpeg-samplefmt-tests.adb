
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.samplefmt.Tests is
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

   procedure Test_get_sample_fmt_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_sample_fmt_name;

   
   procedure Test_get_sample_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_sample_fmt;

   
   procedure Test_get_alt_sample_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_alt_sample_fmt;

   
   procedure Test_get_packed_sample_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_packed_sample_fmt;

   
   procedure Test_get_planar_sample_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_planar_sample_fmt;

   
   procedure Test_get_sample_fmt_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_sample_fmt_string;

   
   procedure Test_get_bytes_per_sample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_bytes_per_sample;

   
   procedure Test_sample_fmt_is_planar (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_sample_fmt_is_planar;

   
   procedure Test_samples_get_buffer_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_samples_get_buffer_size;

   
   procedure Test_samples_fill_arrays (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_samples_fill_arrays;

   
   procedure Test_samples_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_samples_alloc;

   
   procedure Test_samples_alloc_array_and_samples (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_samples_alloc_array_and_samples;

   
   procedure Test_samples_copy (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_samples_copy;

   
   procedure Test_samples_set_silence (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_samples_set_silence;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_get_sample_fmt_name'Access, Name => "Test_get_sample_fmt_name");
      Register_Routine (Test => Test, Routine => Test_get_sample_fmt'Access, Name => "Test_get_sample_fmt");
      Register_Routine (Test => Test, Routine => Test_get_alt_sample_fmt'Access, Name => "Test_get_alt_sample_fmt");
      Register_Routine (Test => Test, Routine => Test_get_packed_sample_fmt'Access, Name => "Test_get_packed_sample_fmt");
      Register_Routine (Test => Test, Routine => Test_get_planar_sample_fmt'Access, Name => "Test_get_planar_sample_fmt");
      Register_Routine (Test => Test, Routine => Test_get_sample_fmt_string'Access, Name => "Test_get_sample_fmt_string");
      Register_Routine (Test => Test, Routine => Test_get_bytes_per_sample'Access, Name => "Test_get_bytes_per_sample");
      Register_Routine (Test => Test, Routine => Test_sample_fmt_is_planar'Access, Name => "Test_sample_fmt_is_planar");
      Register_Routine (Test => Test, Routine => Test_samples_get_buffer_size'Access, Name => "Test_samples_get_buffer_size");
      Register_Routine (Test => Test, Routine => Test_samples_fill_arrays'Access, Name => "Test_samples_fill_arrays");
      Register_Routine (Test => Test, Routine => Test_samples_alloc'Access, Name => "Test_samples_alloc");
      Register_Routine (Test => Test, Routine => Test_samples_alloc_array_and_samples'Access, Name => "Test_samples_alloc_array_and_samples");
      Register_Routine (Test => Test, Routine => Test_samples_copy'Access, Name => "Test_samples_copy");
      Register_Routine (Test => Test, Routine => Test_samples_set_silence'Access, Name => "Test_samples_set_silence");
   end Register_Tests;

end FFMpeg.samplefmt.Tests;
