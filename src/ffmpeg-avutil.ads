pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

with Interfaces.C_Streams;
with FFMpeg.rational;

package FFMpeg.avutil is

   FF_LAMBDA_SHIFT : constant := 7;


   FF_QP2LAMBDA : constant := 118;
   FF_LAMBDA_MAX : constant := (256*128-1);

   TIME_BASE : constant := 1000000;


   FOURCC_MAX_STRING_SIZE : constant := 32;




   function version return unsigned;



   function version_info return String;



   function configuration return String;


   function license return String;


   subtype AVMediaType is int;
   AVMEDIA_TYPE_UNKNOWN : constant AVMediaType := -1;
   AVMEDIA_TYPE_VIDEO : constant AVMediaType := 0;
   AVMEDIA_TYPE_AUDIO : constant AVMediaType := 1;
   AVMEDIA_TYPE_DATA : constant AVMediaType := 2;
   AVMEDIA_TYPE_SUBTITLE : constant AVMediaType := 3;
   AVMEDIA_TYPE_ATTACHMENT : constant AVMediaType := 4;
   AVMEDIA_TYPE_NB : constant AVMediaType := 5;


   function get_media_type_string (media_type : AVMediaType) return String;


   type AVPictureType is
     (PICTURE_TYPE_NONE,
      PICTURE_TYPE_I,
      PICTURE_TYPE_P,
      PICTURE_TYPE_B,
      PICTURE_TYPE_S,
      PICTURE_TYPE_SI,
      PICTURE_TYPE_SP,
      PICTURE_TYPE_BI);
   pragma Convention (C, AVPictureType);

   function get_picture_type_char (pict_type : AVPictureType) return Character;

   function x_if_null (p : System.Address; x : System.Address) return System.Address;


   function int_list_length_for_size
     (elsize : unsigned;
      list : System.Address;
      term : Interfaces.Unsigned_64) return unsigned;



   function fopen_utf8 (path : String; mode : String) return access Interfaces.C_Streams.FILEs;

   function get_time_base_q return FFMpeg.rational.AVRational;

private
   pragma Linker_Options ("-lavutil");
end ffmpeg.avutil;
