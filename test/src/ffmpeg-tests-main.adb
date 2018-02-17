with AUnit.Reporter.Text;
with AUnit.Run;
with ffmpeg.Tests.Suits;

procedure ffmpeg.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end ffmpeg.Tests.Main;
