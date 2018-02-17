with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.mathematics.Tests.Suits;

procedure FFMpeg.mathematics.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.mathematics.Tests.Main;
