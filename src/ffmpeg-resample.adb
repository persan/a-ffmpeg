pragma Ada_2012;
package body FFMpeg.resample is

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

   ---------------
   -- get_class --
   ---------------

   function get_class
      return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_class unimplemented");
      return raise Program_Error with "Unimplemented function get_class";
   end get_class;

   -------------------
   -- alloc_context --
   -------------------

   function alloc_context return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_context unimplemented");
      return raise Program_Error with "Unimplemented function alloc_context";
   end alloc_context;

   ----------
   -- open --
   ----------

   function open (avr : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open unimplemented");
      return raise Program_Error with "Unimplemented function open";
   end open;

   -------------
   -- is_open --
   -------------

   function is_open (avr : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_open unimplemented");
      return raise Program_Error with "Unimplemented function is_open";
   end is_open;

   -----------
   -- close --
   -----------

   procedure close (avr : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      raise Program_Error with "Unimplemented procedure close";
   end close;

   ----------
   -- free --
   ----------

   procedure free (avr : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   ------------------
   -- build_matrix --
   ------------------

   function build_matrix
     (in_layout : Interfaces.Unsigned_64;
      out_layout : Interfaces.Unsigned_64;
      center_mix_level : double;
      surround_mix_level : double;
      lfe_mix_level : double;
      normalize : int;
      matrix : access double;
      stride : int;
      matrix_encoding : FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h.AVMatrixEncoding)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "build_matrix unimplemented");
      return raise Program_Error with "Unimplemented function build_matrix";
   end build_matrix;

   ----------------
   -- get_matrix --
   ----------------

   function get_matrix
     (avr : System.Address;
      matrix : access double;
      stride : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_matrix unimplemented");
      return raise Program_Error with "Unimplemented function get_matrix";
   end get_matrix;

   ----------------
   -- set_matrix --
   ----------------

   function set_matrix
     (avr : System.Address;
      matrix : access double;
      stride : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_matrix unimplemented");
      return raise Program_Error with "Unimplemented function set_matrix";
   end set_matrix;

   -------------------------
   -- set_channel_mapping --
   -------------------------

   function set_channel_mapping
     (avr : System.Address;
      channel_map : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_channel_mapping unimplemented");
      return raise Program_Error with "Unimplemented function set_channel_mapping";
   end set_channel_mapping;

   ----------------------
   -- set_compensation --
   ----------------------

   function set_compensation
     (avr : System.Address;
      sample_delta : int;
      compensation_distance : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_compensation unimplemented");
      return raise Program_Error with "Unimplemented function set_compensation";
   end set_compensation;

   ---------------------
   -- get_out_samples --
   ---------------------

   function get_out_samples
     (avr : System.Address;
      in_nb_samples : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_out_samples unimplemented");
      return raise Program_Error with "Unimplemented function get_out_samples";
   end get_out_samples;

   -------------
   -- convert --
   -------------

   function convert
     (avr : System.Address;
      output : System.Address;
      out_plane_size : int;
      out_samples : int;
      input : System.Address;
      in_plane_size : int;
      in_samples : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convert unimplemented");
      return raise Program_Error with "Unimplemented function convert";
   end convert;

   ---------------
   -- get_delay --
   ---------------

   function get_delay (avr : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_delay unimplemented");
      return raise Program_Error with "Unimplemented function get_delay";
   end get_delay;

   ---------------
   -- available --
   ---------------

   function available (avr : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "available unimplemented");
      return raise Program_Error with "Unimplemented function available";
   end available;

   ----------
   -- read --
   ----------

   function read
     (avr : System.Address;
      output : System.Address;
      nb_samples : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read unimplemented");
      return raise Program_Error with "Unimplemented function read";
   end read;

   -------------------
   -- convert_frame --
   -------------------

   function convert_frame
     (avr : System.Address;
      output : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      input : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convert_frame unimplemented");
      return raise Program_Error with "Unimplemented function convert_frame";
   end convert_frame;

   ------------
   -- config --
   ------------

   function config
     (avr : System.Address;
      c_out : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      c_in : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "config unimplemented");
      return raise Program_Error with "Unimplemented function config";
   end config;

end FFMpeg.resample;
