pragma Ada_2012;
package body FFMpeg.opt is

   -----------
   -- show2 --
   -----------

   function show2
     (obj : System.Address;
      av_log_obj : System.Address;
      req_flags : int;
      rej_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "show2 unimplemented");
      return raise Program_Error with "Unimplemented function show2";
   end show2;

   ------------------
   -- set_defaults --
   ------------------

   procedure set_defaults (s : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_defaults unimplemented");
      raise Program_Error with "Unimplemented procedure set_defaults";
   end set_defaults;

   -------------------
   -- set_defaults2 --
   -------------------

   procedure set_defaults2
     (s : System.Address;
      mask : int;
      flags : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_defaults2 unimplemented");
      raise Program_Error with "Unimplemented procedure set_defaults2";
   end set_defaults2;

   ---------------------------
   -- av_set_options_string --
   ---------------------------

   function av_set_options_string
     (ctx : System.Address;
      opts : Interfaces.C.Strings.chars_ptr;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_set_options_string unimplemented");
      return raise Program_Error with "Unimplemented function av_set_options_string";
   end av_set_options_string;

   ---------------------
   -- set_from_string --
   ---------------------

   function set_from_string
     (ctx : System.Address;
      opts : Interfaces.C.Strings.chars_ptr;
      shorthand : System.Address;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_from_string unimplemented");
      return raise Program_Error with "Unimplemented function set_from_string";
   end set_from_string;

   ----------
   -- free --
   ----------

   procedure free (obj : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   -----------------
   -- flag_is_set --
   -----------------

   function flag_is_set
     (obj : System.Address;
      field_name : Interfaces.C.Strings.chars_ptr;
      flag_name : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "flag_is_set unimplemented");
      return raise Program_Error with "Unimplemented function flag_is_set";
   end flag_is_set;

   --------------
   -- set_dict --
   --------------

   function set_dict
     (obj : System.Address;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_dict unimplemented");
      return raise Program_Error with "Unimplemented function set_dict";
   end set_dict;

   ---------------
   -- set_dict2 --
   ---------------

   function set_dict2
     (obj : System.Address;
      options : System.Address;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_dict2 unimplemented");
      return raise Program_Error with "Unimplemented function set_dict2";
   end set_dict2;

   -------------------
   -- get_key_value --
   -------------------

   function get_key_value
     (ropts : System.Address;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr;
      flags : unsigned;
      rkey : System.Address;
      rval : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_key_value unimplemented");
      return raise Program_Error with "Unimplemented function get_key_value";
   end get_key_value;

   ----------------
   -- eval_flags --
   ----------------

   function eval_flags
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      flags_out : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "eval_flags unimplemented");
      return raise Program_Error with "Unimplemented function eval_flags";
   end eval_flags;

   --------------
   -- eval_int --
   --------------

   function eval_int
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      int_out : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "eval_int unimplemented");
      return raise Program_Error with "Unimplemented function eval_int";
   end eval_int;

   ----------------
   -- eval_int64 --
   ----------------

   function eval_int64
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      int64_out : access Interfaces.Integer_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "eval_int64 unimplemented");
      return raise Program_Error with "Unimplemented function eval_int64";
   end eval_int64;

   ----------------
   -- eval_float --
   ----------------

   function eval_float
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      float_out : access float)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "eval_float unimplemented");
      return raise Program_Error with "Unimplemented function eval_float";
   end eval_float;

   -----------------
   -- eval_double --
   -----------------

   function eval_double
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      double_out : access double)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "eval_double unimplemented");
      return raise Program_Error with "Unimplemented function eval_double";
   end eval_double;

   ------------
   -- eval_q --
   ------------

   function eval_q
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      q_out : access FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "eval_q unimplemented");
      return raise Program_Error with "Unimplemented function eval_q";
   end eval_q;

   ----------
   -- find --
   ----------

   function find
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      unit : Interfaces.C.Strings.chars_ptr;
      opt_flags : int;
      search_flags : int)
      return access constant AVOption
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find unimplemented");
      return raise Program_Error with "Unimplemented function find";
   end find;

   -----------
   -- find2 --
   -----------

   function find2
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      unit : Interfaces.C.Strings.chars_ptr;
      opt_flags : int;
      search_flags : int;
      target_obj : System.Address)
      return access constant AVOption
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find2 unimplemented");
      return raise Program_Error with "Unimplemented function find2";
   end find2;

   ----------
   -- next --
   ----------

   function next
     (obj : System.Address;
      prev : access constant AVOption)
      return access constant AVOption
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "next unimplemented");
      return raise Program_Error with "Unimplemented function next";
   end next;

   ----------------
   -- child_next --
   ----------------

   function child_next
     (obj : System.Address;
      prev : System.Address)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "child_next unimplemented");
      return raise Program_Error with "Unimplemented function child_next";
   end child_next;

   ----------------------
   -- child_class_next --
   ----------------------

   function child_class_next
     (parent : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      prev : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass)
      return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "child_class_next unimplemented");
      return raise Program_Error with "Unimplemented function child_class_next";
   end child_class_next;

   ---------
   -- set --
   ---------

   function set
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : Interfaces.C.Strings.chars_ptr;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set unimplemented");
      return raise Program_Error with "Unimplemented function set";
   end set;

   -------------
   -- set_int --
   -------------

   function set_int
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : Interfaces.Integer_64;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_int unimplemented");
      return raise Program_Error with "Unimplemented function set_int";
   end set_int;

   ----------------
   -- set_double --
   ----------------

   function set_double
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : double;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_double unimplemented");
      return raise Program_Error with "Unimplemented function set_double";
   end set_double;

   -----------
   -- set_q --
   -----------

   function set_q
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_q unimplemented");
      return raise Program_Error with "Unimplemented function set_q";
   end set_q;

   -------------
   -- set_bin --
   -------------

   function set_bin
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : access Interfaces.Unsigned_8;
      size : int;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_bin unimplemented");
      return raise Program_Error with "Unimplemented function set_bin";
   end set_bin;

   --------------------
   -- set_image_size --
   --------------------

   function set_image_size
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      w : int;
      h : int;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_image_size unimplemented");
      return raise Program_Error with "Unimplemented function set_image_size";
   end set_image_size;

   -------------------
   -- set_pixel_fmt --
   -------------------

   function set_pixel_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_pixel_fmt unimplemented");
      return raise Program_Error with "Unimplemented function set_pixel_fmt";
   end set_pixel_fmt;

   --------------------
   -- set_sample_fmt --
   --------------------

   function set_sample_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_sample_fmt unimplemented");
      return raise Program_Error with "Unimplemented function set_sample_fmt";
   end set_sample_fmt;

   --------------------
   -- set_video_rate --
   --------------------

   function set_video_rate
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_video_rate unimplemented");
      return raise Program_Error with "Unimplemented function set_video_rate";
   end set_video_rate;

   ------------------------
   -- set_channel_layout --
   ------------------------

   function set_channel_layout
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      ch_layout : Interfaces.Integer_64;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function set_channel_layout";
   end set_channel_layout;

   ------------------
   -- set_dict_val --
   ------------------

   function set_dict_val
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : System.Address;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_dict_val unimplemented");
      return raise Program_Error with "Unimplemented function set_dict_val";
   end set_dict_val;

   ---------
   -- get --
   ---------

   function get
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get unimplemented");
      return raise Program_Error with "Unimplemented function get";
   end get;

   -------------
   -- get_int --
   -------------

   function get_int
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access Interfaces.Integer_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_int unimplemented");
      return raise Program_Error with "Unimplemented function get_int";
   end get_int;

   ----------------
   -- get_double --
   ----------------

   function get_double
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access double)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_double unimplemented");
      return raise Program_Error with "Unimplemented function get_double";
   end get_double;

   -----------
   -- get_q --
   -----------

   function get_q
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_q unimplemented");
      return raise Program_Error with "Unimplemented function get_q";
   end get_q;

   --------------------
   -- get_image_size --
   --------------------

   function get_image_size
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      w_out : access int;
      h_out : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_image_size unimplemented");
      return raise Program_Error with "Unimplemented function get_image_size";
   end get_image_size;

   -------------------
   -- get_pixel_fmt --
   -------------------

   function get_pixel_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_fmt : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pixel_fmt unimplemented");
      return raise Program_Error with "Unimplemented function get_pixel_fmt";
   end get_pixel_fmt;

   --------------------
   -- get_sample_fmt --
   --------------------

   function get_sample_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_fmt : access FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_sample_fmt unimplemented");
      return raise Program_Error with "Unimplemented function get_sample_fmt";
   end get_sample_fmt;

   --------------------
   -- get_video_rate --
   --------------------

   function get_video_rate
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_video_rate unimplemented");
      return raise Program_Error with "Unimplemented function get_video_rate";
   end get_video_rate;

   ------------------------
   -- get_channel_layout --
   ------------------------

   function get_channel_layout
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      ch_layout : access Interfaces.Integer_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_layout";
   end get_channel_layout;

   ------------------
   -- get_dict_val --
   ------------------

   function get_dict_val
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_dict_val unimplemented");
      return raise Program_Error with "Unimplemented function get_dict_val";
   end get_dict_val;

   ---------
   -- ptr --
   ---------

   function ptr
     (the_avclass : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "ptr unimplemented");
      return raise Program_Error with "Unimplemented function ptr";
   end ptr;

   ------------------
   -- freep_ranges --
   ------------------

   procedure freep_ranges (ranges : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "freep_ranges unimplemented");
      raise Program_Error with "Unimplemented procedure freep_ranges";
   end freep_ranges;

   ------------------
   -- query_ranges --
   ------------------

   function query_ranges
     (arg1 : System.Address;
      obj : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "query_ranges unimplemented");
      return raise Program_Error with "Unimplemented function query_ranges";
   end query_ranges;

   ----------
   -- copy --
   ----------

   function copy (dest : System.Address; src : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy unimplemented");
      return raise Program_Error with "Unimplemented function copy";
   end copy;

   --------------------------
   -- query_ranges_default --
   --------------------------

   function query_ranges_default
     (arg1 : System.Address;
      obj : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "query_ranges_default unimplemented");
      return raise Program_Error with "Unimplemented function query_ranges_default";
   end query_ranges_default;

   -----------------------
   -- is_set_to_default --
   -----------------------

   function is_set_to_default
     (obj : System.Address;
      o : access constant AVOption)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_set_to_default unimplemented");
      return raise Program_Error with "Unimplemented function is_set_to_default";
   end is_set_to_default;

   -------------------------------
   -- is_set_to_default_by_name --
   -------------------------------

   function is_set_to_default_by_name
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_set_to_default_by_name unimplemented");
      return raise Program_Error with "Unimplemented function is_set_to_default_by_name";
   end is_set_to_default_by_name;

   ---------------
   -- serialize --
   ---------------

   function serialize
     (obj : System.Address;
      opt_flags : int;
      flags : int;
      buffer : System.Address;
      key_val_sep : char;
      pairs_sep : char)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "serialize unimplemented");
      return raise Program_Error with "Unimplemented function serialize";
   end serialize;

end FFMpeg.opt;
