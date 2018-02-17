pragma Ada_2012;
package body FFMpeg.avcodec is

   ----------------------
   -- get_pkt_timebase --
   ----------------------

   function get_pkt_timebase
     (avctx : access constant AVCodecContext)
      return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pkt_timebase unimplemented");
      return raise Program_Error with "Unimplemented function get_pkt_timebase";
   end get_pkt_timebase;

   ----------------------
   -- set_pkt_timebase --
   ----------------------

   procedure set_pkt_timebase
     (avctx : access AVCodecContext;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_pkt_timebase unimplemented");
      raise Program_Error with "Unimplemented procedure set_pkt_timebase";
   end set_pkt_timebase;

   --------------------------
   -- get_codec_descriptor --
   --------------------------

   function get_codec_descriptor
     (avctx : access constant AVCodecContext)
      return access constant AVCodecDescriptor
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_codec_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_codec_descriptor";
   end get_codec_descriptor;

   --------------------------
   -- set_codec_descriptor --
   --------------------------

   procedure set_codec_descriptor
     (avctx : access AVCodecContext;
      desc : access constant AVCodecDescriptor)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_codec_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure set_codec_descriptor";
   end set_codec_descriptor;

   --------------------------
   -- get_codec_properties --
   --------------------------

   function get_codec_properties
     (avctx : access constant AVCodecContext)
      return unsigned
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_codec_properties unimplemented");
      return raise Program_Error with "Unimplemented function get_codec_properties";
   end get_codec_properties;

   ----------------
   -- get_lowres --
   ----------------

   function get_lowres (avctx : access constant AVCodecContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_lowres unimplemented");
      return raise Program_Error with "Unimplemented function get_lowres";
   end get_lowres;

   ----------------
   -- set_lowres --
   ----------------

   procedure set_lowres (avctx : access AVCodecContext; val : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_lowres unimplemented");
      raise Program_Error with "Unimplemented procedure set_lowres";
   end set_lowres;

   ----------------------
   -- get_seek_preroll --
   ----------------------

   function get_seek_preroll
     (avctx : access constant AVCodecContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_seek_preroll unimplemented");
      return raise Program_Error with "Unimplemented function get_seek_preroll";
   end get_seek_preroll;

   ----------------------
   -- set_seek_preroll --
   ----------------------

   procedure set_seek_preroll (avctx : access AVCodecContext; val : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_seek_preroll unimplemented");
      raise Program_Error with "Unimplemented procedure set_seek_preroll";
   end set_seek_preroll;

   -----------------------------
   -- get_chroma_intra_matrix --
   -----------------------------

   function get_chroma_intra_matrix
     (avctx : access constant AVCodecContext)
      return access Interfaces.Unsigned_16
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_chroma_intra_matrix unimplemented");
      return raise Program_Error with "Unimplemented function get_chroma_intra_matrix";
   end get_chroma_intra_matrix;

   -----------------------------
   -- set_chroma_intra_matrix --
   -----------------------------

   procedure set_chroma_intra_matrix
     (avctx : access AVCodecContext;
      val : access Interfaces.Unsigned_16)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_chroma_intra_matrix unimplemented");
      raise Program_Error with "Unimplemented procedure set_chroma_intra_matrix";
   end set_chroma_intra_matrix;

   --------------------
   -- get_max_lowres --
   --------------------

   function get_max_lowres (codec : access constant AVCodec) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_max_lowres unimplemented");
      return raise Program_Error with "Unimplemented function get_max_lowres";
   end get_max_lowres;

   ----------
   -- next --
   ----------

   function next (c : access constant AVCodec) return access AVCodec is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "next unimplemented");
      return raise Program_Error with "Unimplemented function next";
   end next;

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

   --------------
   -- register --
   --------------

   procedure register (codec : access AVCodec) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register unimplemented");
      raise Program_Error with "Unimplemented procedure register";
   end register;

   ------------------
   -- register_all --
   ------------------

   procedure register_all is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_all unimplemented");
      raise Program_Error with "Unimplemented procedure register_all";
   end register_all;

   --------------------
   -- alloc_context3 --
   --------------------

   function alloc_context3
     (codec : access constant AVCodec)
      return access AVCodecContext
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_context3 unimplemented");
      return raise Program_Error with "Unimplemented function alloc_context3";
   end alloc_context3;

   ------------------
   -- free_context --
   ------------------

   procedure free_context (avctx : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_context unimplemented");
      raise Program_Error with "Unimplemented procedure free_context";
   end free_context;

   ---------------------------
   -- get_context_defaults3 --
   ---------------------------

   function get_context_defaults3
     (s : access AVCodecContext;
      codec : access constant AVCodec)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_context_defaults3 unimplemented");
      return raise Program_Error with "Unimplemented function get_context_defaults3";
   end get_context_defaults3;

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

   ---------------------
   -- get_frame_class --
   ---------------------

   function get_frame_class
      return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_frame_class unimplemented");
      return raise Program_Error with "Unimplemented function get_frame_class";
   end get_frame_class;

   -----------------------------
   -- get_subtitle_rect_class --
   -----------------------------

   function get_subtitle_rect_class
      return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_subtitle_rect_class unimplemented");
      return raise Program_Error with "Unimplemented function get_subtitle_rect_class";
   end get_subtitle_rect_class;

   ------------------
   -- copy_context --
   ------------------

   function copy_context
     (dest : access AVCodecContext;
      src : access constant AVCodecContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy_context unimplemented");
      return raise Program_Error with "Unimplemented function copy_context";
   end copy_context;

   ----------------------
   -- parameters_alloc --
   ----------------------

   function parameters_alloc return access AVCodecParameters is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parameters_alloc unimplemented");
      return raise Program_Error with "Unimplemented function parameters_alloc";
   end parameters_alloc;

   ---------------------
   -- parameters_free --
   ---------------------

   procedure parameters_free (par : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parameters_free unimplemented");
      raise Program_Error with "Unimplemented procedure parameters_free";
   end parameters_free;

   ---------------------
   -- parameters_copy --
   ---------------------

   function parameters_copy
     (dst : access AVCodecParameters;
      src : access constant AVCodecParameters)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parameters_copy unimplemented");
      return raise Program_Error with "Unimplemented function parameters_copy";
   end parameters_copy;

   -----------------------------
   -- parameters_from_context --
   -----------------------------

   function parameters_from_context
     (par : access AVCodecParameters;
      codec : access constant AVCodecContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parameters_from_context unimplemented");
      return raise Program_Error with "Unimplemented function parameters_from_context";
   end parameters_from_context;

   ---------------------------
   -- parameters_to_context --
   ---------------------------

   function parameters_to_context
     (codec : access AVCodecContext;
      par : access constant AVCodecParameters)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parameters_to_context unimplemented");
      return raise Program_Error with "Unimplemented function parameters_to_context";
   end parameters_to_context;

   -----------
   -- open2 --
   -----------

   function open2
     (avctx : access AVCodecContext;
      codec : access constant AVCodec;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open2 unimplemented");
      return raise Program_Error with "Unimplemented function open2";
   end open2;

   -----------
   -- close --
   -----------

   function close (avctx : access AVCodecContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      return raise Program_Error with "Unimplemented function close";
   end close;

   ---------------------
   -- avsubtitle_free --
   ---------------------

   procedure avsubtitle_free (sub : access AVSubtitle) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avsubtitle_free unimplemented");
      raise Program_Error with "Unimplemented procedure avsubtitle_free";
   end avsubtitle_free;

   ------------------
   -- packet_alloc --
   ------------------

   function packet_alloc return access AVPacket is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_alloc unimplemented");
      return raise Program_Error with "Unimplemented function packet_alloc";
   end packet_alloc;

   ------------------
   -- packet_clone --
   ------------------

   function packet_clone
     (src : access constant AVPacket)
      return access AVPacket
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_clone unimplemented");
      return raise Program_Error with "Unimplemented function packet_clone";
   end packet_clone;

   -----------------
   -- packet_free --
   -----------------

   procedure packet_free (pkt : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_free unimplemented");
      raise Program_Error with "Unimplemented procedure packet_free";
   end packet_free;

   -----------------
   -- init_packet --
   -----------------

   procedure init_packet (pkt : access AVPacket) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_packet unimplemented");
      raise Program_Error with "Unimplemented procedure init_packet";
   end init_packet;

   ----------------
   -- new_packet --
   ----------------

   function new_packet (pkt : access AVPacket; size : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_packet unimplemented");
      return raise Program_Error with "Unimplemented function new_packet";
   end new_packet;

   -------------------
   -- shrink_packet --
   -------------------

   procedure shrink_packet (pkt : access AVPacket; size : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "shrink_packet unimplemented");
      raise Program_Error with "Unimplemented procedure shrink_packet";
   end shrink_packet;

   -----------------
   -- grow_packet --
   -----------------

   function grow_packet (pkt : access AVPacket; grow_by : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "grow_packet unimplemented");
      return raise Program_Error with "Unimplemented function grow_packet";
   end grow_packet;

   ----------------------
   -- packet_from_data --
   ----------------------

   function packet_from_data
     (pkt : access AVPacket;
      data : access Interfaces.Unsigned_8;
      size : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_from_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_from_data";
   end packet_from_data;

   ----------------
   -- dup_packet --
   ----------------

   function dup_packet (pkt : access AVPacket) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dup_packet unimplemented");
      return raise Program_Error with "Unimplemented function dup_packet";
   end dup_packet;

   -----------------
   -- copy_packet --
   -----------------

   function copy_packet
     (dst : access AVPacket;
      src : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy_packet unimplemented");
      return raise Program_Error with "Unimplemented function copy_packet";
   end copy_packet;

   ---------------------------
   -- copy_packet_side_data --
   ---------------------------

   function copy_packet_side_data
     (dst : access AVPacket;
      src : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy_packet_side_data unimplemented");
      return raise Program_Error with "Unimplemented function copy_packet_side_data";
   end copy_packet_side_data;

   -----------------
   -- free_packet --
   -----------------

   procedure free_packet (pkt : access AVPacket) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_packet unimplemented");
      raise Program_Error with "Unimplemented procedure free_packet";
   end free_packet;

   --------------------------
   -- packet_new_side_data --
   --------------------------

   function packet_new_side_data
     (pkt : access AVPacket;
      c_type : AVPacketSideDataType;
      size : int)
      return access Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_new_side_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_new_side_data";
   end packet_new_side_data;

   --------------------------
   -- packet_add_side_data --
   --------------------------

   function packet_add_side_data
     (pkt : access AVPacket;
      c_type : AVPacketSideDataType;
      data : access Interfaces.Unsigned_8;
      size : size_t)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_add_side_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_add_side_data";
   end packet_add_side_data;

   -----------------------------
   -- packet_shrink_side_data --
   -----------------------------

   function packet_shrink_side_data
     (pkt : access AVPacket;
      c_type : AVPacketSideDataType;
      size : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_shrink_side_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_shrink_side_data";
   end packet_shrink_side_data;

   --------------------------
   -- packet_get_side_data --
   --------------------------

   function packet_get_side_data
     (pkt : access constant AVPacket;
      c_type : AVPacketSideDataType;
      size : access int)
      return access Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_get_side_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_get_side_data";
   end packet_get_side_data;

   ----------------------------
   -- packet_merge_side_data --
   ----------------------------

   function packet_merge_side_data (pkt : access AVPacket) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_merge_side_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_merge_side_data";
   end packet_merge_side_data;

   ----------------------------
   -- packet_split_side_data --
   ----------------------------

   function packet_split_side_data (pkt : access AVPacket) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_split_side_data unimplemented");
      return raise Program_Error with "Unimplemented function packet_split_side_data";
   end packet_split_side_data;

   ---------------------------
   -- packet_side_data_name --
   ---------------------------

   function packet_side_data_name
     (c_type : AVPacketSideDataType)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_side_data_name unimplemented");
      return raise Program_Error with "Unimplemented function packet_side_data_name";
   end packet_side_data_name;

   ----------------------------
   -- packet_pack_dictionary --
   ----------------------------

   function packet_pack_dictionary
     (dict : System.Address;
      size : access int)
      return access Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_pack_dictionary unimplemented");
      return raise Program_Error with "Unimplemented function packet_pack_dictionary";
   end packet_pack_dictionary;

   ------------------------------
   -- packet_unpack_dictionary --
   ------------------------------

   function packet_unpack_dictionary
     (data : access Interfaces.Unsigned_8;
      size : int;
      dict : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_unpack_dictionary unimplemented");
      return raise Program_Error with "Unimplemented function packet_unpack_dictionary";
   end packet_unpack_dictionary;

   ---------------------------
   -- packet_free_side_data --
   ---------------------------

   procedure packet_free_side_data (pkt : access AVPacket) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_free_side_data unimplemented");
      raise Program_Error with "Unimplemented procedure packet_free_side_data";
   end packet_free_side_data;

   ----------------
   -- packet_ref --
   ----------------

   function packet_ref
     (dst : access AVPacket;
      src : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_ref unimplemented");
      return raise Program_Error with "Unimplemented function packet_ref";
   end packet_ref;

   ------------------
   -- packet_unref --
   ------------------

   procedure packet_unref (pkt : access AVPacket) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_unref unimplemented");
      raise Program_Error with "Unimplemented procedure packet_unref";
   end packet_unref;

   ---------------------
   -- packet_move_ref --
   ---------------------

   procedure packet_move_ref (dst : access AVPacket; src : access AVPacket) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_move_ref unimplemented");
      raise Program_Error with "Unimplemented procedure packet_move_ref";
   end packet_move_ref;

   -----------------------
   -- packet_copy_props --
   -----------------------

   function packet_copy_props
     (dst : access AVPacket;
      src : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_copy_props unimplemented");
      return raise Program_Error with "Unimplemented function packet_copy_props";
   end packet_copy_props;

   -----------------------
   -- packet_rescale_ts --
   -----------------------

   procedure packet_rescale_ts
     (pkt : access AVPacket;
      tb_src : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      tb_dst : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "packet_rescale_ts unimplemented");
      raise Program_Error with "Unimplemented procedure packet_rescale_ts";
   end packet_rescale_ts;

   ------------------
   -- find_decoder --
   ------------------

   function find_decoder (id : AVCodecID) return access AVCodec is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_decoder unimplemented");
      return raise Program_Error with "Unimplemented function find_decoder";
   end find_decoder;

   --------------------------
   -- find_decoder_by_name --
   --------------------------

   function find_decoder_by_name
     (name : Interfaces.C.Strings.chars_ptr)
      return access AVCodec
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_decoder_by_name unimplemented");
      return raise Program_Error with "Unimplemented function find_decoder_by_name";
   end find_decoder_by_name;

   -------------------------
   -- default_get_buffer2 --
   -------------------------

   function default_get_buffer2
     (s : access AVCodecContext;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_get_buffer2 unimplemented");
      return raise Program_Error with "Unimplemented function default_get_buffer2";
   end default_get_buffer2;

   --------------------
   -- get_edge_width --
   --------------------

   function get_edge_width return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_edge_width unimplemented");
      return raise Program_Error with "Unimplemented function get_edge_width";
   end get_edge_width;

   ----------------------
   -- align_dimensions --
   ----------------------

   procedure align_dimensions
     (s : access AVCodecContext;
      width : access int;
      height : access int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "align_dimensions unimplemented");
      raise Program_Error with "Unimplemented procedure align_dimensions";
   end align_dimensions;

   -----------------------
   -- align_dimensions2 --
   -----------------------

   procedure align_dimensions2
     (s : access AVCodecContext;
      width : access int;
      height : access int;
      linesize_align : access int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "align_dimensions2 unimplemented");
      raise Program_Error with "Unimplemented procedure align_dimensions2";
   end align_dimensions2;

   ------------------------
   -- enum_to_chroma_pos --
   ------------------------

   function enum_to_chroma_pos
     (xpos : access int;
      ypos : access int;
      pos : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "enum_to_chroma_pos unimplemented");
      return raise Program_Error with "Unimplemented function enum_to_chroma_pos";
   end enum_to_chroma_pos;

   ------------------------
   -- chroma_pos_to_enum --
   ------------------------

   function chroma_pos_to_enum
     (xpos : int;
      ypos : int)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "chroma_pos_to_enum unimplemented");
      return raise Program_Error with "Unimplemented function chroma_pos_to_enum";
   end chroma_pos_to_enum;

   -------------------
   -- decode_audio4 --
   -------------------

   function decode_audio4
     (avctx : access AVCodecContext;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_frame_ptr : access int;
      avpkt : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "decode_audio4 unimplemented");
      return raise Program_Error with "Unimplemented function decode_audio4";
   end decode_audio4;

   -------------------
   -- decode_video2 --
   -------------------

   function decode_video2
     (avctx : access AVCodecContext;
      picture : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_picture_ptr : access int;
      avpkt : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "decode_video2 unimplemented");
      return raise Program_Error with "Unimplemented function decode_video2";
   end decode_video2;

   ----------------------
   -- decode_subtitle2 --
   ----------------------

   function decode_subtitle2
     (avctx : access AVCodecContext;
      sub : access AVSubtitle;
      got_sub_ptr : access int;
      avpkt : access AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "decode_subtitle2 unimplemented");
      return raise Program_Error with "Unimplemented function decode_subtitle2";
   end decode_subtitle2;

   -----------------
   -- send_packet --
   -----------------

   function send_packet
     (avctx : access AVCodecContext;
      avpkt : access constant AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "send_packet unimplemented");
      return raise Program_Error with "Unimplemented function send_packet";
   end send_packet;

   -------------------
   -- receive_frame --
   -------------------

   function receive_frame
     (avctx : access AVCodecContext;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "receive_frame unimplemented");
      return raise Program_Error with "Unimplemented function receive_frame";
   end receive_frame;

   ----------------
   -- send_frame --
   ----------------

   function send_frame
     (avctx : access AVCodecContext;
      frame : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "send_frame unimplemented");
      return raise Program_Error with "Unimplemented function send_frame";
   end send_frame;

   --------------------
   -- receive_packet --
   --------------------

   function receive_packet
     (avctx : access AVCodecContext;
      avpkt : access AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "receive_packet unimplemented");
      return raise Program_Error with "Unimplemented function receive_packet";
   end receive_packet;

   -----------------
   -- parser_next --
   -----------------

   function parser_next
     (c : access constant AVCodecParser)
      return access AVCodecParser
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parser_next unimplemented");
      return raise Program_Error with "Unimplemented function parser_next";
   end parser_next;

   ---------------------------
   -- register_codec_parser --
   ---------------------------

   procedure register_codec_parser (parser : access AVCodecParser) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_codec_parser unimplemented");
      raise Program_Error with "Unimplemented procedure register_codec_parser";
   end register_codec_parser;

   -----------------
   -- parser_init --
   -----------------

   function parser_init (codec_id : int) return access AVCodecParserContext is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parser_init unimplemented");
      return raise Program_Error with "Unimplemented function parser_init";
   end parser_init;

   -------------------
   -- parser_parse2 --
   -------------------

   function parser_parse2
     (s : access AVCodecParserContext;
      avctx : access AVCodecContext;
      poutbuf : System.Address;
      poutbuf_size : access int;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      pts : Interfaces.Integer_64;
      dts : Interfaces.Integer_64;
      pos : Interfaces.Integer_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parser_parse2 unimplemented");
      return raise Program_Error with "Unimplemented function parser_parse2";
   end parser_parse2;

   -------------------
   -- parser_change --
   -------------------

   function parser_change
     (s : access AVCodecParserContext;
      avctx : access AVCodecContext;
      poutbuf : System.Address;
      poutbuf_size : access int;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      keyframe : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parser_change unimplemented");
      return raise Program_Error with "Unimplemented function parser_change";
   end parser_change;

   ------------------
   -- parser_close --
   ------------------

   procedure parser_close (s : access AVCodecParserContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parser_close unimplemented");
      raise Program_Error with "Unimplemented procedure parser_close";
   end parser_close;

   ------------------
   -- find_encoder --
   ------------------

   function find_encoder (id : AVCodecID) return access AVCodec is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_encoder unimplemented");
      return raise Program_Error with "Unimplemented function find_encoder";
   end find_encoder;

   --------------------------
   -- find_encoder_by_name --
   --------------------------

   function find_encoder_by_name
     (name : Interfaces.C.Strings.chars_ptr)
      return access AVCodec
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_encoder_by_name unimplemented");
      return raise Program_Error with "Unimplemented function find_encoder_by_name";
   end find_encoder_by_name;

   -------------------
   -- encode_audio2 --
   -------------------

   function encode_audio2
     (avctx : access AVCodecContext;
      avpkt : access AVPacket;
      frame : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_packet_ptr : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "encode_audio2 unimplemented");
      return raise Program_Error with "Unimplemented function encode_audio2";
   end encode_audio2;

   -------------------
   -- encode_video2 --
   -------------------

   function encode_video2
     (avctx : access AVCodecContext;
      avpkt : access AVPacket;
      frame : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_packet_ptr : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "encode_video2 unimplemented");
      return raise Program_Error with "Unimplemented function encode_video2";
   end encode_video2;

   ---------------------
   -- encode_subtitle --
   ---------------------

   function encode_subtitle
     (avctx : access AVCodecContext;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      sub : access constant AVSubtitle)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "encode_subtitle unimplemented");
      return raise Program_Error with "Unimplemented function encode_subtitle";
   end encode_subtitle;

   -------------------------
   -- audio_resample_init --
   -------------------------

   function audio_resample_init
     (output_channels : int;
      input_channels : int;
      output_rate : int;
      input_rate : int;
      sample_fmt_out : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      sample_fmt_in : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      filter_length : int;
      log2_phase_count : int;
      linear : int;
      cutoff : double)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "audio_resample_init unimplemented");
      return raise Program_Error with "Unimplemented function audio_resample_init";
   end audio_resample_init;

   --------------------
   -- audio_resample --
   --------------------

   function audio_resample
     (s : System.Address;
      output : access short;
      input : access short;
      nb_samples : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "audio_resample unimplemented");
      return raise Program_Error with "Unimplemented function audio_resample";
   end audio_resample;

   --------------------------
   -- audio_resample_close --
   --------------------------

   procedure audio_resample_close (s : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "audio_resample_close unimplemented");
      raise Program_Error with "Unimplemented procedure audio_resample_close";
   end audio_resample_close;

   -------------------
   -- resample_init --
   -------------------

   function resample_init
     (out_rate : int;
      in_rate : int;
      filter_length : int;
      log2_phase_count : int;
      linear : int;
      cutoff : double)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "resample_init unimplemented");
      return raise Program_Error with "Unimplemented function resample_init";
   end resample_init;

   --------------
   -- resample --
   --------------

   function resample
     (c : System.Address;
      dst : access short;
      src : access short;
      consumed : access int;
      src_size : int;
      dst_size : int;
      update_ctx : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "resample unimplemented");
      return raise Program_Error with "Unimplemented function resample";
   end resample;

   -------------------------
   -- resample_compensate --
   -------------------------

   procedure resample_compensate
     (c : System.Address;
      sample_delta : int;
      compensation_distance : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "resample_compensate unimplemented");
      raise Program_Error with "Unimplemented procedure resample_compensate";
   end resample_compensate;

   --------------------
   -- resample_close --
   --------------------

   procedure resample_close (c : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "resample_close unimplemented");
      raise Program_Error with "Unimplemented procedure resample_close";
   end resample_close;

   ---------------------
   -- avpicture_alloc --
   ---------------------

   function avpicture_alloc
     (picture : access AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpicture_alloc unimplemented");
      return raise Program_Error with "Unimplemented function avpicture_alloc";
   end avpicture_alloc;

   --------------------
   -- avpicture_free --
   --------------------

   procedure avpicture_free (picture : access AVPicture) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpicture_free unimplemented");
      raise Program_Error with "Unimplemented procedure avpicture_free";
   end avpicture_free;

   --------------------
   -- avpicture_fill --
   --------------------

   function avpicture_fill
     (picture : access AVPicture;
      ptr : access Interfaces.Unsigned_8;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpicture_fill unimplemented");
      return raise Program_Error with "Unimplemented function avpicture_fill";
   end avpicture_fill;

   ----------------------
   -- avpicture_layout --
   ----------------------

   function avpicture_layout
     (src : access constant AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int;
      dest : access unsigned_char;
      dest_size : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpicture_layout unimplemented");
      return raise Program_Error with "Unimplemented function avpicture_layout";
   end avpicture_layout;

   ------------------------
   -- avpicture_get_size --
   ------------------------

   function avpicture_get_size
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpicture_get_size unimplemented");
      return raise Program_Error with "Unimplemented function avpicture_get_size";
   end avpicture_get_size;

   ------------------
   -- picture_copy --
   ------------------

   procedure picture_copy
     (dst : access AVPicture;
      src : access constant AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "picture_copy unimplemented");
      raise Program_Error with "Unimplemented procedure picture_copy";
   end picture_copy;

   ------------------
   -- picture_crop --
   ------------------

   function picture_crop
     (dst : access AVPicture;
      src : access constant AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      top_band : int;
      left_band : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "picture_crop unimplemented");
      return raise Program_Error with "Unimplemented function picture_crop";
   end picture_crop;

   -----------------
   -- picture_pad --
   -----------------

   function picture_pad
     (dst : access AVPicture;
      src : access constant AVPicture;
      height : int;
      width : int;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      padtop : int;
      padbottom : int;
      padleft : int;
      padright : int;
      color : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "picture_pad unimplemented");
      return raise Program_Error with "Unimplemented function picture_pad";
   end picture_pad;

   ---------------------------
   -- get_chroma_sub_sample --
   ---------------------------

   procedure get_chroma_sub_sample
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      h_shift : access int;
      v_shift : access int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_chroma_sub_sample unimplemented");
      raise Program_Error with "Unimplemented procedure get_chroma_sub_sample";
   end get_chroma_sub_sample;

   --------------------------
   -- pix_fmt_to_codec_tag --
   --------------------------

   function pix_fmt_to_codec_tag
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat)
      return unsigned
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pix_fmt_to_codec_tag unimplemented");
      return raise Program_Error with "Unimplemented function pix_fmt_to_codec_tag";
   end pix_fmt_to_codec_tag;

   ----------------------
   -- get_pix_fmt_loss --
   ----------------------

   function get_pix_fmt_loss
     (dst_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pix_fmt_loss unimplemented");
      return raise Program_Error with "Unimplemented function get_pix_fmt_loss";
   end get_pix_fmt_loss;

   -------------------------------
   -- find_best_pix_fmt_of_list --
   -------------------------------

   function find_best_pix_fmt_of_list
     (pix_fmt_list : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int;
      loss_ptr : access int)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_best_pix_fmt_of_list unimplemented");
      return raise Program_Error with "Unimplemented function find_best_pix_fmt_of_list";
   end find_best_pix_fmt_of_list;

   ----------------------------
   -- find_best_pix_fmt_of_2 --
   ----------------------------

   function find_best_pix_fmt_of_2
     (dst_pix_fmt1 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      dst_pix_fmt2 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int;
      loss_ptr : access int)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_best_pix_fmt_of_2 unimplemented");
      return raise Program_Error with "Unimplemented function find_best_pix_fmt_of_2";
   end find_best_pix_fmt_of_2;

   ------------------------
   -- find_best_pix_fmt2 --
   ------------------------

   function find_best_pix_fmt2
     (dst_pix_fmt1 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      dst_pix_fmt2 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int;
      loss_ptr : access int)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_best_pix_fmt2 unimplemented");
      return raise Program_Error with "Unimplemented function find_best_pix_fmt2";
   end find_best_pix_fmt2;

   ------------------------
   -- default_get_format --
   ------------------------

   function default_get_format
     (s : access AVCodecContext;
      fmt : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_get_format unimplemented");
      return raise Program_Error with "Unimplemented function default_get_format";
   end default_get_format;

   --------------------
   -- set_dimensions --
   --------------------

   procedure set_dimensions
     (s : access AVCodecContext;
      width : int;
      height : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_dimensions unimplemented");
      raise Program_Error with "Unimplemented procedure set_dimensions";
   end set_dimensions;

   --------------------------
   -- get_codec_tag_string --
   --------------------------

   function get_codec_tag_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : size_t;
      codec_tag : unsigned)
      return size_t
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_codec_tag_string unimplemented");
      return raise Program_Error with "Unimplemented function get_codec_tag_string";
   end get_codec_tag_string;

   ---------------
   -- av_string --
   ---------------

   procedure av_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      enc : access AVCodecContext;
      encode : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_string unimplemented");
      raise Program_Error with "Unimplemented procedure av_string";
   end av_string;

   ----------------------
   -- get_profile_name --
   ----------------------

   function get_profile_name
     (codec : access constant AVCodec;
      profile : int)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_profile_name unimplemented");
      return raise Program_Error with "Unimplemented function get_profile_name";
   end get_profile_name;

   ------------------
   -- profile_name --
   ------------------

   function profile_name
     (codec_id : AVCodecID;
      profile : int)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "profile_name unimplemented");
      return raise Program_Error with "Unimplemented function profile_name";
   end profile_name;

   ---------------------
   -- default_execute --
   ---------------------

   function default_execute
     (c : access AVCodecContext;
      func : access function  (arg1 : access AVCodecContext; arg2 : System.Address) return int;
      arg : System.Address;
      ret : access int;
      count : int;
      size : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_execute unimplemented");
      return raise Program_Error with "Unimplemented function default_execute";
   end default_execute;

   ----------------------
   -- default_execute2 --
   ----------------------

   function default_execute2
     (c : access AVCodecContext;
      func : access function
        (arg1 : access AVCodecContext;
         arg2 : System.Address;
         arg3 : int;
         arg4 : int) return int;
      arg : System.Address;
      ret : access int;
      count : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_execute2 unimplemented");
      return raise Program_Error with "Unimplemented function default_execute2";
   end default_execute2;

   ----------------------
   -- fill_audio_frame --
   ----------------------

   function fill_audio_frame
     (frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      nb_channels : int;
      sample_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      align : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_audio_frame unimplemented");
      return raise Program_Error with "Unimplemented function fill_audio_frame";
   end fill_audio_frame;

   -------------------
   -- flush_buffers --
   -------------------

   procedure flush_buffers (avctx : access AVCodecContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "flush_buffers unimplemented");
      raise Program_Error with "Unimplemented procedure flush_buffers";
   end flush_buffers;

   -------------------------
   -- get_bits_per_sample --
   -------------------------

   function get_bits_per_sample (codec_id : AVCodecID) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_bits_per_sample unimplemented");
      return raise Program_Error with "Unimplemented function get_bits_per_sample";
   end get_bits_per_sample;

   -------------------
   -- get_pcm_codec --
   -------------------

   function get_pcm_codec
     (fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      be : int)
      return AVCodecID
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pcm_codec unimplemented");
      return raise Program_Error with "Unimplemented function get_pcm_codec";
   end get_pcm_codec;

   -------------------------------
   -- get_exact_bits_per_sample --
   -------------------------------

   function get_exact_bits_per_sample (codec_id : AVCodecID) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_exact_bits_per_sample unimplemented");
      return raise Program_Error with "Unimplemented function get_exact_bits_per_sample";
   end get_exact_bits_per_sample;

   ------------------------------
   -- get_audio_frame_duration --
   ------------------------------

   function get_audio_frame_duration
     (avctx : access AVCodecContext;
      frame_bytes : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_audio_frame_duration unimplemented");
      return raise Program_Error with "Unimplemented function get_audio_frame_duration";
   end get_audio_frame_duration;

   -------------------------------
   -- get_audio_frame_duration2 --
   -------------------------------

   function get_audio_frame_duration2
     (par : access AVCodecParameters;
      frame_bytes : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_audio_frame_duration2 unimplemented");
      return raise Program_Error with "Unimplemented function get_audio_frame_duration2";
   end get_audio_frame_duration2;

   -------------------------------
   -- register_bitstream_filter --
   -------------------------------

   procedure register_bitstream_filter (bsf : access AVBitStreamFilter) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_bitstream_filter unimplemented");
      raise Program_Error with "Unimplemented procedure register_bitstream_filter";
   end register_bitstream_filter;

   ---------------------------
   -- bitstream_filter_init --
   ---------------------------

   function bitstream_filter_init
     (name : Interfaces.C.Strings.chars_ptr)
      return access AVBitStreamFilterContext
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bitstream_filter_init unimplemented");
      return raise Program_Error with "Unimplemented function bitstream_filter_init";
   end bitstream_filter_init;

   -----------------------------
   -- bitstream_filter_filter --
   -----------------------------

   function bitstream_filter_filter
     (bsfc : access AVBitStreamFilterContext;
      avctx : access AVCodecContext;
      args : Interfaces.C.Strings.chars_ptr;
      poutbuf : System.Address;
      poutbuf_size : access int;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      keyframe : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bitstream_filter_filter unimplemented");
      return raise Program_Error with "Unimplemented function bitstream_filter_filter";
   end bitstream_filter_filter;

   ----------------------------
   -- bitstream_filter_close --
   ----------------------------

   procedure bitstream_filter_close (bsf : access AVBitStreamFilterContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bitstream_filter_close unimplemented");
      raise Program_Error with "Unimplemented procedure bitstream_filter_close";
   end bitstream_filter_close;

   ---------------------------
   -- bitstream_filter_next --
   ---------------------------

   function bitstream_filter_next
     (f : access constant AVBitStreamFilter)
      return access AVBitStreamFilter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bitstream_filter_next unimplemented");
      return raise Program_Error with "Unimplemented function bitstream_filter_next";
   end bitstream_filter_next;

   ---------------------
   -- bsf_get_by_name --
   ---------------------

   function bsf_get_by_name
     (name : Interfaces.C.Strings.chars_ptr)
      return access constant AVBitStreamFilter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_get_by_name unimplemented");
      return raise Program_Error with "Unimplemented function bsf_get_by_name";
   end bsf_get_by_name;

   --------------
   -- bsf_next --
   --------------

   function bsf_next
     (opaque : System.Address)
      return access constant AVBitStreamFilter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_next unimplemented");
      return raise Program_Error with "Unimplemented function bsf_next";
   end bsf_next;

   ---------------
   -- bsf_alloc --
   ---------------

   function bsf_alloc
     (filter : access constant AVBitStreamFilter;
      ctx : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_alloc unimplemented");
      return raise Program_Error with "Unimplemented function bsf_alloc";
   end bsf_alloc;

   --------------
   -- bsf_init --
   --------------

   function bsf_init (ctx : access AVBSFContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_init unimplemented");
      return raise Program_Error with "Unimplemented function bsf_init";
   end bsf_init;

   ---------------------
   -- bsf_send_packet --
   ---------------------

   function bsf_send_packet
     (ctx : access AVBSFContext;
      pkt : access AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_send_packet unimplemented");
      return raise Program_Error with "Unimplemented function bsf_send_packet";
   end bsf_send_packet;

   ------------------------
   -- bsf_receive_packet --
   ------------------------

   function bsf_receive_packet
     (ctx : access AVBSFContext;
      pkt : access AVPacket)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_receive_packet unimplemented");
      return raise Program_Error with "Unimplemented function bsf_receive_packet";
   end bsf_receive_packet;

   --------------
   -- bsf_free --
   --------------

   procedure bsf_free (ctx : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_free unimplemented");
      raise Program_Error with "Unimplemented procedure bsf_free";
   end bsf_free;

   -------------------
   -- bsf_get_class --
   -------------------

   function bsf_get_class
      return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_get_class unimplemented");
      return raise Program_Error with "Unimplemented function bsf_get_class";
   end bsf_get_class;

   --------------------
   -- bsf_list_alloc --
   --------------------

   function bsf_list_alloc return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_list_alloc unimplemented");
      return raise Program_Error with "Unimplemented function bsf_list_alloc";
   end bsf_list_alloc;

   -------------------
   -- bsf_list_free --
   -------------------

   procedure bsf_list_free (lst : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_list_free unimplemented");
      raise Program_Error with "Unimplemented procedure bsf_list_free";
   end bsf_list_free;

   ---------------------
   -- bsf_list_append --
   ---------------------

   function bsf_list_append
     (lst : System.Address;
      bsf : access AVBSFContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_list_append unimplemented");
      return raise Program_Error with "Unimplemented function bsf_list_append";
   end bsf_list_append;

   ----------------------
   -- bsf_list_append2 --
   ----------------------

   function bsf_list_append2
     (lst : System.Address;
      bsf_name : Interfaces.C.Strings.chars_ptr;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_list_append2 unimplemented");
      return raise Program_Error with "Unimplemented function bsf_list_append2";
   end bsf_list_append2;

   -----------------------
   -- bsf_list_finalize --
   -----------------------

   function bsf_list_finalize
     (lst : System.Address;
      bsf : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_list_finalize unimplemented");
      return raise Program_Error with "Unimplemented function bsf_list_finalize";
   end bsf_list_finalize;

   ------------------------
   -- bsf_list_parse_str --
   ------------------------

   function bsf_list_parse_str
     (str : Interfaces.C.Strings.chars_ptr;
      bsf : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_list_parse_str unimplemented");
      return raise Program_Error with "Unimplemented function bsf_list_parse_str";
   end bsf_list_parse_str;

   -------------------------
   -- bsf_get_null_filter --
   -------------------------

   function bsf_get_null_filter (bsf : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bsf_get_null_filter unimplemented");
      return raise Program_Error with "Unimplemented function bsf_get_null_filter";
   end bsf_get_null_filter;

   ------------------------
   -- fast_padded_malloc --
   ------------------------

   procedure fast_padded_malloc
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fast_padded_malloc unimplemented");
      raise Program_Error with "Unimplemented procedure fast_padded_malloc";
   end fast_padded_malloc;

   -------------------------
   -- fast_padded_mallocz --
   -------------------------

   procedure fast_padded_mallocz
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fast_padded_mallocz unimplemented");
      raise Program_Error with "Unimplemented procedure fast_padded_mallocz";
   end fast_padded_mallocz;

   ----------------
   -- xiphlacing --
   ----------------

   function xiphlacing
     (s : access unsigned_char;
      v : unsigned)
      return unsigned
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "xiphlacing unimplemented");
      return raise Program_Error with "Unimplemented function xiphlacing";
   end xiphlacing;

   -------------------------
   -- log_missing_feature --
   -------------------------

   procedure log_missing_feature
     (avc : System.Address;
      feature : Interfaces.C.Strings.chars_ptr;
      want_sample : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "log_missing_feature unimplemented");
      raise Program_Error with "Unimplemented procedure log_missing_feature";
   end log_missing_feature;

   ------------------------
   -- log_ask_for_sample --
   ------------------------

   procedure log_ask_for_sample
     (avc : System.Address;
      msg : Interfaces.C.Strings.chars_ptr)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "log_ask_for_sample unimplemented");
      raise Program_Error with "Unimplemented procedure log_ask_for_sample";
   end log_ask_for_sample;

   ----------------------
   -- register_hwaccel --
   ----------------------

   procedure register_hwaccel (hwaccel : access AVHWAccel) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_hwaccel unimplemented");
      raise Program_Error with "Unimplemented procedure register_hwaccel";
   end register_hwaccel;

   ------------------
   -- hwaccel_next --
   ------------------

   function hwaccel_next
     (hwaccel : access constant AVHWAccel)
      return access AVHWAccel
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "hwaccel_next unimplemented");
      return raise Program_Error with "Unimplemented function hwaccel_next";
   end hwaccel_next;

   ----------------------
   -- lockmgr_register --
   ----------------------

   function lockmgr_register
     (cb : access function  (arg1 : System.Address; arg2 : AVLockOp) return int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "lockmgr_register unimplemented");
      return raise Program_Error with "Unimplemented function lockmgr_register";
   end lockmgr_register;

   --------------
   -- get_type --
   --------------

   function get_type
     (codec_id : AVCodecID)
      return FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_type unimplemented");
      return raise Program_Error with "Unimplemented function get_type";
   end get_type;

   --------------
   -- get_name --
   --------------

   function get_name (id : AVCodecID) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_name unimplemented");
      return raise Program_Error with "Unimplemented function get_name";
   end get_name;

   -------------
   -- is_open --
   -------------

   function is_open (s : access AVCodecContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_open unimplemented");
      return raise Program_Error with "Unimplemented function is_open";
   end is_open;

   ----------------
   -- is_encoder --
   ----------------

   function is_encoder (codec : access constant AVCodec) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_encoder unimplemented");
      return raise Program_Error with "Unimplemented function is_encoder";
   end is_encoder;

   ----------------
   -- is_decoder --
   ----------------

   function is_decoder (codec : access constant AVCodec) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_decoder unimplemented");
      return raise Program_Error with "Unimplemented function is_decoder";
   end is_decoder;

   --------------------
   -- descriptor_get --
   --------------------

   function descriptor_get
     (id : AVCodecID)
      return access constant AVCodecDescriptor
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "descriptor_get unimplemented");
      return raise Program_Error with "Unimplemented function descriptor_get";
   end descriptor_get;

   ---------------------
   -- descriptor_next --
   ---------------------

   function descriptor_next
     (prev : access constant AVCodecDescriptor)
      return access constant AVCodecDescriptor
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "descriptor_next unimplemented");
      return raise Program_Error with "Unimplemented function descriptor_next";
   end descriptor_next;

   ----------------------------
   -- descriptor_get_by_name --
   ----------------------------

   function descriptor_get_by_name
     (name : Interfaces.C.Strings.chars_ptr)
      return access constant AVCodecDescriptor
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "descriptor_get_by_name unimplemented");
      return raise Program_Error with "Unimplemented function descriptor_get_by_name";
   end descriptor_get_by_name;

   --------------------------
   -- cpb_properties_alloc --
   --------------------------

   function cpb_properties_alloc
     (size : access size_t)
      return access AVCPBProperties
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "cpb_properties_alloc unimplemented");
      return raise Program_Error with "Unimplemented function cpb_properties_alloc";
   end cpb_properties_alloc;

end FFMpeg.avcodec;
