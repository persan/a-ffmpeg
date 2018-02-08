pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with System;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;

with FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h;
with Interfaces.C.Strings;

package FFMpeg.Low_Level.ffmpeg_libavutil_frame_h is

   AV_NUM_DATA_POINTERS : constant := 8;  --  /usr/include/ffmpeg/libavutil/frame.h:188

   AV_FRAME_FLAG_CORRUPT : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavutil/frame.h:404

   AV_FRAME_FLAG_DISCARD : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavutil/frame.h:408

   FF_DECODE_ERROR_INVALID_BITSTREAM : constant := 1;  --  /usr/include/ffmpeg/libavutil/frame.h:475
   FF_DECODE_ERROR_MISSING_REFERENCE : constant := 2;  --  /usr/include/ffmpeg/libavutil/frame.h:476

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
  -- * @ingroup lavu_frame
  -- * reference-counted frame API
  --  

  --*
  -- * @defgroup lavu_frame AVFrame
  -- * @ingroup lavu_data
  -- *
  -- * @{
  -- * AVFrame is an abstraction for reference-counted raw multimedia data.
  --  

   type AVFrameSideDataType is 
     (AV_FRAME_DATA_PANSCAN,
      AV_FRAME_DATA_A53_CC,
      AV_FRAME_DATA_STEREO3D,
      AV_FRAME_DATA_MATRIXENCODING,
      AV_FRAME_DATA_DOWNMIX_INFO,
      AV_FRAME_DATA_REPLAYGAIN,
      AV_FRAME_DATA_DISPLAYMATRIX,
      AV_FRAME_DATA_AFD,
      AV_FRAME_DATA_MOTION_VECTORS,
      AV_FRAME_DATA_SKIP_SAMPLES,
      AV_FRAME_DATA_AUDIO_SERVICE_TYPE,
      AV_FRAME_DATA_MASTERING_DISPLAY_METADATA,
      AV_FRAME_DATA_GOP_TIMECODE,
      AV_FRAME_DATA_SPHERICAL);
   pragma Convention (C, AVFrameSideDataType);  -- /usr/include/ffmpeg/libavutil/frame.h:47

  --*
  --     * The data is the AVPanScan struct defined in libavcodec.
  --      

  --*
  --     * ATSC A53 Part 4 Closed Captions.
  --     * A53 CC bitstream is stored as uint8_t in AVFrameSideData.data.
  --     * The number of bytes of CC data is AVFrameSideData.size.
  --      

  --*
  --     * Stereoscopic 3d metadata.
  --     * The data is the AVStereo3D struct defined in libavutil/stereo3d.h.
  --      

  --*
  --     * The data is the AVMatrixEncoding enum defined in libavutil/channel_layout.h.
  --      

  --*
  --     * Metadata relevant to a downmix procedure.
  --     * The data is the AVDownmixInfo struct defined in libavutil/downmix_info.h.
  --      

  --*
  --     * ReplayGain information in the form of the AVReplayGain struct.
  --      

  --*
  --     * This side data contains a 3x3 transformation matrix describing an affine
  --     * transformation that needs to be applied to the frame for correct
  --     * presentation.
  --     *
  --     * See libavutil/display.h for a detailed description of the data.
  --      

  --*
  --     * Active Format Description data consisting of a single byte as specified
  --     * in ETSI TS 101 154 using AVActiveFormatDescription enum.
  --      

  --*
  --     * Motion vectors exported by some codecs (on demand through the export_mvs
  --     * flag set in the libavcodec AVCodecContext flags2 option).
  --     * The data is the AVMotionVector struct defined in
  --     * libavutil/motion_vector.h.
  --      

  --*
  --     * Recommmends skipping the specified number of samples. This is exported
  --     * only if the "skip_manual" AVOption is set in libavcodec.
  --     * This has the same format as AV_PKT_DATA_SKIP_SAMPLES.
  --     * @code
  --     * u32le number of samples to skip from start of this packet
  --     * u32le number of samples to skip from end of this packet
  --     * u8    reason for start skip
  --     * u8    reason for end   skip (0=padding silence, 1=convergence)
  --     * @endcode
  --      

  --*
  --     * This side data must be associated with an audio frame and corresponds to
  --     * enum AVAudioServiceType defined in avcodec.h.
  --      

  --*
  --     * Mastering display metadata associated with a video frame. The payload is
  --     * an AVMasteringDisplayMetadata type and contains information about the
  --     * mastering display color volume.
  --      

  --*
  --     * The GOP timecode in 25 bit timecode format. Data format is 64-bit integer.
  --     * This is set on the first frame of a GOP that has a temporal reference of 0.
  --      

  --*
  --     * The data represents the AVSphericalMapping structure defined in
  --     * libavutil/spherical.h.
  --      

   subtype AVActiveFormatDescription is unsigned;
   AV_AFD_SAME : constant AVActiveFormatDescription := 8;
   AV_AFD_4_3 : constant AVActiveFormatDescription := 9;
   AV_AFD_16_9 : constant AVActiveFormatDescription := 10;
   AV_AFD_14_9 : constant AVActiveFormatDescription := 11;
   AV_AFD_4_3_SP_14_9 : constant AVActiveFormatDescription := 13;
   AV_AFD_16_9_SP_14_9 : constant AVActiveFormatDescription := 14;
   AV_AFD_SP_4_3 : constant AVActiveFormatDescription := 15;  -- /usr/include/ffmpeg/libavutil/frame.h:132

  --*
  -- * Structure to hold side data for an AVFrame.
  -- *
  -- * sizeof(AVFrameSideData) is not a part of the public ABI, so new fields may be added
  -- * to the end with a minor bump.
  --  

   type AVFrameSideData is record
      c_type : aliased AVFrameSideDataType;  -- /usr/include/ffmpeg/libavutil/frame.h:150
      data : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavutil/frame.h:151
      size : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:152
      metadata : System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:153
      buf : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavutil/frame.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, AVFrameSideData);  -- /usr/include/ffmpeg/libavutil/frame.h:149

  --*
  -- * This structure describes decoded (raw) audio or video data.
  -- *
  -- * AVFrame must be allocated using av_frame_alloc(). Note that this only
  -- * allocates the AVFrame itself, the buffers for the data must be managed
  -- * through other means (see below).
  -- * AVFrame must be freed with av_frame_free().
  -- *
  -- * AVFrame is typically allocated once and then reused multiple times to hold
  -- * different data (e.g. a single AVFrame to hold frames received from a
  -- * decoder). In such a case, av_frame_unref() will free any references held by
  -- * the frame and reset it to its original clean state before it
  -- * is reused again.
  -- *
  -- * The data described by an AVFrame is usually reference counted through the
  -- * AVBuffer API. The underlying buffer references are stored in AVFrame.buf /
  -- * AVFrame.extended_buf. An AVFrame is considered to be reference counted if at
  -- * least one reference is set, i.e. if AVFrame.buf[0] != NULL. In such a case,
  -- * every single data plane must be contained in one of the buffers in
  -- * AVFrame.buf or AVFrame.extended_buf.
  -- * There may be a single buffer for all the data, or one separate buffer for
  -- * each plane, or anything in between.
  -- *
  -- * sizeof(AVFrame) is not a part of the public ABI, so new fields may be added
  -- * to the end with a minor bump.
  -- *
  -- * Fields can be accessed through AVOptions, the name string used, matches the
  -- * C structure field name for fields accessible through AVOptions. The AVClass
  -- * for AVFrame can be obtained from avcodec_get_frame_class()
  --  

  --*
  --     * pointer to the picture/channel planes.
  --     * This might be different from the first allocated byte
  --     *
  --     * Some decoders access areas outside 0,0 - width,height, please
  --     * see avcodec_align_dimensions2(). Some filters and swscale can read
  --     * up to 16 bytes beyond the planes, if these filters are to be used,
  --     * then 16 extra bytes must be allocated.
  --     *
  --     * NOTE: Except for hwaccel formats, pointers not needed by the format
  --     * MUST be set to NULL.
  --      

   type AVFrame_data_array is array (0 .. 7) of access Interfaces.Unsigned_8;
   type AVFrame_linesize_array is array (0 .. 7) of aliased int;
   type AVFrame_error_array is array (0 .. 7) of aliased Interfaces.Unsigned_64;
   type AVFrame_buf_array is array (0 .. 7) of access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;
   type AVFrame is record
      data : AVFrame_data_array;  -- /usr/include/ffmpeg/libavutil/frame.h:201
      linesize : aliased AVFrame_linesize_array;  -- /usr/include/ffmpeg/libavutil/frame.h:218
      extended_data : System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:234
      width : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:239
      height : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:239
      nb_samples : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:244
      format : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:251
      key_frame : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:256
      pict_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVPictureType;  -- /usr/include/ffmpeg/libavutil/frame.h:261
      sample_aspect_ratio : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavutil/frame.h:266
      pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:271
      pkt_pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:279
      pkt_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:287
      coded_picture_number : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:292
      display_picture_number : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:296
      quality : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:301
      opaque : System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:306
      error : aliased AVFrame_error_array;  -- /usr/include/ffmpeg/libavutil/frame.h:313
      repeat_pict : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:320
      interlaced_frame : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:325
      top_field_first : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:330
      palette_has_changed : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:335
      reordered_opaque : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:346
      sample_rate : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:351
      channel_layout : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavutil/frame.h:356
      buf : AVFrame_buf_array;  -- /usr/include/ffmpeg/libavutil/frame.h:370
      extended_buf : System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:384
      nb_extended_buf : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:388
      side_data : System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:390
      nb_side_data : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:391
      flags : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:416
      color_range : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange;  -- /usr/include/ffmpeg/libavutil/frame.h:423
      color_primaries : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorPrimaries;  -- /usr/include/ffmpeg/libavutil/frame.h:425
      color_trc : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorTransferCharacteristic;  -- /usr/include/ffmpeg/libavutil/frame.h:427
      colorspace : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace;  -- /usr/include/ffmpeg/libavutil/frame.h:434
      chroma_location : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation;  -- /usr/include/ffmpeg/libavutil/frame.h:436
      best_effort_timestamp : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:443
      pkt_pos : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:450
      pkt_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:458
      metadata : System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:465
      decode_error_flags : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:474
      channels : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:483
      pkt_size : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:492
      qscale_table : access Interfaces.Integer_8;  -- /usr/include/ffmpeg/libavutil/frame.h:499
      qstride : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:504
      qscale_type : aliased int;  -- /usr/include/ffmpeg/libavutil/frame.h:507
      qp_table_buf : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavutil/frame.h:509
      hw_frames_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavutil/frame.h:515
      opaque_ref : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavutil/frame.h:526
   end record;
   pragma Convention (C_Pass_By_Copy, AVFrame);  -- /usr/include/ffmpeg/libavutil/frame.h:187

  --*
  --     * For video, size in bytes of each picture line.
  --     * For audio, size in bytes of each plane.
  --     *
  --     * For audio, only linesize[0] may be set. For planar audio, each channel
  --     * plane must be the same size.
  --     *
  --     * For video the linesizes should be multiples of the CPUs alignment
  --     * preference, this is 16 or 32 for modern desktop CPUs.
  --     * Some code requires such alignment other code can be slower without
  --     * correct alignment, for yet other it makes no difference.
  --     *
  --     * @note The linesize may be larger than the size of usable data -- there
  --     * may be extra padding present for performance reasons.
  --      

  --*
  --     * pointers to the data planes/channels.
  --     *
  --     * For video, this should simply point to data[].
  --     *
  --     * For planar audio, each channel has a separate data pointer, and
  --     * linesize[0] contains the size of each channel buffer.
  --     * For packed audio, there is just one data pointer, and linesize[0]
  --     * contains the total size of the buffer for all channels.
  --     *
  --     * Note: Both data and extended_data should always be set in a valid frame,
  --     * but for planar audio with more channels that can fit in data,
  --     * extended_data must be used in order to access all channels.
  --      

  --*
  --     * width and height of the video frame
  --      

  --*
  --     * number of audio samples (per channel) described by this frame
  --      

  --*
  --     * format of the frame, -1 if unknown or unset
  --     * Values correspond to enum AVPixelFormat for video frames,
  --     * enum AVSampleFormat for audio)
  --      

  --*
  --     * 1 -> keyframe, 0-> not
  --      

  --*
  --     * Picture type of the frame.
  --      

  --*
  --     * Sample aspect ratio for the video frame, 0/1 if unknown/unspecified.
  --      

  --*
  --     * Presentation timestamp in time_base units (time when frame should be shown to user).
  --      

  --*
  --     * PTS copied from the AVPacket that was decoded to produce this frame.
  --     * @deprecated use the pts field instead
  --      

  --*
  --     * DTS copied from the AVPacket that triggered returning this frame. (if frame threading isn't used)
  --     * This is also the Presentation time of this AVFrame calculated from
  --     * only AVPacket.dts values without pts values.
  --      

  --*
  --     * picture number in bitstream order
  --      

  --*
  --     * picture number in display order
  --      

  --*
  --     * quality (between 1 (good) and FF_LAMBDA_MAX (bad))
  --      

  --*
  --     * for some private data of the user
  --      

  --*
  --     * @deprecated unused
  --      

  --*
  --     * When decoding, this signals how much the picture must be delayed.
  --     * extra_delay = repeat_pict / (2*fps)
  --      

  --*
  --     * The content of the picture is interlaced.
  --      

  --*
  --     * If the content is interlaced, is top field displayed first.
  --      

  --*
  --     * Tell user application that palette has changed from previous frame.
  --      

  --*
  --     * reordered opaque 64 bits (generally an integer or a double precision float
  --     * PTS but can be anything).
  --     * The user sets AVCodecContext.reordered_opaque to represent the input at
  --     * that time,
  --     * the decoder reorders values as needed and sets AVFrame.reordered_opaque
  --     * to exactly one of the values provided by the user through AVCodecContext.reordered_opaque
  --     * @deprecated in favor of pkt_pts
  --      

  --*
  --     * Sample rate of the audio data.
  --      

  --*
  --     * Channel layout of the audio data.
  --      

  --*
  --     * AVBuffer references backing the data for this frame. If all elements of
  --     * this array are NULL, then this frame is not reference counted. This array
  --     * must be filled contiguously -- if buf[i] is non-NULL then buf[j] must
  --     * also be non-NULL for all j < i.
  --     *
  --     * There may be at most one AVBuffer per data plane, so for video this array
  --     * always contains all the references. For planar audio with more than
  --     * AV_NUM_DATA_POINTERS channels, there may be more buffers than can fit in
  --     * this array. Then the extra AVBufferRef pointers are stored in the
  --     * extended_buf array.
  --      

  --*
  --     * For planar audio which requires more than AV_NUM_DATA_POINTERS
  --     * AVBufferRef pointers, this array will hold all the references which
  --     * cannot fit into AVFrame.buf.
  --     *
  --     * Note that this is different from AVFrame.extended_data, which always
  --     * contains all the pointers. This array only contains the extra pointers,
  --     * which cannot fit into AVFrame.buf.
  --     *
  --     * This array is always allocated using av_malloc() by whoever constructs
  --     * the frame. It is freed in av_frame_unref().
  --      

  --*
  --     * Number of elements in extended_buf.
  --      

  --*
  -- * @defgroup lavu_frame_flags AV_FRAME_FLAGS
  -- * @ingroup lavu_frame
  -- * Flags describing additional frame properties.
  -- *
  -- * @{
  --  

  --*
  -- * The frame data may be corrupted, e.g. due to decoding errors.
  --  

  --*
  -- * A flag to mark the frames which need to be decoded, but shouldn't be output.
  --  

  --*
  -- * @}
  --  

  --*
  --     * Frame flags, a combination of @ref lavu_frame_flags
  --      

  --*
  --     * MPEG vs JPEG YUV range.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --      

  --*
  --     * YUV colorspace type.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --      

  --*
  --     * frame timestamp estimated using various heuristics, in stream time base
  --     * - encoding: unused
  --     * - decoding: set by libavcodec, read by user.
  --      

  --*
  --     * reordered pos from the last AVPacket that has been input into the decoder
  --     * - encoding: unused
  --     * - decoding: Read by user.
  --      

  --*
  --     * duration of the corresponding packet, expressed in
  --     * AVStream->time_base units, 0 if unknown.
  --     * - encoding: unused
  --     * - decoding: Read by user.
  --      

  --*
  --     * metadata.
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --      

  --*
  --     * decode error flags of the frame, set to a combination of
  --     * FF_DECODE_ERROR_xxx flags if the decoder produced a frame, but there
  --     * were errors during the decoding.
  --     * - encoding: unused
  --     * - decoding: set by libavcodec, read by user.
  --      

  --*
  --     * number of audio channels, only used for audio.
  --     * - encoding: unused
  --     * - decoding: Read by user.
  --      

  --*
  --     * size of the corresponding packet containing the compressed
  --     * frame.
  --     * It is set to a negative value if unknown.
  --     * - encoding: unused
  --     * - decoding: set by libavcodec, read by user.
  --      

  --*
  --     * QP table
  --      

  --*
  --     * QP store stride
  --      

  --*
  --     * For hwaccel-format frames, this should be a reference to the
  --     * AVHWFramesContext describing the frame.
  --      

  --*
  --     * AVBufferRef for free use by the API user. FFmpeg will never check the
  --     * contents of the buffer ref. FFmpeg calls av_buffer_unref() on it when
  --     * the frame is unreferenced. av_frame_copy_props() calls create a new
  --     * reference with av_buffer_ref() for the target frame's opaque_ref field.
  --     *
  --     * This is unrelated to the opaque field, although it serves a similar
  --     * purpose.
  --      

  --*
  -- * Accessors for some AVFrame fields. These used to be provided for ABI
  -- * compatibility, and do not need to be used anymore.
  --  

   function av_frame_get_best_effort_timestamp (frame : access constant AVFrame) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:533
   pragma Import (C, av_frame_get_best_effort_timestamp, "av_frame_get_best_effort_timestamp");

   procedure av_frame_set_best_effort_timestamp (frame : access AVFrame; val : Interfaces.Integer_64);  -- /usr/include/ffmpeg/libavutil/frame.h:534
   pragma Import (C, av_frame_set_best_effort_timestamp, "av_frame_set_best_effort_timestamp");

   function av_frame_get_pkt_duration (frame : access constant AVFrame) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:535
   pragma Import (C, av_frame_get_pkt_duration, "av_frame_get_pkt_duration");

   procedure av_frame_set_pkt_duration (frame : access AVFrame; val : Interfaces.Integer_64);  -- /usr/include/ffmpeg/libavutil/frame.h:536
   pragma Import (C, av_frame_set_pkt_duration, "av_frame_set_pkt_duration");

   function av_frame_get_pkt_pos (frame : access constant AVFrame) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:537
   pragma Import (C, av_frame_get_pkt_pos, "av_frame_get_pkt_pos");

   procedure av_frame_set_pkt_pos (frame : access AVFrame; val : Interfaces.Integer_64);  -- /usr/include/ffmpeg/libavutil/frame.h:538
   pragma Import (C, av_frame_set_pkt_pos, "av_frame_set_pkt_pos");

   function av_frame_get_channel_layout (frame : access constant AVFrame) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/frame.h:539
   pragma Import (C, av_frame_get_channel_layout, "av_frame_get_channel_layout");

   procedure av_frame_set_channel_layout (frame : access AVFrame; val : Interfaces.Integer_64);  -- /usr/include/ffmpeg/libavutil/frame.h:540
   pragma Import (C, av_frame_set_channel_layout, "av_frame_set_channel_layout");

   function av_frame_get_channels (frame : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:541
   pragma Import (C, av_frame_get_channels, "av_frame_get_channels");

   procedure av_frame_set_channels (frame : access AVFrame; val : int);  -- /usr/include/ffmpeg/libavutil/frame.h:542
   pragma Import (C, av_frame_set_channels, "av_frame_set_channels");

   function av_frame_get_sample_rate (frame : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:543
   pragma Import (C, av_frame_get_sample_rate, "av_frame_get_sample_rate");

   procedure av_frame_set_sample_rate (frame : access AVFrame; val : int);  -- /usr/include/ffmpeg/libavutil/frame.h:544
   pragma Import (C, av_frame_set_sample_rate, "av_frame_set_sample_rate");

   function av_frame_get_metadata (frame : access constant AVFrame) return System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:545
   pragma Import (C, av_frame_get_metadata, "av_frame_get_metadata");

   procedure av_frame_set_metadata (frame : access AVFrame; val : System.Address);  -- /usr/include/ffmpeg/libavutil/frame.h:546
   pragma Import (C, av_frame_set_metadata, "av_frame_set_metadata");

   function av_frame_get_decode_error_flags (frame : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:547
   pragma Import (C, av_frame_get_decode_error_flags, "av_frame_get_decode_error_flags");

   procedure av_frame_set_decode_error_flags (frame : access AVFrame; val : int);  -- /usr/include/ffmpeg/libavutil/frame.h:548
   pragma Import (C, av_frame_set_decode_error_flags, "av_frame_set_decode_error_flags");

   function av_frame_get_pkt_size (frame : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:549
   pragma Import (C, av_frame_get_pkt_size, "av_frame_get_pkt_size");

   procedure av_frame_set_pkt_size (frame : access AVFrame; val : int);  -- /usr/include/ffmpeg/libavutil/frame.h:550
   pragma Import (C, av_frame_set_pkt_size, "av_frame_set_pkt_size");

   function avpriv_frame_get_metadatap (frame : access AVFrame) return System.Address;  -- /usr/include/ffmpeg/libavutil/frame.h:551
   pragma Import (C, avpriv_frame_get_metadatap, "avpriv_frame_get_metadatap");

   function av_frame_get_qp_table
     (f : access AVFrame;
      stride : access int;
      c_type : access int) return access Interfaces.Integer_8;  -- /usr/include/ffmpeg/libavutil/frame.h:553
   pragma Import (C, av_frame_get_qp_table, "av_frame_get_qp_table");

   function av_frame_set_qp_table
     (f : access AVFrame;
      buf : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;
      stride : int;
      c_type : int) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:554
   pragma Import (C, av_frame_set_qp_table, "av_frame_set_qp_table");

   function av_frame_get_colorspace (frame : access constant AVFrame) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace;  -- /usr/include/ffmpeg/libavutil/frame.h:556
   pragma Import (C, av_frame_get_colorspace, "av_frame_get_colorspace");

   procedure av_frame_set_colorspace (frame : access AVFrame; val : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace);  -- /usr/include/ffmpeg/libavutil/frame.h:557
   pragma Import (C, av_frame_set_colorspace, "av_frame_set_colorspace");

   function av_frame_get_color_range (frame : access constant AVFrame) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange;  -- /usr/include/ffmpeg/libavutil/frame.h:558
   pragma Import (C, av_frame_get_color_range, "av_frame_get_color_range");

   procedure av_frame_set_color_range (frame : access AVFrame; val : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange);  -- /usr/include/ffmpeg/libavutil/frame.h:559
   pragma Import (C, av_frame_set_color_range, "av_frame_set_color_range");

  --*
  -- * Get the name of a colorspace.
  -- * @return a static string identifying the colorspace; can be NULL.
  --  

   function av_get_colorspace_name (val : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/frame.h:565
   pragma Import (C, av_get_colorspace_name, "av_get_colorspace_name");

  --*
  -- * Allocate an AVFrame and set its fields to default values.  The resulting
  -- * struct must be freed using av_frame_free().
  -- *
  -- * @return An AVFrame filled with default values or NULL on failure.
  -- *
  -- * @note this only allocates the AVFrame itself, not the data buffers. Those
  -- * must be allocated through other means, e.g. with av_frame_get_buffer() or
  -- * manually.
  --  

   function av_frame_alloc return access AVFrame;  -- /usr/include/ffmpeg/libavutil/frame.h:577
   pragma Import (C, av_frame_alloc, "av_frame_alloc");

  --*
  -- * Free the frame and any dynamically allocated objects in it,
  -- * e.g. extended_data. If the frame is reference counted, it will be
  -- * unreferenced first.
  -- *
  -- * @param frame frame to be freed. The pointer will be set to NULL.
  --  

   procedure av_frame_free (frame : System.Address);  -- /usr/include/ffmpeg/libavutil/frame.h:586
   pragma Import (C, av_frame_free, "av_frame_free");

  --*
  -- * Set up a new reference to the data described by the source frame.
  -- *
  -- * Copy frame properties from src to dst and create a new reference for each
  -- * AVBufferRef from src.
  -- *
  -- * If src is not reference counted, new buffers are allocated and the data is
  -- * copied.
  -- *
  -- * @warning: dst MUST have been either unreferenced with av_frame_unref(dst),
  -- *           or newly allocated with av_frame_alloc() before calling this
  -- *           function, or undefined behavior will occur.
  -- *
  -- * @return 0 on success, a negative AVERROR on error
  --  

   function av_frame_ref (dst : access AVFrame; src : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:603
   pragma Import (C, av_frame_ref, "av_frame_ref");

  --*
  -- * Create a new frame that references the same data as src.
  -- *
  -- * This is a shortcut for av_frame_alloc()+av_frame_ref().
  -- *
  -- * @return newly created AVFrame on success, NULL on error.
  --  

   function av_frame_clone (src : access constant AVFrame) return access AVFrame;  -- /usr/include/ffmpeg/libavutil/frame.h:612
   pragma Import (C, av_frame_clone, "av_frame_clone");

  --*
  -- * Unreference all the buffers referenced by frame and reset the frame fields.
  --  

   procedure av_frame_unref (frame : access AVFrame);  -- /usr/include/ffmpeg/libavutil/frame.h:617
   pragma Import (C, av_frame_unref, "av_frame_unref");

  --*
  -- * Move everything contained in src to dst and reset src.
  -- *
  -- * @warning: dst is not unreferenced, but directly overwritten without reading
  -- *           or deallocating its contents. Call av_frame_unref(dst) manually
  -- *           before calling this function to ensure that no memory is leaked.
  --  

   procedure av_frame_move_ref (dst : access AVFrame; src : access AVFrame);  -- /usr/include/ffmpeg/libavutil/frame.h:626
   pragma Import (C, av_frame_move_ref, "av_frame_move_ref");

  --*
  -- * Allocate new buffer(s) for audio or video data.
  -- *
  -- * The following fields must be set on frame before calling this function:
  -- * - format (pixel format for video, sample format for audio)
  -- * - width and height for video
  -- * - nb_samples and channel_layout for audio
  -- *
  -- * This function will fill AVFrame.data and AVFrame.buf arrays and, if
  -- * necessary, allocate and fill AVFrame.extended_data and AVFrame.extended_buf.
  -- * For planar formats, one buffer will be allocated for each plane.
  -- *
  -- * @warning: if frame already has been allocated, calling this function will
  -- *           leak memory. In addition, undefined behavior can occur in certain
  -- *           cases.
  -- *
  -- * @param frame frame in which to store the new buffers.
  -- * @param align required buffer size alignment
  -- *
  -- * @return 0 on success, a negative AVERROR on error.
  --  

   function av_frame_get_buffer (frame : access AVFrame; align : int) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:649
   pragma Import (C, av_frame_get_buffer, "av_frame_get_buffer");

  --*
  -- * Check if the frame data is writable.
  -- *
  -- * @return A positive value if the frame data is writable (which is true if and
  -- * only if each of the underlying buffers has only one reference, namely the one
  -- * stored in this frame). Return 0 otherwise.
  -- *
  -- * If 1 is returned the answer is valid until av_buffer_ref() is called on any
  -- * of the underlying AVBufferRefs (e.g. through av_frame_ref() or directly).
  -- *
  -- * @see av_frame_make_writable(), av_buffer_is_writable()
  --  

   function av_frame_is_writable (frame : access AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:663
   pragma Import (C, av_frame_is_writable, "av_frame_is_writable");

  --*
  -- * Ensure that the frame data is writable, avoiding data copy if possible.
  -- *
  -- * Do nothing if the frame is writable, allocate new buffers and copy the data
  -- * if it is not.
  -- *
  -- * @return 0 on success, a negative AVERROR on error.
  -- *
  -- * @see av_frame_is_writable(), av_buffer_is_writable(),
  -- * av_buffer_make_writable()
  --  

   function av_frame_make_writable (frame : access AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:676
   pragma Import (C, av_frame_make_writable, "av_frame_make_writable");

  --*
  -- * Copy the frame data from src to dst.
  -- *
  -- * This function does not allocate anything, dst must be already initialized and
  -- * allocated with the same parameters as src.
  -- *
  -- * This function only copies the frame data (i.e. the contents of the data /
  -- * extended data arrays), not any other properties.
  -- *
  -- * @return >= 0 on success, a negative AVERROR on error.
  --  

   function av_frame_copy (dst : access AVFrame; src : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:689
   pragma Import (C, av_frame_copy, "av_frame_copy");

  --*
  -- * Copy only "metadata" fields from src to dst.
  -- *
  -- * Metadata for the purpose of this function are those fields that do not affect
  -- * the data layout in the buffers.  E.g. pts, sample rate (for audio) or sample
  -- * aspect ratio (for video), but not width/height or channel layout.
  -- * Side data is also copied.
  --  

   function av_frame_copy_props (dst : access AVFrame; src : access constant AVFrame) return int;  -- /usr/include/ffmpeg/libavutil/frame.h:699
   pragma Import (C, av_frame_copy_props, "av_frame_copy_props");

  --*
  -- * Get the buffer reference a given data plane is stored in.
  -- *
  -- * @param plane index of the data plane of interest in frame->extended_data.
  -- *
  -- * @return the buffer reference that contains the plane or NULL if the input
  -- * frame is not valid.
  --  

   function av_frame_get_plane_buffer (frame : access AVFrame; plane : int) return access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavutil/frame.h:709
   pragma Import (C, av_frame_get_plane_buffer, "av_frame_get_plane_buffer");

  --*
  -- * Add a new side data to a frame.
  -- *
  -- * @param frame a frame to which the side data should be added
  -- * @param type type of the added side data
  -- * @param size size of the side data
  -- *
  -- * @return newly added side data on success, NULL on error
  --  

   function av_frame_new_side_data
     (frame : access AVFrame;
      c_type : AVFrameSideDataType;
      size : int) return access AVFrameSideData;  -- /usr/include/ffmpeg/libavutil/frame.h:720
   pragma Import (C, av_frame_new_side_data, "av_frame_new_side_data");

  --*
  -- * @return a pointer to the side data of a given type on success, NULL if there
  -- * is no side data with such type in this frame.
  --  

   function av_frame_get_side_data (frame : access constant AVFrame; c_type : AVFrameSideDataType) return access AVFrameSideData;  -- /usr/include/ffmpeg/libavutil/frame.h:728
   pragma Import (C, av_frame_get_side_data, "av_frame_get_side_data");

  --*
  -- * If side data of the supplied type exists in the frame, free it and remove it
  -- * from the frame.
  --  

   procedure av_frame_remove_side_data (frame : access AVFrame; c_type : AVFrameSideDataType);  -- /usr/include/ffmpeg/libavutil/frame.h:735
   pragma Import (C, av_frame_remove_side_data, "av_frame_remove_side_data");

  --*
  -- * @return a string identifying the side data type
  --  

   function av_frame_side_data_name (c_type : AVFrameSideDataType) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/frame.h:740
   pragma Import (C, av_frame_side_data_name, "av_frame_side_data_name");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_frame_h;
