
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.swscale.Tests is
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

   
   procedure Test_getCoefficients (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getCoefficients;

   
   procedure Test_isSupportedInput (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_isSupportedInput;

   
   procedure Test_isSupportedOutput (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_isSupportedOutput;

   
   procedure Test_isSupportedEndiannessConversion (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_isSupportedEndiannessConversion;

   
   procedure Test_alloc_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_alloc_context;

   
   procedure Test_init_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_init_context;

   
   procedure Test_freeContext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_freeContext;

   
   procedure Test_getContext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getContext;

   
   procedure Test_scale (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_scale;

   
   procedure Test_setColorspaceDetails (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_setColorspaceDetails;

   
   procedure Test_getColorspaceDetails (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getColorspaceDetails;

   
   procedure Test_allocVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_allocVec;

   
   procedure Test_getGaussianVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getGaussianVec;

   
   procedure Test_scaleVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_scaleVec;

   
   procedure Test_normalizeVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_normalizeVec;

   
   procedure Test_getConstVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getConstVec;

   
   procedure Test_getIdentityVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getIdentityVec;

   
   procedure Test_convVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_convVec;

   
   procedure Test_addVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_addVec;

   
   procedure Test_subVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_subVec;

   
   procedure Test_shiftVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_shiftVec;

   
   procedure Test_cloneVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_cloneVec;

   
   procedure Test_printVec2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_printVec2;

   
   procedure Test_freeVec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_freeVec;

   
   procedure Test_getDefaultFilter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getDefaultFilter;

   
   procedure Test_freeFilter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_freeFilter;

   
   procedure Test_getCachedContext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_getCachedContext;

   
   procedure Test_convertPalette8ToPacked32 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_convertPalette8ToPacked32;

   
   procedure Test_convertPalette8ToPacked24 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_convertPalette8ToPacked24;

   
   procedure Test_get_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_class;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_version'Access, Name => "Test_version");
      Register_Routine (Test => Test, Routine => Test_configuration'Access, Name => "Test_configuration");
      Register_Routine (Test => Test, Routine => Test_license'Access, Name => "Test_license");
      Register_Routine (Test => Test, Routine => Test_getCoefficients'Access, Name => "Test_getCoefficients");
      Register_Routine (Test => Test, Routine => Test_isSupportedInput'Access, Name => "Test_isSupportedInput");
      Register_Routine (Test => Test, Routine => Test_isSupportedOutput'Access, Name => "Test_isSupportedOutput");
      Register_Routine (Test => Test, Routine => Test_isSupportedEndiannessConversion'Access, Name => "Test_isSupportedEndiannessConversion");
      Register_Routine (Test => Test, Routine => Test_alloc_context'Access, Name => "Test_alloc_context");
      Register_Routine (Test => Test, Routine => Test_init_context'Access, Name => "Test_init_context");
      Register_Routine (Test => Test, Routine => Test_freeContext'Access, Name => "Test_freeContext");
      Register_Routine (Test => Test, Routine => Test_getContext'Access, Name => "Test_getContext");
      Register_Routine (Test => Test, Routine => Test_scale'Access, Name => "Test_scale");
      Register_Routine (Test => Test, Routine => Test_setColorspaceDetails'Access, Name => "Test_setColorspaceDetails");
      Register_Routine (Test => Test, Routine => Test_getColorspaceDetails'Access, Name => "Test_getColorspaceDetails");
      Register_Routine (Test => Test, Routine => Test_allocVec'Access, Name => "Test_allocVec");
      Register_Routine (Test => Test, Routine => Test_getGaussianVec'Access, Name => "Test_getGaussianVec");
      Register_Routine (Test => Test, Routine => Test_scaleVec'Access, Name => "Test_scaleVec");
      Register_Routine (Test => Test, Routine => Test_normalizeVec'Access, Name => "Test_normalizeVec");
      Register_Routine (Test => Test, Routine => Test_getConstVec'Access, Name => "Test_getConstVec");
      Register_Routine (Test => Test, Routine => Test_getIdentityVec'Access, Name => "Test_getIdentityVec");
      Register_Routine (Test => Test, Routine => Test_convVec'Access, Name => "Test_convVec");
      Register_Routine (Test => Test, Routine => Test_addVec'Access, Name => "Test_addVec");
      Register_Routine (Test => Test, Routine => Test_subVec'Access, Name => "Test_subVec");
      Register_Routine (Test => Test, Routine => Test_shiftVec'Access, Name => "Test_shiftVec");
      Register_Routine (Test => Test, Routine => Test_cloneVec'Access, Name => "Test_cloneVec");
      Register_Routine (Test => Test, Routine => Test_printVec2'Access, Name => "Test_printVec2");
      Register_Routine (Test => Test, Routine => Test_freeVec'Access, Name => "Test_freeVec");
      Register_Routine (Test => Test, Routine => Test_getDefaultFilter'Access, Name => "Test_getDefaultFilter");
      Register_Routine (Test => Test, Routine => Test_freeFilter'Access, Name => "Test_freeFilter");
      Register_Routine (Test => Test, Routine => Test_getCachedContext'Access, Name => "Test_getCachedContext");
      Register_Routine (Test => Test, Routine => Test_convertPalette8ToPacked32'Access, Name => "Test_convertPalette8ToPacked32");
      Register_Routine (Test => Test, Routine => Test_convertPalette8ToPacked24'Access, Name => "Test_convertPalette8ToPacked24");
      Register_Routine (Test => Test, Routine => Test_get_class'Access, Name => "Test_get_class");
   end Register_Tests;

end FFMpeg.swscale.Tests;
