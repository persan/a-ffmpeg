pragma Ada_2012;
with FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h; use FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h;
package body Ffmpeg.Avformat is

   ---------------------
   -- get_probe_score --
   ---------------------

   function get_probe_score
     (s : access constant AVFormatContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_probe_score unimplemented");
      return raise Program_Error with "Unimplemented function get_probe_score";
   end get_probe_score;

   ---------------------
   -- get_video_codec --
   ---------------------

   function get_video_codec
     (s : access constant AVFormatContext)
      return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_video_codec unimplemented");
      return raise Program_Error with "Unimplemented function get_video_codec";
   end get_video_codec;

   ---------------------
   -- set_video_codec --
   ---------------------

   procedure set_video_codec
     (s : access AVFormatContext;
      c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_video_codec unimplemented");
      raise Program_Error with "Unimplemented procedure set_video_codec";
   end set_video_codec;

   ---------------------
   -- get_audio_codec --
   ---------------------

   function get_audio_codec
     (s : access constant AVFormatContext)
      return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_audio_codec unimplemented");
      return raise Program_Error with "Unimplemented function get_audio_codec";
   end get_audio_codec;

   ---------------------
   -- set_audio_codec --
   ---------------------

   procedure set_audio_codec
     (s : access AVFormatContext;
      c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_audio_codec unimplemented");
      raise Program_Error with "Unimplemented procedure set_audio_codec";
   end set_audio_codec;

   ------------------------
   -- get_subtitle_codec --
   ------------------------

   function get_subtitle_codec
     (s : access constant AVFormatContext)
      return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_subtitle_codec unimplemented");
      return raise Program_Error with "Unimplemented function get_subtitle_codec";
   end get_subtitle_codec;

   ------------------------
   -- set_subtitle_codec --
   ------------------------

   procedure set_subtitle_codec
     (s : access AVFormatContext;
      c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_subtitle_codec unimplemented");
      raise Program_Error with "Unimplemented procedure set_subtitle_codec";
   end set_subtitle_codec;

   --------------------
   -- get_data_codec --
   --------------------

   function get_data_codec
     (s : access constant AVFormatContext)
      return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_data_codec unimplemented");
      return raise Program_Error with "Unimplemented function get_data_codec";
   end get_data_codec;

   --------------------
   -- set_data_codec --
   --------------------

   procedure set_data_codec
     (s : access AVFormatContext;
      c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_data_codec unimplemented");
      raise Program_Error with "Unimplemented procedure set_data_codec";
   end set_data_codec;

   ---------------------------------
   -- get_metadata_header_padding --
   ---------------------------------

   function get_metadata_header_padding
     (s : access constant AVFormatContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_metadata_header_padding unimplemented");
      return raise Program_Error with "Unimplemented function get_metadata_header_padding";
   end get_metadata_header_padding;

   ---------------------------------
   -- set_metadata_header_padding --
   ---------------------------------

   procedure set_metadata_header_padding
     (s : access AVFormatContext;
      c : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_metadata_header_padding unimplemented");
      raise Program_Error with "Unimplemented procedure set_metadata_header_padding";
   end set_metadata_header_padding;

   ----------------
   -- get_opaque --
   ----------------

   function get_opaque
     (s : access constant AVFormatContext)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_opaque unimplemented");
      return raise Program_Error with "Unimplemented function get_opaque";
   end get_opaque;

   ----------------
   -- set_opaque --
   ----------------

   procedure set_opaque
     (s : access AVFormatContext;
      opaque : System.Address)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_opaque unimplemented");
      raise Program_Error with "Unimplemented procedure set_opaque";
   end set_opaque;

   ----------------------------
   -- get_control_message_cb --
   ----------------------------

   function get_control_message_cb
     (s : access constant AVFormatContext)
      return control_message
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_control_message_cb unimplemented");
      return raise Program_Error with "Unimplemented function get_control_message_cb";
   end get_control_message_cb;

   ----------------------------
   -- set_control_message_cb --
   ----------------------------

   procedure set_control_message_cb
     (s : access AVFormatContext;
      callback : control_message)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_control_message_cb unimplemented");
      raise Program_Error with "Unimplemented procedure set_control_message_cb";
   end set_control_message_cb;

   -----------------
   -- get_open_cb --
   -----------------

   function get_open_cb
     (s : access constant AVFormatContext)
      return AVOpenCallback
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_open_cb unimplemented");
      return raise Program_Error with "Unimplemented function get_open_cb";
   end get_open_cb;

   -----------------
   -- set_open_cb --
   -----------------

   procedure set_open_cb
     (s : access AVFormatContext;
      callback : AVOpenCallback)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_open_cb unimplemented");
      raise Program_Error with "Unimplemented procedure set_open_cb";
   end set_open_cb;

   -----------------------------
   -- inject_global_side_data --
   -----------------------------

   procedure inject_global_side_data (s : access AVFormatContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "inject_global_side_data unimplemented");
      raise Program_Error with "Unimplemented procedure inject_global_side_data";
   end inject_global_side_data;

   --------------------------------------------
   -- fmt_ctx_get_duration_estimation_method --
   --------------------------------------------

   function fmt_ctx_get_duration_estimation_method
     (ctx : access constant AVFormatContext)
      return AVDurationEstimationMethod
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fmt_ctx_get_duration_estimation_method unimplemented");
      return raise Program_Error with "Unimplemented function fmt_ctx_get_duration_estimation_method";
   end fmt_ctx_get_duration_estimation_method;

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

   ---------------------------
   -- register_input_format --
   ---------------------------

   procedure register_input_format (format : access AVInputFormat) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_input_format unimplemented");
      raise Program_Error with "Unimplemented procedure register_input_format";
   end register_input_format;

   ----------------------------
   -- register_output_format --
   ----------------------------

   procedure register_output_format (format : access AVOutputFormat) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_output_format unimplemented");
      raise Program_Error with "Unimplemented procedure register_output_format";
   end register_output_format;

   ---------------------------
   -- avformat_network_init --
   ---------------------------

   function avformat_network_init return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avformat_network_init unimplemented");
      return raise Program_Error with "Unimplemented function avformat_network_init";
   end avformat_network_init;

   -----------------------------
   -- avformat_network_deinit --
   -----------------------------

   function avformat_network_deinit return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avformat_network_deinit unimplemented");
      return raise Program_Error with "Unimplemented function avformat_network_deinit";
   end avformat_network_deinit;

   ------------------
   -- iformat_next --
   ------------------

   function iformat_next
     (f : access constant AVInputFormat)
      return access AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "iformat_next unimplemented");
      return raise Program_Error with "Unimplemented function iformat_next";
   end iformat_next;

   ------------------
   -- oformat_next --
   ------------------

   function oformat_next
     (f : access constant AVOutputFormat)
      return access AVOutputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "oformat_next unimplemented");
      return raise Program_Error with "Unimplemented function oformat_next";
   end oformat_next;

   -------------------
   -- alloc_context --
   -------------------

   function alloc_context return access AVFormatContext is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_context unimplemented");
      return raise Program_Error with "Unimplemented function alloc_context";
   end alloc_context;

   ------------------
   -- free_context --
   ------------------

   procedure free_context (s : access AVFormatContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_context unimplemented");
      raise Program_Error with "Unimplemented procedure free_context";
   end free_context;

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

   -------------------------
   -- avformat_new_stream --
   -------------------------

   function avformat_new_stream
     (s : access AVFormatContext;
      c : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec)
      return access AVStream
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avformat_new_stream unimplemented");
      return raise Program_Error with "Unimplemented function avformat_new_stream";
   end avformat_new_stream;

   --------------------------
   -- stream_add_side_data --
   --------------------------

   function stream_add_side_data
     (St     : access AVStream;
      C_Type : ffmpeg.Avcodec.AVPacketSideDataType;
      Data   : access Interfaces.Unsigned_8;
      Size   : Size_T) return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "stream_add_side_data unimplemented");
      return raise Program_Error with "Unimplemented function stream_add_side_data";
   end stream_add_side_data;

   --------------------------
   -- stream_new_side_data --
   --------------------------

   function stream_new_side_data
     (Stream : access AVStream;
      C_Type : ffmpeg.Avcodec.AVPacketSideDataType;
      Size   : Int) return access Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "stream_new_side_data unimplemented");
      return raise Program_Error with "Unimplemented function stream_new_side_data";
   end stream_new_side_data;

   --------------------------
   -- stream_get_side_data --
   --------------------------

   function stream_get_side_data
     (Stream : access AVStream;
      C_Type : ffmpeg.Avcodec.AVPacketSideDataType;
      Size   : access Int) return access Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "stream_get_side_data unimplemented");
      return raise Program_Error with "Unimplemented function stream_get_side_data";
   end stream_get_side_data;

   -----------------
   -- new_program --
   -----------------

   function new_program
     (s : access AVFormatContext;
      id : int)
      return access AVProgram
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_program unimplemented");
      return raise Program_Error with "Unimplemented function new_program";
   end new_program;

   ---------------------------
   -- alloc_output_context2 --
   ---------------------------

   function alloc_output_context2
     (ctx : System.Address;
      oformat : access AVOutputFormat;
      format_name : String;
      filename : String)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_output_context2 unimplemented");
      return raise Program_Error with "Unimplemented function alloc_output_context2";
   end alloc_output_context2;

   -----------------------
   -- find_input_format --
   -----------------------

   function find_input_format
     (short_name : String)
      return access AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_input_format unimplemented");
      return raise Program_Error with "Unimplemented function find_input_format";
   end find_input_format;

   ------------------------
   -- probe_input_format --
   ------------------------

   function probe_input_format
     (pd : access AVProbeData;
      is_opened : int)
      return access AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "probe_input_format unimplemented");
      return raise Program_Error with "Unimplemented function probe_input_format";
   end probe_input_format;

   -------------------------
   -- probe_input_format2 --
   -------------------------

   function probe_input_format2
     (pd : access AVProbeData;
      is_opened : int;
      score_max : access int)
      return access AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "probe_input_format2 unimplemented");
      return raise Program_Error with "Unimplemented function probe_input_format2";
   end probe_input_format2;

   -------------------------
   -- probe_input_format3 --
   -------------------------

   function probe_input_format3
     (pd : access AVProbeData;
      is_opened : int;
      score_ret : access int)
      return access AVInputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "probe_input_format3 unimplemented");
      return raise Program_Error with "Unimplemented function probe_input_format3";
   end probe_input_format3;

   -------------------------
   -- probe_input_buffer2 --
   -------------------------

   function probe_input_buffer2
     (pb : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;
      fmt : System.Address;
      url : String;
      logctx : System.Address;
      offset : unsigned;
      max_probe_size : unsigned)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "probe_input_buffer2 unimplemented");
      return raise Program_Error with "Unimplemented function probe_input_buffer2";
   end probe_input_buffer2;

   ------------------------
   -- probe_input_buffer --
   ------------------------

   function probe_input_buffer
     (pb : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;
      fmt : System.Address;
      url : String;
      logctx : System.Address;
      offset : unsigned;
      max_probe_size : unsigned)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "probe_input_buffer unimplemented");
      return raise Program_Error with "Unimplemented function probe_input_buffer";
   end probe_input_buffer;

   ----------------
   -- open_input --
   ----------------

   function open_input
     (ps : System.Address;
      url : String;
      fmt : access AVInputFormat;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open_input unimplemented");
      return raise Program_Error with "Unimplemented function open_input";
   end open_input;

   ------------------
   -- demuxer_open --
   ------------------

   function demuxer_open (ic : access AVFormatContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "demuxer_open unimplemented");
      return raise Program_Error with "Unimplemented function demuxer_open";
   end demuxer_open;

   ----------------------
   -- find_stream_info --
   ----------------------

   function find_stream_info
     (ic : access AVFormatContext;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_stream_info unimplemented");
      return raise Program_Error with "Unimplemented function find_stream_info";
   end find_stream_info;

   ------------------------------
   -- find_program_from_stream --
   ------------------------------

   function find_program_from_stream
     (ic : access AVFormatContext;
      last : access AVProgram;
      s : int)
      return access AVProgram
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_program_from_stream unimplemented");
      return raise Program_Error with "Unimplemented function find_program_from_stream";
   end find_program_from_stream;

   ------------------------------
   -- program_add_stream_index --
   ------------------------------

   procedure program_add_stream_index
     (ac : access AVFormatContext;
      progid : int;
      idx : unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "program_add_stream_index unimplemented");
      raise Program_Error with "Unimplemented procedure program_add_stream_index";
   end program_add_stream_index;

   ----------------------
   -- find_best_stream --
   ----------------------

   function find_best_stream
     (ic : access AVFormatContext;
      c_type : FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;
      wanted_stream_nb : int;
      related_stream : int;
      decoder_ret : System.Address;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_best_stream unimplemented");
      return raise Program_Error with "Unimplemented function find_best_stream";
   end find_best_stream;

   ----------------
   -- read_frame --
   ----------------

   function read_frame
     (s : access AVFormatContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read_frame unimplemented");
      return raise Program_Error with "Unimplemented function read_frame";
   end read_frame;

   ----------------
   -- seek_frame --
   ----------------

   function seek_frame
     (s : access AVFormatContext;
      stream_index : int;
      timestamp : Interfaces.Integer_64;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "seek_frame unimplemented");
      return raise Program_Error with "Unimplemented function seek_frame";
   end seek_frame;

   ---------------
   -- seek_file --
   ---------------

   function seek_file
     (s : access AVFormatContext;
      stream_index : int;
      min_ts : Interfaces.Integer_64;
      ts : Interfaces.Integer_64;
      max_ts : Interfaces.Integer_64;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "seek_file unimplemented");
      return raise Program_Error with "Unimplemented function seek_file";
   end seek_file;

   -----------
   -- flush --
   -----------

   function flush (s : access AVFormatContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "flush unimplemented");
      return raise Program_Error with "Unimplemented function flush";
   end flush;

   ---------------
   -- read_play --
   ---------------

   function read_play (s : access AVFormatContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read_play unimplemented");
      return raise Program_Error with "Unimplemented function read_play";
   end read_play;

   ----------------
   -- read_pause --
   ----------------

   function read_pause (s : access AVFormatContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read_pause unimplemented");
      return raise Program_Error with "Unimplemented function read_pause";
   end read_pause;

   -----------------
   -- close_input --
   -----------------

   procedure close_input (s : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close_input unimplemented");
      raise Program_Error with "Unimplemented procedure close_input";
   end close_input;

   ------------------
   -- write_header --
   ------------------

   function write_header
     (s : access AVFormatContext;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write_header unimplemented");
      return raise Program_Error with "Unimplemented function write_header";
   end write_header;

   -----------------
   -- init_output --
   -----------------

   function init_output
     (s : access AVFormatContext;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_output unimplemented");
      return raise Program_Error with "Unimplemented function init_output";
   end init_output;

   -----------------
   -- write_frame --
   -----------------

   function write_frame
     (s : access AVFormatContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write_frame unimplemented");
      return raise Program_Error with "Unimplemented function write_frame";
   end write_frame;

   -----------------------------
   -- interleaved_write_frame --
   -----------------------------

   function interleaved_write_frame
     (s : access AVFormatContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "interleaved_write_frame unimplemented");
      return raise Program_Error with "Unimplemented function interleaved_write_frame";
   end interleaved_write_frame;

   -------------------------
   -- write_uncoded_frame --
   -------------------------

   function write_uncoded_frame
     (s : access AVFormatContext;
      stream_index : int;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write_uncoded_frame unimplemented");
      return raise Program_Error with "Unimplemented function write_uncoded_frame";
   end write_uncoded_frame;

   -------------------------------------
   -- interleaved_write_uncoded_frame --
   -------------------------------------

   function interleaved_write_uncoded_frame
     (s : access AVFormatContext;
      stream_index : int;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "interleaved_write_uncoded_frame unimplemented");
      return raise Program_Error with "Unimplemented function interleaved_write_uncoded_frame";
   end interleaved_write_uncoded_frame;

   -------------------------------
   -- Write_Uncoded_Frame_Query --
   -------------------------------

   function Write_Uncoded_Frame_Query
     (S : access AVFormatContext;
      Stream_Index : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Write_Uncoded_Frame_Query unimplemented");
      return raise Program_Error with "Unimplemented function Write_Uncoded_Frame_Query";
   end Write_Uncoded_Frame_Query;

   -------------------
   -- write_trailer --
   -------------------

   function write_trailer (s : access AVFormatContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write_trailer unimplemented");
      return raise Program_Error with "Unimplemented function write_trailer";
   end write_trailer;

   ------------------
   -- guess_format --
   ------------------

   function guess_format
     (short_name : String;
      filename : String;
      mime_type : String)
      return access AVOutputFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "guess_format unimplemented");
      return raise Program_Error with "Unimplemented function guess_format";
   end guess_format;

   -----------------
   -- guess_codec --
   -----------------

   function guess_codec
     (fmt : access AVOutputFormat;
      short_name : String;
      filename : String;
      mime_type : String;
      c_type : FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType)
      return FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "guess_codec unimplemented");
      return raise Program_Error with "Unimplemented function guess_codec";
   end guess_codec;

   --------------------------
   -- get_output_timestamp --
   --------------------------

   function get_output_timestamp
     (s : access AVFormatContext;
      stream : int;
      dts : access Interfaces.Integer_64;
      wall : access Interfaces.Integer_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_output_timestamp unimplemented");
      return raise Program_Error with "Unimplemented function get_output_timestamp";
   end get_output_timestamp;

   --------------
   -- hex_dump --
   --------------

   procedure hex_dump
     (f : access Interfaces.C_Streams.FILEs;
      buf : access Interfaces.Unsigned_8;
      size : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "hex_dump unimplemented");
      raise Program_Error with "Unimplemented procedure hex_dump";
   end hex_dump;

   ------------------
   -- hex_dump_log --
   ------------------

   procedure hex_dump_log
     (avcl : System.Address;
      level : int;
      buf : access Interfaces.Unsigned_8;
      size : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "hex_dump_log unimplemented");
      raise Program_Error with "Unimplemented procedure hex_dump_log";
   end hex_dump_log;

   ---------------
   -- Pkt_Dump2 --
   ---------------

   procedure Pkt_Dump2
     (f : access Interfaces.C_Streams.FILEs;
      pkt : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      dump_payload : int;
      st : access constant AVStream)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Pkt_Dump2 unimplemented");
      raise Program_Error with "Unimplemented procedure Pkt_Dump2";
   end Pkt_Dump2;

   -------------------
   -- pkt_dump_log2 --
   -------------------

   procedure pkt_dump_log2
     (avcl : System.Address;
      level : int;
      pkt : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      dump_payload : int;
      st : access constant AVStream)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pkt_dump_log2 unimplemented");
      raise Program_Error with "Unimplemented procedure pkt_dump_log2";
   end pkt_dump_log2;

   ------------------
   -- codec_get_id --
   ------------------

   function codec_get_id
     (tags : System.Address;
      tag : unsigned)
      return FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "codec_get_id unimplemented");
      return raise Program_Error with "Unimplemented function codec_get_id";
   end codec_get_id;

   -------------------
   -- codec_get_tag --
   -------------------

   function codec_get_tag
     (tags : System.Address;
      id : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID)
      return unsigned
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "codec_get_tag unimplemented");
      return raise Program_Error with "Unimplemented function codec_get_tag";
   end codec_get_tag;

   --------------------
   -- codec_get_tag2 --
   --------------------

   function codec_get_tag2
     (tags : System.Address;
      id : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;
      tag : access unsigned)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "codec_get_tag2 unimplemented");
      return raise Program_Error with "Unimplemented function codec_get_tag2";
   end codec_get_tag2;

   -------------------------------
   -- find_default_stream_index --
   -------------------------------

   function find_default_stream_index
     (s : access AVFormatContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_default_stream_index unimplemented");
      return raise Program_Error with "Unimplemented function find_default_stream_index";
   end find_default_stream_index;

   ----------------------------
   -- index_search_timestamp --
   ----------------------------

   function index_search_timestamp
     (st : access AVStream;
      timestamp : Interfaces.Integer_64;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "index_search_timestamp unimplemented");
      return raise Program_Error with "Unimplemented function index_search_timestamp";
   end index_search_timestamp;

   ---------------------
   -- add_index_entry --
   ---------------------

   function add_index_entry
     (st : access AVStream;
      pos : Interfaces.Integer_64;
      timestamp : Interfaces.Integer_64;
      size : int;
      distance : int;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "add_index_entry unimplemented");
      return raise Program_Error with "Unimplemented function add_index_entry";
   end add_index_entry;

   ---------------
   -- url_split --
   ---------------

   procedure url_split
     (proto : String;
      proto_size : int;
      authorization : String;
      authorization_size : int;
      hostname : String;
      hostname_size : int;
      port_ptr : access int;
      path : String;
      path_size : int;
      url : String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "url_split unimplemented");
      raise Program_Error with "Unimplemented procedure url_split";
   end url_split;

   -----------------
   -- dump_format --
   -----------------

   procedure dump_format
     (ic : access AVFormatContext;
      index : int;
      url : String;
      is_output : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dump_format unimplemented");
      raise Program_Error with "Unimplemented procedure dump_format";
   end dump_format;

   -------------------------
   -- get_frame_filename2 --
   -------------------------

   function get_frame_filename2
     (buf : String;
      buf_size : int;
      path : String;
      number : int;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_frame_filename2 unimplemented");
      return raise Program_Error with "Unimplemented function get_frame_filename2";
   end get_frame_filename2;

   ------------------------
   -- get_frame_filename --
   ------------------------

   function get_frame_filename
     (buf : String;
      buf_size : int;
      path : String;
      number : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_frame_filename unimplemented");
      return raise Program_Error with "Unimplemented function get_frame_filename";
   end get_frame_filename;

   --------------------------
   -- filename_number_test --
   --------------------------

   function filename_number_test (filename : String) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "filename_number_test unimplemented");
      return raise Program_Error with "Unimplemented function filename_number_test";
   end filename_number_test;

   ----------------
   -- Sdp_Create --
   ----------------

   function Sdp_Create
     (ac : System.Address;
      n_files : int;
      buf : String;
      size : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Sdp_Create unimplemented");
      return raise Program_Error with "Unimplemented function Sdp_Create";
   end Sdp_Create;

   ---------------
   -- Match_Ext --
   ---------------

   function Match_Ext (Filename : String; Extensions : String) return Int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Match_Ext unimplemented");
      return raise Program_Error with "Unimplemented function Match_Ext";
   end Match_Ext;

   -----------------
   -- query_codec --
   -----------------

   function query_codec
     (ofmt : access constant AVOutputFormat;
      codec_id : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;
      std_compliance : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "query_codec unimplemented");
      return raise Program_Error with "Unimplemented function query_codec";
   end query_codec;

   -------------------------
   -- get_riff_video_tags --
   -------------------------

   function get_riff_video_tags return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_riff_video_tags unimplemented");
      return raise Program_Error with "Unimplemented function get_riff_video_tags";
   end get_riff_video_tags;

   -------------------------
   -- get_riff_audio_tags --
   -------------------------

   function get_riff_audio_tags return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_riff_audio_tags unimplemented");
      return raise Program_Error with "Unimplemented function get_riff_audio_tags";
   end get_riff_audio_tags;

   ------------------------
   -- get_mov_video_tags --
   ------------------------

   function get_mov_video_tags return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_mov_video_tags unimplemented");
      return raise Program_Error with "Unimplemented function get_mov_video_tags";
   end get_mov_video_tags;

   ------------------------
   -- get_mov_audio_tags --
   ------------------------

   function get_mov_audio_tags return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_mov_audio_tags unimplemented");
      return raise Program_Error with "Unimplemented function get_mov_audio_tags";
   end get_mov_audio_tags;

   -------------------------------
   -- guess_sample_aspect_ratio --
   -------------------------------

   function guess_sample_aspect_ratio
     (format : access AVFormatContext;
      stream : access AVStream;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return FFMpeg.rational.AVRational
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "guess_sample_aspect_ratio unimplemented");
      return raise Program_Error with "Unimplemented function guess_sample_aspect_ratio";
   end guess_sample_aspect_ratio;

   ----------------------
   -- guess_frame_rate --
   ----------------------

   function guess_frame_rate
     (ctx : access AVFormatContext;
      stream : access AVStream;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return FFMpeg.rational.AVRational
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "guess_frame_rate unimplemented");
      return raise Program_Error with "Unimplemented function guess_frame_rate";
   end guess_frame_rate;

   ----------------------------
   -- match_stream_specifier --
   ----------------------------

   function match_stream_specifier
     (s : access AVFormatContext;
      st : access AVStream;
      spec : String)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "match_stream_specifier unimplemented");
      return raise Program_Error with "Unimplemented function match_stream_specifier";
   end match_stream_specifier;

   -----------------------------
   -- queue_attached_pictures --
   -----------------------------

   function queue_attached_pictures (s : access AVFormatContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "queue_attached_pictures unimplemented");
      return raise Program_Error with "Unimplemented function queue_attached_pictures";
   end queue_attached_pictures;

   -----------------------------
   -- apply_bitstream_filters --
   -----------------------------

   function apply_bitstream_filters
     (codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      bsfc : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVBitStreamFilterContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "apply_bitstream_filters unimplemented");
      return raise Program_Error with "Unimplemented function apply_bitstream_filters";
   end apply_bitstream_filters;

   ------------------------------------------
   -- transfer_internal_stream_timing_info --
   ------------------------------------------

   function transfer_internal_stream_timing_info
     (ofmt : access constant AVOutputFormat;
      ost : access AVStream;
      ist : access constant AVStream;
      copy_tb : AVTimebaseSource)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "transfer_internal_stream_timing_info unimplemented");
      return raise Program_Error with "Unimplemented function transfer_internal_stream_timing_info";
   end transfer_internal_stream_timing_info;

   -------------------------------
   -- Stream_Get_Codec_Timebase --
   -------------------------------

   function Stream_Get_Codec_Timebase
     (St : access constant AVStream)
      return FFMpeg.Rational.AVRational
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Stream_Get_Codec_Timebase unimplemented");
      return raise Program_Error with "Unimplemented function Stream_Get_Codec_Timebase";
   end Stream_Get_Codec_Timebase;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Ctx : in out AVFormatContext) is
   begin
      Ctx.Data := avformat_alloc_context;
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Ctx : in out AVFormatContext) is
   begin
      Avformat_Free_Context (Ctx.Data);
      Ctx.Data := null;
   end Finalize;

end Ffmpeg.Avformat;
