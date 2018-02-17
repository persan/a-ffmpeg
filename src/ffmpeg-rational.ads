private with FFMpeg.Low_Level.Ffmpeg_Libavutil_Rational_H;
package Ffmpeg.Rational is

   type AVRational is private;
   Null_AVRational : constant AVRational;

   type AVRational_Array is array (Natural range <>) of AVRational;

   function Create (Num, Den : Integer) return AVRational;

   function "+" (L , R : AVRational) return AVRational;
   function "-" (L , R : AVRational) return AVRational;
   function "*" (L , R : AVRational) return AVRational;
   function "/" (L , R : AVRational) return AVRational;

   function "=" (L , R : AVRational) return Boolean;
   function ">" (L , R : AVRational) return Boolean;
   function ">=" (L , R : AVRational) return Boolean;
   function "<" (L , R : AVRational) return Boolean;
   function "<=" (L , R : AVRational) return Boolean;

   function "not" (L : AVRational) return AVRational;

   function To_Long_Float (Item : AVRational) return Long_Float;

private
   type AVRational is new FFMpeg.Low_Level.Ffmpeg_Libavutil_Rational_H.AVRational;
   Null_AVRational : constant AVRational := (0, 0);
end Ffmpeg.Rational;
