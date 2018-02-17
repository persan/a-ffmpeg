pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;
with System;

with FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h;

with FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h;
with Interfaces.C.Strings;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_frame_h;

package FFMpeg.swresample is

   SWR_FLAG_RESAMPLE : constant := 1;  --  /usr/include/ffmpeg/libswresample/swresample.h:140

  -- * Copyright (C) 2011-2013 Michael Niedermayer (michaelni@gmx.at)
  -- *
  -- * This file is part of libswresample
  -- *
  -- * libswresample is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Lesser General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2.1 of the License, or (at your option) any later version.
  -- *
  -- * libswresample is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Lesser General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Lesser General Public
  -- * License along with libswresample; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
  --

  --*
  -- * @file
  -- * @ingroup lswr
  -- * libswresample public header
  --

  --*
  -- * @defgroup lswr libswresample
  -- * @{
  -- *
  -- * Audio resampling, sample format conversion and mixing library.
  -- *
  -- * Interaction with lswr is done through SwrContext, which is
  -- * allocated with alloc() or alloc_set_opts(). It is opaque, so all parameters
  -- * must be set with the @ref avoptions API.
  -- *
  -- * The first thing you will need to do in order to use lswr is to allocate
  -- * SwrContext. This can be done with alloc() or alloc_set_opts(). If you
  -- * are using the former, you must set options through the @ref avoptions API.
  -- * The latter function provides the same feature, but it allows you to set some
  -- * common options in the same statement.
  -- *
  -- * For example the following code will setup conversion from planar float sample
  -- * format to interleaved signed 16-bit integer, downsampling from 48kHz to
  -- * 44.1kHz and downmixing from 5.1 channels to stereo (using the default mixing
  -- * matrix). This is using the alloc() function.
  -- * @code
  -- * SwrContext *swr = alloc();
  -- * av_opt_set_channel_layout(swr, "in_channel_layout",  AV_CH_LAYOUT_5POINT1, 0);
  -- * av_opt_set_channel_layout(swr, "out_channel_layout", AV_CH_LAYOUT_STEREO,  0);
  -- * av_opt_set_int(swr, "in_sample_rate",     48000,                0);
  -- * av_opt_set_int(swr, "out_sample_rate",    44100,                0);
  -- * av_opt_set_sample_fmt(swr, "in_sample_fmt",  AV_SAMPLE_FMT_FLTP, 0);
  -- * av_opt_set_sample_fmt(swr, "out_sample_fmt", AV_SAMPLE_FMT_S16,  0);
  -- * @endcode
  -- *
  -- * The same job can be done using alloc_set_opts() as well:
  -- * @code
  -- * SwrContext *swr = alloc_set_opts(NULL,  // we're allocating a new context
  -- *                       AV_CH_LAYOUT_STEREO,  // out_ch_layout
  -- *                       AV_SAMPLE_FMT_S16,    // out_sample_fmt
  -- *                       44100,                // out_sample_rate
  -- *                       AV_CH_LAYOUT_5POINT1, // in_ch_layout
  -- *                       AV_SAMPLE_FMT_FLTP,   // in_sample_fmt
  -- *                       48000,                // in_sample_rate
  -- *                       0,                    // log_offset
  -- *                       NULL);                // log_ctx
  -- * @endcode
  -- *
  -- * Once all values have been set, it must be initialized with init(). If
  -- * you need to change the conversion parameters, you can change the parameters
  -- * using @ref AVOptions, as described above in the first example; or by using
  -- * alloc_set_opts(), but with the first argument the allocated context.
  -- * You must then call init() again.
  -- *
  -- * The conversion itself is done by repeatedly calling convert().
  -- * Note that the samples may get buffered in swr if you provide insufficient
  -- * output space or if sample rate conversion is done, which requires "future"
  -- * samples. Samples that do not require future input can be retrieved at any
  -- * time by using convert() (in_count can be set to 0).
  -- * At the end of conversion the resampling buffer can be flushed by calling
  -- * convert() with NULL in and 0 in_count.
  -- *
  -- * The samples used in the conversion process can be managed with the libavutil
  -- * @ref lavu_sampmanip "samples manipulation" API, including av_samples_alloc()
  -- * function used in the following example.
  -- *
  -- * The delay between input and output, can at any time be found by using
  -- * get_delay().
  -- *
  -- * The following code demonstrates the conversion loop assuming the parameters
  -- * from above and caller-defined functions get_input() and handle_output():
  -- * @code
  -- * uint8_t **input;
  -- * int in_samples;
  -- *
  -- * while (get_input(&input, &in_samples)) {
  -- *     uint8_t *output;
  -- *     int out_samples = av_rescale_rnd(swr_get_delay(swr, 48000) +
  -- *                                      in_samples, 44100, 48000, AV_ROUND_UP);
  -- *     av_samples_alloc(&output, NULL, 2, out_samples,
  -- *                      AV_SAMPLE_FMT_S16, 0);
  -- *     out_samples = convert(swr, &output, out_samples,
  -- *                                      input, in_samples);
  -- *     handle_output(output, out_samples);
  -- *     av_freep(&output);
  -- * }
  -- * @endcode
  -- *
  -- * When the conversion is finished, the conversion
  -- * context and everything associated with it must be freed with free().
  -- * A close() function is also available, but it exists mainly for
  -- * compatibility with libavresample, and is not required to be called.
  -- *
  -- * There will be no memory leak if the data is not completely flushed before
  -- * free().
  --

  --*
  -- * @name Option constants
  -- * These constants are used for the @ref avoptions interface for lswr.
  -- * @{
  -- *
  --

  --TODO use int resample ?
  --long term TODO can we enable this dynamically?
  --* Dithering algorithms
   subtype SwrDitherType is unsigned;
   SWR_DITHER_NONE : constant SwrDitherType := 0;
   SWR_DITHER_RECTANGULAR : constant SwrDitherType := 1;
   SWR_DITHER_TRIANGULAR : constant SwrDitherType := 2;
   SWR_DITHER_TRIANGULAR_HIGHPASS : constant SwrDitherType := 3;
   SWR_DITHER_NS : constant SwrDitherType := 64;
   SWR_DITHER_NS_LIPSHITZ : constant SwrDitherType := 65;
   SWR_DITHER_NS_F_WEIGHTED : constant SwrDitherType := 66;
   SWR_DITHER_NS_MODIFIED_E_WEIGHTED : constant SwrDitherType := 67;
   SWR_DITHER_NS_IMPROVED_E_WEIGHTED : constant SwrDitherType := 68;
   SWR_DITHER_NS_SHIBATA : constant SwrDitherType := 69;
   SWR_DITHER_NS_LOW_SHIBATA : constant SwrDitherType := 70;
   SWR_DITHER_NS_HIGH_SHIBATA : constant SwrDitherType := 71;
   SWR_DITHER_NB : constant SwrDitherType := 72;  -- /usr/include/ffmpeg/libswresample/swresample.h:145

  --/< not part of API/ABI
  --/< not part of API/ABI
  --* Resampling Engines
   type SwrEngine is
     (SWR_ENGINE_SWR,
      SWR_ENGINE_SOXR,
      SWR_ENGINE_NB);
   pragma Convention (C, SwrEngine);  -- /usr/include/ffmpeg/libswresample/swresample.h:163

  --*< SW Resampler
  --*< SoX Resampler
  --/< not part of API/ABI
  --* Resampling Filter Types
   type SwrFilterType is
     (SWR_FILTER_TYPE_CUBIC,
      SWR_FILTER_TYPE_BLACKMAN_NUTTALL,
      SWR_FILTER_TYPE_KAISER);
   pragma Convention (C, SwrFilterType);  -- /usr/include/ffmpeg/libswresample/swresample.h:170

  --*< Cubic
  --*< Blackman Nuttall windowed sinc
  --*< Kaiser windowed sinc
  --*
  -- * @}
  --

  --*
  -- * The libswresample context. Unlike libavcodec and libavformat, this structure
  -- * is opaque. This means that if you would like to set options, you must use
  -- * the @ref avoptions API and cannot directly set values to members of the
  -- * structure.
  --

   --  skipped empty struct SwrContext

  --*
  -- * Get the AVClass for SwrContext. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see av_opt_find().
  -- * @return the AVClass of SwrContext
  --

   function get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libswresample/swresample.h:195


  --*
  -- * @name SwrContext constructor functions
  -- * @{
  --

  --*
  -- * Allocate SwrContext.
  -- *
  -- * If you use this function you will need to set the parameters (manually or
  -- * with alloc_set_opts()) before calling init().
  -- *
  -- * @see alloc_set_opts(), init(), free()
  -- * @return NULL on error, allocated context otherwise
  --

   function alloc return System.Address;  -- /usr/include/ffmpeg/libswresample/swresample.h:211


  --*
  -- * Initialize context after user parameters have been set.
  -- * @note The context must be configured using the AVOption API.
  -- *
  -- * @see av_opt_set_int()
  -- * @see av_opt_set_dict()
  -- *
  -- * @param[in,out]   s Swr context to initialize
  -- * @return AVERROR error code in case of failure.
  --

   function init (s : System.Address) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:223


  --*
  -- * Check whether an swr context has been initialized or not.
  -- *
  -- * @param[in]       s Swr context to check
  -- * @see init()
  -- * @return positive if it has been initialized, 0 if not initialized
  --

   function is_initialized (s : System.Address) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:232


  --*
  -- * Allocate SwrContext if needed and set/reset common parameters.
  -- *
  -- * This function does not require s to be allocated with alloc(). On the
  -- * other hand, alloc() can use alloc_set_opts() to set the parameters
  -- * on the allocated context.
  -- *
  -- * @param s               existing Swr context if available, or NULL if not
  -- * @param out_ch_layout   output channel layout (AV_CH_LAYOUT_*)
  -- * @param out_sample_fmt  output sample format (AV_SAMPLE_FMT_*).
  -- * @param out_sample_rate output sample rate (frequency in Hz)
  -- * @param in_ch_layout    input channel layout (AV_CH_LAYOUT_*)
  -- * @param in_sample_fmt   input sample format (AV_SAMPLE_FMT_*).
  -- * @param in_sample_rate  input sample rate (frequency in Hz)
  -- * @param log_offset      logging level offset
  -- * @param log_ctx         parent logging context, can be NULL
  -- *
  -- * @see init(), free()
  -- * @return NULL on error, allocated context otherwise
  --

   function alloc_set_opts
     (s : System.Address;
      out_ch_layout : Interfaces.Integer_64;
      out_sample_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      out_sample_rate : int;
      in_ch_layout : Interfaces.Integer_64;
      in_sample_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      in_sample_rate : int;
      log_offset : int;
      log_ctx : System.Address) return System.Address;  -- /usr/include/ffmpeg/libswresample/swresample.h:254


  --*
  -- * @}
  -- *
  -- * @name SwrContext destructor functions
  -- * @{
  --

  --*
  -- * Free the given SwrContext and set the pointer to NULL.
  -- *
  -- * @param[in] s a pointer to a pointer to Swr context
  --

   procedure free (s : System.Address);  -- /usr/include/ffmpeg/libswresample/swresample.h:271


  --*
  -- * Closes the context so that is_initialized() returns 0.
  -- *
  -- * The context can be brought back to life by running init(),
  -- * init() can also be used without close().
  -- * This function is mainly provided for simplifying the usecase
  -- * where one tries to support libavresample and libswresample.
  -- *
  -- * @param[in,out] s Swr context to be closed
  --

   procedure close (s : System.Address);  -- /usr/include/ffmpeg/libswresample/swresample.h:283


  --*
  -- * @}
  -- *
  -- * @name Core conversion functions
  -- * @{
  --

  --* Convert audio.
  -- *
  -- * in and in_count can be set to 0 to flush the last few samples out at the
  -- * end.
  -- *
  -- * If more input is provided than output space, then the input will be buffered.
  -- * You can avoid this buffering by using get_out_samples() to retrieve an
  -- * upper bound on the required number of output samples for the given number of
  -- * input samples. Conversion will run directly without copying whenever possible.
  -- *
  -- * @param s         allocated Swr context, with parameters set
  -- * @param out       output buffers, only the first one need be set in case of packed audio
  -- * @param out_count amount of space available for output in samples per channel
  -- * @param in        input buffers, only the first one need to be set in case of packed audio
  -- * @param in_count  number of input samples available in one channel
  -- *
  -- * @return number of samples output per channel, negative value on error
  --

   function convert
     (s : System.Address;
      c_out : System.Address;
      out_count : int;
      c_in : System.Address;
      in_count : int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:310


  --*
  -- * Convert the next timestamp from input to output
  -- * timestamps are in 1/(in_sample_rate * out_sample_rate) units.
  -- *
  -- * @note There are 2 slightly differently behaving modes.
  -- *       @li When automatic timestamp compensation is not used, (min_compensation >= FLT_MAX)
  -- *              in this case timestamps will be passed through with delays compensated
  -- *       @li When automatic timestamp compensation is used, (min_compensation < FLT_MAX)
  -- *              in this case the output timestamps will match output sample numbers.
  -- *              See ffmpeg-resampler(1) for the two modes of compensation.
  -- *
  -- * @param s[in]     initialized Swr context
  -- * @param pts[in]   timestamp for the next input sample, INT64_MIN if unknown
  -- * @see set_compensation(), drop_output(), and inject_silence() are
  -- *      function used internally for timestamp compensation.
  -- * @return the output timestamp for the next output sample
  --

   function next_pts (s : System.Address; pts : Interfaces.Integer_64) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libswresample/swresample.h:330


  --*
  -- * @}
  -- *
  -- * @name Low-level option setting functions
  -- * These functons provide a means to set low-level options that is not possible
  -- * with the AVOption API.
  -- * @{
  --

  --*
  -- * Activate resampling compensation ("soft" compensation). This function is
  -- * internally called when needed in next_pts().
  -- *
  -- * @param[in,out] s             allocated Swr context. If it is not initialized,
  -- *                              or SWR_FLAG_RESAMPLE is not set, init() is
  -- *                              called with the flag set.
  -- * @param[in]     sample_delta  delta in PTS per sample
  -- * @param[in]     compensation_distance number of samples to compensate for
  -- * @return    >= 0 on success, AVERROR error codes if:
  -- *            @li @c s is NULL,
  -- *            @li @c compensation_distance is less than 0,
  -- *            @li @c compensation_distance is 0 but sample_delta is not,
  -- *            @li compensation unsupported by resampler, or
  -- *            @li init() fails when called.
  --

   function set_compensation
     (s : System.Address;
      sample_delta : int;
      compensation_distance : int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:357


  --*
  -- * Set a customized input channel mapping.
  -- *
  -- * @param[in,out] s           allocated Swr context, not yet initialized
  -- * @param[in]     channel_map customized input channel mapping (array of channel
  -- *                            indexes, -1 for a muted channel)
  -- * @return >= 0 on success, or AVERROR error code in case of failure.
  --

   function set_channel_mapping (s : System.Address; channel_map : access int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:367


  --*
  -- * Generate a channel mixing matrix.
  -- *
  -- * This function is the one used internally by libswresample for building the
  -- * default mixing matrix. It is made public just as a utility function for
  -- * building custom matrices.
  -- *
  -- * @param in_layout           input channel layout
  -- * @param out_layout          output channel layout
  -- * @param center_mix_level    mix level for the center channel
  -- * @param surround_mix_level  mix level for the surround channel(s)
  -- * @param lfe_mix_level       mix level for the low-frequency effects channel
  -- * @param rematrix_maxval     if 1.0, coefficients will be normalized to prevent
  -- *                            overflow. if INT_MAX, coefficients will not be
  -- *                            normalized.
  -- * @param[out] matrix         mixing coefficients; matrix[i + stride * o] is
  -- *                            the weight of input channel i in output channel o.
  -- * @param stride              distance between adjacent input channels in the
  -- *                            matrix array
  -- * @param matrix_encoding     matrixed stereo downmix mode (e.g. dplii)
  -- * @param log_ctx             parent logging context, can be NULL
  -- * @return                    0 on success, negative AVERROR code on failure
  --

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
      log_ctx : System.Address) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:392


  --*
  -- * Set a customized remix matrix.
  -- *
  -- * @param s       allocated Swr context, not yet initialized
  -- * @param matrix  remix coefficients; matrix[i + stride * o] is
  -- *                the weight of input channel i in output channel o
  -- * @param stride  offset between lines of the matrix
  -- * @return  >= 0 on success, or AVERROR error code in case of failure.
  --

   function set_matrix
     (s : System.Address;
      matrix : access double;
      stride : int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:408


  --*
  -- * @}
  -- *
  -- * @name Sample handling functions
  -- * @{
  --

  --*
  -- * Drops the specified number of output samples.
  -- *
  -- * This function, along with inject_silence(), is called by next_pts()
  -- * if needed for "hard" compensation.
  -- *
  -- * @param s     allocated Swr context
  -- * @param count number of samples to be dropped
  -- *
  -- * @return >= 0 on success, or a negative AVERROR code on failure
  --

   function drop_output (s : System.Address; count : int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:428


  --*
  -- * Injects the specified number of silence samples.
  -- *
  -- * This function, along with drop_output(), is called by next_pts()
  -- * if needed for "hard" compensation.
  -- *
  -- * @param s     allocated Swr context
  -- * @param count number of samples to be dropped
  -- *
  -- * @return >= 0 on success, or a negative AVERROR code on failure
  --

   function inject_silence (s : System.Address; count : int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:441


  --*
  -- * Gets the delay the next input sample will experience relative to the next output sample.
  -- *
  -- * Swresample can buffer data if more input has been provided than available
  -- * output space, also converting between sample rates needs a delay.
  -- * This function returns the sum of all such delays.
  -- * The exact delay is not necessarily an integer value in either input or
  -- * output sample rate. Especially when downsampling by a large value, the
  -- * output sample rate may be a poor choice to represent the delay, similarly
  -- * for upsampling and the input sample rate.
  -- *
  -- * @param s     swr context
  -- * @param base  timebase in which the returned delay will be:
  -- *              @li if it's set to 1 the returned delay is in seconds
  -- *              @li if it's set to 1000 the returned delay is in milliseconds
  -- *              @li if it's set to the input sample rate then the returned
  -- *                  delay is in input samples
  -- *              @li if it's set to the output sample rate then the returned
  -- *                  delay is in output samples
  -- *              @li if it's the least common multiple of in_sample_rate and
  -- *                  out_sample_rate then an exact rounding-free delay will be
  -- *                  returned
  -- * @returns     the delay in 1 / @c base units.
  --

   function get_delay (s : System.Address; base : Interfaces.Integer_64) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libswresample/swresample.h:467


  --*
  -- * Find an upper bound on the number of samples that the next convert
  -- * call will output, if called with in_samples of input samples. This
  -- * depends on the internal state, and anything changing the internal state
  -- * (like further convert() calls) will may change the number of samples
  -- * get_out_samples() returns for the same number of input samples.
  -- *
  -- * @param in_samples    number of input samples.
  -- * @note any call to inject_silence(), convert(), next_pts()
  -- *       or set_compensation() invalidates this limit
  -- * @note it is recommended to pass the correct available buffer size
  -- *       to all functions like convert() even if get_out_samples()
  -- *       indicates that less would be used.
  -- * @returns an upper bound on the number of samples that the next convert
  -- *          will output or a negative value to indicate an error
  --

   function get_out_samples (s : System.Address; in_samples : int) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:485


  --*
  -- * @}
  -- *
  -- * @name Configuration accessors
  -- * @{
  --

  --*
  -- * Return the @ref LIBSWRESAMPLE_VERSION_INT constant.
  -- *
  -- * This is useful to check if the build-time libswresample has the same version
  -- * as the run-time one.
  -- *
  -- * @returns     the unsigned int-typed version
  --

   function version return unsigned;  -- /usr/include/ffmpeg/libswresample/swresample.h:502


  --*
  -- * Return the swr build-time configuration.
  -- *
  -- * @returns     the build-time @c ./configure flags
  --

   function configuration return String;  -- /usr/include/ffmpeg/libswresample/swresample.h:509


  --*
  -- * Return the swr license.
  -- *
  -- * @returns     the license of libswresample, determined at build-time
  --

   function license return String;  -- /usr/include/ffmpeg/libswresample/swresample.h:516


  --*
  -- * @}
  -- *
  -- * @name AVFrame based API
  -- * @{
  --

  --*
  -- * Convert the samples in the input AVFrame and write them to the output AVFrame.
  -- *
  -- * Input and output AVFrames must have channel_layout, sample_rate and format set.
  -- *
  -- * If the output AVFrame does not have the data pointers allocated the nb_samples
  -- * field will be set using av_frame_get_buffer()
  -- * is called to allocate the frame.
  -- *
  -- * The output AVFrame can be NULL or have fewer allocated samples than required.
  -- * In this case, any remaining samples not written to the output will be added
  -- * to an internal FIFO buffer, to be returned at the next call to this function
  -- * or to convert().
  -- *
  -- * If converting sample rate, there may be data remaining in the internal
  -- * resampling delay buffer. get_delay() tells the number of
  -- * remaining samples. To get this data as output, call this function or
  -- * convert() with NULL input.
  -- *
  -- * If the SwrContext configuration does not match the output and
  -- * input AVFrame settings the conversion does not take place and depending on
  -- * which AVFrame is not matching AVERROR_OUTPUT_CHANGED, AVERROR_INPUT_CHANGED
  -- * or the result of a bitwise-OR of them is returned.
  -- *
  -- * @see delay()
  -- * @see convert()
  -- * @see get_delay()
  -- *
  -- * @param swr             audio resample context
  -- * @param output          output AVFrame
  -- * @param input           input AVFrame
  -- * @return                0 on success, AVERROR on failure or nonmatching
  -- *                        configuration.
  --

   function convert_frame
     (swr : System.Address;
      output : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      input : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:559


  --*
  -- * Configure or reconfigure the SwrContext using the information
  -- * provided by the AVFrames.
  -- *
  -- * The original resampling context is reset even on failure.
  -- * The function calls close() internally if the context is open.
  -- *
  -- * @see close();
  -- *
  -- * @param swr             audio resample context
  -- * @param output          output AVFrame
  -- * @param input           input AVFrame
  -- * @return                0 on success, AVERROR on failure.
  --

   function config_frame
     (swr : System.Address;
      c_out : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      c_in : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libswresample/swresample.h:576


  --*
  -- * @}
  -- * @}
  --

end FFMpeg.swresample;
