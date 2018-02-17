with AUnit.Reporter.Text;
with AUnit.Run;
with Ffmpeg.Low_Level.Tests.Suits;

procedure Ffmpeg.Low_Level.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end Ffmpeg.Low_Level.Tests.Main;
