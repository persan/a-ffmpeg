with AUnit.Reporter.Text;
with AUnit.Run;
with Ffmpeg.Rational.Tests.Suits;

procedure Ffmpeg.Rational.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end Ffmpeg.Rational.Tests.Main;
