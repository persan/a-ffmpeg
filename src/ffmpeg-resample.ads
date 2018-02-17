pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;
with System;

with FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_frame_h;

package FFMpeg.resample is

   AVRESAMPLE_MAX_CHANNELS : constant := 32;  --  /usr/include/ffmpeg/libavresample/avresample.h:104

  -- * Copyright (c) 2012 Justin Ruggles <justin.ruggles@gmail.com>
  -- *
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
  -- * @file
  -- * @ingroup lavr
  -- * external API header
  --

  --*
  -- * @defgroup lavr libavresample
  -- * @{
  -- *
  -- * Libavresample (lavr) is a library that handles audio resampling, sample
  -- * format conversion and mixing.
  -- *
  -- * Interaction with lavr is done through AVAudioResampleContext, which is
  -- * allocated with alloc_context(). It is opaque, so all parameters
  -- * must be set with the @ref avoptions API.
  -- *
  -- * For example the following code will setup conversion from planar float sample
  -- * format to interleaved signed 16-bit integer, downsampling from 48kHz to
  -- * 44.1kHz and downmixing from 5.1 channels to stereo (using the default mixing
  -- * matrix):
  -- * @code
  -- * AVAudioResampleContext *avr = alloc_context();
  -- * av_opt_set_int(avr, "in_channel_layout",  AV_CH_LAYOUT_5POINT1, 0);
  -- * av_opt_set_int(avr, "out_channel_layout", AV_CH_LAYOUT_STEREO,  0);
  -- * av_opt_set_int(avr, "in_sample_rate",     48000,                0);
  -- * av_opt_set_int(avr, "out_sample_rate",    44100,                0);
  -- * av_opt_set_int(avr, "in_sample_fmt",      AV_SAMPLE_FMT_FLTP,   0);
  -- * av_opt_set_int(avr, "out_sample_fmt",     AV_SAMPLE_FMT_S16,    0);
  -- * @endcode
  -- *
  -- * Once the context is initialized, it must be opened with open(). If
  -- * you need to change the conversion parameters, you must close the context with
  -- * close(), change the parameters as described above, then reopen it
  -- * again.
  -- *
  -- * The conversion itself is done by repeatedly calling convert().
  -- * Note that the samples may get buffered in two places in lavr. The first one
  -- * is the output FIFO, where the samples end up if the output buffer is not
  -- * large enough. The data stored in there may be retrieved at any time with
  -- * read(). The second place is the resampling delay buffer,
  -- * applicable only when resampling is done. The samples in it require more input
  -- * before they can be processed. Their current amount is returned by
  -- * get_delay(). At the end of conversion the resampling buffer can be
  -- * flushed by calling convert() with NULL input.
  -- *
  -- * The following code demonstrates the conversion loop assuming the parameters
  -- * from above and caller-defined functions get_input() and handle_output():
  -- * @code
  -- * uint8_t **input;
  -- * int in_linesize, in_samples;
  -- *
  -- * while (get_input(&input, &in_linesize, &in_samples)) {
  -- *     uint8_t *output
  -- *     int out_linesize;
  -- *     int out_samples = get_out_samples(avr, in_samples);
  -- *
  -- *     av_samples_alloc(&output, &out_linesize, 2, out_samples,
  -- *                      AV_SAMPLE_FMT_S16, 0);
  -- *     out_samples = convert(avr, &output, out_linesize, out_samples,
  -- *                                      input, in_linesize, in_samples);
  -- *     handle_output(output, out_linesize, out_samples);
  -- *     av_freep(&output);
  -- *  }
  -- *  @endcode
  -- *
  -- *  When the conversion is finished and the FIFOs are flushed if required, the
  -- *  conversion context and everything associated with it must be freed with
  -- *  free().
  --

   --  skipped empty struct AVAudioResampleContext

  --* Mixing Coefficient Types
   type AVMixCoeffType is
     (AV_MIX_COEFF_TYPE_Q8,
      AV_MIX_COEFF_TYPE_Q15,
      AV_MIX_COEFF_TYPE_FLT,
      AV_MIX_COEFF_TYPE_NB);
   pragma Convention (C, AVMixCoeffType);

  --* 16-bit 8.8 fixed-point
  --* 32-bit 17.15 fixed-point
  --* floating-point
  --* Number of coeff types. Not part of ABI
  --* Resampling Filter Types
   type AVResampleFilterType is
     (AV_RESAMPLE_FILTER_TYPE_CUBIC,
      AV_RESAMPLE_FILTER_TYPE_BLACKMAN_NUTTALL,
      AV_RESAMPLE_FILTER_TYPE_KAISER);
   pragma Convention (C, AVResampleFilterType);

  --*< Cubic
  --*< Blackman Nuttall Windowed Sinc
  --*< Kaiser Windowed Sinc
   type AVResampleDitherMethod is
     (AV_RESAMPLE_DITHER_NONE,
      AV_RESAMPLE_DITHER_RECTANGULAR,
      AV_RESAMPLE_DITHER_TRIANGULAR,
      AV_RESAMPLE_DITHER_TRIANGULAR_HP,
      AV_RESAMPLE_DITHER_TRIANGULAR_NS,
      AV_RESAMPLE_DITHER_NB);
   pragma Convention (C, AVResampleDitherMethod);

  --*< Do not use dithering
  --*< Rectangular Dither
  --*< Triangular Dither
  --*< Triangular Dither with High Pass
  --*< Triangular Dither with Noise Shaping
  --*< Number of dither types. Not part of ABI.
  --*
  -- * Return the LIBAVRESAMPLE_VERSION_INT constant.
  --

   function version return unsigned;


  --*
  -- * Return the libavresample build-time configuration.
  -- * @return  configure string
  --

   function configuration return String;


  --*
  -- * Return the libavresample license.
  --

   function license return String;


  --*
  -- * Get the AVClass for AVAudioResampleContext.
  -- *
  -- * Can be used in combination with AV_OPT_SEARCH_FAKE_OBJ for examining options
  -- * without allocating a context.
  -- *
  -- * @see av_opt_find().
  -- *
  -- * @return AVClass for AVAudioResampleContext
  --

   function get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;


  --*
  -- * Allocate AVAudioResampleContext and set options.
  -- *
  -- * @return  allocated audio resample context, or NULL on failure
  --

   function alloc_context return System.Address;


  --*
  -- * Initialize AVAudioResampleContext.
  -- * @note The context must be configured using the AVOption API.
  -- * @note The fields "in_channel_layout", "out_channel_layout",
  -- *       "in_sample_rate", "out_sample_rate", "in_sample_fmt",
  -- *       "out_sample_fmt" must be set.
  -- *
  -- * @see av_opt_set_int()
  -- * @see av_opt_set_dict()
  -- * @see av_get_default_channel_layout()
  -- *
  -- * @param avr  audio resample context
  -- * @return     0 on success, negative AVERROR code on failure
  --

   function open (avr : System.Address) return int;


  --*
  -- * Check whether an AVAudioResampleContext is open or closed.
  -- *
  -- * @param avr AVAudioResampleContext to check
  -- * @return 1 if avr is open, 0 if avr is closed.
  --

   function is_open (avr : System.Address) return int;


  --*
  -- * Close AVAudioResampleContext.
  -- *
  -- * This closes the context, but it does not change the parameters. The context
  -- * can be reopened with open(). It does, however, clear the output
  -- * FIFO and any remaining leftover samples in the resampling delay buffer. If
  -- * there was a custom matrix being used, that is also cleared.
  -- *
  -- * @see convert()
  -- * @see set_matrix()
  -- *
  -- * @param avr  audio resample context
  --

   procedure close (avr : System.Address);


  --*
  -- * Free AVAudioResampleContext and associated AVOption values.
  -- *
  -- * This also calls close() before freeing.
  -- *
  -- * @param avr  audio resample context
  --

   procedure free (avr : System.Address);


  --*
  -- * Generate a channel mixing matrix.
  -- *
  -- * This function is the one used internally by libavresample for building the
  -- * default mixing matrix. It is made public just as a utility function for
  -- * building custom matrices.
  -- *
  -- * @param in_layout           input channel layout
  -- * @param out_layout          output channel layout
  -- * @param center_mix_level    mix level for the center channel
  -- * @param surround_mix_level  mix level for the surround channel(s)
  -- * @param lfe_mix_level       mix level for the low-frequency effects channel
  -- * @param normalize           if 1, coefficients will be normalized to prevent
  -- *                            overflow. if 0, coefficients will not be
  -- *                            normalized.
  -- * @param[out] matrix         mixing coefficients; matrix[i + stride * o] is
  -- *                            the weight of input channel i in output channel o.
  -- * @param stride              distance between adjacent input channels in the
  -- *                            matrix array
  -- * @param matrix_encoding     matrixed stereo downmix mode (e.g. dplii)
  -- * @return                    0 on success, negative AVERROR code on failure
  --

   function build_matrix
     (in_layout : Interfaces.Unsigned_64;
      out_layout : Interfaces.Unsigned_64;
      center_mix_level : double;
      surround_mix_level : double;
      lfe_mix_level : double;
      normalize : int;
      matrix : access double;
      stride : int;
      matrix_encoding : FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h.AVMatrixEncoding) return int;


  --*
  -- * Get the current channel mixing matrix.
  -- *
  -- * If no custom matrix has been previously set or the AVAudioResampleContext is
  -- * not open, an error is returned.
  -- *
  -- * @param avr     audio resample context
  -- * @param matrix  mixing coefficients; matrix[i + stride * o] is the weight of
  -- *                input channel i in output channel o.
  -- * @param stride  distance between adjacent input channels in the matrix array
  -- * @return        0 on success, negative AVERROR code on failure
  --

   function get_matrix
     (avr : System.Address;
      matrix : access double;
      stride : int) return int;


  --*
  -- * Set channel mixing matrix.
  -- *
  -- * Allows for setting a custom mixing matrix, overriding the default matrix
  -- * generated internally during open(). This function can be called
  -- * anytime on an allocated context, either before or after calling
  -- * open(), as long as the channel layouts have been set.
  -- * convert() always uses the current matrix.
  -- * Calling close() on the context will clear the current matrix.
  -- *
  -- * @see close()
  -- *
  -- * @param avr     audio resample context
  -- * @param matrix  mixing coefficients; matrix[i + stride * o] is the weight of
  -- *                input channel i in output channel o.
  -- * @param stride  distance between adjacent input channels in the matrix array
  -- * @return        0 on success, negative AVERROR code on failure
  --

   function set_matrix
     (avr : System.Address;
      matrix : access double;
      stride : int) return int;


  --*
  -- * Set a customized input channel mapping.
  -- *
  -- * This function can only be called when the allocated context is not open.
  -- * Also, the input channel layout must have already been set.
  -- *
  -- * Calling close() on the context will clear the channel mapping.
  -- *
  -- * The map for each input channel specifies the channel index in the source to
  -- * use for that particular channel, or -1 to mute the channel. Source channels
  -- * can be duplicated by using the same index for multiple input channels.
  -- *
  -- * Examples:
  -- *
  -- * Reordering 5.1 AAC order (C,L,R,Ls,Rs,LFE) to FFmpeg order (L,R,C,LFE,Ls,Rs):
  -- * { 1, 2, 0, 5, 3, 4 }
  -- *
  -- * Muting the 3rd channel in 4-channel input:
  -- * { 0, 1, -1, 3 }
  -- *
  -- * Duplicating the left channel of stereo input:
  -- * { 0, 0 }
  -- *
  -- * @param avr         audio resample context
  -- * @param channel_map customized input channel mapping
  -- * @return            0 on success, negative AVERROR code on failure
  --

   function set_channel_mapping (avr : System.Address; channel_map : access int) return int;


  --*
  -- * Set compensation for resampling.
  -- *
  -- * This can be called anytime after open(). If resampling is not
  -- * automatically enabled because of a sample rate conversion, the
  -- * "force_resampling" option must have been set to 1 when opening the context
  -- * in order to use resampling compensation.
  -- *
  -- * @param avr                    audio resample context
  -- * @param sample_delta           compensation delta, in samples
  -- * @param compensation_distance  compensation distance, in samples
  -- * @return                       0 on success, negative AVERROR code on failure
  --

   function set_compensation
     (avr : System.Address;
      sample_delta : int;
      compensation_distance : int) return int;


  --*
  -- * Provide the upper bound on the number of samples the configured
  -- * conversion would output.
  -- *
  -- * @param avr           audio resample context
  -- * @param in_nb_samples number of input samples
  -- *
  -- * @return              number of samples or AVERROR(EINVAL) if the value
  -- *                      would exceed INT_MAX
  --

   function get_out_samples (avr : System.Address; in_nb_samples : int) return int;


  --*
  -- * Convert input samples and write them to the output FIFO.
  -- *
  -- * The upper bound on the number of output samples can be obtained through
  -- * get_out_samples().
  -- *
  -- * The output data can be NULL or have fewer allocated samples than required.
  -- * In this case, any remaining samples not written to the output will be added
  -- * to an internal FIFO buffer, to be returned at the next call to this function
  -- * or to read().
  -- *
  -- * If converting sample rate, there may be data remaining in the internal
  -- * resampling delay buffer. get_delay() tells the number of remaining
  -- * samples. To get this data as output, call convert() with NULL
  -- * input.
  -- *
  -- * At the end of the conversion process, there may be data remaining in the
  -- * internal FIFO buffer. available() tells the number of remaining
  -- * samples. To get this data as output, either call convert() with
  -- * NULL input or call read().
  -- *
  -- * @see get_out_samples()
  -- * @see read()
  -- * @see get_delay()
  -- *
  -- * @param avr             audio resample context
  -- * @param output          output data pointers
  -- * @param out_plane_size  output plane size, in bytes.
  -- *                        This can be 0 if unknown, but that will lead to
  -- *                        optimized functions not being used directly on the
  -- *                        output, which could slow down some conversions.
  -- * @param out_samples     maximum number of samples that the output buffer can hold
  -- * @param input           input data pointers
  -- * @param in_plane_size   input plane size, in bytes
  -- *                        This can be 0 if unknown, but that will lead to
  -- *                        optimized functions not being used directly on the
  -- *                        input, which could slow down some conversions.
  -- * @param in_samples      number of input samples to convert
  -- * @return                number of samples written to the output buffer,
  -- *                        not including converted samples added to the internal
  -- *                        output FIFO
  --

   function convert
     (avr : System.Address;
      output : System.Address;
      out_plane_size : int;
      out_samples : int;
      input : System.Address;
      in_plane_size : int;
      in_samples : int) return int;


  --*
  -- * Return the number of samples currently in the resampling delay buffer.
  -- *
  -- * When resampling, there may be a delay between the input and output. Any
  -- * unconverted samples in each call are stored internally in a delay buffer.
  -- * This function allows the user to determine the current number of samples in
  -- * the delay buffer, which can be useful for synchronization.
  -- *
  -- * @see convert()
  -- *
  -- * @param avr  audio resample context
  -- * @return     number of samples currently in the resampling delay buffer
  --

   function get_delay (avr : System.Address) return int;


  --*
  -- * Return the number of available samples in the output FIFO.
  -- *
  -- * During conversion, if the user does not specify an output buffer or
  -- * specifies an output buffer that is smaller than what is needed, remaining
  -- * samples that are not written to the output are stored to an internal FIFO
  -- * buffer. The samples in the FIFO can be read with read() or
  -- * convert().
  -- *
  -- * @see read()
  -- * @see convert()
  -- *
  -- * @param avr  audio resample context
  -- * @return     number of samples available for reading
  --

   function available (avr : System.Address) return int;


  --*
  -- * Read samples from the output FIFO.
  -- *
  -- * During conversion, if the user does not specify an output buffer or
  -- * specifies an output buffer that is smaller than what is needed, remaining
  -- * samples that are not written to the output are stored to an internal FIFO
  -- * buffer. This function can be used to read samples from that internal FIFO.
  -- *
  -- * @see available()
  -- * @see convert()
  -- *
  -- * @param avr         audio resample context
  -- * @param output      output data pointers. May be NULL, in which case
  -- *                    nb_samples of data is discarded from output FIFO.
  -- * @param nb_samples  number of samples to read from the FIFO
  -- * @return            the number of samples written to output
  --

   function read
     (avr : System.Address;
      output : System.Address;
      nb_samples : int) return int;


  --*
  -- * Convert the samples in the input AVFrame and write them to the output AVFrame.
  -- *
  -- * Input and output AVFrames must have channel_layout, sample_rate and format set.
  -- *
  -- * The upper bound on the number of output samples is obtained through
  -- * get_out_samples().
  -- *
  -- * If the output AVFrame does not have the data pointers allocated the nb_samples
  -- * field will be set using get_out_samples() and av_frame_get_buffer()
  -- * is called to allocate the frame.
  -- *
  -- * The output AVFrame can be NULL or have fewer allocated samples than required.
  -- * In this case, any remaining samples not written to the output will be added
  -- * to an internal FIFO buffer, to be returned at the next call to this function
  -- * or to convert() or to read().
  -- *
  -- * If converting sample rate, there may be data remaining in the internal
  -- * resampling delay buffer. get_delay() tells the number of
  -- * remaining samples. To get this data as output, call this function or
  -- * convert() with NULL input.
  -- *
  -- * At the end of the conversion process, there may be data remaining in the
  -- * internal FIFO buffer. available() tells the number of remaining
  -- * samples. To get this data as output, either call this function or
  -- * convert() with NULL input or call read().
  -- *
  -- * If the AVAudioResampleContext configuration does not match the output and
  -- * input AVFrame settings the conversion does not take place and depending on
  -- * which AVFrame is not matching AVERROR_OUTPUT_CHANGED, AVERROR_INPUT_CHANGED
  -- * or AVERROR_OUTPUT_CHANGED|AVERROR_INPUT_CHANGED is returned.
  -- *
  -- * @see get_out_samples()
  -- * @see available()
  -- * @see convert()
  -- * @see read()
  -- * @see get_delay()
  -- *
  -- * @param avr             audio resample context
  -- * @param output          output AVFrame
  -- * @param input           input AVFrame
  -- * @return                0 on success, AVERROR on failure or nonmatching
  -- *                        configuration.
  --

   function convert_frame
     (avr : System.Address;
      output : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      input : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;


  --*
  -- * Configure or reconfigure the AVAudioResampleContext using the information
  -- * provided by the AVFrames.
  -- *
  -- * The original resampling context is reset even on failure.
  -- * The function calls close() internally if the context is open.
  -- *
  -- * @see open();
  -- * @see close();
  -- *
  -- * @param avr             audio resample context
  -- * @param output          output AVFrame
  -- * @param input           input AVFrame
  -- * @return                0 on success, AVERROR on failure.
  --

   function config
     (avr : System.Address;
      c_out : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      c_in : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;


  --*
  -- * @}
  --

end FFMpeg.resample;