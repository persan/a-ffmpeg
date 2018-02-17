with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.avio.Tests.Suits;

procedure FFMpeg.avio.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.avio.Tests.Main;
