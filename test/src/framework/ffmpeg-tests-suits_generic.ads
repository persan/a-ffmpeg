with AUnit.Test_Suites;
generic
   type Test_Case is new Aunit.Test_Cases.Test_Case with private;
package ffmpeg.Tests.Suits_generic is
   function Suit return AUnit.Test_Suites.Access_Test_Suite;
end ffmpeg.Tests.Suits_generic;
