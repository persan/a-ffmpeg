with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.samplefmt.Tests.Suits;

procedure FFMpeg.samplefmt.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.samplefmt.Tests.Main;
