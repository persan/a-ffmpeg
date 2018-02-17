pragma Ada_2012;
package body FFMpeg.mathematics is

   ---------
   -- gcd --
   ---------

   function gcd
     (a : Interfaces.Integer_64;
      b : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "gcd unimplemented");
      return raise Program_Error with "Unimplemented function gcd";
   end gcd;

   -------------
   -- rescale --
   -------------

   function rescale
     (a : Interfaces.Integer_64;
      b : Interfaces.Integer_64;
      c : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rescale unimplemented");
      return raise Program_Error with "Unimplemented function rescale";
   end rescale;

   -----------------
   -- rescale_rnd --
   -----------------

   function rescale_rnd
     (a : Interfaces.Integer_64;
      b : Interfaces.Integer_64;
      c : Interfaces.Integer_64;
      rnd : AVRounding)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rescale_rnd unimplemented");
      return raise Program_Error with "Unimplemented function rescale_rnd";
   end rescale_rnd;

   ---------------
   -- rescale_q --
   ---------------

   function rescale_q
     (a : Interfaces.Integer_64;
      bq : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      cq : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rescale_q unimplemented");
      return raise Program_Error with "Unimplemented function rescale_q";
   end rescale_q;

   -------------------
   -- rescale_q_rnd --
   -------------------

   function rescale_q_rnd
     (a : Interfaces.Integer_64;
      bq : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      cq : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      rnd : AVRounding)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rescale_q_rnd unimplemented");
      return raise Program_Error with "Unimplemented function rescale_q_rnd";
   end rescale_q_rnd;

   ----------------
   -- compare_ts --
   ----------------

   function compare_ts
     (ts_a : Interfaces.Integer_64;
      tb_a : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      ts_b : Interfaces.Integer_64;
      tb_b : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "compare_ts unimplemented");
      return raise Program_Error with "Unimplemented function compare_ts";
   end compare_ts;

   -----------------
   -- compare_mod --
   -----------------

   function compare_mod
     (a : Interfaces.Unsigned_64;
      b : Interfaces.Unsigned_64;
      c_mod : Interfaces.Unsigned_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "compare_mod unimplemented");
      return raise Program_Error with "Unimplemented function compare_mod";
   end compare_mod;

   -------------------
   -- rescale_delta --
   -------------------

   function rescale_delta
     (in_tb : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      in_ts : Interfaces.Integer_64;
      fs_tb : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      duration : int;
      last : access Interfaces.Integer_64;
      out_tb : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rescale_delta unimplemented");
      return raise Program_Error with "Unimplemented function rescale_delta";
   end rescale_delta;

   ----------------
   -- add_stable --
   ----------------

   function add_stable
     (ts_tb : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      ts : Interfaces.Integer_64;
      inc_tb : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      inc : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "add_stable unimplemented");
      return raise Program_Error with "Unimplemented function add_stable";
   end add_stable;

end FFMpeg.mathematics;
