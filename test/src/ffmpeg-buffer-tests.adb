
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.buffer.Tests is
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

   procedure Test_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_alloc;

   
   procedure Test_allocz (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_allocz;

   
   procedure Test_create (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_create;

   
   procedure Test_default_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_free;

   
   procedure Test_ref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_ref;

   
   procedure Test_unref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_unref;

   
   procedure Test_is_writable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_writable;

   
   procedure Test_get_opaque (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_opaque;

   
   procedure Test_get_ref_count (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_ref_count;

   
   procedure Test_make_writable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_make_writable;

   
   procedure Test_realloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_realloc;

   
   procedure Test_pool_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pool_init;

   
   procedure Test_pool_init2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pool_init2;

   
   procedure Test_pool_uninit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pool_uninit;

   
   procedure Test_pool_get (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pool_get;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_alloc'Access, Name => "Test_alloc");
      Register_Routine (Test => Test, Routine => Test_allocz'Access, Name => "Test_allocz");
      Register_Routine (Test => Test, Routine => Test_create'Access, Name => "Test_create");
      Register_Routine (Test => Test, Routine => Test_default_free'Access, Name => "Test_default_free");
      Register_Routine (Test => Test, Routine => Test_ref'Access, Name => "Test_ref");
      Register_Routine (Test => Test, Routine => Test_unref'Access, Name => "Test_unref");
      Register_Routine (Test => Test, Routine => Test_is_writable'Access, Name => "Test_is_writable");
      Register_Routine (Test => Test, Routine => Test_get_opaque'Access, Name => "Test_get_opaque");
      Register_Routine (Test => Test, Routine => Test_get_ref_count'Access, Name => "Test_get_ref_count");
      Register_Routine (Test => Test, Routine => Test_make_writable'Access, Name => "Test_make_writable");
      Register_Routine (Test => Test, Routine => Test_realloc'Access, Name => "Test_realloc");
      Register_Routine (Test => Test, Routine => Test_pool_init'Access, Name => "Test_pool_init");
      Register_Routine (Test => Test, Routine => Test_pool_init2'Access, Name => "Test_pool_init2");
      Register_Routine (Test => Test, Routine => Test_pool_uninit'Access, Name => "Test_pool_uninit");
      Register_Routine (Test => Test, Routine => Test_pool_get'Access, Name => "Test_pool_get");
   end Register_Tests;

end FFMpeg.buffer.Tests;
