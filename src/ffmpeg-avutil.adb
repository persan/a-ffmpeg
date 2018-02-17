pragma Ada_2012;
with FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H;
package body FFMpeg.avutil is
   use System;
   --------------------
   -- avutil_version --
   --------------------

   function version return unsigned is
   begin
      return FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.Avutil_Version;
   end version;

   ------------------
   -- version_info --
   ------------------

   function version_info return String is
   begin
      return Interfaces.C.Strings.Value (FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.Av_Version_Info);
   end version_info;

   --------------------------
   -- avutil_configuration --
   --------------------------

   function configuration return String is
   begin
      return Interfaces.C.Strings.Value (FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.avutil_configuration);
   end configuration;

   --------------------
   -- avutil_license --
   --------------------

   function license return String is
   begin
      return Interfaces.C.Strings.Value (FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.avutil_license);
   end license;

   ---------------------------
   -- get_media_type_string --
   ---------------------------

   function get_media_type_string (media_type : AVMediaType) return String is
   begin
      return Interfaces.C.Strings.Value (FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.av_get_media_type_string(media_type));
   end get_media_type_string;

   ---------------------------
   -- get_picture_type_char --
   ---------------------------

   function get_picture_type_char (pict_type : AVPictureType) return Character is
   begin
      return Character (FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.Av_Get_Picture_Type_Char (FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.AVPictureType'Val(AVPictureType'pos(Pict_Type))));
   end get_picture_type_char;

   ---------------
   -- x_if_null --
   ---------------

   function x_if_null
     (p : System.Address;
      x : System.Address)
      return System.Address
   is
   begin
      return (if p /= System.Null_Address then p else x);
   end x_if_null;

   ------------------------------
   -- int_list_length_for_size --
   ------------------------------

   function int_list_length_for_size
     (elsize : unsigned;
      list : System.Address;
      term : Interfaces.Unsigned_64)
      return unsigned
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "int_list_length_for_size unimplemented");
      return raise Program_Error with "Unimplemented function int_list_length_for_size";
   end int_list_length_for_size;

   ----------------
   -- fopen_utf8 --
   ----------------

   function fopen_utf8
     (path : String;
      mode : String)
      return access Interfaces.C_Streams.FILEs
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fopen_utf8 unimplemented");
      return raise Program_Error with "Unimplemented function fopen_utf8";
   end fopen_utf8;

   ---------------------
   -- get_time_base_q --
   ---------------------

   function get_time_base_q return FFMpeg.rational.AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_time_base_q unimplemented");
      return raise Program_Error with "Unimplemented function get_time_base_q";
   end get_time_base_q;

end FFMpeg.avutil;
