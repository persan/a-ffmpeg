with AUnit.Test_Cases;
package Ffmpeg.Rational.Tests is

   type Test_Case is new Aunit.Test_Cases.Test_Case with null record;

   function Name (Test : Test_Case) return Aunit.Message_String;

   procedure Register_Tests (Test : in out Test_Case);

end Ffmpeg.Rational.Tests;
