pragma Ada_2012;
package body FFMpeg.swresample is

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

   -----------
   -- alloc --
   -----------

   function alloc return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc unimplemented");
      return raise Program_Error with "Unimplemented function alloc";
   end alloc;

   ----------
   -- init --
   ----------

   function init (s : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init unimplemented");
      return raise Program_Error with "Unimplemented function init";
   end init;

   --------------------
   -- is_initialized --
   --------------------

   function is_initialized (s : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_initialized unimplemented");
      return raise Program_Error with "Unimplemented function is_initialized";
   end is_initialized;

   --------------------
   -- alloc_set_opts --
   --------------------

   function alloc_set_opts
     (s : System.Address;
      out_ch_layout : Interfaces.Integer_64;
      out_sample_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      out_sample_rate : int;
      in_ch_layout : Interfaces.Integer_64;
      in_sample_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      in_sample_rate : int;
      log_offset : int;
      log_ctx : System.Address)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_set_opts unimplemented");
      return raise Program_Error with "Unimplemented function alloc_set_opts";
   end alloc_set_opts;

   ----------
   -- free --
   ----------

   procedure free (s : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   -----------
   -- close --
   -----------

   procedure close (s : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      raise Program_Error with "Unimplemented procedure close";
   end close;

   -------------
   -- convert --
   -------------

   function convert
     (s : System.Address;
      c_out : System.Address;
      out_count : int;
      c_in : System.Address;
      in_count : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convert unimplemented");
      return raise Program_Error with "Unimplemented function convert";
   end convert;

   --------------
   -- next_pts --
   --------------

   function next_pts
     (s : System.Address;
      pts : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "next_pts unimplemented");
      return raise Program_Error with "Unimplemented function next_pts";
   end next_pts;

   ----------------------
   -- set_compensation --
   ----------------------

   function set_compensation
     (s : System.Address;
      sample_delta : int;
      compensation_distance : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_compensation unimplemented");
      return raise Program_Error with "Unimplemented function set_compensation";
   end set_compensation;

   -------------------------
   -- set_channel_mapping --
   -------------------------

   function set_channel_mapping
     (s : System.Address;
      channel_map : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_channel_mapping unimplemented");
      return raise Program_Error with "Unimplemented function set_channel_mapping";
   end set_channel_mapping;

   ------------------
   -- build_matrix --
   ------------------

   function build_matrix
     (in_layout : Interfaces.Unsigned_64;
      out_layout : Interfaces.Unsigned_64;
      center_mix_level : double;
      surround_mix_level : double;
      lfe_mix_level : double;
      rematrix_maxval : double;
      rematrix_volume : double;
      matrix : access double;
      stride : int;
      matrix_encoding : FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h.AVMatrixEncoding;
      log_ctx : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "build_matrix unimplemented");
      return raise Program_Error with "Unimplemented function build_matrix";
   end build_matrix;

   ----------------
   -- set_matrix --
   ----------------

   function set_matrix
     (s : System.Address;
      matrix : access double;
      stride : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_matrix unimplemented");
      return raise Program_Error with "Unimplemented function set_matrix";
   end set_matrix;

   -----------------
   -- drop_output --
   -----------------

   function drop_output (s : System.Address; count : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "drop_output unimplemented");
      return raise Program_Error with "Unimplemented function drop_output";
   end drop_output;

   --------------------
   -- inject_silence --
   --------------------

   function inject_silence (s : System.Address; count : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "inject_silence unimplemented");
      return raise Program_Error with "Unimplemented function inject_silence";
   end inject_silence;

   ---------------
   -- get_delay --
   ---------------

   function get_delay
     (s : System.Address;
      base : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_delay unimplemented");
      return raise Program_Error with "Unimplemented function get_delay";
   end get_delay;

   ---------------------
   -- get_out_samples --
   ---------------------

   function get_out_samples
     (s : System.Address;
      in_samples : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_out_samples unimplemented");
      return raise Program_Error with "Unimplemented function get_out_samples";
   end get_out_samples;

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

   -------------------
   -- convert_frame --
   -------------------

   function convert_frame
     (swr : System.Address;
      output : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      input : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convert_frame unimplemented");
      return raise Program_Error with "Unimplemented function convert_frame";
   end convert_frame;

   ------------------
   -- config_frame --
   ------------------

   function config_frame
     (swr : System.Address;
      c_out : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      c_in : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "config_frame unimplemented");
      return raise Program_Error with "Unimplemented function config_frame";
   end config_frame;

end FFMpeg.swresample;
