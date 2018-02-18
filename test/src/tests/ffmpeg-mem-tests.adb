
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.mem.Tests is
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

   procedure Test_malloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_malloc;

   
   procedure Test_mallocz (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_mallocz;

   
   procedure Test_malloc_array (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_malloc_array;

   
   procedure Test_mallocz_array (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_mallocz_array;

   
   procedure Test_calloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_calloc;

   
   procedure Test_realloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_realloc;

   
   procedure Test_reallocp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_reallocp;

   
   procedure Test_realloc_f (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_realloc_f;

   
   procedure Test_realloc_array (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_realloc_array;

   
   procedure Test_reallocp_array (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_reallocp_array;

   
   procedure Test_fast_realloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_fast_realloc;

   
   procedure Test_fast_malloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_fast_malloc;

   
   procedure Test_fast_mallocz (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_fast_mallocz;

   
   procedure Test_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free;

   
   procedure Test_freep (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_freep;

   
   procedure Test_strdup (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_strdup;

   
   procedure Test_strndup (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_strndup;

   
   procedure Test_memdup (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_memdup;

   
   procedure Test_memcpy_backptr (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_memcpy_backptr;

   
   procedure Test_dynarray_add (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_dynarray_add;

   
   procedure Test_dynarray_add_nofree (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_dynarray_add_nofree;

   
   procedure Test_dynarray2_add (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_dynarray2_add;

   
   procedure Test_size_mult (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_size_mult;

   
   procedure Test_max_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_max_alloc;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_malloc'Access, Name => "Test_malloc");
      Register_Routine (Test => Test, Routine => Test_mallocz'Access, Name => "Test_mallocz");
      Register_Routine (Test => Test, Routine => Test_malloc_array'Access, Name => "Test_malloc_array");
      Register_Routine (Test => Test, Routine => Test_mallocz_array'Access, Name => "Test_mallocz_array");
      Register_Routine (Test => Test, Routine => Test_calloc'Access, Name => "Test_calloc");
      Register_Routine (Test => Test, Routine => Test_realloc'Access, Name => "Test_realloc");
      Register_Routine (Test => Test, Routine => Test_reallocp'Access, Name => "Test_reallocp");
      Register_Routine (Test => Test, Routine => Test_realloc_f'Access, Name => "Test_realloc_f");
      Register_Routine (Test => Test, Routine => Test_realloc_array'Access, Name => "Test_realloc_array");
      Register_Routine (Test => Test, Routine => Test_reallocp_array'Access, Name => "Test_reallocp_array");
      Register_Routine (Test => Test, Routine => Test_fast_realloc'Access, Name => "Test_fast_realloc");
      Register_Routine (Test => Test, Routine => Test_fast_malloc'Access, Name => "Test_fast_malloc");
      Register_Routine (Test => Test, Routine => Test_fast_mallocz'Access, Name => "Test_fast_mallocz");
      Register_Routine (Test => Test, Routine => Test_free'Access, Name => "Test_free");
      Register_Routine (Test => Test, Routine => Test_freep'Access, Name => "Test_freep");
      Register_Routine (Test => Test, Routine => Test_strdup'Access, Name => "Test_strdup");
      Register_Routine (Test => Test, Routine => Test_strndup'Access, Name => "Test_strndup");
      Register_Routine (Test => Test, Routine => Test_memdup'Access, Name => "Test_memdup");
      Register_Routine (Test => Test, Routine => Test_memcpy_backptr'Access, Name => "Test_memcpy_backptr");
      Register_Routine (Test => Test, Routine => Test_dynarray_add'Access, Name => "Test_dynarray_add");
      Register_Routine (Test => Test, Routine => Test_dynarray_add_nofree'Access, Name => "Test_dynarray_add_nofree");
      Register_Routine (Test => Test, Routine => Test_dynarray2_add'Access, Name => "Test_dynarray2_add");
      Register_Routine (Test => Test, Routine => Test_size_mult'Access, Name => "Test_size_mult");
      Register_Routine (Test => Test, Routine => Test_max_alloc'Access, Name => "Test_max_alloc");
   end Register_Tests;

end FFMpeg.mem.Tests;
