pragma Ada_2012;
package body FFMpeg.frame is

   -------------------------------
   -- get_best_effort_timestamp --
   -------------------------------

   function get_best_effort_timestamp
     (frame : access constant AVFrame)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_best_effort_timestamp unimplemented");
      return raise Program_Error with "Unimplemented function get_best_effort_timestamp";
   end get_best_effort_timestamp;

   -------------------------------
   -- set_best_effort_timestamp --
   -------------------------------

   procedure set_best_effort_timestamp
     (frame : access AVFrame;
      val : Interfaces.Integer_64)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_best_effort_timestamp unimplemented");
      raise Program_Error with "Unimplemented procedure set_best_effort_timestamp";
   end set_best_effort_timestamp;

   ----------------------
   -- get_pkt_duration --
   ----------------------

   function get_pkt_duration
     (frame : access constant AVFrame)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pkt_duration unimplemented");
      return raise Program_Error with "Unimplemented function get_pkt_duration";
   end get_pkt_duration;

   ----------------------
   -- set_pkt_duration --
   ----------------------

   procedure set_pkt_duration
     (frame : access AVFrame;
      val : Interfaces.Integer_64)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_pkt_duration unimplemented");
      raise Program_Error with "Unimplemented procedure set_pkt_duration";
   end set_pkt_duration;

   -----------------
   -- get_pkt_pos --
   -----------------

   function get_pkt_pos
     (frame : access constant AVFrame)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pkt_pos unimplemented");
      return raise Program_Error with "Unimplemented function get_pkt_pos";
   end get_pkt_pos;

   -----------------
   -- set_pkt_pos --
   -----------------

   procedure set_pkt_pos
     (frame : access AVFrame;
      val : Interfaces.Integer_64)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_pkt_pos unimplemented");
      raise Program_Error with "Unimplemented procedure set_pkt_pos";
   end set_pkt_pos;

   ------------------------
   -- get_channel_layout --
   ------------------------

   function get_channel_layout
     (frame : access constant AVFrame)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_layout";
   end get_channel_layout;

   ------------------------
   -- set_channel_layout --
   ------------------------

   procedure set_channel_layout
     (frame : access AVFrame;
      val : Interfaces.Integer_64)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_channel_layout unimplemented");
      raise Program_Error with "Unimplemented procedure set_channel_layout";
   end set_channel_layout;

   ------------------
   -- get_channels --
   ------------------

   function get_channels (frame : access constant AVFrame) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channels unimplemented");
      return raise Program_Error with "Unimplemented function get_channels";
   end get_channels;

   ------------------
   -- set_channels --
   ------------------

   procedure set_channels (frame : access AVFrame; val : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_channels unimplemented");
      raise Program_Error with "Unimplemented procedure set_channels";
   end set_channels;

   ---------------------
   -- get_sample_rate --
   ---------------------

   function get_sample_rate (frame : access constant AVFrame) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_sample_rate unimplemented");
      return raise Program_Error with "Unimplemented function get_sample_rate";
   end get_sample_rate;

   ---------------------
   -- set_sample_rate --
   ---------------------

   procedure set_sample_rate (frame : access AVFrame; val : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_sample_rate unimplemented");
      raise Program_Error with "Unimplemented procedure set_sample_rate";
   end set_sample_rate;

   ------------------
   -- get_metadata --
   ------------------

   function get_metadata
     (frame : access constant AVFrame)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_metadata unimplemented");
      return raise Program_Error with "Unimplemented function get_metadata";
   end get_metadata;

   ------------------
   -- set_metadata --
   ------------------

   procedure set_metadata (frame : access AVFrame; val : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_metadata unimplemented");
      raise Program_Error with "Unimplemented procedure set_metadata";
   end set_metadata;

   ----------------------------
   -- get_decode_error_flags --
   ----------------------------

   function get_decode_error_flags
     (frame : access constant AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_decode_error_flags unimplemented");
      return raise Program_Error with "Unimplemented function get_decode_error_flags";
   end get_decode_error_flags;

   ----------------------------
   -- set_decode_error_flags --
   ----------------------------

   procedure set_decode_error_flags (frame : access AVFrame; val : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_decode_error_flags unimplemented");
      raise Program_Error with "Unimplemented procedure set_decode_error_flags";
   end set_decode_error_flags;

   ------------------
   -- get_pkt_size --
   ------------------

   function get_pkt_size (frame : access constant AVFrame) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pkt_size unimplemented");
      return raise Program_Error with "Unimplemented function get_pkt_size";
   end get_pkt_size;

   ------------------
   -- set_pkt_size --
   ------------------

   procedure set_pkt_size (frame : access AVFrame; val : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_pkt_size unimplemented");
      raise Program_Error with "Unimplemented procedure set_pkt_size";
   end set_pkt_size;

   --------------------------------
   -- avpriv_frame_get_metadatap --
   --------------------------------

   function avpriv_frame_get_metadatap
     (frame : access AVFrame)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpriv_frame_get_metadatap unimplemented");
      return raise Program_Error with "Unimplemented function avpriv_frame_get_metadatap";
   end avpriv_frame_get_metadatap;

   ------------------
   -- get_qp_table --
   ------------------

   function get_qp_table
     (f : access AVFrame;
      stride : access int;
      c_type : access int)
      return access Interfaces.Integer_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_qp_table unimplemented");
      return raise Program_Error with "Unimplemented function get_qp_table";
   end get_qp_table;

   ------------------
   -- set_qp_table --
   ------------------

   function set_qp_table
     (f : access AVFrame;
      buf : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;
      stride : int;
      c_type : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_qp_table unimplemented");
      return raise Program_Error with "Unimplemented function set_qp_table";
   end set_qp_table;

   --------------------
   -- get_colorspace --
   --------------------

   function get_colorspace
     (frame : access constant AVFrame)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_colorspace unimplemented");
      return raise Program_Error with "Unimplemented function get_colorspace";
   end get_colorspace;

   --------------------
   -- set_colorspace --
   --------------------

   procedure set_colorspace
     (frame : access AVFrame;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_colorspace unimplemented");
      raise Program_Error with "Unimplemented procedure set_colorspace";
   end set_colorspace;

   ---------------------
   -- get_color_range --
   ---------------------

   function get_color_range
     (frame : access constant AVFrame)
      return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_color_range unimplemented");
      return raise Program_Error with "Unimplemented function get_color_range";
   end get_color_range;

   ---------------------
   -- set_color_range --
   ---------------------

   procedure set_color_range
     (frame : access AVFrame;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_color_range unimplemented");
      raise Program_Error with "Unimplemented procedure set_color_range";
   end set_color_range;

   ----------------------------
   -- av_get_colorspace_name --
   ----------------------------

   function av_get_colorspace_name
     (val : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_get_colorspace_name unimplemented");
      return raise Program_Error with "Unimplemented function av_get_colorspace_name";
   end av_get_colorspace_name;

   -----------
   -- alloc --
   -----------

   function alloc return access AVFrame is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc unimplemented");
      return raise Program_Error with "Unimplemented function alloc";
   end alloc;

   ----------
   -- free --
   ----------

   procedure free (frame : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   ---------
   -- ref --
   ---------

   function ref
     (dst : access AVFrame;
      src : access constant AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "ref unimplemented");
      return raise Program_Error with "Unimplemented function ref";
   end ref;

   -----------
   -- clone --
   -----------

   function clone (src : access constant AVFrame) return access AVFrame is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clone unimplemented");
      return raise Program_Error with "Unimplemented function clone";
   end clone;

   -----------
   -- unref --
   -----------

   procedure unref (frame : access AVFrame) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unref unimplemented");
      raise Program_Error with "Unimplemented procedure unref";
   end unref;

   --------------
   -- move_ref --
   --------------

   procedure move_ref (dst : access AVFrame; src : access AVFrame) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "move_ref unimplemented");
      raise Program_Error with "Unimplemented procedure move_ref";
   end move_ref;

   ----------------
   -- get_buffer --
   ----------------

   function get_buffer (frame : access AVFrame; align : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_buffer unimplemented");
      return raise Program_Error with "Unimplemented function get_buffer";
   end get_buffer;

   -----------------
   -- is_writable --
   -----------------

   function is_writable (frame : access AVFrame) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_writable unimplemented");
      return raise Program_Error with "Unimplemented function is_writable";
   end is_writable;

   -------------------
   -- make_writable --
   -------------------

   function make_writable (frame : access AVFrame) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "make_writable unimplemented");
      return raise Program_Error with "Unimplemented function make_writable";
   end make_writable;

   ----------
   -- copy --
   ----------

   function copy
     (dst : access AVFrame;
      src : access constant AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy unimplemented");
      return raise Program_Error with "Unimplemented function copy";
   end copy;

   ----------------
   -- copy_props --
   ----------------

   function copy_props
     (dst : access AVFrame;
      src : access constant AVFrame)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy_props unimplemented");
      return raise Program_Error with "Unimplemented function copy_props";
   end copy_props;

   ----------------------
   -- get_plane_buffer --
   ----------------------

   function get_plane_buffer
     (frame : access AVFrame;
      plane : int)
      return access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_plane_buffer unimplemented");
      return raise Program_Error with "Unimplemented function get_plane_buffer";
   end get_plane_buffer;

   -------------------
   -- new_side_data --
   -------------------

   function new_side_data
     (frame : access AVFrame;
      c_type : AVFrameSideDataType;
      size : int)
      return access AVFrameSideData
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_side_data unimplemented");
      return raise Program_Error with "Unimplemented function new_side_data";
   end new_side_data;

   -------------------
   -- get_side_data --
   -------------------

   function get_side_data
     (frame : access constant AVFrame;
      c_type : AVFrameSideDataType)
      return access AVFrameSideData
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_side_data unimplemented");
      return raise Program_Error with "Unimplemented function get_side_data";
   end get_side_data;

   ----------------------
   -- remove_side_data --
   ----------------------

   procedure remove_side_data
     (frame : access AVFrame;
      c_type : AVFrameSideDataType)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "remove_side_data unimplemented");
      raise Program_Error with "Unimplemented procedure remove_side_data";
   end remove_side_data;

   --------------------
   -- side_data_name --
   --------------------

   function side_data_name (c_type : AVFrameSideDataType) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "side_data_name unimplemented");
      return raise Program_Error with "Unimplemented function side_data_name";
   end side_data_name;

end FFMpeg.frame;
