
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.mathematics.Tests is
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

   procedure Test_gcd (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_gcd;

   
   procedure Test_rescale (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rescale;

   
   procedure Test_rescale_rnd (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rescale_rnd;

   
   procedure Test_rescale_q (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rescale_q;

   
   procedure Test_rescale_q_rnd (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rescale_q_rnd;

   
   procedure Test_compare_ts (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_compare_ts;

   
   procedure Test_compare_mod (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_compare_mod;

   
   procedure Test_rescale_delta (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rescale_delta;

   
   procedure Test_add_stable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_add_stable;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_gcd'Access, Name => "Test_gcd");
      Register_Routine (Test => Test, Routine => Test_rescale'Access, Name => "Test_rescale");
      Register_Routine (Test => Test, Routine => Test_rescale_rnd'Access, Name => "Test_rescale_rnd");
      Register_Routine (Test => Test, Routine => Test_rescale_q'Access, Name => "Test_rescale_q");
      Register_Routine (Test => Test, Routine => Test_rescale_q_rnd'Access, Name => "Test_rescale_q_rnd");
      Register_Routine (Test => Test, Routine => Test_compare_ts'Access, Name => "Test_compare_ts");
      Register_Routine (Test => Test, Routine => Test_compare_mod'Access, Name => "Test_compare_mod");
      Register_Routine (Test => Test, Routine => Test_rescale_delta'Access, Name => "Test_rescale_delta");
      Register_Routine (Test => Test, Routine => Test_add_stable'Access, Name => "Test_add_stable");
   end Register_Tests;

end FFMpeg.mathematics.Tests;
