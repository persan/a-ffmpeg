pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;


package FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h is

  -- * This file is part of FFmpeg.
  -- *
  -- * FFmpeg is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Lesser General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2.1 of the License, or (at your option) any later version.
  -- *
  -- * FFmpeg is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Lesser General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Lesser General Public
  -- * License along with FFmpeg; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
  --  

  --*
  -- * @addtogroup lavu_audio
  -- * @{
  -- *
  -- * @defgroup lavu_sampfmts Audio sample formats
  -- *
  -- * Audio sample format enumeration and related convenience functions.
  -- * @{
  --  

  --*
  -- * Audio sample formats
  -- *
  -- * - The data described by the sample format is always in native-endian order.
  -- *   Sample values can be expressed by native C types, hence the lack of a signed
  -- *   24-bit sample format even though it is a common raw audio data format.
  -- *
  -- * - The floating-point formats are based on full volume being in the range
  -- *   [-1.0, 1.0]. Any values outside this range are beyond full volume level.
  -- *
  -- * - The data layout as used in av_samples_fill_arrays() and elsewhere in FFmpeg
  -- *   (such as AVFrame in libavcodec) is as follows:
  -- *
  -- * @par
  -- * For planar sample formats, each audio channel is in a separate data plane,
  -- * and linesize is the buffer size, in bytes, for a single plane. All data
  -- * planes must be the same size. For packed sample formats, only the first data
  -- * plane is used, and samples for each channel are interleaved. In this case,
  -- * linesize is the buffer size, in bytes, for the 1 plane.
  -- *
  --  

   subtype AVSampleFormat is int;
   AV_SAMPLE_FMT_NONE : constant AVSampleFormat := -1;
   AV_SAMPLE_FMT_U8 : constant AVSampleFormat := 0;
   AV_SAMPLE_FMT_S16 : constant AVSampleFormat := 1;
   AV_SAMPLE_FMT_S32 : constant AVSampleFormat := 2;
   AV_SAMPLE_FMT_FLT : constant AVSampleFormat := 3;
   AV_SAMPLE_FMT_DBL : constant AVSampleFormat := 4;
   AV_SAMPLE_FMT_U8P : constant AVSampleFormat := 5;
   AV_SAMPLE_FMT_S16P : constant AVSampleFormat := 6;
   AV_SAMPLE_FMT_S32P : constant AVSampleFormat := 7;
   AV_SAMPLE_FMT_FLTP : constant AVSampleFormat := 8;
   AV_SAMPLE_FMT_DBLP : constant AVSampleFormat := 9;
   AV_SAMPLE_FMT_S64 : constant AVSampleFormat := 10;
   AV_SAMPLE_FMT_S64P : constant AVSampleFormat := 11;
   AV_SAMPLE_FMT_NB : constant AVSampleFormat := 12;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:58

  --/< unsigned 8 bits
  --/< signed 16 bits
  --/< signed 32 bits
  --/< float
  --/< double
  --/< unsigned 8 bits, planar
  --/< signed 16 bits, planar
  --/< signed 32 bits, planar
  --/< float, planar
  --/< double, planar
  --/< signed 64 bits
  --/< signed 64 bits, planar
  --/< Number of sample formats. DO NOT USE if linking dynamically
  --*
  -- * Return the name of sample_fmt, or NULL if sample_fmt is not
  -- * recognized.
  --  

   function av_get_sample_fmt_name (sample_fmt : AVSampleFormat) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:81
   pragma Import (C, av_get_sample_fmt_name, "av_get_sample_fmt_name");

  --*
  -- * Return a sample format corresponding to name, or AV_SAMPLE_FMT_NONE
  -- * on error.
  --  

   function av_get_sample_fmt (name : Interfaces.C.Strings.chars_ptr) return AVSampleFormat;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:87
   pragma Import (C, av_get_sample_fmt, "av_get_sample_fmt");

  --*
  -- * Return the planar<->packed alternative form of the given sample format, or
  -- * AV_SAMPLE_FMT_NONE on error. If the passed sample_fmt is already in the
  -- * requested planar/packed format, the format returned is the same as the
  -- * input.
  --  

   function av_get_alt_sample_fmt (sample_fmt : AVSampleFormat; planar : int) return AVSampleFormat;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:95
   pragma Import (C, av_get_alt_sample_fmt, "av_get_alt_sample_fmt");

  --*
  -- * Get the packed alternative form of the given sample format.
  -- *
  -- * If the passed sample_fmt is already in packed format, the format returned is
  -- * the same as the input.
  -- *
  -- * @return  the packed alternative form of the given sample format or
  --            AV_SAMPLE_FMT_NONE on error.
  --  

   function av_get_packed_sample_fmt (sample_fmt : AVSampleFormat) return AVSampleFormat;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:106
   pragma Import (C, av_get_packed_sample_fmt, "av_get_packed_sample_fmt");

  --*
  -- * Get the planar alternative form of the given sample format.
  -- *
  -- * If the passed sample_fmt is already in planar format, the format returned is
  -- * the same as the input.
  -- *
  -- * @return  the planar alternative form of the given sample format or
  --            AV_SAMPLE_FMT_NONE on error.
  --  

   function av_get_planar_sample_fmt (sample_fmt : AVSampleFormat) return AVSampleFormat;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:117
   pragma Import (C, av_get_planar_sample_fmt, "av_get_planar_sample_fmt");

  --*
  -- * Generate a string corresponding to the sample format with
  -- * sample_fmt, or a header if sample_fmt is negative.
  -- *
  -- * @param buf the buffer where to write the string
  -- * @param buf_size the size of buf
  -- * @param sample_fmt the number of the sample format to print the
  -- * corresponding info string, or a negative value to print the
  -- * corresponding header.
  -- * @return the pointer to the filled buffer or NULL if sample_fmt is
  -- * unknown or in case of other errors
  --  

   function av_get_sample_fmt_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      sample_fmt : AVSampleFormat) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:131
   pragma Import (C, av_get_sample_fmt_string, "av_get_sample_fmt_string");

  --*
  -- * Return number of bytes per sample.
  -- *
  -- * @param sample_fmt the sample format
  -- * @return number of bytes per sample or zero if unknown for the given
  -- * sample format
  --  

   function av_get_bytes_per_sample (sample_fmt : AVSampleFormat) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:140
   pragma Import (C, av_get_bytes_per_sample, "av_get_bytes_per_sample");

  --*
  -- * Check if the sample format is planar.
  -- *
  -- * @param sample_fmt the sample format to inspect
  -- * @return 1 if the sample format is planar, 0 if it is interleaved
  --  

   function av_sample_fmt_is_planar (sample_fmt : AVSampleFormat) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:148
   pragma Import (C, av_sample_fmt_is_planar, "av_sample_fmt_is_planar");

  --*
  -- * Get the required buffer size for the given audio parameters.
  -- *
  -- * @param[out] linesize calculated linesize, may be NULL
  -- * @param nb_channels   the number of channels
  -- * @param nb_samples    the number of samples in a single channel
  -- * @param sample_fmt    the sample format
  -- * @param align         buffer size alignment (0 = default, 1 = no alignment)
  -- * @return              required buffer size, or negative error code on failure
  --  

   function av_samples_get_buffer_size
     (linesize : access int;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:160
   pragma Import (C, av_samples_get_buffer_size, "av_samples_get_buffer_size");

  --*
  -- * @}
  -- *
  -- * @defgroup lavu_sampmanip Samples manipulation
  -- *
  -- * Functions that manipulate audio samples
  -- * @{
  --  

  --*
  -- * Fill plane data pointers and linesize for samples with sample
  -- * format sample_fmt.
  -- *
  -- * The audio_data array is filled with the pointers to the samples data planes:
  -- * for planar, set the start point of each channel's data within the buffer,
  -- * for packed, set the start point of the entire buffer only.
  -- *
  -- * The value pointed to by linesize is set to the aligned size of each
  -- * channel's data buffer for planar layout, or to the aligned size of the
  -- * buffer for all channels for packed layout.
  -- *
  -- * The buffer in buf must be big enough to contain all the samples
  -- * (use av_samples_get_buffer_size() to compute its minimum size),
  -- * otherwise the audio_data pointers will point to invalid data.
  -- *
  -- * @see enum AVSampleFormat
  -- * The documentation for AVSampleFormat describes the data layout.
  -- *
  -- * @param[out] audio_data  array to be filled with the pointer for each channel
  -- * @param[out] linesize    calculated linesize, may be NULL
  -- * @param buf              the pointer to a buffer containing the samples
  -- * @param nb_channels      the number of channels
  -- * @param nb_samples       the number of samples in a single channel
  -- * @param sample_fmt       the sample format
  -- * @param align            buffer size alignment (0 = default, 1 = no alignment)
  -- * @return                 >=0 on success or a negative error code on failure
  -- * @todo return minimum size in bytes required for the buffer in case
  -- * of success at the next bump
  --  

   function av_samples_fill_arrays
     (audio_data : System.Address;
      linesize : access int;
      buf : access Interfaces.Unsigned_8;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:202
   pragma Import (C, av_samples_fill_arrays, "av_samples_fill_arrays");

  --*
  -- * Allocate a samples buffer for nb_samples samples, and fill data pointers and
  -- * linesize accordingly.
  -- * The allocated samples buffer can be freed by using av_freep(&audio_data[0])
  -- * Allocated data will be initialized to silence.
  -- *
  -- * @see enum AVSampleFormat
  -- * The documentation for AVSampleFormat describes the data layout.
  -- *
  -- * @param[out] audio_data  array to be filled with the pointer for each channel
  -- * @param[out] linesize    aligned size for audio buffer(s), may be NULL
  -- * @param nb_channels      number of audio channels
  -- * @param nb_samples       number of samples per channel
  -- * @param align            buffer size alignment (0 = default, 1 = no alignment)
  -- * @return                 >=0 on success or a negative error code on failure
  -- * @todo return the size of the allocated buffer in case of success at the next bump
  -- * @see av_samples_fill_arrays()
  -- * @see av_samples_alloc_array_and_samples()
  --  

   function av_samples_alloc
     (audio_data : System.Address;
      linesize : access int;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:226
   pragma Import (C, av_samples_alloc, "av_samples_alloc");

  --*
  -- * Allocate a data pointers array, samples buffer for nb_samples
  -- * samples, and fill data pointers and linesize accordingly.
  -- *
  -- * This is the same as av_samples_alloc(), but also allocates the data
  -- * pointers array.
  -- *
  -- * @see av_samples_alloc()
  --  

   function av_samples_alloc_array_and_samples
     (audio_data : System.Address;
      linesize : access int;
      nb_channels : int;
      nb_samples : int;
      sample_fmt : AVSampleFormat;
      align : int) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:238
   pragma Import (C, av_samples_alloc_array_and_samples, "av_samples_alloc_array_and_samples");

  --*
  -- * Copy samples from src to dst.
  -- *
  -- * @param dst destination array of pointers to data planes
  -- * @param src source array of pointers to data planes
  -- * @param dst_offset offset in samples at which the data will be written to dst
  -- * @param src_offset offset in samples at which the data will be read from src
  -- * @param nb_samples number of samples to be copied
  -- * @param nb_channels number of audio channels
  -- * @param sample_fmt audio sample format
  --  

   function av_samples_copy
     (dst : System.Address;
      src : System.Address;
      dst_offset : int;
      src_offset : int;
      nb_samples : int;
      nb_channels : int;
      sample_fmt : AVSampleFormat) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:252
   pragma Import (C, av_samples_copy, "av_samples_copy");

  --*
  -- * Fill an audio buffer with silence.
  -- *
  -- * @param audio_data  array of pointers to data planes
  -- * @param offset      offset in samples at which to start filling
  -- * @param nb_samples  number of samples to fill
  -- * @param nb_channels number of audio channels
  -- * @param sample_fmt  audio sample format
  --  

  -- * This file is part of FFmpeg.
  -- *
  -- * FFmpeg is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Lesser General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2.1 of the License, or (at your option) any later version.
  -- *
  -- * FFmpeg is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Lesser General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Lesser General Public
  -- * License along with FFmpeg; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
  --  

   function av_samples_set_silence
     (audio_data : System.Address;
      offset : int;
      nb_samples : int;
      nb_channels : int;
      sample_fmt : AVSampleFormat) return int;  -- /usr/include/ffmpeg/libavutil/samplefmt.h:265
   pragma Import (C, av_samples_set_silence, "av_samples_set_silence");

  --*
  -- * @}
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h;
