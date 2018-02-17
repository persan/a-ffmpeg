with Ffmpeg.Avcodec.Tests;
with Ffmpeg.Avdevice.Tests;
with Ffmpeg.Avfilter.Tests;
with Ffmpeg.Avformat.Tests;
with Ffmpeg.Avio.Tests;
with Ffmpeg.Avutil.Tests;
with Ffmpeg.Buffer.Tests;
with Ffmpeg.Channel_Layout.Tests;
with Ffmpeg.Common.Tests;
with Ffmpeg.Cpu.Tests;
with Ffmpeg.Dict.Tests;
with Ffmpeg.Frame.Tests;
with Ffmpeg.Log.Tests;
with Ffmpeg.Low_Level.Tests;
with Ffmpeg.Mathematics.Tests;
with Ffmpeg.Mem.Tests;
with Ffmpeg.Opt.Tests;
with Ffmpeg.Pixfmt.Tests;
with Ffmpeg.Postprocess.Tests;
with Ffmpeg.Rational.Tests;
with Ffmpeg.Resample.Tests;
with Ffmpeg.Samplefmt.Tests;
with Ffmpeg.Swresample.Tests;
with Ffmpeg.Swscale.Tests;

with AUnit.Test_Suites;
package body Ffmpeg.Tests.Suits is


   Tc  : aliased Test_Case;
   T1  : aliased Ffmpeg.Avcodec.Tests.Test_Case;
   T2  : aliased Ffmpeg.Avdevice.Tests.Test_Case;
   T3  : aliased Ffmpeg.Avfilter.Tests.Test_Case;
   T4  : aliased Ffmpeg.Avformat.Tests.Test_Case;
   T5  : aliased Ffmpeg.Avio.Tests.Test_Case;
   T6  : aliased Ffmpeg.Avutil.Tests.Test_Case;
   T7  : aliased Ffmpeg.Buffer.Tests.Test_Case;
   T8  : aliased Ffmpeg.Channel_Layout.Tests.Test_Case;
   T9  : aliased Ffmpeg.Common.Tests.Test_Case;
   T10 : aliased Ffmpeg.Cpu.Tests.Test_Case;
   T11 : aliased Ffmpeg.Dict.Tests.Test_Case;
   T12 : aliased Ffmpeg.Frame.Tests.Test_Case;
   T13 : aliased Ffmpeg.Log.Tests.Test_Case;
   T14 : aliased Ffmpeg.Low_Level.Tests.Test_Case;
   T15 : aliased Ffmpeg.Mathematics.Tests.Test_Case;
   T16 : aliased Ffmpeg.Mem.Tests.Test_Case;
   T17 : aliased Ffmpeg.Opt.Tests.Test_Case;
   T18 : aliased Ffmpeg.Pixfmt.Tests.Test_Case;
   T19 : aliased Ffmpeg.Postprocess.Tests.Test_Case;
   T20 : aliased Ffmpeg.Rational.Tests.Test_Case;
   T21 : aliased Ffmpeg.Resample.Tests.Test_Case;
   T22 : aliased Ffmpeg.Samplefmt.Tests.Test_Case;
   T23 : aliased Ffmpeg.Swresample.Tests.Test_Case;
   T24 : aliased Ffmpeg.Swscale.Tests.Test_Case;
   T25 : aliased Ffmpeg.Tests.Test_Case;

   Test_Suit : aliased AUnit.Test_Suites.Test_Suite;

   function Suit return AUnit.Test_Suites.Access_Test_Suite is
   begin
      Test_Suit.Add_Test (Tc'Access);
      Test_Suit.Add_Test (T1'Access);
      Test_Suit.Add_Test (T2'Access);
      Test_Suit.Add_Test (T3'Access);
      Test_Suit.Add_Test (T4'Access);
      Test_Suit.Add_Test (T5'Access);
      Test_Suit.Add_Test (T6'Access);
      Test_Suit.Add_Test (T7'Access);
      Test_Suit.Add_Test (T8'Access);
      Test_Suit.Add_Test (T9'Access);
      Test_Suit.Add_Test (T10'Access);
      Test_Suit.Add_Test (T11'Access);
      Test_Suit.Add_Test (T12'Access);
      Test_Suit.Add_Test (T13'Access);
      Test_Suit.Add_Test (T14'Access);
      Test_Suit.Add_Test (T15'Access);
      Test_Suit.Add_Test (T16'Access);
      Test_Suit.Add_Test (T17'Access);
      Test_Suit.Add_Test (T18'Access);
      Test_Suit.Add_Test (T19'Access);
      Test_Suit.Add_Test (T20'Access);
      Test_Suit.Add_Test (T21'Access);
      Test_Suit.Add_Test (T22'Access);
      Test_Suit.Add_Test (T23'Access);
      Test_Suit.Add_Test (T24'Access);
      return Test_Suit'Access;
   end Suit;

end Ffmpeg.Tests.Suits;
