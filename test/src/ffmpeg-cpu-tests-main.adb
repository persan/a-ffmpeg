with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.cpu.Tests.Suits;

procedure FFMpeg.cpu.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.cpu.Tests.Main;
