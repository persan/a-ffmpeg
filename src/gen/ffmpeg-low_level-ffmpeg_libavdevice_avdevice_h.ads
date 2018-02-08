pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h;
with System;

limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;
with FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h;

with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_opt_h;

package FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h is

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
  -- * @ingroup lavd
  -- * Main libavdevice API header
  --  

  --*
  -- * @defgroup lavd libavdevice
  -- * Special devices muxing/demuxing library.
  -- *
  -- * Libavdevice is a complementary library to @ref libavf "libavformat". It
  -- * provides various "special" platform-specific muxers and demuxers, e.g. for
  -- * grabbing devices, audio capture and playback etc. As a consequence, the
  -- * (de)muxers in libavdevice are of the AVFMT_NOFILE type (they use their own
  -- * I/O functions). The filename passed to avformat_open_input() often does not
  -- * refer to an actually existing file, but has some special device-specific
  -- * meaning - e.g. for xcbgrab it is the display name.
  -- *
  -- * To use libavdevice, simply call avdevice_register_all() to register all
  -- * compiled muxers and demuxers. They all use standard libavformat API.
  -- *
  -- * @{
  --  

  --*
  -- * Return the LIBAVDEVICE_VERSION_INT constant.
  --  

   function avdevice_version return unsigned;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:56
   pragma Import (C, avdevice_version, "avdevice_version");

  --*
  -- * Return the libavdevice build-time configuration.
  --  

   function avdevice_configuration return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:61
   pragma Import (C, avdevice_configuration, "avdevice_configuration");

  --*
  -- * Return the libavdevice license.
  --  

   function avdevice_license return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:66
   pragma Import (C, avdevice_license, "avdevice_license");

  --*
  -- * Initialize libavdevice and register all the input and output devices.
  --  

   procedure avdevice_register_all;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:71
   pragma Import (C, avdevice_register_all, "avdevice_register_all");

  --*
  -- * Audio input devices iterator.
  -- *
  -- * If d is NULL, returns the first registered input audio/video device,
  -- * if d is non-NULL, returns the next registered input audio/video device after d
  -- * or NULL if d is the last one.
  --  

   function av_input_audio_device_next (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat) return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:80
   pragma Import (C, av_input_audio_device_next, "av_input_audio_device_next");

  --*
  -- * Video input devices iterator.
  -- *
  -- * If d is NULL, returns the first registered input audio/video device,
  -- * if d is non-NULL, returns the next registered input audio/video device after d
  -- * or NULL if d is the last one.
  --  

   function av_input_video_device_next (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat) return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:89
   pragma Import (C, av_input_video_device_next, "av_input_video_device_next");

  --*
  -- * Audio output devices iterator.
  -- *
  -- * If d is NULL, returns the first registered output audio/video device,
  -- * if d is non-NULL, returns the next registered output audio/video device after d
  -- * or NULL if d is the last one.
  --  

   function av_output_audio_device_next (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat) return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:98
   pragma Import (C, av_output_audio_device_next, "av_output_audio_device_next");

  --*
  -- * Video output devices iterator.
  -- *
  -- * If d is NULL, returns the first registered output audio/video device,
  -- * if d is non-NULL, returns the next registered output audio/video device after d
  -- * or NULL if d is the last one.
  --  

   function av_output_video_device_next (d : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat) return access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:107
   pragma Import (C, av_output_video_device_next, "av_output_video_device_next");

  --*< x coordinate of top left corner  
   type AVDeviceRect is record
      x : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:110
      y : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:111
      width : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:112
      height : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:113
   end record;
   pragma Convention (C_Pass_By_Copy, AVDeviceRect);  -- /usr/include/ffmpeg/libavdevice/avdevice.h:109

  --*< y coordinate of top left corner  
  --*< width  
  --*< height  
  --*
  -- * Message types used by avdevice_app_to_dev_control_message().
  --  

   subtype AVAppToDevMessageType is unsigned;
   AV_APP_TO_DEV_NONE : constant AVAppToDevMessageType := 1313820229;
   AV_APP_TO_DEV_WINDOW_SIZE : constant AVAppToDevMessageType := 1195724621;
   AV_APP_TO_DEV_WINDOW_REPAINT : constant AVAppToDevMessageType := 1380274241;
   AV_APP_TO_DEV_PAUSE : constant AVAppToDevMessageType := 1346458912;
   AV_APP_TO_DEV_PLAY : constant AVAppToDevMessageType := 1347174745;
   AV_APP_TO_DEV_TOGGLE_PAUSE : constant AVAppToDevMessageType := 1346458964;
   AV_APP_TO_DEV_SET_VOLUME : constant AVAppToDevMessageType := 1398165324;
   AV_APP_TO_DEV_MUTE : constant AVAppToDevMessageType := 541939028;
   AV_APP_TO_DEV_UNMUTE : constant AVAppToDevMessageType := 1431131476;
   AV_APP_TO_DEV_TOGGLE_MUTE : constant AVAppToDevMessageType := 1414354260;
   AV_APP_TO_DEV_GET_VOLUME : constant AVAppToDevMessageType := 1196838732;
   AV_APP_TO_DEV_GET_MUTE : constant AVAppToDevMessageType := 1196250452;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:119

  --*
  --     * Dummy message.
  --      

  --*
  --     * Window size change message.
  --     *
  --     * Message is sent to the device every time the application changes the size
  --     * of the window device renders to.
  --     * Message should also be sent right after window is created.
  --     *
  --     * data: AVDeviceRect: new window size.
  --      

  --*
  --     * Repaint request message.
  --     *
  --     * Message is sent to the device when window has to be repainted.
  --     *
  --     * data: AVDeviceRect: area required to be repainted.
  --     *       NULL: whole area is required to be repainted.
  --      

  --*
  --     * Request pause/play.
  --     *
  --     * Application requests pause/unpause playback.
  --     * Mostly usable with devices that have internal buffer.
  --     * By default devices are not paused.
  --     *
  --     * data: NULL
  --      

  --*
  --     * Volume control message.
  --     *
  --     * Set volume level. It may be device-dependent if volume
  --     * is changed per stream or system wide. Per stream volume
  --     * change is expected when possible.
  --     *
  --     * data: double: new volume with range of 0.0 - 1.0.
  --      

  --*
  --     * Mute control messages.
  --     *
  --     * Change mute state. It may be device-dependent if mute status
  --     * is changed per stream or system wide. Per stream mute status
  --     * change is expected when possible.
  --     *
  --     * data: NULL.
  --      

  --*
  --     * Get volume/mute messages.
  --     *
  --     * Force the device to send AV_DEV_TO_APP_VOLUME_LEVEL_CHANGED or
  --     * AV_DEV_TO_APP_MUTE_STATE_CHANGED command respectively.
  --     *
  --     * data: NULL.
  --      

  --*
  -- * Message types used by avdevice_dev_to_app_control_message().
  --  

   subtype AVDevToAppMessageType is unsigned;
   AV_DEV_TO_APP_NONE : constant AVDevToAppMessageType := 1313820229;
   AV_DEV_TO_APP_CREATE_WINDOW_BUFFER : constant AVDevToAppMessageType := 1111708229;
   AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER : constant AVDevToAppMessageType := 1112560197;
   AV_DEV_TO_APP_DISPLAY_WINDOW_BUFFER : constant AVDevToAppMessageType := 1111771475;
   AV_DEV_TO_APP_DESTROY_WINDOW_BUFFER : constant AVDevToAppMessageType := 1111770451;
   AV_DEV_TO_APP_BUFFER_OVERFLOW : constant AVDevToAppMessageType := 1112491596;
   AV_DEV_TO_APP_BUFFER_UNDERFLOW : constant AVDevToAppMessageType := 1112884812;
   AV_DEV_TO_APP_BUFFER_READABLE : constant AVDevToAppMessageType := 1112687648;
   AV_DEV_TO_APP_BUFFER_WRITABLE : constant AVDevToAppMessageType := 1113018912;
   AV_DEV_TO_APP_MUTE_STATE_CHANGED : constant AVDevToAppMessageType := 1129141588;
   AV_DEV_TO_APP_VOLUME_LEVEL_CHANGED : constant AVDevToAppMessageType := 1129729868;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:198

  --*
  --     * Dummy message.
  --      

  --*
  --     * Create window buffer message.
  --     *
  --     * Device requests to create a window buffer. Exact meaning is device-
  --     * and application-dependent. Message is sent before rendering first
  --     * frame and all one-shot initializations should be done here.
  --     * Application is allowed to ignore preferred window buffer size.
  --     *
  --     * @note: Application is obligated to inform about window buffer size
  --     *        with AV_APP_TO_DEV_WINDOW_SIZE message.
  --     *
  --     * data: AVDeviceRect: preferred size of the window buffer.
  --     *       NULL: no preferred size of the window buffer.
  --      

  --*
  --     * Prepare window buffer message.
  --     *
  --     * Device requests to prepare a window buffer for rendering.
  --     * Exact meaning is device- and application-dependent.
  --     * Message is sent before rendering of each frame.
  --     *
  --     * data: NULL.
  --      

  --*
  --     * Display window buffer message.
  --     *
  --     * Device requests to display a window buffer.
  --     * Message is sent when new frame is ready to be displayed.
  --     * Usually buffers need to be swapped in handler of this message.
  --     *
  --     * data: NULL.
  --      

  --*
  --     * Destroy window buffer message.
  --     *
  --     * Device requests to destroy a window buffer.
  --     * Message is sent when device is about to be destroyed and window
  --     * buffer is not required anymore.
  --     *
  --     * data: NULL.
  --      

  --*
  --     * Buffer fullness status messages.
  --     *
  --     * Device signals buffer overflow/underflow.
  --     *
  --     * data: NULL.
  --      

  --*
  --     * Buffer readable/writable.
  --     *
  --     * Device informs that buffer is readable/writable.
  --     * When possible, device informs how many bytes can be read/write.
  --     *
  --     * @warning Device may not inform when number of bytes than can be read/write changes.
  --     *
  --     * data: int64_t: amount of bytes available to read/write.
  --     *       NULL: amount of bytes available to read/write is not known.
  --      

  --*
  --     * Mute state change message.
  --     *
  --     * Device informs that mute state has changed.
  --     *
  --     * data: int: 0 for not muted state, non-zero for muted state.
  --      

  --*
  --     * Volume level change message.
  --     *
  --     * Device informs that volume level has changed.
  --     *
  --     * data: double: new volume with range of 0.0 - 1.0.
  --      

  --*
  -- * Send control message from application to device.
  -- *
  -- * @param s         device context.
  -- * @param type      message type.
  -- * @param data      message data. Exact type depends on message type.
  -- * @param data_size size of message data.
  -- * @return >= 0 on success, negative on error.
  -- *         AVERROR(ENOSYS) when device doesn't implement handler of the message.
  --  

   function avdevice_app_to_dev_control_message
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      c_type : AVAppToDevMessageType;
      data : System.Address;
      data_size : size_t) return int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:306
   pragma Import (C, avdevice_app_to_dev_control_message, "avdevice_app_to_dev_control_message");

  --*
  -- * Send control message from device to application.
  -- *
  -- * @param s         device context.
  -- * @param type      message type.
  -- * @param data      message data. Can be NULL.
  -- * @param data_size size of message data.
  -- * @return >= 0 on success, negative on error.
  -- *         AVERROR(ENOSYS) when application doesn't implement handler of the message.
  --  

   function avdevice_dev_to_app_control_message
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      c_type : AVDevToAppMessageType;
      data : System.Address;
      data_size : size_t) return int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:320
   pragma Import (C, avdevice_dev_to_app_control_message, "avdevice_dev_to_app_control_message");

  --*
  -- * Following API allows user to probe device capabilities (supported codecs,
  -- * pixel formats, sample formats, resolutions, channel counts, etc).
  -- * It is build on top op AVOption API.
  -- * Queried capabilities make it possible to set up converters of video or audio
  -- * parameters that fit to the device.
  -- *
  -- * List of capabilities that can be queried:
  -- *  - Capabilities valid for both audio and video devices:
  -- *    - codec:          supported audio/video codecs.
  -- *                      type: AV_OPT_TYPE_INT (AVCodecID value)
  -- *  - Capabilities valid for audio devices:
  -- *    - sample_format:  supported sample formats.
  -- *                      type: AV_OPT_TYPE_INT (AVSampleFormat value)
  -- *    - sample_rate:    supported sample rates.
  -- *                      type: AV_OPT_TYPE_INT
  -- *    - channels:       supported number of channels.
  -- *                      type: AV_OPT_TYPE_INT
  -- *    - channel_layout: supported channel layouts.
  -- *                      type: AV_OPT_TYPE_INT64
  -- *  - Capabilities valid for video devices:
  -- *    - pixel_format:   supported pixel formats.
  -- *                      type: AV_OPT_TYPE_INT (AVPixelFormat value)
  -- *    - window_size:    supported window sizes (describes size of the window size presented to the user).
  -- *                      type: AV_OPT_TYPE_IMAGE_SIZE
  -- *    - frame_size:     supported frame sizes (describes size of provided video frames).
  -- *                      type: AV_OPT_TYPE_IMAGE_SIZE
  -- *    - fps:            supported fps values
  -- *                      type: AV_OPT_TYPE_RATIONAL
  -- *
  -- * Value of the capability may be set by user using av_opt_set() function
  -- * and AVDeviceCapabilitiesQuery object. Following queries will
  -- * limit results to the values matching already set capabilities.
  -- * For example, setting a codec may impact number of formats or fps values
  -- * returned during next query. Setting invalid value may limit results to zero.
  -- *
  -- * Example of the usage basing on opengl output device:
  -- *
  -- * @code
  -- *  AVFormatContext *oc = NULL;
  -- *  AVDeviceCapabilitiesQuery *caps = NULL;
  -- *  AVOptionRanges *ranges;
  -- *  int ret;
  -- *
  -- *  if ((ret = avformat_alloc_output_context2(&oc, NULL, "opengl", NULL)) < 0)
  -- *      goto fail;
  -- *  if (avdevice_capabilities_create(&caps, oc, NULL) < 0)
  -- *      goto fail;
  -- *
  -- *  //query codecs
  -- *  if (av_opt_query_ranges(&ranges, caps, "codec", AV_OPT_MULTI_COMPONENT_RANGE)) < 0)
  -- *      goto fail;
  -- *  //pick codec here and set it
  -- *  av_opt_set(caps, "codec", AV_CODEC_ID_RAWVIDEO, 0);
  -- *
  -- *  //query format
  -- *  if (av_opt_query_ranges(&ranges, caps, "pixel_format", AV_OPT_MULTI_COMPONENT_RANGE)) < 0)
  -- *      goto fail;
  -- *  //pick format here and set it
  -- *  av_opt_set(caps, "pixel_format", AV_PIX_FMT_YUV420P, 0);
  -- *
  -- *  //query and set more capabilities
  -- *
  -- * fail:
  -- *  //clean up code
  -- *  avdevice_capabilities_free(&query, oc);
  -- *  avformat_free_context(oc);
  -- * @endcode
  --  

  --*
  -- * Structure describes device capabilities.
  -- *
  -- * It is used by devices in conjunction with av_device_capabilities AVOption table
  -- * to implement capabilities probing API based on AVOption API. Should not be used directly.
  --  

   type AVDeviceCapabilitiesQuery is record
      av_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:401
      device_context : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:402
      codec : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:403
      sample_format : aliased FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:404
      pixel_format : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:405
      sample_rate : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:406
      channels : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:407
      channel_layout : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:408
      window_width : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:409
      window_height : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:410
      frame_width : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:411
      frame_height : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:412
      fps : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:413
   end record;
   pragma Convention (C_Pass_By_Copy, AVDeviceCapabilitiesQuery);  -- /usr/include/ffmpeg/libavdevice/avdevice.h:400

  --*
  -- * AVOption table used by devices to implement device capabilities API. Should not be used by a user.
  --  

   av_device_capabilities : aliased array (size_t) of aliased FFMpeg.Low_Level.ffmpeg_libavutil_opt_h.AVOption;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:419
   pragma Import (C, av_device_capabilities, "av_device_capabilities");

  --*
  -- * Initialize capabilities probing API based on AVOption API.
  -- *
  -- * avdevice_capabilities_free() must be called when query capabilities API is
  -- * not used anymore.
  -- *
  -- * @param[out] caps      Device capabilities data. Pointer to a NULL pointer must be passed.
  -- * @param s              Context of the device.
  -- * @param device_options An AVDictionary filled with device-private options.
  -- *                       On return this parameter will be destroyed and replaced with a dict
  -- *                       containing options that were not found. May be NULL.
  -- *                       The same options must be passed later to avformat_write_header() for output
  -- *                       devices or avformat_open_input() for input devices, or at any other place
  -- *                       that affects device-private options.
  -- *
  -- * @return >= 0 on success, negative otherwise.
  --  

   function avdevice_capabilities_create
     (caps : System.Address;
      s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext;
      device_options : System.Address) return int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:438
   pragma Import (C, avdevice_capabilities_create, "avdevice_capabilities_create");

  --*
  -- * Free resources created by avdevice_capabilities_create()
  -- *
  -- * @param caps Device capabilities data to be freed.
  -- * @param s    Context of the device.
  --  

   procedure avdevice_capabilities_free (caps : System.Address; s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext);  -- /usr/include/ffmpeg/libavdevice/avdevice.h:447
   pragma Import (C, avdevice_capabilities_free, "avdevice_capabilities_free");

  --*
  -- * Structure describes basic parameters of the device.
  --  

  --*< device name, format depends on device  
   type AVDeviceInfo is record
      device_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:453
      device_description : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:454
   end record;
   pragma Convention (C_Pass_By_Copy, AVDeviceInfo);  -- /usr/include/ffmpeg/libavdevice/avdevice.h:452

  --*< human friendly name  
  --*
  -- * List of devices.
  --  

  --*< list of autodetected devices  
   type AVDeviceInfoList is record
      devices : System.Address;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:461
      nb_devices : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:462
      default_device : aliased int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:463
   end record;
   pragma Convention (C_Pass_By_Copy, AVDeviceInfoList);  -- /usr/include/ffmpeg/libavdevice/avdevice.h:460

  --*< number of autodetected devices  
  --*< index of default device or -1 if no default  
  --*
  -- * List devices.
  -- *
  -- * Returns available device names and their parameters.
  -- *
  -- * @note: Some devices may accept system-dependent device names that cannot be
  -- *        autodetected. The list returned by this function cannot be assumed to
  -- *        be always completed.
  -- *
  -- * @param s                device context.
  -- * @param[out] device_list list of autodetected devices.
  -- * @return count of autodetected devices, negative on error.
  --  

   function avdevice_list_devices (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVFormatContext; device_list : System.Address) return int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:479
   pragma Import (C, avdevice_list_devices, "avdevice_list_devices");

  --*
  -- * Convenient function to free result of avdevice_list_devices().
  -- *
  -- * @param devices device list to be freed.
  --  

   procedure avdevice_free_list_devices (device_list : System.Address);  -- /usr/include/ffmpeg/libavdevice/avdevice.h:486
   pragma Import (C, avdevice_free_list_devices, "avdevice_free_list_devices");

  --*
  -- * List devices.
  -- *
  -- * Returns available device names and their parameters.
  -- * These are convinient wrappers for avdevice_list_devices().
  -- * Device context is allocated and deallocated internally.
  -- *
  -- * @param device           device format. May be NULL if device name is set.
  -- * @param device_name      device name. May be NULL if device format is set.
  -- * @param device_options   An AVDictionary filled with device-private options. May be NULL.
  -- *                         The same options must be passed later to avformat_write_header() for output
  -- *                         devices or avformat_open_input() for input devices, or at any other place
  -- *                         that affects device-private options.
  -- * @param[out] device_list list of autodetected devices
  -- * @return count of autodetected devices, negative on error.
  -- * @note device argument takes precedence over device_name when both are set.
  --  

   function avdevice_list_input_sources
     (device : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVInputFormat;
      device_name : Interfaces.C.Strings.chars_ptr;
      device_options : System.Address;
      device_list : System.Address) return int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:505
   pragma Import (C, avdevice_list_input_sources, "avdevice_list_input_sources");

   function avdevice_list_output_sinks
     (device : access FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h.AVOutputFormat;
      device_name : Interfaces.C.Strings.chars_ptr;
      device_options : System.Address;
      device_list : System.Address) return int;  -- /usr/include/ffmpeg/libavdevice/avdevice.h:507
   pragma Import (C, avdevice_list_output_sinks, "avdevice_list_output_sinks");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h;
