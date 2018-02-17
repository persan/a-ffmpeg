pragma Ada_2012;
package body FFMpeg.avdevice is

   -------------
   -- version --
   -------------

   function version return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "version unimplemented");
      return raise Program_Error with "Unimplemented function version";
   end version;

   -------------------
   -- configuration --
   -------------------

   function configuration return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "configuration unimplemented");
      return raise Program_Error with "Unimplemented function configuration";
   end configuration;

   -------------
   -- license --
   -------------

   function license return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "license unimplemented");
      return raise Program_Error with "Unimplemented function license";
   end license;

   ------------------
   -- register_all --
   ------------------

   procedure register_all is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_all unimplemented");
      raise Program_Error with "Unimplemented procedure register_all";
   end register_all;

   --------------------------------
   -- av_input_audio_device_next --
   --------------------------------

   function av_input_audio_device_next
     (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat)
      return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_input_audio_device_next unimplemented");
      return raise Program_Error with "Unimplemented function av_input_audio_device_next";
   end av_input_audio_device_next;

   --------------------------------
   -- av_input_video_device_next --
   --------------------------------

   function av_input_video_device_next
     (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat)
      return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_input_video_device_next unimplemented");
      return raise Program_Error with "Unimplemented function av_input_video_device_next";
   end av_input_video_device_next;

   ---------------------------------
   -- av_output_audio_device_next --
   ---------------------------------

   function av_output_audio_device_next
     (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat)
      return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_output_audio_device_next unimplemented");
      return raise Program_Error with "Unimplemented function av_output_audio_device_next";
   end av_output_audio_device_next;

   ---------------------------------
   -- av_output_video_device_next --
   ---------------------------------

   function av_output_video_device_next
     (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat)
      return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_output_video_device_next unimplemented");
      return raise Program_Error with "Unimplemented function av_output_video_device_next";
   end av_output_video_device_next;

   --------------------------------
   -- app_to_dev_control_message --
   --------------------------------

   function app_to_dev_control_message
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      c_type : AVAppToDevMessageType;
      data : System.Address;
      data_size : size_t)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "app_to_dev_control_message unimplemented");
      return raise Program_Error with "Unimplemented function app_to_dev_control_message";
   end app_to_dev_control_message;

   --------------------------------
   -- dev_to_app_control_message --
   --------------------------------

   function dev_to_app_control_message
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      c_type : AVDevToAppMessageType;
      data : System.Address;
      data_size : size_t)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dev_to_app_control_message unimplemented");
      return raise Program_Error with "Unimplemented function dev_to_app_control_message";
   end dev_to_app_control_message;

   -------------------------
   -- capabilities_create --
   -------------------------

   function capabilities_create
     (caps : System.Address;
      s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      device_options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "capabilities_create unimplemented");
      return raise Program_Error with "Unimplemented function capabilities_create";
   end capabilities_create;

   -----------------------
   -- capabilities_free --
   -----------------------

   procedure capabilities_free
     (caps : System.Address;
      s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "capabilities_free unimplemented");
      raise Program_Error with "Unimplemented procedure capabilities_free";
   end capabilities_free;

   ------------------
   -- list_devices --
   ------------------

   function list_devices
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      device_list : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "list_devices unimplemented");
      return raise Program_Error with "Unimplemented function list_devices";
   end list_devices;

   -----------------------
   -- free_list_devices --
   -----------------------

   procedure free_list_devices (device_list : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_list_devices unimplemented");
      raise Program_Error with "Unimplemented procedure free_list_devices";
   end free_list_devices;

   ------------------------
   -- list_input_sources --
   ------------------------

   function list_input_sources
     (device : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat;
      device_name : Interfaces.C.Strings.chars_ptr;
      device_options : System.Address;
      device_list : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "list_input_sources unimplemented");
      return raise Program_Error with "Unimplemented function list_input_sources";
   end list_input_sources;

   -----------------------
   -- list_output_sinks --
   -----------------------

   function list_output_sinks
     (device : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat;
      device_name : Interfaces.C.Strings.chars_ptr;
      device_options : System.Address;
      device_list : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "list_output_sinks unimplemented");
      return raise Program_Error with "Unimplemented function list_output_sinks";
   end list_output_sinks;

end FFMpeg.avdevice;
