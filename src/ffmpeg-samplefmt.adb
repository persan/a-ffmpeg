pragma Ada_2012;
package body FFMpeg.samplefmt is

   -------------------------
   -- get_sample_fmt_name --
   -------------------------

   function get_sample_fmt_name (sample_fmt : AVSampleFormat) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_sample_fmt_name unimplemented");
      return raise Program_Error with "Unimplemented function get_sample_fmt_name";
   end get_sample_fmt_name;

   --------------------
   -- get_sample_fmt --
   --------------------

   function get_sample_fmt
     (name : Interfaces.C.Strings.chars_ptr)
      return AVSampleFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_sample_fmt unimplemented");
      return raise Program_Error with "Unimplemented function get_sample_fmt";
   end get_sample_fmt;

   ------------------------
   -- get_alt_sample_fmt --
   ------------------------

   function get_alt_sample_fmt
     (sample_fmt : AVSampleFormat;
      planar : int)
      return AVSampleFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_alt_sample_fmt unimplemented");
      return raise Program_Error with "Unimplemented function get_alt_sample_fmt";
   end get_alt_sample_fmt;

   ---------------------------
   -- get_packed_sample_fmt --
   ---------------------------

   function get_packed_sample_fmt
     (sample_fmt : AVSampleFormat)
      return AVSampleFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_packed_sample_fmt unimplemented");
      return raise Program_Error with "Unimplemented function get_packed_sample_fmt";
   end get_packed_sample_fmt;

   ---------------------------
   -- get_planar_sample_fmt --
   ---------------------------

   function get_planar_sample_fmt
     (sample_fmt : AVSampleFormat)
      return AVSampleFormat
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_planar_sample_fmt unimplemented");
      return raise Program_Error with "Unimplemented function get_planar_sample_fmt";
   end get_planar_sample_fmt;

   ---------------------------
   -- get_sample_fmt_string --
   ---------------------------

   function get_sample_fmt_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      sample_fmt : AVSampleFormat)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_sample_fmt_string unimplemented");
      return raise Program_Error with "Unimplemented function get_sample_fmt_string";
   end get_sample_fmt_string;

   --------------------------
   -- get_bytes_per_sample --
   --------------------------

   function get_bytes_per_sample (sample_fmt : AVSampleFormat) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_bytes_per_sample unimplemented");
      return raise Program_Error with "Unimplemented function get_bytes_per_sample";
   end get_bytes_per_sample;

   --------------------------
   -- sample_fmt_is_planar --
   --------------------------

   function sample_fmt_is_planar (sample_fmt : AVSampleFormat) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "sample_fmt_is_planar unimplemented");
      return raise Program_Error with "Unimplemented function sample_fmt_is_planar";
   end sample_fmt_is_planar;

   -----------------------------
   -- samples_get_buffer_size --
   -----------------------------

   function samples_get_buffer_size
     (linesize : access int;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "samples_get_buffer_size unimplemented");
      return raise Program_Error with "Unimplemented function samples_get_buffer_size";
   end samples_get_buffer_size;

   -------------------------
   -- samples_fill_arrays --
   -------------------------

   function samples_fill_arrays
     (audio_data : System.Address;
      linesize : access int;
      buf : access Interfaces.Unsigned_8;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "samples_fill_arrays unimplemented");
      return raise Program_Error with "Unimplemented function samples_fill_arrays";
   end samples_fill_arrays;

   -------------------
   -- samples_alloc --
   -------------------

   function samples_alloc
     (audio_data : System.Address;
      linesize : access int;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "samples_alloc unimplemented");
      return raise Program_Error with "Unimplemented function samples_alloc";
   end samples_alloc;

   -------------------------------------
   -- samples_alloc_array_and_samples --
   -------------------------------------

   function samples_alloc_array_and_samples
     (audio_data : System.Address;
      linesize : access int;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "samples_alloc_array_and_samples unimplemented");
      return raise Program_Error with "Unimplemented function samples_alloc_array_and_samples";
   end samples_alloc_array_and_samples;

   ------------------
   -- samples_copy --
   ------------------

   function samples_copy
     (dst : System.Address;
      src : System.Address;
      dst_offset : int;
      src_offset : int;
      nb_samples : int;
      nb_channels : int;
      sample_fmt : AVSampleFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "samples_copy unimplemented");
      return raise Program_Error with "Unimplemented function samples_copy";
   end samples_copy;

   -------------------------
   -- samples_set_silence --
   -------------------------

   function samples_set_silence
     (audio_data : System.Address;
      offset : int;
      nb_samples : int;
      nb_channels : int;
      sample_fmt : AVSampleFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "samples_set_silence unimplemented");
      return raise Program_Error with "Unimplemented function samples_set_silence";
   end samples_set_silence;

end FFMpeg.samplefmt;
