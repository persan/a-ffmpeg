
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.common.Tests is
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

   procedure Test_log2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_log2;

   
   procedure Test_log2_16bit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_log2_16bit;

   
   procedure Test_clip_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_c;

   
   procedure Test_clip64_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip64_c;

   
   procedure Test_clip_uint8_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_uint8_c;

   
   procedure Test_clip_int8_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_int8_c;

   
   procedure Test_clip_uint16_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_uint16_c;

   
   procedure Test_clip_int16_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_int16_c;

   
   procedure Test_clipl_int32_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clipl_int32_c;

   
   procedure Test_clip_intp2_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_intp2_c;

   
   procedure Test_clip_uintp2_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clip_uintp2_c;

   
   procedure Test_mod_uintp2_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_mod_uintp2_c;

   
   procedure Test_sat_add32_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_sat_add32_c;

   
   procedure Test_sat_dadd32_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_sat_dadd32_c;

   
   procedure Test_clipf_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clipf_c;

   
   procedure Test_clipd_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clipd_c;

   
   procedure Test_ceil_log2_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_ceil_log2_c;

   
   procedure Test_popcount_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_popcount_c;

   
   procedure Test_popcount64_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_popcount64_c;

   
   procedure Test_parity_c (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parity_c;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_log2'Access, Name => "Test_log2");
      Register_Routine (Test => Test, Routine => Test_log2_16bit'Access, Name => "Test_log2_16bit");
      Register_Routine (Test => Test, Routine => Test_clip_c'Access, Name => "Test_clip_c");
      Register_Routine (Test => Test, Routine => Test_clip64_c'Access, Name => "Test_clip64_c");
      Register_Routine (Test => Test, Routine => Test_clip_uint8_c'Access, Name => "Test_clip_uint8_c");
      Register_Routine (Test => Test, Routine => Test_clip_int8_c'Access, Name => "Test_clip_int8_c");
      Register_Routine (Test => Test, Routine => Test_clip_uint16_c'Access, Name => "Test_clip_uint16_c");
      Register_Routine (Test => Test, Routine => Test_clip_int16_c'Access, Name => "Test_clip_int16_c");
      Register_Routine (Test => Test, Routine => Test_clipl_int32_c'Access, Name => "Test_clipl_int32_c");
      Register_Routine (Test => Test, Routine => Test_clip_intp2_c'Access, Name => "Test_clip_intp2_c");
      Register_Routine (Test => Test, Routine => Test_clip_uintp2_c'Access, Name => "Test_clip_uintp2_c");
      Register_Routine (Test => Test, Routine => Test_mod_uintp2_c'Access, Name => "Test_mod_uintp2_c");
      Register_Routine (Test => Test, Routine => Test_sat_add32_c'Access, Name => "Test_sat_add32_c");
      Register_Routine (Test => Test, Routine => Test_sat_dadd32_c'Access, Name => "Test_sat_dadd32_c");
      Register_Routine (Test => Test, Routine => Test_clipf_c'Access, Name => "Test_clipf_c");
      Register_Routine (Test => Test, Routine => Test_clipd_c'Access, Name => "Test_clipd_c");
      Register_Routine (Test => Test, Routine => Test_ceil_log2_c'Access, Name => "Test_ceil_log2_c");
      Register_Routine (Test => Test, Routine => Test_popcount_c'Access, Name => "Test_popcount_c");
      Register_Routine (Test => Test, Routine => Test_popcount64_c'Access, Name => "Test_popcount64_c");
      Register_Routine (Test => Test, Routine => Test_parity_c'Access, Name => "Test_parity_c");
   end Register_Tests;

end FFMpeg.common.Tests;
