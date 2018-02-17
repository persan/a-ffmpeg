with AUnit.Reporter.Text;
with AUnit.Run;
with Ffmpeg.Avformat.Tests.Suits;

procedure Ffmpeg.Avformat.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end Ffmpeg.Avformat.Tests.Main;
