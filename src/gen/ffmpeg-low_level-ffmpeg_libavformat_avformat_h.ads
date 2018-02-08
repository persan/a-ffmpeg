pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with FFMpeg.Low_Level.ffmpeg_libavformat_avio_h;
with FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h;

with Interfaces.C.Strings;
with System;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;

limited with FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h;
with Interfaces.C.Extensions;

with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_frame_h;
with Interfaces.C_Streams;

package FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h is

   --  unsupported macro: AVPROBE_SCORE_RETRY (AVPROBE_SCORE_MAX/4)
   --  unsupported macro: AVPROBE_SCORE_STREAM_RETRY (AVPROBE_SCORE_MAX/4-1)
   AVPROBE_SCORE_EXTENSION : constant := 50;  --  /usr/include/ffmpeg/libavformat/avformat.h:471
   AVPROBE_SCORE_MIME : constant := 75;  --  /usr/include/ffmpeg/libavformat/avformat.h:472
   AVPROBE_SCORE_MAX : constant := 100;  --  /usr/include/ffmpeg/libavformat/avformat.h:473

   AVPROBE_PADDING_SIZE : constant := 32;  --  /usr/include/ffmpeg/libavformat/avformat.h:475

   AVFMT_NOFILE : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:478
   AVFMT_NEEDNUMBER : constant := 16#0002#;  --  /usr/include/ffmpeg/libavformat/avformat.h:479
   AVFMT_SHOW_IDS : constant := 16#0008#;  --  /usr/include/ffmpeg/libavformat/avformat.h:480

   AVFMT_RAWPICTURE : constant := 16#0020#;  --  /usr/include/ffmpeg/libavformat/avformat.h:482

   AVFMT_GLOBALHEADER : constant := 16#0040#;  --  /usr/include/ffmpeg/libavformat/avformat.h:485
   AVFMT_NOTIMESTAMPS : constant := 16#0080#;  --  /usr/include/ffmpeg/libavformat/avformat.h:486
   AVFMT_GENERIC_INDEX : constant := 16#0100#;  --  /usr/include/ffmpeg/libavformat/avformat.h:487
   AVFMT_TS_DISCONT : constant := 16#0200#;  --  /usr/include/ffmpeg/libavformat/avformat.h:488
   AVFMT_VARIABLE_FPS : constant := 16#0400#;  --  /usr/include/ffmpeg/libavformat/avformat.h:489
   AVFMT_NODIMENSIONS : constant := 16#0800#;  --  /usr/include/ffmpeg/libavformat/avformat.h:490
   AVFMT_NOSTREAMS : constant := 16#1000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:491
   AVFMT_NOBINSEARCH : constant := 16#2000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:492
   AVFMT_NOGENSEARCH : constant := 16#4000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:493
   AVFMT_NO_BYTE_SEEK : constant := 16#8000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:494
   AVFMT_ALLOW_FLUSH : constant := 16#10000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:495
   AVFMT_TS_NONSTRICT : constant := 16#20000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:496

   AVFMT_TS_NEGATIVE : constant := 16#40000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:499

   AVFMT_SEEK_TO_PTS : constant := 16#4000000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:508

   AVINDEX_KEYFRAME : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:818
   AVINDEX_DISCARD_FRAME : constant := 16#0002#;  --  /usr/include/ffmpeg/libavformat/avformat.h:819

   AV_DISPOSITION_DEFAULT : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:827
   AV_DISPOSITION_DUB : constant := 16#0002#;  --  /usr/include/ffmpeg/libavformat/avformat.h:828
   AV_DISPOSITION_ORIGINAL : constant := 16#0004#;  --  /usr/include/ffmpeg/libavformat/avformat.h:829
   AV_DISPOSITION_COMMENT : constant := 16#0008#;  --  /usr/include/ffmpeg/libavformat/avformat.h:830
   AV_DISPOSITION_LYRICS : constant := 16#0010#;  --  /usr/include/ffmpeg/libavformat/avformat.h:831
   AV_DISPOSITION_KARAOKE : constant := 16#0020#;  --  /usr/include/ffmpeg/libavformat/avformat.h:832

   AV_DISPOSITION_FORCED : constant := 16#0040#;  --  /usr/include/ffmpeg/libavformat/avformat.h:839
   AV_DISPOSITION_HEARING_IMPAIRED : constant := 16#0080#;  --  /usr/include/ffmpeg/libavformat/avformat.h:840
   AV_DISPOSITION_VISUAL_IMPAIRED : constant := 16#0100#;  --  /usr/include/ffmpeg/libavformat/avformat.h:841
   AV_DISPOSITION_CLEAN_EFFECTS : constant := 16#0200#;  --  /usr/include/ffmpeg/libavformat/avformat.h:842

   AV_DISPOSITION_ATTACHED_PIC : constant := 16#0400#;  --  /usr/include/ffmpeg/libavformat/avformat.h:850

   AV_DISPOSITION_TIMED_THUMBNAILS : constant := 16#0800#;  --  /usr/include/ffmpeg/libavformat/avformat.h:855

   AV_DISPOSITION_CAPTIONS : constant := 16#10000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:862
   AV_DISPOSITION_DESCRIPTIONS : constant := 16#20000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:863
   AV_DISPOSITION_METADATA : constant := 16#40000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:864

   AV_PTS_WRAP_IGNORE : constant := 0;  --  /usr/include/ffmpeg/libavformat/avformat.h:869
   AV_PTS_WRAP_ADD_OFFSET : constant := 1;  --  /usr/include/ffmpeg/libavformat/avformat.h:870
   AV_PTS_WRAP_SUB_OFFSET : constant := -1;  --  /usr/include/ffmpeg/libavformat/avformat.h:871

   AVSTREAM_EVENT_FLAG_METADATA_UPDATED : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1002

   MAX_STD_TIMEBASES : constant := (30*12+30+3+6);  --  /usr/include/ffmpeg/libavformat/avformat.h:1017

   MAX_REORDER_DELAY : constant := 16;  --  /usr/include/ffmpeg/libavformat/avformat.h:1080

   AV_PROGRAM_RUNNING : constant := 1;  --  /usr/include/ffmpeg/libavformat/avformat.h:1259

   AVFMTCTX_NOHEADER : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1293

   AVFMT_FLAG_GENPTS : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1451
   AVFMT_FLAG_IGNIDX : constant := 16#0002#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1452
   AVFMT_FLAG_NONBLOCK : constant := 16#0004#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1453
   AVFMT_FLAG_IGNDTS : constant := 16#0008#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1454
   AVFMT_FLAG_NOFILLIN : constant := 16#0010#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1455
   AVFMT_FLAG_NOPARSE : constant := 16#0020#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1456
   AVFMT_FLAG_NOBUFFER : constant := 16#0040#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1457
   AVFMT_FLAG_CUSTOM_IO : constant := 16#0080#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1458
   AVFMT_FLAG_DISCARD_CORRUPT : constant := 16#0100#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1459
   AVFMT_FLAG_FLUSH_PACKETS : constant := 16#0200#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1460

   AVFMT_FLAG_BITEXACT : constant := 16#0400#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1467
   AVFMT_FLAG_MP4A_LATM : constant := 16#8000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1468
   AVFMT_FLAG_SORT_DTS : constant := 16#10000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1469
   AVFMT_FLAG_PRIV_OPT : constant := 16#20000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1470

   AVFMT_FLAG_KEEP_SIDE_DATA : constant := 16#40000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1472

   AVFMT_FLAG_FAST_SEEK : constant := 16#80000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1474
   AVFMT_FLAG_SHORTEST : constant := 16#100000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1475
   AVFMT_FLAG_AUTO_BSF : constant := 16#200000#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1476

   FF_FDEBUG_TS : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1601

   AVFMT_EVENT_FLAG_METADATA_UPDATED : constant := 16#0001#;  --  /usr/include/ffmpeg/libavformat/avformat.h:1633

   AVFMT_AVOID_NEG_TS_AUTO : constant := -1;  --  /usr/include/ffmpeg/libavformat/avformat.h:1649
   AVFMT_AVOID_NEG_TS_MAKE_NON_NEGATIVE : constant := 1;  --  /usr/include/ffmpeg/libavformat/avformat.h:1650
   AVFMT_AVOID_NEG_TS_MAKE_ZERO : constant := 2;  --  /usr/include/ffmpeg/libavformat/avformat.h:1651

   AVSEEK_FLAG_BACKWARD : constant := 1;  --  /usr/include/ffmpeg/libavformat/avformat.h:2413
   AVSEEK_FLAG_BYTE : constant := 2;  --  /usr/include/ffmpeg/libavformat/avformat.h:2414
   AVSEEK_FLAG_ANY : constant := 4;  --  /usr/include/ffmpeg/libavformat/avformat.h:2415
   AVSEEK_FLAG_FRAME : constant := 8;  --  /usr/include/ffmpeg/libavformat/avformat.h:2416

   AVSTREAM_INIT_IN_WRITE_HEADER : constant := 0;  --  /usr/include/ffmpeg/libavformat/avformat.h:2423
   AVSTREAM_INIT_IN_INIT_OUTPUT : constant := 1;  --  /usr/include/ffmpeg/libavformat/avformat.h:2424

   AV_FRAME_FILENAME_FLAGS_MULTIPLE : constant := 1;  --  /usr/include/ffmpeg/libavformat/avformat.h:2807

  -- * copyright (c) 2001 Fabrice Bellard
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
  -- * @ingroup libavf
  -- * Main libavformat public API header
  --  

  --*
  -- * @defgroup libavf libavformat
  -- * I/O and Muxing/Demuxing Library
  -- *
  -- * Libavformat (lavf) is a library for dealing with various media container
  -- * formats. Its main two purposes are demuxing - i.e. splitting a media file
  -- * into component streams, and the reverse process of muxing - writing supplied
  -- * data in a specified container format. It also has an @ref lavf_io
  -- * "I/O module" which supports a number of protocols for accessing the data (e.g.
  -- * file, tcp, http and others). Before using lavf, you need to call
  -- * av_register_all() to register all compiled muxers, demuxers and protocols.
  -- * Unless you are absolutely sure you won't use libavformat's network
  -- * capabilities, you should also call avformat_network_init().
  -- *
  -- * A supported input format is described by an AVInputFormat struct, conversely
  -- * an output format is described by AVOutputFormat. You can iterate over all
  -- * registered input/output formats using the av_iformat_next() /
  -- * av_oformat_next() functions. The protocols layer is not part of the public
  -- * API, so you can only get the names of supported protocols with the
  -- * avio_enum_protocols() function.
  -- *
  -- * Main lavf structure used for both muxing and demuxing is AVFormatContext,
  -- * which exports all information about the file being read or written. As with
  -- * most Libavformat structures, its size is not part of public ABI, so it cannot be
  -- * allocated on stack or directly with av_malloc(). To create an
  -- * AVFormatContext, use avformat_alloc_context() (some functions, like
  -- * avformat_open_input() might do that for you).
  -- *
  -- * Most importantly an AVFormatContext contains:
  -- * @li the @ref AVFormatContext.iformat "input" or @ref AVFormatContext.oformat
  -- * "output" format. It is either autodetected or set by user for input;
  -- * always set by user for output.
  -- * @li an @ref AVFormatContext.streams "array" of AVStreams, which describe all
  -- * elementary streams stored in the file. AVStreams are typically referred to
  -- * using their index in this array.
  -- * @li an @ref AVFormatContext.pb "I/O context". It is either opened by lavf or
  -- * set by user for input, always set by user for output (unless you are dealing
  -- * with an AVFMT_NOFILE format).
  -- *
  -- * @section lavf_options Passing options to (de)muxers
  -- * It is possible to configure lavf muxers and demuxers using the @ref avoptions
  -- * mechanism. Generic (format-independent) libavformat options are provided by
  -- * AVFormatContext, they can be examined from a user program by calling
  -- * av_opt_next() / av_opt_find() on an allocated AVFormatContext (or its AVClass
  -- * from avformat_get_class()). Private (format-specific) options are provided by
  -- * AVFormatContext.priv_data if and only if AVInputFormat.priv_class /
  -- * AVOutputFormat.priv_class of the corresponding format struct is non-NULL.
  -- * Further options may be provided by the @ref AVFormatContext.pb "I/O context",
  -- * if its AVClass is non-NULL, and the protocols layer. See the discussion on
  -- * nesting in @ref avoptions documentation to learn how to access those.
  -- *
  -- * @section urls
  -- * URL strings in libavformat are made of a scheme/protocol, a ':', and a
  -- * scheme specific string. URLs without a scheme and ':' used for local files
  -- * are supported but deprecated. "file:" should be used for local files.
  -- *
  -- * It is important that the scheme string is not taken from untrusted
  -- * sources without checks.
  -- *
  -- * Note that some schemes/protocols are quite powerful, allowing access to
  -- * both local and remote files, parts of them, concatenations of them, local
  -- * audio and video devices and so on.
  -- *
  -- * @{
  -- *
  -- * @defgroup lavf_decoding Demuxing
  -- * @{
  -- * Demuxers read a media file and split it into chunks of data (@em packets). A
  -- * @ref AVPacket "packet" contains one or more encoded frames which belongs to a
  -- * single elementary stream. In the lavf API this process is represented by the
  -- * avformat_open_input() function for opening a file, av_read_frame() for
  -- * reading a single packet and finally avformat_close_input(), which does the
  -- * cleanup.
  -- *
  -- * @section lavf_decoding_open Opening a media file
  -- * The minimum information required to open a file is its URL, which
  -- * is passed to avformat_open_input(), as in the following code:
  -- * @code
  -- * const char    *url = "file:in.mp3";
  -- * AVFormatContext *s = NULL;
  -- * int ret = avformat_open_input(&s, url, NULL, NULL);
  -- * if (ret < 0)
  -- *     abort();
  -- * @endcode
  -- * The above code attempts to allocate an AVFormatContext, open the
  -- * specified file (autodetecting the format) and read the header, exporting the
  -- * information stored there into s. Some formats do not have a header or do not
  -- * store enough information there, so it is recommended that you call the
  -- * avformat_find_stream_info() function which tries to read and decode a few
  -- * frames to find missing information.
  -- *
  -- * In some cases you might want to preallocate an AVFormatContext yourself with
  -- * avformat_alloc_context() and do some tweaking on it before passing it to
  -- * avformat_open_input(). One such case is when you want to use custom functions
  -- * for reading input data instead of lavf internal I/O layer.
  -- * To do that, create your own AVIOContext with avio_alloc_context(), passing
  -- * your reading callbacks to it. Then set the @em pb field of your
  -- * AVFormatContext to newly created AVIOContext.
  -- *
  -- * Since the format of the opened file is in general not known until after
  -- * avformat_open_input() has returned, it is not possible to set demuxer private
  -- * options on a preallocated context. Instead, the options should be passed to
  -- * avformat_open_input() wrapped in an AVDictionary:
  -- * @code
  -- * AVDictionary *options = NULL;
  -- * av_dict_set(&options, "video_size", "640x480", 0);
  -- * av_dict_set(&options, "pixel_format", "rgb24", 0);
  -- *
  -- * if (avformat_open_input(&s, url, NULL, &options) < 0)
  -- *     abort();
  -- * av_dict_free(&options);
  -- * @endcode
  -- * This code passes the private options 'video_size' and 'pixel_format' to the
  -- * demuxer. They would be necessary for e.g. the rawvideo demuxer, since it
  -- * cannot know how to interpret raw video data otherwise. If the format turns
  -- * out to be something different than raw video, those options will not be
  -- * recognized by the demuxer and therefore will not be applied. Such unrecognized
  -- * options are then returned in the options dictionary (recognized options are
  -- * consumed). The calling program can handle such unrecognized options as it
  -- * wishes, e.g.
  -- * @code
  -- * AVDictionaryEntry *e;
  -- * if (e = av_dict_get(options, "", NULL, AV_DICT_IGNORE_SUFFIX)) {
  -- *     fprintf(stderr, "Option %s not recognized by the demuxer.\n", e->key);
  -- *     abort();
  -- * }
  -- * @endcode
  -- *
  -- * After you have finished reading the file, you must close it with
  -- * avformat_close_input(). It will free everything associated with the file.
  -- *
  -- * @section lavf_decoding_read Reading from an opened file
  -- * Reading data from an opened AVFormatContext is done by repeatedly calling
  -- * av_read_frame() on it. Each call, if successful, will return an AVPacket
  -- * containing encoded data for one AVStream, identified by
  -- * AVPacket.stream_index. This packet may be passed straight into the libavcodec
  -- * decoding functions avcodec_send_packet() or avcodec_decode_subtitle2() if the
  -- * caller wishes to decode the data.
  -- *
  -- * AVPacket.pts, AVPacket.dts and AVPacket.duration timing information will be
  -- * set if known. They may also be unset (i.e. AV_NOPTS_VALUE for
  -- * pts/dts, 0 for duration) if the stream does not provide them. The timing
  -- * information will be in AVStream.time_base units, i.e. it has to be
  -- * multiplied by the timebase to convert them to seconds.
  -- *
  -- * If AVPacket.buf is set on the returned packet, then the packet is
  -- * allocated dynamically and the user may keep it indefinitely.
  -- * Otherwise, if AVPacket.buf is NULL, the packet data is backed by a
  -- * static storage somewhere inside the demuxer and the packet is only valid
  -- * until the next av_read_frame() call or closing the file. If the caller
  -- * requires a longer lifetime, av_dup_packet() will make an av_malloc()ed copy
  -- * of it.
  -- * In both cases, the packet must be freed with av_packet_unref() when it is no
  -- * longer needed.
  -- *
  -- * @section lavf_decoding_seek Seeking
  -- * @}
  -- *
  -- * @defgroup lavf_encoding Muxing
  -- * @{
  -- * Muxers take encoded data in the form of @ref AVPacket "AVPackets" and write
  -- * it into files or other output bytestreams in the specified container format.
  -- *
  -- * The main API functions for muxing are avformat_write_header() for writing the
  -- * file header, av_write_frame() / av_interleaved_write_frame() for writing the
  -- * packets and av_write_trailer() for finalizing the file.
  -- *
  -- * At the beginning of the muxing process, the caller must first call
  -- * avformat_alloc_context() to create a muxing context. The caller then sets up
  -- * the muxer by filling the various fields in this context:
  -- *
  -- * - The @ref AVFormatContext.oformat "oformat" field must be set to select the
  -- *   muxer that will be used.
  -- * - Unless the format is of the AVFMT_NOFILE type, the @ref AVFormatContext.pb
  -- *   "pb" field must be set to an opened IO context, either returned from
  -- *   avio_open2() or a custom one.
  -- * - Unless the format is of the AVFMT_NOSTREAMS type, at least one stream must
  -- *   be created with the avformat_new_stream() function. The caller should fill
  -- *   the @ref AVStream.codecpar "stream codec parameters" information, such as the
  -- *   codec @ref AVCodecParameters.codec_type "type", @ref AVCodecParameters.codec_id
  -- *   "id" and other parameters (e.g. width / height, the pixel or sample format,
  -- *   etc.) as known. The @ref AVStream.time_base "stream timebase" should
  -- *   be set to the timebase that the caller desires to use for this stream (note
  -- *   that the timebase actually used by the muxer can be different, as will be
  -- *   described later).
  -- * - It is advised to manually initialize only the relevant fields in
  -- *   AVCodecParameters, rather than using @ref avcodec_parameters_copy() during
  -- *   remuxing: there is no guarantee that the codec context values remain valid
  -- *   for both input and output format contexts.
  -- * - The caller may fill in additional information, such as @ref
  -- *   AVFormatContext.metadata "global" or @ref AVStream.metadata "per-stream"
  -- *   metadata, @ref AVFormatContext.chapters "chapters", @ref
  -- *   AVFormatContext.programs "programs", etc. as described in the
  -- *   AVFormatContext documentation. Whether such information will actually be
  -- *   stored in the output depends on what the container format and the muxer
  -- *   support.
  -- *
  -- * When the muxing context is fully set up, the caller must call
  -- * avformat_write_header() to initialize the muxer internals and write the file
  -- * header. Whether anything actually is written to the IO context at this step
  -- * depends on the muxer, but this function must always be called. Any muxer
  -- * private options must be passed in the options parameter to this function.
  -- *
  -- * The data is then sent to the muxer by repeatedly calling av_write_frame() or
  -- * av_interleaved_write_frame() (consult those functions' documentation for
  -- * discussion on the difference between them; only one of them may be used with
  -- * a single muxing context, they should not be mixed). Do note that the timing
  -- * information on the packets sent to the muxer must be in the corresponding
  -- * AVStream's timebase. That timebase is set by the muxer (in the
  -- * avformat_write_header() step) and may be different from the timebase
  -- * requested by the caller.
  -- *
  -- * Once all the data has been written, the caller must call av_write_trailer()
  -- * to flush any buffered packets and finalize the output file, then close the IO
  -- * context (if any) and finally free the muxing context with
  -- * avformat_free_context().
  -- * @}
  -- *
  -- * @defgroup lavf_io I/O Read/Write
  -- * @{
  -- * @section lavf_io_dirlist Directory listing
  -- * The directory listing API makes it possible to list files on remote servers.
  -- *
  -- * Some of possible use cases:
  -- * - an "open file" dialog to choose files from a remote location,
  -- * - a recursive media finder providing a player with an ability to play all
  -- * files from a given directory.
  -- *
  -- * @subsection lavf_io_dirlist_open Opening a directory
  -- * At first, a directory needs to be opened by calling avio_open_dir()
  -- * supplied with a URL and, optionally, ::AVDictionary containing
  -- * protocol-specific parameters. The function returns zero or positive
  -- * integer and allocates AVIODirContext on success.
  -- *
  -- * @code
  -- * AVIODirContext *ctx = NULL;
  -- * if (avio_open_dir(&ctx, "smb://example.com/some_dir", NULL) < 0) {
  -- *     fprintf(stderr, "Cannot open directory.\n");
  -- *     abort();
  -- * }
  -- * @endcode
  -- *
  -- * This code tries to open a sample directory using smb protocol without
  -- * any additional parameters.
  -- *
  -- * @subsection lavf_io_dirlist_read Reading entries
  -- * Each directory's entry (i.e. file, another directory, anything else
  -- * within ::AVIODirEntryType) is represented by AVIODirEntry.
  -- * Reading consecutive entries from an opened AVIODirContext is done by
  -- * repeatedly calling avio_read_dir() on it. Each call returns zero or
  -- * positive integer if successful. Reading can be stopped right after the
  -- * NULL entry has been read -- it means there are no entries left to be
  -- * read. The following code reads all entries from a directory associated
  -- * with ctx and prints their names to standard output.
  -- * @code
  -- * AVIODirEntry *entry = NULL;
  -- * for (;;) {
  -- *     if (avio_read_dir(ctx, &entry) < 0) {
  -- *         fprintf(stderr, "Cannot list directory.\n");
  -- *         abort();
  -- *     }
  -- *     if (!entry)
  -- *         break;
  -- *     printf("%s\n", entry->name);
  -- *     avio_free_directory_entry(&entry);
  -- * }
  -- * @endcode
  -- * @}
  -- *
  -- * @defgroup lavf_codec Demuxers
  -- * @{
  -- * @defgroup lavf_codec_native Native Demuxers
  -- * @{
  -- * @}
  -- * @defgroup lavf_codec_wrappers External library wrappers
  -- * @{
  -- * @}
  -- * @}
  -- * @defgroup lavf_protos I/O Protocols
  -- * @{
  -- * @}
  -- * @defgroup lavf_internal Internal
  -- * @{
  -- * @}
  -- * @}
  --  

  -- FILE  
  --*
  -- * @defgroup metadata_api Public Metadata API
  -- * @{
  -- * @ingroup libavf
  -- * The metadata API allows libavformat to export metadata tags to a client
  -- * application when demuxing. Conversely it allows a client application to
  -- * set metadata when muxing.
  -- *
  -- * Metadata is exported or set as pairs of key/value strings in the 'metadata'
  -- * fields of the AVFormatContext, AVStream, AVChapter and AVProgram structs
  -- * using the @ref lavu_dict "AVDictionary" API. Like all strings in FFmpeg,
  -- * metadata is assumed to be UTF-8 encoded Unicode. Note that metadata
  -- * exported by demuxers isn't checked to be valid UTF-8 in most cases.
  -- *
  -- * Important concepts to keep in mind:
  -- * -  Keys are unique; there can never be 2 tags with the same key. This is
  -- *    also meant semantically, i.e., a demuxer should not knowingly produce
  -- *    several keys that are literally different but semantically identical.
  -- *    E.g., key=Author5, key=Author6. In this example, all authors must be
  -- *    placed in the same tag.
  -- * -  Metadata is flat, not hierarchical; there are no subtags. If you
  -- *    want to store, e.g., the email address of the child of producer Alice
  -- *    and actor Bob, that could have key=alice_and_bobs_childs_email_address.
  -- * -  Several modifiers can be applied to the tag name. This is done by
  -- *    appending a dash character ('-') and the modifier name in the order
  -- *    they appear in the list below -- e.g. foo-eng-sort, not foo-sort-eng.
  -- *    -  language -- a tag whose value is localized for a particular language
  -- *       is appended with the ISO 639-2/B 3-letter language code.
  -- *       For example: Author-ger=Michael, Author-eng=Mike
  -- *       The original/default language is in the unqualified "Author" tag.
  -- *       A demuxer should set a default if it sets any translated tag.
  -- *    -  sorting  -- a modified version of a tag that should be used for
  -- *       sorting will have '-sort' appended. E.g. artist="The Beatles",
  -- *       artist-sort="Beatles, The".
  -- * - Some protocols and demuxers support metadata updates. After a successful
  -- *   call to av_read_packet(), AVFormatContext.event_flags or AVStream.event_flags
  -- *   will be updated to indicate if metadata changed. In order to detect metadata
  -- *   changes on a stream, you need to loop through all streams in the AVFormatContext
  -- *   and check their individual event_flags.
  -- *
  -- * -  Demuxers attempt to export metadata in a generic format, however tags
  -- *    with no generic equivalents are left as they are stored in the container.
  -- *    Follows a list of generic tag names:
  -- *
  -- @verbatim
  -- album        -- name of the set this work belongs to
  -- album_artist -- main creator of the set/album, if different from artist.
  --                 e.g. "Various Artists" for compilation albums.
  -- artist       -- main creator of the work
  -- comment      -- any additional description of the file.
  -- composer     -- who composed the work, if different from artist.
  -- copyright    -- name of copyright holder.
  -- creation_time-- date when the file was created, preferably in ISO 8601.
  -- date         -- date when the work was created, preferably in ISO 8601.
  -- disc         -- number of a subset, e.g. disc in a multi-disc collection.
  -- encoder      -- name/settings of the software/hardware that produced the file.
  -- encoded_by   -- person/group who created the file.
  -- filename     -- original name of the file.
  -- genre        -- <self-evident>.
  -- language     -- main language in which the work is performed, preferably
  --                 in ISO 639-2 format. Multiple languages can be specified by
  --                 separating them with commas.
  -- performer    -- artist who performed the work, if different from artist.
  --                 E.g for "Also sprach Zarathustra", artist would be "Richard
  --                 Strauss" and performer "London Philharmonic Orchestra".
  -- publisher    -- name of the label/publisher.
  -- service_name     -- name of the service in broadcasting (channel name).
  -- service_provider -- name of the service provider in broadcasting.
  -- title        -- name of the work.
  -- track        -- number of this work in the set, can be in form current/total.
  -- variant_bitrate -- the total bitrate of the bitrate variant that the current stream is part of
  -- @endverbatim
  -- *
  -- * Look in the examples section for an application example how to use the Metadata API.
  -- *
  -- * @}
  --  

  -- packet functions  
  --*
  -- * Allocate and read the payload of a packet and initialize its
  -- * fields with default values.
  -- *
  -- * @param s    associated IO context
  -- * @param pkt packet
  -- * @param size desired payload size
  -- * @return >0 (read size) if OK, AVERROR_xxx otherwise
  --  

   function av_get_packet
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      size : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:421
   pragma Import (C, av_get_packet, "av_get_packet");

  --*
  -- * Read data and append it to the current content of the AVPacket.
  -- * If pkt->size is 0 this is identical to av_get_packet.
  -- * Note that this uses av_grow_packet and thus involves a realloc
  -- * which is inefficient. Thus this function should only be used
  -- * when there is no reasonable way to know (an upper bound of)
  -- * the final size.
  -- *
  -- * @param s    associated IO context
  -- * @param pkt packet
  -- * @param size amount of data to read
  -- * @return >0 (read size) if OK, AVERROR_xxx otherwise, previous data
  -- *         will not be lost even if an error occurs.
  --  

   function av_append_packet
     (s : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      size : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:438
   pragma Import (C, av_append_packet, "av_append_packet");

  --*********************************************** 
  -- fractional numbers for exact pts handling  
  --*
  -- * The exact value of the fractional number is: 'val + num / den'.
  -- * num is assumed to be 0 <= num < den.
  --  

   type AVFrac is record
      val : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:449
      num : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:449
      den : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:449
   end record;
   pragma Convention (C_Pass_By_Copy, AVFrac);  -- /usr/include/ffmpeg/libavformat/avformat.h:448

  --*********************************************** 
  -- input/output formats  
   --  skipped empty struct AVCodecTag

  --*
  -- * This structure contains the data a format has to probe a file.
  --  

   type AVProbeData is record
      filename : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:462
      buf : access unsigned_char;  -- /usr/include/ffmpeg/libavformat/avformat.h:463
      buf_size : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:464
      mime_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:465
   end record;
   pragma Convention (C_Pass_By_Copy, AVProbeData);  -- /usr/include/ffmpeg/libavformat/avformat.h:461

  --*< Buffer must have AVPROBE_PADDING_SIZE of extra allocated bytes filled with zero.  
  --*< Size of buf except extra allocated bytes  
  --*< mime_type, when known.  
  --/ Demuxer will use avio_open, no opened file should be provided by the caller.
  --*
  -- * @addtogroup lavf_encoding
  -- * @{
  --  

   type AVOutputFormat is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:515
      long_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:521
      mime_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:522
      extensions : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:523
      audio_codec : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:525
      video_codec : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:526
      subtitle_codec : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:527
      flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:534
      codec_tag : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:540
      priv_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavformat/avformat.h:543
      next : access AVOutputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:552
      priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:556
      write_header : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:558
      write_packet : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:566
      write_trailer : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:567
      interleave_packet : access function 
           (arg1 : System.Address;
            arg2 : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
            arg3 : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
            arg4 : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:572
      query_codec : access function  (arg1 : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID; arg2 : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:580
      get_output_timestamp : access procedure 
           (arg1 : System.Address;
            arg2 : int;
            arg3 : access Interfaces.Integer_64;
            arg4 : access Interfaces.Integer_64);  -- /usr/include/ffmpeg/libavformat/avformat.h:583
      control_message : access function 
           (arg1 : System.Address;
            arg2 : int;
            arg3 : System.Address;
            arg4 : size_t) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:588
      write_uncoded_frame : access function 
           (arg1 : System.Address;
            arg2 : int;
            arg3 : System.Address;
            arg4 : unsigned) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:599
      get_device_list : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h.AVDeviceInfoList) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:604
      create_device_capabilities : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h.AVDeviceCapabilitiesQuery) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:609
      free_device_capabilities : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h.AVDeviceCapabilitiesQuery) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:614
      data_codec : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:615
      init : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:625
      deinit : access procedure  (arg1 : System.Address);  -- /usr/include/ffmpeg/libavformat/avformat.h:634
      check_bitstream : access function  (arg1 : System.Address; arg2 : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:640
   end record;
   pragma Convention (C_Pass_By_Copy, AVOutputFormat);  -- /usr/include/ffmpeg/libavformat/avformat.h:514

  --*
  --     * Descriptive name for the format, meant to be more human-readable
  --     * than name. You should use the NULL_IF_CONFIG_SMALL() macro
  --     * to define it.
  --      

  --*< comma-separated filename extensions  
  -- output support  
  --*< default audio codec  
  --*< default video codec  
  --*< default subtitle codec  
  --*
  --     * can use flags: AVFMT_NOFILE, AVFMT_NEEDNUMBER,
  --     * AVFMT_GLOBALHEADER, AVFMT_NOTIMESTAMPS, AVFMT_VARIABLE_FPS,
  --     * AVFMT_NODIMENSIONS, AVFMT_NOSTREAMS, AVFMT_ALLOW_FLUSH,
  --     * AVFMT_TS_NONSTRICT, AVFMT_TS_NEGATIVE
  --      

  --*
  --     * List of supported codec_id-codec_tag pairs, ordered by "better
  --     * choice first". The arrays are all terminated by AV_CODEC_ID_NONE.
  --      

  --/< AVClass for the private context
  --****************************************************************
  --     * No fields below this line are part of the public API. They
  --     * may not be used outside of libavformat and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --      

  --*
  --     * size of private data so that it can be allocated in the wrapper
  --      

  --*
  --     * Write a packet. If AVFMT_ALLOW_FLUSH is set in flags,
  --     * pkt can be NULL in order to flush data buffered in the muxer.
  --     * When flushing, return 0 if there still is more data to flush,
  --     * or 1 if everything was flushed and there is no more buffered
  --     * data.
  --      

  --*
  --     * Currently only used to set pixel format if not YUV420P.
  --      

  --*
  --     * Test if the given codec can be stored in this container.
  --     *
  --     * @return 1 if the codec is supported, 0 if it is not.
  --     *         A negative number if unknown.
  --     *         MKTAG('A', 'P', 'I', 'C') if the codec is only supported as AV_DISPOSITION_ATTACHED_PIC
  --      

  --*
  --     * Allows sending messages from application to device.
  --      

  --*
  --     * Write an uncoded AVFrame.
  --     *
  --     * See av_write_uncoded_frame() for details.
  --     *
  --     * The library will free *frame afterwards, but the muxer can prevent it
  --     * by setting the pointer to NULL.
  --      

  --*
  --     * Returns device list with it properties.
  --     * @see avdevice_list_devices() for more details.
  --      

  --*
  --     * Initialize device capabilities submodule.
  --     * @see avdevice_capabilities_create() for more details.
  --      

  --*
  --     * Free device capabilities submodule.
  --     * @see avdevice_capabilities_free() for more details.
  --      

  --*< default data codec  
  --*
  --     * Initialize format. May allocate data here, and set any AVFormatContext or
  --     * AVStream parameters that need to be set before packets are sent.
  --     * This method must not write output.
  --     *
  --     * Return 0 if streams were fully configured, 1 if not, negative AVERROR on failure
  --     *
  --     * Any allocations made here must be freed in deinit().
  --      

  --*
  --     * Deinitialize format. If present, this is called whenever the muxer is being
  --     * destroyed, regardless of whether or not the header has been written.
  --     *
  --     * If a trailer is being written, this is called after write_trailer().
  --     *
  --     * This is called if init() fails as well.
  --      

  --*
  --     * Set up any necessary bitstream filtering and extract any extra data needed
  --     * for the global header.
  --     * Return 0 if more packets from this stream must be checked; 1 if not.
  --      

  --*
  -- * @}
  --  

  --*
  -- * @addtogroup lavf_decoding
  -- * @{
  --  

  --*
  --     * A comma separated list of short names for the format. New names
  --     * may be appended with a minor bump.
  --      

   type AVInputFormat is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:655
      long_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:662
      flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:669
      extensions : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:676
      codec_tag : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:678
      priv_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavformat/avformat.h:680
      mime_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:687
      next : access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:696
      raw_codec_id : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:701
      priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:706
      read_probe : access function  (arg1 : access AVProbeData) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:713
      read_header : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:720
      read_packet : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:731
      read_close : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:737
      read_seek : access function 
           (arg1 : System.Address;
            arg2 : int;
            arg3 : Interfaces.Integer_64;
            arg4 : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:748
      read_timestamp : access function 
           (arg1 : System.Address;
            arg2 : int;
            arg3 : access Interfaces.Integer_64;
            arg4 : Interfaces.Integer_64) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:755
      read_play : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:761
      read_pause : access function  (arg1 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:767
      read_seek2 : access function 
           (arg1 : System.Address;
            arg2 : int;
            arg3 : Interfaces.Integer_64;
            arg4 : Interfaces.Integer_64;
            arg5 : Interfaces.Integer_64;
            arg6 : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:775
      get_device_list : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h.AVDeviceInfoList) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:781
      create_device_capabilities : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h.AVDeviceCapabilitiesQuery) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:787
      free_device_capabilities : access function  (arg1 : System.Address; arg2 : access FFMpeg.Low_Level.ffmpeg_libavdevice_avdevice_h.AVDeviceCapabilitiesQuery) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:793
   end record;
   pragma Convention (C_Pass_By_Copy, AVInputFormat);  -- /usr/include/ffmpeg/libavformat/avformat.h:650

  --*
  --     * Descriptive name for the format, meant to be more human-readable
  --     * than name. You should use the NULL_IF_CONFIG_SMALL() macro
  --     * to define it.
  --      

  --*
  --     * Can use flags: AVFMT_NOFILE, AVFMT_NEEDNUMBER, AVFMT_SHOW_IDS,
  --     * AVFMT_GENERIC_INDEX, AVFMT_TS_DISCONT, AVFMT_NOBINSEARCH,
  --     * AVFMT_NOGENSEARCH, AVFMT_NO_BYTE_SEEK, AVFMT_SEEK_TO_PTS.
  --      

  --*
  --     * If extensions are defined, then no probe is done. You should
  --     * usually not use extension format guessing because it is not
  --     * reliable enough
  --      

  --/< AVClass for the private context
  --*
  --     * Comma-separated list of mime types.
  --     * It is used check for matching mime types while probing.
  --     * @see av_probe_input_format2
  --      

  --****************************************************************
  --     * No fields below this line are part of the public API. They
  --     * may not be used outside of libavformat and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --      

  --*
  --     * Raw demuxers store their codec ID here.
  --      

  --*
  --     * Size of private data so that it can be allocated in the wrapper.
  --      

  --*
  --     * Tell if a given file has a chance of being parsed as this format.
  --     * The buffer provided is guaranteed to be AVPROBE_PADDING_SIZE bytes
  --     * big so you do not have to check for that unless you need more.
  --      

  --*
  --     * Read the format header and initialize the AVFormatContext
  --     * structure. Return 0 if OK. 'avformat_new_stream' should be
  --     * called to create new streams.
  --      

  --*
  --     * Read one packet and put it in 'pkt'. pts and flags are also
  --     * set. 'avformat_new_stream' can be called only if the flag
  --     * AVFMTCTX_NOHEADER is used and only in the calling thread (not in a
  --     * background thread).
  --     * @return 0 on success, < 0 on error.
  --     *         When returning an error, pkt must not have been allocated
  --     *         or must be freed before returning
  --      

  --*
  --     * Close the stream. The AVFormatContext and AVStreams are not
  --     * freed by this function
  --      

  --*
  --     * Seek to a given timestamp relative to the frames in
  --     * stream component stream_index.
  --     * @param stream_index Must not be -1.
  --     * @param flags Selects which direction should be preferred if no exact
  --     *              match is available.
  --     * @return >= 0 on success (but not necessarily the new offset)
  --      

  --*
  --     * Get the next timestamp in stream[stream_index].time_base units.
  --     * @return the timestamp or AV_NOPTS_VALUE if an error occurred
  --      

  --*
  --     * Start/resume playing - only meaningful if using a network-based format
  --     * (RTSP).
  --      

  --*
  --     * Pause playing - only meaningful if using a network-based format
  --     * (RTSP).
  --      

  --*
  --     * Seek to timestamp ts.
  --     * Seeking will be done so that the point from which all active streams
  --     * can be presented successfully will be closest to ts and within min/max_ts.
  --     * Active streams are all streams that have AVStream.discard < AVDISCARD_ALL.
  --      

  --*
  --     * Returns device list with it properties.
  --     * @see avdevice_list_devices() for more details.
  --      

  --*
  --     * Initialize device capabilities submodule.
  --     * @see avdevice_capabilities_create() for more details.
  --      

  --*
  --     * Free device capabilities submodule.
  --     * @see avdevice_capabilities_free() for more details.
  --      

  --*
  -- * @}
  --  

   subtype AVStreamParseType is unsigned;
   AVSTREAM_PARSE_NONE : constant AVStreamParseType := 0;
   AVSTREAM_PARSE_FULL : constant AVStreamParseType := 1;
   AVSTREAM_PARSE_HEADERS : constant AVStreamParseType := 2;
   AVSTREAM_PARSE_TIMESTAMPS : constant AVStreamParseType := 3;
   AVSTREAM_PARSE_FULL_ONCE : constant AVStreamParseType := 4;
   AVSTREAM_PARSE_FULL_RAW : constant AVStreamParseType := 1463898624;  -- /usr/include/ffmpeg/libavformat/avformat.h:799

  --*< full parsing and repack  
  --*< Only parse headers, do not repack.  
  --*< full parsing and interpolation of timestamps for frames not starting on a packet boundary  
  --*< full parsing and repack of the first frame only, only implemented for H.264 currently  
  --*< full parsing and repack with timestamp and position generation by parser for raw
  --                                                             this assumes that each packet in the file contains no demuxer level headers and
  --                                                             just codec level data, otherwise position generation would fail  

   type AVIndexEntry is record
      pos : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:811
      timestamp : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:812
      flags : Extensions.Signed_2;  -- /usr/include/ffmpeg/libavformat/avformat.h:822
      size : Extensions.Signed_30;  -- /usr/include/ffmpeg/libavformat/avformat.h:823
      min_distance : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:824
   end record;
   pragma Convention (C_Pass_By_Copy, AVIndexEntry);
   pragma Pack (AVIndexEntry);  -- /usr/include/ffmpeg/libavformat/avformat.h:810

  --*<
  --                               * Timestamp in AVStream.time_base units, preferably the time from which on correctly decoded frames are available
  --                               * when seeking to this entry. That means preferable PTS on keyframe based formats.
  --                               * But demuxers can choose to store a different timestamp, if it is more convenient for the implementation or nothing better
  --                               * is known
  --                                

  --Yeah, trying to keep the size of this small to reduce memory requirements (it is 24 vs. 32 bytes due to possible 8-byte alignment).
  --*< Minimum distance between this and the previous keyframe, used to avoid unneeded searching.  
  --*
  -- * Track should be used during playback by default.
  -- * Useful for subtitle track that should be displayed
  -- * even when user did not explicitly ask for subtitles.
  --  

  --*
  -- * The stream is stored in the file as an attached picture/"cover art" (e.g.
  -- * APIC frame in ID3v2). The first (usually only) packet associated with it
  -- * will be returned among the first few packets read from the file unless
  -- * seeking takes place. It can also be accessed at any time in
  -- * AVStream.attached_pic.
  --  

  --*
  -- * The stream is sparse, and contains thumbnail images, often corresponding
  -- * to chapter markers. Only ever used with AV_DISPOSITION_ATTACHED_PIC.
  --  

   --  skipped empty struct AVStreamInternal

  --*
  -- * To specify text track kind (different from subtitles default).
  --  

  --*
  -- * Options for behavior on timestamp wrap detection.
  --  

  --*
  -- * Stream structure.
  -- * New fields can be added to the end with minor version bumps.
  -- * Removal, reordering and changes to existing fields require a major
  -- * version bump.
  -- * sizeof(AVStream) must not be used outside libav*.
  --  

  --*< stream index in AVFormatContext  
   type AVStream;
   type anon_68 is record
      last_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1019
      duration_gcd : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1020
      duration_count : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1021
      rfps_duration_sum : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1022
      duration_error : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1023
      codec_info_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1024
      codec_info_duration_fields : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1025
      found_decoder : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1032
      last_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1034
      fps_first_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1039
      fps_first_dts_idx : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1040
      fps_last_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1041
      fps_last_dts_idx : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1042
   end record;
   pragma Convention (C_Pass_By_Copy, anon_68);
   type AVPacketList;
   type AVStream_pts_buffer_array is array (0 .. 16) of aliased Interfaces.Integer_64;
   type AVStream_pts_reorder_error_array is array (0 .. 16) of aliased Interfaces.Integer_64;
   type AVStream_pts_reorder_error_count_array is array (0 .. 16) of aliased Interfaces.Unsigned_8;
   type AVStream is record
      index : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:881
      id : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:887
      codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecContext;  -- /usr/include/ffmpeg/libavformat/avformat.h:893
      priv_data : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:895
      pts : aliased AVFrac;  -- /usr/include/ffmpeg/libavformat/avformat.h:902
      time_base : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:917
      start_time : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:927
      duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:937
      nb_frames : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:939
      disposition : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:941
      discard : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVDiscard;  -- /usr/include/ffmpeg/libavformat/avformat.h:943
      sample_aspect_ratio : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:950
      metadata : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:952
      avg_frame_rate : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:961
      attached_pic : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;  -- /usr/include/ffmpeg/libavformat/avformat.h:970
      side_data : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacketSideData;  -- /usr/include/ffmpeg/libavformat/avformat.h:990
      nb_side_data : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:994
      event_flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1001
      info : access anon_68;  -- /usr/include/ffmpeg/libavformat/avformat.h:1044
      pts_wrap_bits : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1046
      first_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1056
      cur_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1057
      last_IP_pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1058
      last_IP_duration : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1059
      probe_packets : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1064
      codec_info_nb_frames : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1069
      need_parsing : aliased AVStreamParseType;  -- /usr/include/ffmpeg/libavformat/avformat.h:1072
      parser : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecParserContext;  -- /usr/include/ffmpeg/libavformat/avformat.h:1073
      last_in_packet_buffer : access AVPacketList;  -- /usr/include/ffmpeg/libavformat/avformat.h:1078
      probe_data : aliased AVProbeData;  -- /usr/include/ffmpeg/libavformat/avformat.h:1079
      pts_buffer : aliased AVStream_pts_buffer_array;  -- /usr/include/ffmpeg/libavformat/avformat.h:1081
      index_entries : access AVIndexEntry;  -- /usr/include/ffmpeg/libavformat/avformat.h:1083
      nb_index_entries : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1085
      index_entries_allocated_size : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1086
      r_frame_rate : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:1099
      stream_identifier : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1106
      interleaver_chunk_size : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1108
      interleaver_chunk_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1109
      request_probe : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1118
      skip_to_keyframe : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1123
      skip_samples : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1128
      start_skip_samples : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1137
      first_discard_sample : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1145
      last_discard_sample : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1152
      nb_decoded_frames : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1158
      mux_ts_offset : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1164
      pts_wrap_reference : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1169
      pts_wrap_behavior : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1181
      update_initial_durations_done : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1186
      pts_reorder_error : aliased AVStream_pts_reorder_error_array;  -- /usr/include/ffmpeg/libavformat/avformat.h:1191
      pts_reorder_error_count : aliased AVStream_pts_reorder_error_count_array;  -- /usr/include/ffmpeg/libavformat/avformat.h:1192
      last_dts_for_order_check : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1197
      dts_ordered : aliased Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavformat/avformat.h:1198
      dts_misordered : aliased Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavformat/avformat.h:1199
      inject_global_side_data : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1204
      recommended_encoder_configuration : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1217
      display_aspect_ratio : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:1224
      priv_pts : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1226
      internal : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1232
      codecpar : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecParameters;  -- /usr/include/ffmpeg/libavformat/avformat.h:1243
   end record;
   pragma Convention (C_Pass_By_Copy, AVStream);  -- /usr/include/ffmpeg/libavformat/avformat.h:880

  --*
  --     * Format-specific stream ID.
  --     * decoding: set by libavformat
  --     * encoding: set by the user, replaced by libavformat if left unset
  --      

  --*
  --     * @deprecated use the codecpar struct instead
  --      

  --*
  --     * @deprecated this field is unused
  --      

  --*
  --     * This is the fundamental unit of time (in seconds) in terms
  --     * of which frame timestamps are represented.
  --     *
  --     * decoding: set by libavformat
  --     * encoding: May be set by the caller before avformat_write_header() to
  --     *           provide a hint to the muxer about the desired timebase. In
  --     *           avformat_write_header(), the muxer will overwrite this field
  --     *           with the timebase that will actually be used for the timestamps
  --     *           written into the file (which may or may not be related to the
  --     *           user-provided one, depending on the format).
  --      

  --*
  --     * Decoding: pts of the first frame of the stream in presentation order, in stream time base.
  --     * Only set this if you are absolutely 100% sure that the value you set
  --     * it to really is the pts of the first frame.
  --     * This may be undefined (AV_NOPTS_VALUE).
  --     * @note The ASF header does NOT contain a correct start_time the ASF
  --     * demuxer must NOT set this.
  --      

  --*
  --     * Decoding: duration of the stream, in stream time base.
  --     * If a source file does not specify a duration, but does specify
  --     * a bitrate, this value will be estimated from bitrate and file size.
  --     *
  --     * Encoding: May be set by the caller before avformat_write_header() to
  --     * provide a hint to the muxer about the estimated duration.
  --      

  --/< number of frames in this stream if known or 0
  --*< AV_DISPOSITION_* bit field  
  --/< Selects which packets can be discarded at will and do not need to be demuxed.
  --*
  --     * sample aspect ratio (0 if unknown)
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavformat.
  --      

  --*
  --     * Average framerate
  --     *
  --     * - demuxing: May be set by libavformat when creating the stream or in
  --     *             avformat_find_stream_info().
  --     * - muxing: May be set by the caller before avformat_write_header().
  --      

  --*
  --     * For streams with AV_DISPOSITION_ATTACHED_PIC disposition, this packet
  --     * will contain the attached picture.
  --     *
  --     * decoding: set by libavformat, must not be modified by the caller.
  --     * encoding: unused
  --      

  --*
  --     * An array of side data that applies to the whole stream (i.e. the
  --     * container does not allow it to change between packets).
  --     *
  --     * There may be no overlap between the side data in this array and side data
  --     * in the packets. I.e. a given side data is either exported by the muxer
  --     * (demuxing) / set by the caller (muxing) in this array, then it never
  --     * appears in the packets, or the side data is exported / sent through
  --     * the packets (always in the first packet where the value becomes known or
  --     * changes), then it does not appear in this array.
  --     *
  --     * - demuxing: Set by libavformat when the stream is created.
  --     * - muxing: May be set by the caller before avformat_write_header().
  --     *
  --     * Freed by libavformat in avformat_free_context().
  --     *
  --     * @see av_format_inject_global_side_data()
  --      

  --*
  --     * The number of elements in the AVStream.side_data array.
  --      

  --*
  --     * Flags for the user to detect events happening on the stream. Flags must
  --     * be cleared by the user once the event has been handled.
  --     * A combination of AVSTREAM_EVENT_FLAG_*.
  --      

  --****************************************************************
  --     * All fields below this line are not part of the public API. They
  --     * may not be used outside of libavformat and can be changed and
  --     * removed at will.
  --     * Internal note: be aware that physically removing these fields
  --     * will break ABI. Replace removed fields with dummy fields, and
  --     * add new fields to AVStreamInternal.
  --     *****************************************************************
  --      

  --*
  --     * Stream information used internally by avformat_find_stream_info()
  --      

  --*
  --         * 0  -> decoder has not been searched for yet.
  --         * >0 -> decoder found
  --         * <0 -> decoder with codec_id == -found_decoder has not been found
  --          

  --*
  --         * Those are used for average framerate estimation.
  --          

  --*< number of bits in pts (used for wrapping control)  
  -- Timestamp generation support:
  --*
  --     * Timestamp corresponding to the last dts sync point.
  --     *
  --     * Initialized when AVCodecParserContext.dts_sync_point >= 0 and
  --     * a DTS is received from the underlying container. Otherwise set to
  --     * AV_NOPTS_VALUE by default.
  --      

  --*
  --     * Number of packets to buffer for codec probing
  --      

  --*
  --     * Number of frames that have been demuxed during avformat_find_stream_info()
  --      

  -- av_read_frame() support  
  --*
  --     * last packet in packet_buffer for this stream when muxing.
  --      

  --*< Only used if the format does not
  --                                    support seeking natively.  

  --*
  --     * Real base framerate of the stream.
  --     * This is the lowest framerate with which all timestamps can be
  --     * represented accurately (it is the least common multiple of all
  --     * framerates in the stream). Note, this value is just a guess!
  --     * For example, if the time base is 1/90000 and all frames have either
  --     * approximately 3600 or 1800 timer ticks, then r_frame_rate will be 50/1.
  --     *
  --     * Code outside avformat should access this field using:
  --     * av_stream_get/set_r_frame_rate(stream)
  --      

  --*
  --     * Stream Identifier
  --     * This is the MPEG-TS stream identifier +1
  --     * 0 means unknown
  --      

  --*
  --     * stream probing state
  --     * -1   -> probing finished
  --     *  0   -> no probing requested
  --     * rest -> perform probing with request_probe being the minimum score to accept.
  --     * NOT PART OF PUBLIC API
  --      

  --*
  --     * Indicates that everything up to the next keyframe
  --     * should be discarded.
  --      

  --*
  --     * Number of samples to skip at the start of the frame decoded from the next packet.
  --      

  --*
  --     * If not 0, the number of samples that should be skipped from the start of
  --     * the stream (the samples are removed from packets with pts==0, which also
  --     * assumes negative timestamps do not happen).
  --     * Intended for use with formats such as mp3 with ad-hoc gapless audio
  --     * support.
  --      

  --*
  --     * If not 0, the first audio sample that should be discarded from the stream.
  --     * This is broken by design (needs global sample count), but can't be
  --     * avoided for broken by design formats such as mp3 with ad-hoc gapless
  --     * audio support.
  --      

  --*
  --     * The sample after last sample that is intended to be discarded after
  --     * first_discard_sample. Works on frame boundaries only. Used to prevent
  --     * early EOF if the gapless info is broken (considered concatenated mp3s).
  --      

  --*
  --     * Number of internally decoded frames, used internally in libavformat, do not access
  --     * its lifetime differs from info which is why it is not in that structure.
  --      

  --*
  --     * Timestamp offset added to timestamps before muxing
  --     * NOT PART OF PUBLIC API
  --      

  --*
  --     * Internal data to check for wrapping of the time stamp
  --      

  --*
  --     * Options for behavior, when a wrap is detected.
  --     *
  --     * Defined by AV_PTS_WRAP_ values.
  --     *
  --     * If correction is enabled, there are two possibilities:
  --     * If the first time stamp is near the wrap point, the wrap offset
  --     * will be subtracted, which will create negative time stamps.
  --     * Otherwise the offset will be added.
  --      

  --*
  --     * Internal data to prevent doing update_initial_durations() twice
  --      

  --*
  --     * Internal data to generate dts from pts
  --      

  --*
  --     * Internal data to analyze DTS and detect faulty mpeg streams
  --      

  --*
  --     * Internal data to inject global side data
  --      

  --****************************************************************
  --     * All fields above this line are not part of the public API.
  --     * Fields below are part of the public API and ABI again.
  --     *****************************************************************
  --      

  --*
  --     * String containing paris of key and values describing recommended encoder configuration.
  --     * Paris are separated by ','.
  --     * Keys are separated from values by '='.
  --      

  --*
  --     * display aspect ratio (0 if unknown)
  --     * - encoding: unused
  --     * - decoding: Set by libavformat to calculate sample_aspect_ratio internally
  --      

   --  skipped empty struct FFFrac

  --*
  --     * An opaque field for libavformat internal usage.
  --     * Must not be accessed in any way by callers.
  --      

  --     * Codec parameters associated with this stream. Allocated and freed by
  --     * libavformat in avformat_new_stream() and avformat_free_context()
  --     * respectively.
  --     *
  --     * - demuxing: filled by libavformat on stream creation or in
  --     *             avformat_find_stream_info()
  --     * - muxing: filled by the caller before avformat_write_header()
  --      

   function av_stream_get_r_frame_rate (s : access constant AVStream) return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:1246
   pragma Import (C, av_stream_get_r_frame_rate, "av_stream_get_r_frame_rate");

   procedure av_stream_set_r_frame_rate (s : access AVStream; r : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational);  -- /usr/include/ffmpeg/libavformat/avformat.h:1247
   pragma Import (C, av_stream_set_r_frame_rate, "av_stream_set_r_frame_rate");

   function av_stream_get_parser (s : access constant AVStream) return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecParserContext;  -- /usr/include/ffmpeg/libavformat/avformat.h:1248
   pragma Import (C, av_stream_get_parser, "av_stream_get_parser");

   function av_stream_get_recommended_encoder_configuration (s : access constant AVStream) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1249
   pragma Import (C, av_stream_get_recommended_encoder_configuration, "av_stream_get_recommended_encoder_configuration");

   procedure av_stream_set_recommended_encoder_configuration (s : access AVStream; configuration : Interfaces.C.Strings.chars_ptr);  -- /usr/include/ffmpeg/libavformat/avformat.h:1250
   pragma Import (C, av_stream_set_recommended_encoder_configuration, "av_stream_set_recommended_encoder_configuration");

  --*
  -- * Returns the pts of the last muxed packet + its duration
  -- *
  -- * the retuned value is undefined when used with a demuxer.
  --  

   function av_stream_get_end_pts (st : access constant AVStream) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1257
   pragma Import (C, av_stream_get_end_pts, "av_stream_get_end_pts");

  --*
  -- * New fields can be added to the end with minor version bumps.
  -- * Removal, reordering and changes to existing fields require a major
  -- * version bump.
  -- * sizeof(AVProgram) must not be used outside libav*.
  --  

   type AVProgram is record
      id : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1268
      flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1269
      discard : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVDiscard;  -- /usr/include/ffmpeg/libavformat/avformat.h:1270
      stream_index : access unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1271
      nb_stream_indexes : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1272
      metadata : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1273
      program_num : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1275
      pmt_pid : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1276
      pcr_pid : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1277
      start_time : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1286
      end_time : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1287
      pts_wrap_reference : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1289
      pts_wrap_behavior : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1290
   end record;
   pragma Convention (C_Pass_By_Copy, AVProgram);  -- /usr/include/ffmpeg/libavformat/avformat.h:1267

  --/< selects which program to discard and which to feed to the caller
  --****************************************************************
  --     * All fields below this line are not part of the public API. They
  --     * may not be used outside of libavformat and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --      

  --/< reference dts for wrap detection
  --/< behavior on wrap detection
  --/< unique ID to identify the chapter
   type AVChapter is record
      id : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1297
      time_base : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:1298
      start : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1299
      c_end : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1299
      metadata : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1300
   end record;
   pragma Convention (C_Pass_By_Copy, AVChapter);  -- /usr/include/ffmpeg/libavformat/avformat.h:1296

  --/< time base in which the start/end timestamps are specified
  --/< chapter start/end time in time_base units
  --*
  -- * Callback used by devices to communicate with application.
  --  

   type av_format_control_message is access function 
        (arg1 : System.Address;
         arg2 : int;
         arg3 : System.Address;
         arg4 : size_t) return int;
   pragma Convention (C, av_format_control_message);  -- /usr/include/ffmpeg/libavformat/avformat.h:1307

   type AVOpenCallback is access function 
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : int;
         arg5 : access constant FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOInterruptCB;
         arg6 : System.Address) return int;
   pragma Convention (C, AVOpenCallback);  -- /usr/include/ffmpeg/libavformat/avformat.h:1310

  --*
  -- * The duration of a video can be estimated through various ways, and this enum can be used
  -- * to know how the duration was estimated.
  --  

   type AVDurationEstimationMethod is 
     (AVFMT_DURATION_FROM_PTS,
      AVFMT_DURATION_FROM_STREAM,
      AVFMT_DURATION_FROM_BITRATE);
   pragma Convention (C, AVDurationEstimationMethod);  -- /usr/include/ffmpeg/libavformat/avformat.h:1317

  --/< Duration accurately estimated from PTSes
  --/< Duration estimated from a stream with a known duration
  --/< Duration estimated from bitrate (less accurate)
   --  skipped empty struct AVFormatInternal

  --*
  -- * Format I/O context.
  -- * New fields can be added to the end with minor version bumps.
  -- * Removal, reordering and changes to existing fields require a major
  -- * version bump.
  -- * sizeof(AVFormatContext) must not be used outside libav*, use
  -- * avformat_alloc_context() to create an AVFormatContext.
  -- *
  -- * Fields can be accessed through AVOptions (av_opt*),
  -- * the name string used matches the associated command line parameter name and
  -- * can be found in libavformat/options_table.h.
  -- * The AVOption/command line parameter names differ in some cases from the C
  -- * structure field names for historic reasons or brevity.
  --  

  --*
  --     * A class for logging and @ref avoptions. Set by avformat_alloc_context().
  --     * Exports (de)muxer private options if they exist.
  --      

   subtype AVFormatContext_filename_array is Interfaces.C.char_array (0 .. 1023);
   type AVFormatContext is record
      av_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavformat/avformat.h:1344
      iformat : access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:1351
      oformat : access AVOutputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:1358
      priv_data : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1367
      pb : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;  -- /usr/include/ffmpeg/libavformat/avformat.h:1381
      ctx_flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1388
      nb_streams : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1395
      streams : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1407
      filename : aliased AVFormatContext_filename_array;  -- /usr/include/ffmpeg/libavformat/avformat.h:1415
      start_time : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1424
      duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1434
      bit_rate : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1441
      packet_size : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1443
      max_delay : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1444
      flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1450
      probesize : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1483
      max_analyze_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1491
      key : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavformat/avformat.h:1493
      keylen : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1494
      nb_programs : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1496
      programs : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1497
      video_codec_id : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:1503
      audio_codec_id : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:1509
      subtitle_codec_id : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:1515
      max_index_size : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1527
      max_picture_buffer : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1533
      nb_chapters : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1546
      chapters : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1547
      metadata : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1557
      start_time_realtime : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1570
      fps_probe_size : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1577
      error_recognition : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1584
      interrupt_callback : aliased FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOInterruptCB;  -- /usr/include/ffmpeg/libavformat/avformat.h:1595
      debug : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1600
      max_interleave_delta : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1619
      strict_std_compliance : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1625
      event_flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1632
      max_ts_probe : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1639
      avoid_negative_ts : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1648
      ts_id : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1657
      audio_preload : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1665
      max_chunk_duration : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1673
      max_chunk_size : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1681
      use_wallclock_as_timestamps : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1689
      avio_flags : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1696
      duration_estimation_method : aliased AVDurationEstimationMethod;  -- /usr/include/ffmpeg/libavformat/avformat.h:1704
      skip_initial_bytes : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1711
      correct_ts_overflow : aliased unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1718
      seek2any : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1725
      flush_packets : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1732
      probe_score : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1741
      format_probesize : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1748
      codec_whitelist : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1756
      format_whitelist : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1764
      internal : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1770
      io_repositioned : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1778
      video_codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1786
      audio_codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1794
      subtitle_codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1802
      data_codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1810
      metadata_header_padding : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1817
      opaque : System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1823
      control_message_cb : av_format_control_message;  -- /usr/include/ffmpeg/libavformat/avformat.h:1828
      output_ts_offset : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavformat/avformat.h:1834
      dump_separator : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavformat/avformat.h:1842
      data_codec_id : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:1848
      open_cb : access function 
           (arg1 : access AVFormatContext;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int;
            arg5 : access constant FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOInterruptCB;
            arg6 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1869
      protocol_whitelist : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1877
      io_open : access function 
           (arg1 : access AVFormatContext;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int;
            arg5 : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1900
      io_close : access procedure  (arg1 : access AVFormatContext; arg2 : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext);  -- /usr/include/ffmpeg/libavformat/avformat.h:1905
      protocol_blacklist : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1912
      max_streams : aliased int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1919
   end record;
   pragma Convention (C_Pass_By_Copy, AVFormatContext);  -- /usr/include/ffmpeg/libavformat/avformat.h:1339

  --*
  --     * The input container format.
  --     *
  --     * Demuxing only, set by avformat_open_input().
  --      

  --*
  --     * The output container format.
  --     *
  --     * Muxing only, must be set by the caller before avformat_write_header().
  --      

  --*
  --     * Format private data. This is an AVOptions-enabled struct
  --     * if and only if iformat/oformat.priv_class is not NULL.
  --     *
  --     * - muxing: set by avformat_write_header()
  --     * - demuxing: set by avformat_open_input()
  --      

  --*
  --     * I/O context.
  --     *
  --     * - demuxing: either set by the user before avformat_open_input() (then
  --     *             the user must close it manually) or set by avformat_open_input().
  --     * - muxing: set by the user before avformat_write_header(). The caller must
  --     *           take care of closing / freeing the IO context.
  --     *
  --     * Do NOT set this field if AVFMT_NOFILE flag is set in
  --     * iformat/oformat.flags. In such a case, the (de)muxer will handle
  --     * I/O in some other way and this field will be NULL.
  --      

  -- stream info  
  --*
  --     * Flags signalling stream properties. A combination of AVFMTCTX_*.
  --     * Set by libavformat.
  --      

  --*
  --     * Number of elements in AVFormatContext.streams.
  --     *
  --     * Set by avformat_new_stream(), must not be modified by any other code.
  --      

  --*
  --     * A list of all streams in the file. New streams are created with
  --     * avformat_new_stream().
  --     *
  --     * - demuxing: streams are created by libavformat in avformat_open_input().
  --     *             If AVFMTCTX_NOHEADER is set in ctx_flags, then new streams may also
  --     *             appear in av_read_frame().
  --     * - muxing: streams are created by the user before avformat_write_header().
  --     *
  --     * Freed by libavformat in avformat_free_context().
  --      

  --*
  --     * input or output filename
  --     *
  --     * - demuxing: set by avformat_open_input()
  --     * - muxing: may be set by the caller before avformat_write_header()
  --      

  --*
  --     * Position of the first frame of the component, in
  --     * AV_TIME_BASE fractional seconds. NEVER set this value directly:
  --     * It is deduced from the AVStream values.
  --     *
  --     * Demuxing only, set by libavformat.
  --      

  --*
  --     * Duration of the stream, in AV_TIME_BASE fractional
  --     * seconds. Only set this value if you know none of the individual stream
  --     * durations and also do not set any of them. This is deduced from the
  --     * AVStream values if not set.
  --     *
  --     * Demuxing only, set by libavformat.
  --      

  --*
  --     * Total stream bitrate in bit/s, 0 if not
  --     * available. Never set it directly if the file_size and the
  --     * duration are known as FFmpeg can compute it automatically.
  --      

  --*
  --     * Flags modifying the (de)muxer behaviour. A combination of AVFMT_FLAG_*.
  --     * Set by the user before avformat_open_input() / avformat_write_header().
  --      

  --*
  -- * When muxing, try to avoid writing any random/volatile data to the output.
  -- * This includes any random IDs, real-time timestamps/dates, muxer version, etc.
  -- *
  -- * This flag is mainly intended for testing.
  --  

  --*
  --     * Maximum size of the data read from input for determining
  --     * the input container format.
  --     * Demuxing only, set by the caller before avformat_open_input().
  --      

  --*
  --     * Maximum duration (in AV_TIME_BASE units) of the data read
  --     * from input in avformat_find_stream_info().
  --     * Demuxing only, set by the caller before avformat_find_stream_info().
  --     * Can be set to 0 to let avformat choose using a heuristic.
  --      

  --*
  --     * Forced video codec_id.
  --     * Demuxing: Set by user.
  --      

  --*
  --     * Forced audio codec_id.
  --     * Demuxing: Set by user.
  --      

  --*
  --     * Forced subtitle codec_id.
  --     * Demuxing: Set by user.
  --      

  --*
  --     * Maximum amount of memory in bytes to use for the index of each stream.
  --     * If the index exceeds this size, entries will be discarded as
  --     * needed to maintain a smaller size. This can lead to slower or less
  --     * accurate seeking (depends on demuxer).
  --     * Demuxers for which a full in-memory index is mandatory will ignore
  --     * this.
  --     * - muxing: unused
  --     * - demuxing: set by user
  --      

  --*
  --     * Maximum amount of memory in bytes to use for buffering frames
  --     * obtained from realtime capture devices.
  --      

  --*
  --     * Number of chapters in AVChapter array.
  --     * When muxing, chapters are normally written in the file header,
  --     * so nb_chapters should normally be initialized before write_header
  --     * is called. Some muxers (e.g. mov and mkv) can also write chapters
  --     * in the trailer.  To write chapters in the trailer, nb_chapters
  --     * must be zero when write_header is called and non-zero when
  --     * write_trailer is called.
  --     * - muxing: set by user
  --     * - demuxing: set by libavformat
  --      

  --*
  --     * Metadata that applies to the whole file.
  --     *
  --     * - demuxing: set by libavformat in avformat_open_input()
  --     * - muxing: may be set by the caller before avformat_write_header()
  --     *
  --     * Freed by libavformat in avformat_free_context().
  --      

  --*
  --     * Start time of the stream in real world time, in microseconds
  --     * since the Unix epoch (00:00 1st January 1970). That is, pts=0 in the
  --     * stream was captured at this real world time.
  --     * - muxing: Set by the caller before avformat_write_header(). If set to
  --     *           either 0 or AV_NOPTS_VALUE, then the current wall-time will
  --     *           be used.
  --     * - demuxing: Set by libavformat. AV_NOPTS_VALUE if unknown. Note that
  --     *             the value may become known after some number of frames
  --     *             have been received.
  --      

  --*
  --     * The number of frames used for determining the framerate in
  --     * avformat_find_stream_info().
  --     * Demuxing only, set by the caller before avformat_find_stream_info().
  --      

  --*
  --     * Error recognition; higher values will detect more errors but may
  --     * misdetect some more or less valid parts as errors.
  --     * Demuxing only, set by the caller before avformat_open_input().
  --      

  --*
  --     * Custom interrupt callbacks for the I/O layer.
  --     *
  --     * demuxing: set by the user before avformat_open_input().
  --     * muxing: set by the user before avformat_write_header()
  --     * (mainly useful for AVFMT_NOFILE formats). The callback
  --     * should also be passed to avio_open2() if it's used to
  --     * open the file.
  --      

  --*
  --     * Flags to enable debugging.
  --      

  --*
  --     * Maximum buffering duration for interleaving.
  --     *
  --     * To ensure all the streams are interleaved correctly,
  --     * av_interleaved_write_frame() will wait until it has at least one packet
  --     * for each stream before actually writing any packets to the output file.
  --     * When some streams are "sparse" (i.e. there are large gaps between
  --     * successive packets), this can result in excessive buffering.
  --     *
  --     * This field specifies the maximum difference between the timestamps of the
  --     * first and the last packet in the muxing queue, above which libavformat
  --     * will output a packet regardless of whether it has queued a packet for all
  --     * the streams.
  --     *
  --     * Muxing only, set by the caller before avformat_write_header().
  --      

  --*
  --     * Allow non-standard and experimental extension
  --     * @see AVCodecContext.strict_std_compliance
  --      

  --*
  --     * Flags for the user to detect events happening on the file. Flags must
  --     * be cleared by the user once the event has been handled.
  --     * A combination of AVFMT_EVENT_FLAG_*.
  --      

  --*
  --     * Maximum number of packets to read while waiting for the first timestamp.
  --     * Decoding only.
  --      

  --*
  --     * Avoid negative timestamps during muxing.
  --     * Any value of the AVFMT_AVOID_NEG_TS_* constants.
  --     * Note, this only works when using av_interleaved_write_frame. (interleave_packet_per_dts is in use)
  --     * - muxing: Set by user
  --     * - demuxing: unused
  --      

  --*
  --     * Transport stream id.
  --     * This will be moved into demuxer private options. Thus no API/ABI compatibility
  --      

  --*
  --     * Audio preload in microseconds.
  --     * Note, not all formats support this and unpredictable things may happen if it is used when not supported.
  --     * - encoding: Set by user
  --     * - decoding: unused
  --      

  --*
  --     * Max chunk time in microseconds.
  --     * Note, not all formats support this and unpredictable things may happen if it is used when not supported.
  --     * - encoding: Set by user
  --     * - decoding: unused
  --      

  --*
  --     * Max chunk size in bytes
  --     * Note, not all formats support this and unpredictable things may happen if it is used when not supported.
  --     * - encoding: Set by user
  --     * - decoding: unused
  --      

  --*
  --     * forces the use of wallclock timestamps as pts/dts of packets
  --     * This has undefined results in the presence of B frames.
  --     * - encoding: unused
  --     * - decoding: Set by user
  --      

  --*
  --     * avio flags, used to force AVIO_FLAG_DIRECT.
  --     * - encoding: unused
  --     * - decoding: Set by user
  --      

  --*
  --     * The duration field can be estimated through various ways, and this field can be used
  --     * to know how the duration was estimated.
  --     * - encoding: unused
  --     * - decoding: Read by user
  --      

  --*
  --     * Skip initial bytes when opening stream
  --     * - encoding: unused
  --     * - decoding: Set by user
  --      

  --*
  --     * Correct single timestamp overflows
  --     * - encoding: unused
  --     * - decoding: Set by user
  --      

  --*
  --     * Force seeking to any (also non key) frames.
  --     * - encoding: unused
  --     * - decoding: Set by user
  --      

  --*
  --     * Flush the I/O context after each packet.
  --     * - encoding: Set by user
  --     * - decoding: unused
  --      

  --*
  --     * format probing score.
  --     * The maximal score is AVPROBE_SCORE_MAX, its set when the demuxer probes
  --     * the format.
  --     * - encoding: unused
  --     * - decoding: set by avformat, read by user
  --      

  --*
  --     * number of bytes to read maximally to identify format.
  --     * - encoding: unused
  --     * - decoding: set by user
  --      

  --*
  --     * ',' separated list of allowed decoders.
  --     * If NULL then all are allowed
  --     * - encoding: unused
  --     * - decoding: set by user
  --      

  --*
  --     * ',' separated list of allowed demuxers.
  --     * If NULL then all are allowed
  --     * - encoding: unused
  --     * - decoding: set by user
  --      

  --*
  --     * An opaque field for libavformat internal usage.
  --     * Must not be accessed in any way by callers.
  --      

  --*
  --     * IO repositioned flag.
  --     * This is set by avformat when the underlaying IO context read pointer
  --     * is repositioned, for example when doing byte based seeking.
  --     * Demuxers can use the flag to detect such changes.
  --      

  --*
  --     * Forced video codec.
  --     * This allows forcing a specific decoder, even when there are multiple with
  --     * the same codec_id.
  --     * Demuxing: Set by user
  --      

  --*
  --     * Forced audio codec.
  --     * This allows forcing a specific decoder, even when there are multiple with
  --     * the same codec_id.
  --     * Demuxing: Set by user
  --      

  --*
  --     * Forced subtitle codec.
  --     * This allows forcing a specific decoder, even when there are multiple with
  --     * the same codec_id.
  --     * Demuxing: Set by user
  --      

  --*
  --     * Forced data codec.
  --     * This allows forcing a specific decoder, even when there are multiple with
  --     * the same codec_id.
  --     * Demuxing: Set by user
  --      

  --*
  --     * Number of bytes to be written as padding in a metadata header.
  --     * Demuxing: Unused.
  --     * Muxing: Set by user via av_format_set_metadata_header_padding.
  --      

  --*
  --     * User data.
  --     * This is a place for some private data of the user.
  --      

  --*
  --     * Callback used by devices to communicate with application.
  --      

  --*
  --     * Output timestamp offset, in microseconds.
  --     * Muxing: set by user
  --      

  --*
  --     * dump format separator.
  --     * can be ", " or "\n      " or anything else
  --     * - muxing: Set by user.
  --     * - demuxing: Set by user.
  --      

  --*
  --     * Forced Data codec_id.
  --     * Demuxing: Set by user.
  --      

  --*
  --     * Called to open further IO contexts when needed for demuxing.
  --     *
  --     * This can be set by the user application to perform security checks on
  --     * the URLs before opening them.
  --     * The function should behave like avio_open2(), AVFormatContext is provided
  --     * as contextual information and to reach AVFormatContext.opaque.
  --     *
  --     * If NULL then some simple checks are used together with avio_open2().
  --     *
  --     * Must not be accessed directly from outside avformat.
  --     * @See av_format_set_open_cb()
  --     *
  --     * Demuxing: Set by user.
  --     *
  --     * @deprecated Use io_open and io_close.
  --      

  --*
  --     * ',' separated list of allowed protocols.
  --     * - encoding: unused
  --     * - decoding: set by user
  --      

  --     * A callback for opening new IO streams.
  --     *
  --     * Whenever a muxer or a demuxer needs to open an IO stream (typically from
  --     * avformat_open_input() for demuxers, but for certain formats can happen at
  --     * other times as well), it will call this callback to obtain an IO context.
  --     *
  --     * @param s the format context
  --     * @param pb on success, the newly opened IO context should be returned here
  --     * @param url the url to open
  --     * @param flags a combination of AVIO_FLAG_*
  --     * @param options a dictionary of additional options, with the same
  --     *                semantics as in avio_open2()
  --     * @return 0 on success, a negative AVERROR code on failure
  --     *
  --     * @note Certain muxers and demuxers do nesting, i.e. they open one or more
  --     * additional internal format contexts. Thus the AVFormatContext pointer
  --     * passed to this callback may be different from the one facing the caller.
  --     * It will, however, have the same 'opaque' field.
  --      

  --*
  --     * A callback for closing the streams opened with AVFormatContext.io_open().
  --      

  --*
  --     * ',' separated list of disallowed protocols.
  --     * - encoding: unused
  --     * - decoding: set by user
  --      

  --*
  --     * The maximum number of streams.
  --     * - encoding: unused
  --     * - decoding: set by user
  --      

  --*
  -- * Accessors for some AVFormatContext fields. These used to be provided for ABI
  -- * compatibility, and do not need to be used anymore.
  --  

   function av_format_get_probe_score (s : access constant AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1926
   pragma Import (C, av_format_get_probe_score, "av_format_get_probe_score");

   function av_format_get_video_codec (s : access constant AVFormatContext) return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1927
   pragma Import (C, av_format_get_video_codec, "av_format_get_video_codec");

   procedure av_format_set_video_codec (s : access AVFormatContext; c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec);  -- /usr/include/ffmpeg/libavformat/avformat.h:1928
   pragma Import (C, av_format_set_video_codec, "av_format_set_video_codec");

   function av_format_get_audio_codec (s : access constant AVFormatContext) return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1929
   pragma Import (C, av_format_get_audio_codec, "av_format_get_audio_codec");

   procedure av_format_set_audio_codec (s : access AVFormatContext; c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec);  -- /usr/include/ffmpeg/libavformat/avformat.h:1930
   pragma Import (C, av_format_set_audio_codec, "av_format_set_audio_codec");

   function av_format_get_subtitle_codec (s : access constant AVFormatContext) return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1931
   pragma Import (C, av_format_get_subtitle_codec, "av_format_get_subtitle_codec");

   procedure av_format_set_subtitle_codec (s : access AVFormatContext; c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec);  -- /usr/include/ffmpeg/libavformat/avformat.h:1932
   pragma Import (C, av_format_set_subtitle_codec, "av_format_set_subtitle_codec");

   function av_format_get_data_codec (s : access constant AVFormatContext) return access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec;  -- /usr/include/ffmpeg/libavformat/avformat.h:1933
   pragma Import (C, av_format_get_data_codec, "av_format_get_data_codec");

   procedure av_format_set_data_codec (s : access AVFormatContext; c : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec);  -- /usr/include/ffmpeg/libavformat/avformat.h:1934
   pragma Import (C, av_format_set_data_codec, "av_format_set_data_codec");

   function av_format_get_metadata_header_padding (s : access constant AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:1935
   pragma Import (C, av_format_get_metadata_header_padding, "av_format_get_metadata_header_padding");

   procedure av_format_set_metadata_header_padding (s : access AVFormatContext; c : int);  -- /usr/include/ffmpeg/libavformat/avformat.h:1936
   pragma Import (C, av_format_set_metadata_header_padding, "av_format_set_metadata_header_padding");

   function av_format_get_opaque (s : access constant AVFormatContext) return System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:1937
   pragma Import (C, av_format_get_opaque, "av_format_get_opaque");

   procedure av_format_set_opaque (s : access AVFormatContext; opaque : System.Address);  -- /usr/include/ffmpeg/libavformat/avformat.h:1938
   pragma Import (C, av_format_set_opaque, "av_format_set_opaque");

   function av_format_get_control_message_cb (s : access constant AVFormatContext) return av_format_control_message;  -- /usr/include/ffmpeg/libavformat/avformat.h:1939
   pragma Import (C, av_format_get_control_message_cb, "av_format_get_control_message_cb");

   procedure av_format_set_control_message_cb (s : access AVFormatContext; callback : av_format_control_message);  -- /usr/include/ffmpeg/libavformat/avformat.h:1940
   pragma Import (C, av_format_set_control_message_cb, "av_format_set_control_message_cb");

   function av_format_get_open_cb (s : access constant AVFormatContext) return AVOpenCallback;  -- /usr/include/ffmpeg/libavformat/avformat.h:1942
   pragma Import (C, av_format_get_open_cb, "av_format_get_open_cb");

   procedure av_format_set_open_cb (s : access AVFormatContext; callback : AVOpenCallback);  -- /usr/include/ffmpeg/libavformat/avformat.h:1943
   pragma Import (C, av_format_set_open_cb, "av_format_set_open_cb");

  --*
  -- * This function will cause global side data to be injected in the next packet
  -- * of each stream as well as after any subsequent seek.
  --  

   procedure av_format_inject_global_side_data (s : access AVFormatContext);  -- /usr/include/ffmpeg/libavformat/avformat.h:1950
   pragma Import (C, av_format_inject_global_side_data, "av_format_inject_global_side_data");

  --*
  -- * Returns the method used to set ctx->duration.
  -- *
  -- * @return AVFMT_DURATION_FROM_PTS, AVFMT_DURATION_FROM_STREAM, or AVFMT_DURATION_FROM_BITRATE.
  --  

   function av_fmt_ctx_get_duration_estimation_method (ctx : access constant AVFormatContext) return AVDurationEstimationMethod;  -- /usr/include/ffmpeg/libavformat/avformat.h:1957
   pragma Import (C, av_fmt_ctx_get_duration_estimation_method, "av_fmt_ctx_get_duration_estimation_method");

   type AVPacketList is record
      pkt : aliased FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;  -- /usr/include/ffmpeg/libavformat/avformat.h:1960
      next : access AVPacketList;  -- /usr/include/ffmpeg/libavformat/avformat.h:1961
   end record;
   pragma Convention (C_Pass_By_Copy, AVPacketList);  -- /usr/include/ffmpeg/libavformat/avformat.h:1959

  --*
  -- * @defgroup lavf_core Core functions
  -- * @ingroup libavf
  -- *
  -- * Functions for querying libavformat capabilities, allocating core structures,
  -- * etc.
  -- * @{
  --  

  --*
  -- * Return the LIBAVFORMAT_VERSION_INT constant.
  --  

   function avformat_version return unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:1977
   pragma Import (C, avformat_version, "avformat_version");

  --*
  -- * Return the libavformat build-time configuration.
  --  

   function avformat_configuration return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1982
   pragma Import (C, avformat_configuration, "avformat_configuration");

  --*
  -- * Return the libavformat license.
  --  

   function avformat_license return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavformat/avformat.h:1987
   pragma Import (C, avformat_license, "avformat_license");

  --*
  -- * Initialize libavformat and register all the muxers, demuxers and
  -- * protocols. If you do not call this function, then you can select
  -- * exactly which formats you want to support.
  -- *
  -- * @see av_register_input_format()
  -- * @see av_register_output_format()
  --  

   procedure av_register_all;  -- /usr/include/ffmpeg/libavformat/avformat.h:1997
   pragma Import (C, av_register_all, "av_register_all");

   procedure av_register_input_format (format : access AVInputFormat);  -- /usr/include/ffmpeg/libavformat/avformat.h:1999
   pragma Import (C, av_register_input_format, "av_register_input_format");

   procedure av_register_output_format (format : access AVOutputFormat);  -- /usr/include/ffmpeg/libavformat/avformat.h:2000
   pragma Import (C, av_register_output_format, "av_register_output_format");

  --*
  -- * Do global initialization of network components. This is optional,
  -- * but recommended, since it avoids the overhead of implicitly
  -- * doing the setup for each session.
  -- *
  -- * Calling this function will become mandatory if using network
  -- * protocols at some major version bump.
  --  

   function avformat_network_init return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2010
   pragma Import (C, avformat_network_init, "avformat_network_init");

  --*
  -- * Undo the initialization done by avformat_network_init.
  --  

   function avformat_network_deinit return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2015
   pragma Import (C, avformat_network_deinit, "avformat_network_deinit");

  --*
  -- * If f is NULL, returns the first registered input format,
  -- * if f is non-NULL, returns the next registered input format after f
  -- * or NULL if f is the last one.
  --  

   function av_iformat_next (f : access constant AVInputFormat) return access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2022
   pragma Import (C, av_iformat_next, "av_iformat_next");

  --*
  -- * If f is NULL, returns the first registered output format,
  -- * if f is non-NULL, returns the next registered output format after f
  -- * or NULL if f is the last one.
  --  

   function av_oformat_next (f : access constant AVOutputFormat) return access AVOutputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2029
   pragma Import (C, av_oformat_next, "av_oformat_next");

  --*
  -- * Allocate an AVFormatContext.
  -- * avformat_free_context() can be used to free the context and everything
  -- * allocated by the framework within it.
  --  

   function avformat_alloc_context return access AVFormatContext;  -- /usr/include/ffmpeg/libavformat/avformat.h:2036
   pragma Import (C, avformat_alloc_context, "avformat_alloc_context");

  --*
  -- * Free an AVFormatContext and all its streams.
  -- * @param s context to free
  --  

   procedure avformat_free_context (s : access AVFormatContext);  -- /usr/include/ffmpeg/libavformat/avformat.h:2042
   pragma Import (C, avformat_free_context, "avformat_free_context");

  --*
  -- * Get the AVClass for AVFormatContext. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see av_opt_find().
  --  

   function avformat_get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavformat/avformat.h:2050
   pragma Import (C, avformat_get_class, "avformat_get_class");

  --*
  -- * Add a new stream to a media file.
  -- *
  -- * When demuxing, it is called by the demuxer in read_header(). If the
  -- * flag AVFMTCTX_NOHEADER is set in s.ctx_flags, then it may also
  -- * be called in read_packet().
  -- *
  -- * When muxing, should be called by the user before avformat_write_header().
  -- *
  -- * User is required to call avcodec_close() and avformat_free_context() to
  -- * clean up the allocation by avformat_new_stream().
  -- *
  -- * @param s media file handle
  -- * @param c If non-NULL, the AVCodecContext corresponding to the new stream
  -- * will be initialized to use this codec. This is needed for e.g. codec-specific
  -- * defaults to be set, so codec should be provided if it is known.
  -- *
  -- * @return newly created stream or NULL on error.
  --  

   function avformat_new_stream (s : access AVFormatContext; c : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodec) return access AVStream;  -- /usr/include/ffmpeg/libavformat/avformat.h:2071
   pragma Import (C, avformat_new_stream, "avformat_new_stream");

  --*
  -- * Wrap an existing array as stream side data.
  -- *
  -- * @param st stream
  -- * @param type side information type
  -- * @param data the side data array. It must be allocated with the av_malloc()
  -- *             family of functions. The ownership of the data is transferred to
  -- *             st.
  -- * @param size side information size
  -- * @return zero on success, a negative AVERROR code on failure. On failure,
  -- *         the stream is unchanged and the data remains owned by the caller.
  --  

   function av_stream_add_side_data
     (st : access AVStream;
      c_type : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacketSideDataType;
      data : access Interfaces.Unsigned_8;
      size : size_t) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2085
   pragma Import (C, av_stream_add_side_data, "av_stream_add_side_data");

  --*
  -- * Allocate new information from stream.
  -- *
  -- * @param stream stream
  -- * @param type desired side information type
  -- * @param size side information size
  -- * @return pointer to fresh allocated data or NULL otherwise
  --  

   function av_stream_new_side_data
     (stream : access AVStream;
      c_type : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacketSideDataType;
      size : int) return access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavformat/avformat.h:2096
   pragma Import (C, av_stream_new_side_data, "av_stream_new_side_data");

  --*
  -- * Get side information from stream.
  -- *
  -- * @param stream stream
  -- * @param type desired side information type
  -- * @param size pointer for side information size to store (optional)
  -- * @return pointer to data if present or NULL otherwise
  --  

   function av_stream_get_side_data
     (stream : access AVStream;
      c_type : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacketSideDataType;
      size : access int) return access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavformat/avformat.h:2107
   pragma Import (C, av_stream_get_side_data, "av_stream_get_side_data");

   function av_new_program (s : access AVFormatContext; id : int) return access AVProgram;  -- /usr/include/ffmpeg/libavformat/avformat.h:2114
   pragma Import (C, av_new_program, "av_new_program");

  --*
  -- * @}
  --  

  --*
  -- * Allocate an AVFormatContext for an output format.
  -- * avformat_free_context() can be used to free the context and
  -- * everything allocated by the framework within it.
  -- *
  -- * @param *ctx is set to the created format context, or to NULL in
  -- * case of failure
  -- * @param oformat format to use for allocating the context, if NULL
  -- * format_name and filename are used instead
  -- * @param format_name the name of output format to use for allocating the
  -- * context, if NULL filename is used instead
  -- * @param filename the name of the filename to use for allocating the
  -- * context, may be NULL
  -- * @return >= 0 in case of success, a negative AVERROR code in case of
  -- * failure
  --  

   function avformat_alloc_output_context2
     (ctx : System.Address;
      oformat : access AVOutputFormat;
      format_name : Interfaces.C.Strings.chars_ptr;
      filename : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2137
   pragma Import (C, avformat_alloc_output_context2, "avformat_alloc_output_context2");

  --*
  -- * @addtogroup lavf_decoding
  -- * @{
  --  

  --*
  -- * Find AVInputFormat based on the short name of the input format.
  --  

   function av_find_input_format (short_name : Interfaces.C.Strings.chars_ptr) return access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2148
   pragma Import (C, av_find_input_format, "av_find_input_format");

  --*
  -- * Guess the file format.
  -- *
  -- * @param pd        data to be probed
  -- * @param is_opened Whether the file is already opened; determines whether
  -- *                  demuxers with or without AVFMT_NOFILE are probed.
  --  

   function av_probe_input_format (pd : access AVProbeData; is_opened : int) return access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2157
   pragma Import (C, av_probe_input_format, "av_probe_input_format");

  --*
  -- * Guess the file format.
  -- *
  -- * @param pd        data to be probed
  -- * @param is_opened Whether the file is already opened; determines whether
  -- *                  demuxers with or without AVFMT_NOFILE are probed.
  -- * @param score_max A probe score larger that this is required to accept a
  -- *                  detection, the variable is set to the actual detection
  -- *                  score afterwards.
  -- *                  If the score is <= AVPROBE_SCORE_MAX / 4 it is recommended
  -- *                  to retry with a larger probe buffer.
  --  

   function av_probe_input_format2
     (pd : access AVProbeData;
      is_opened : int;
      score_max : access int) return access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2171
   pragma Import (C, av_probe_input_format2, "av_probe_input_format2");

  --*
  -- * Guess the file format.
  -- *
  -- * @param is_opened Whether the file is already opened; determines whether
  -- *                  demuxers with or without AVFMT_NOFILE are probed.
  -- * @param score_ret The score of the best detection.
  --  

   function av_probe_input_format3
     (pd : access AVProbeData;
      is_opened : int;
      score_ret : access int) return access AVInputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2180
   pragma Import (C, av_probe_input_format3, "av_probe_input_format3");

  --*
  -- * Probe a bytestream to determine the input format. Each time a probe returns
  -- * with a score that is too low, the probe buffer size is increased and another
  -- * attempt is made. When the maximum probe size is reached, the input format
  -- * with the highest score is returned.
  -- *
  -- * @param pb the bytestream to probe
  -- * @param fmt the input format is put here
  -- * @param url the url of the stream
  -- * @param logctx the log context
  -- * @param offset the offset within the bytestream to probe from
  -- * @param max_probe_size the maximum probe buffer size (zero for default)
  -- * @return the score in case of success, a negative value corresponding to an
  -- *         the maximal score is AVPROBE_SCORE_MAX
  -- * AVERROR code otherwise
  --  

   function av_probe_input_buffer2
     (pb : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;
      fmt : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      logctx : System.Address;
      offset : unsigned;
      max_probe_size : unsigned) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2198
   pragma Import (C, av_probe_input_buffer2, "av_probe_input_buffer2");

  --*
  -- * Like av_probe_input_buffer2() but returns 0 on success
  --  

   function av_probe_input_buffer
     (pb : access FFMpeg.Low_Level.ffmpeg_libavformat_avio_h.AVIOContext;
      fmt : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      logctx : System.Address;
      offset : unsigned;
      max_probe_size : unsigned) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2205
   pragma Import (C, av_probe_input_buffer, "av_probe_input_buffer");

  --*
  -- * Open an input stream and read the header. The codecs are not opened.
  -- * The stream must be closed with avformat_close_input().
  -- *
  -- * @param ps Pointer to user-supplied AVFormatContext (allocated by avformat_alloc_context).
  -- *           May be a pointer to NULL, in which case an AVFormatContext is allocated by this
  -- *           function and written into ps.
  -- *           Note that a user-supplied AVFormatContext will be freed on failure.
  -- * @param url URL of the stream to open.
  -- * @param fmt If non-NULL, this parameter forces a specific input format.
  -- *            Otherwise the format is autodetected.
  -- * @param options  A dictionary filled with AVFormatContext and demuxer-private options.
  -- *                 On return this parameter will be destroyed and replaced with a dict containing
  -- *                 options that were not found. May be NULL.
  -- *
  -- * @return 0 on success, a negative AVERROR on failure.
  -- *
  -- * @note If you want to use custom IO, preallocate the format context and set its pb field.
  --  

   function avformat_open_input
     (ps : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      fmt : access AVInputFormat;
      options : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2228
   pragma Import (C, avformat_open_input, "avformat_open_input");

   function av_demuxer_open (ic : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2231
   pragma Import (C, av_demuxer_open, "av_demuxer_open");

  --*
  -- * Read packets of a media file to get stream information. This
  -- * is useful for file formats with no headers such as MPEG. This
  -- * function also computes the real framerate in case of MPEG-2 repeat
  -- * frame mode.
  -- * The logical file position is not changed by this function;
  -- * examined packets may be buffered for later processing.
  -- *
  -- * @param ic media file handle
  -- * @param options  If non-NULL, an ic.nb_streams long array of pointers to
  -- *                 dictionaries, where i-th member contains options for
  -- *                 codec corresponding to i-th stream.
  -- *                 On return each dictionary will be filled with options that were not found.
  -- * @return >=0 if OK, AVERROR_xxx on error
  -- *
  -- * @note this function isn't guaranteed to open all the codecs, so
  -- *       options being non-empty at return is a perfectly normal behavior.
  -- *
  -- * @todo Let the user decide somehow what information is needed so that
  -- *       we do not waste time getting stuff the user does not need.
  --  

   function avformat_find_stream_info (ic : access AVFormatContext; options : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2254
   pragma Import (C, avformat_find_stream_info, "avformat_find_stream_info");

  --*
  -- * Find the programs which belong to a given stream.
  -- *
  -- * @param ic    media file handle
  -- * @param last  the last found program, the search will start after this
  -- *              program, or from the beginning if it is NULL
  -- * @param s     stream index
  -- * @return the next program which belongs to s, NULL if no program is found or
  -- *         the last program is not among the programs of ic.
  --  

   function av_find_program_from_stream
     (ic : access AVFormatContext;
      last : access AVProgram;
      s : int) return access AVProgram;  -- /usr/include/ffmpeg/libavformat/avformat.h:2266
   pragma Import (C, av_find_program_from_stream, "av_find_program_from_stream");

   procedure av_program_add_stream_index
     (ac : access AVFormatContext;
      progid : int;
      idx : unsigned);  -- /usr/include/ffmpeg/libavformat/avformat.h:2268
   pragma Import (C, av_program_add_stream_index, "av_program_add_stream_index");

  --*
  -- * Find the "best" stream in the file.
  -- * The best stream is determined according to various heuristics as the most
  -- * likely to be what the user expects.
  -- * If the decoder parameter is non-NULL, av_find_best_stream will find the
  -- * default decoder for the stream's codec; streams for which no decoder can
  -- * be found are ignored.
  -- *
  -- * @param ic                media file handle
  -- * @param type              stream type: video, audio, subtitles, etc.
  -- * @param wanted_stream_nb  user-requested stream number,
  -- *                          or -1 for automatic selection
  -- * @param related_stream    try to find a stream related (eg. in the same
  -- *                          program) to this one, or -1 if none
  -- * @param decoder_ret       if non-NULL, returns the decoder for the
  -- *                          selected stream
  -- * @param flags             flags; none are currently defined
  -- * @return  the non-negative stream number in case of success,
  -- *          AVERROR_STREAM_NOT_FOUND if no stream with the requested type
  -- *          could be found,
  -- *          AVERROR_DECODER_NOT_FOUND if streams were found but no decoder
  -- * @note  If av_find_best_stream returns successfully and decoder_ret is not
  -- *        NULL, then *decoder_ret is guaranteed to be set to a valid AVCodec.
  --  

   function av_find_best_stream
     (ic : access AVFormatContext;
      c_type : FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;
      wanted_stream_nb : int;
      related_stream : int;
      decoder_ret : System.Address;
      flags : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2294
   pragma Import (C, av_find_best_stream, "av_find_best_stream");

  --*
  -- * Return the next frame of a stream.
  -- * This function returns what is stored in the file, and does not validate
  -- * that what is there are valid frames for the decoder. It will split what is
  -- * stored in the file into frames and return one for each call. It will not
  -- * omit invalid data between valid frames so as to give the decoder the maximum
  -- * information possible for decoding.
  -- *
  -- * If pkt->buf is NULL, then the packet is valid until the next
  -- * av_read_frame() or until avformat_close_input(). Otherwise the packet
  -- * is valid indefinitely. In both cases the packet must be freed with
  -- * av_packet_unref when it is no longer needed. For video, the packet contains
  -- * exactly one frame. For audio, it contains an integer number of frames if each
  -- * frame has a known fixed size (e.g. PCM or ADPCM data). If the audio frames
  -- * have a variable size (e.g. MPEG audio), then it contains one frame.
  -- *
  -- * pkt->pts, pkt->dts and pkt->duration are always set to correct
  -- * values in AVStream.time_base units (and guessed if the format cannot
  -- * provide them). pkt->pts can be AV_NOPTS_VALUE if the video format
  -- * has B-frames, so it is better to rely on pkt->dts if you do not
  -- * decompress the payload.
  -- *
  -- * @return 0 if OK, < 0 on error or end of file
  --  

   function av_read_frame (s : access AVFormatContext; pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2325
   pragma Import (C, av_read_frame, "av_read_frame");

  --*
  -- * Seek to the keyframe at timestamp.
  -- * 'timestamp' in 'stream_index'.
  -- *
  -- * @param s media file handle
  -- * @param stream_index If stream_index is (-1), a default
  -- * stream is selected, and timestamp is automatically converted
  -- * from AV_TIME_BASE units to the stream specific time_base.
  -- * @param timestamp Timestamp in AVStream.time_base units
  -- *        or, if no stream is specified, in AV_TIME_BASE units.
  -- * @param flags flags which select direction and seeking mode
  -- * @return >= 0 on success
  --  

   function av_seek_frame
     (s : access AVFormatContext;
      stream_index : int;
      timestamp : Interfaces.Integer_64;
      flags : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2340
   pragma Import (C, av_seek_frame, "av_seek_frame");

  --*
  -- * Seek to timestamp ts.
  -- * Seeking will be done so that the point from which all active streams
  -- * can be presented successfully will be closest to ts and within min/max_ts.
  -- * Active streams are all streams that have AVStream.discard < AVDISCARD_ALL.
  -- *
  -- * If flags contain AVSEEK_FLAG_BYTE, then all timestamps are in bytes and
  -- * are the file position (this may not be supported by all demuxers).
  -- * If flags contain AVSEEK_FLAG_FRAME, then all timestamps are in frames
  -- * in the stream with stream_index (this may not be supported by all demuxers).
  -- * Otherwise all timestamps are in units of the stream selected by stream_index
  -- * or if stream_index is -1, in AV_TIME_BASE units.
  -- * If flags contain AVSEEK_FLAG_ANY, then non-keyframes are treated as
  -- * keyframes (this may not be supported by all demuxers).
  -- * If flags contain AVSEEK_FLAG_BACKWARD, it is ignored.
  -- *
  -- * @param s media file handle
  -- * @param stream_index index of the stream which is used as time base reference
  -- * @param min_ts smallest acceptable timestamp
  -- * @param ts target timestamp
  -- * @param max_ts largest acceptable timestamp
  -- * @param flags flags
  -- * @return >=0 on success, error code otherwise
  -- *
  -- * @note This is part of the new seek API which is still under construction.
  -- *       Thus do not use this yet. It may change at any time, do not expect
  -- *       ABI compatibility yet!
  --  

   function avformat_seek_file
     (s : access AVFormatContext;
      stream_index : int;
      min_ts : Interfaces.Integer_64;
      ts : Interfaces.Integer_64;
      max_ts : Interfaces.Integer_64;
      flags : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2371
   pragma Import (C, avformat_seek_file, "avformat_seek_file");

  --*
  -- * Discard all internally buffered data. This can be useful when dealing with
  -- * discontinuities in the byte stream. Generally works only with formats that
  -- * can resync. This includes headerless formats like MPEG-TS/TS but should also
  -- * work with NUT, Ogg and in a limited way AVI for example.
  -- *
  -- * The set of streams, the detected duration, stream parameters and codecs do
  -- * not change when calling this function. If you want a complete reset, it's
  -- * better to open a new AVFormatContext.
  -- *
  -- * This does not flush the AVIOContext (s->pb). If necessary, call
  -- * avio_flush(s->pb) before calling this function.
  -- *
  -- * @param s media file handle
  -- * @return >=0 on success, error code otherwise
  --  

   function avformat_flush (s : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2389
   pragma Import (C, avformat_flush, "avformat_flush");

  --*
  -- * Start playing a network-based stream (e.g. RTSP stream) at the
  -- * current position.
  --  

   function av_read_play (s : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2395
   pragma Import (C, av_read_play, "av_read_play");

  --*
  -- * Pause a network-based stream (e.g. RTSP stream).
  -- *
  -- * Use av_read_play() to resume it.
  --  

   function av_read_pause (s : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2402
   pragma Import (C, av_read_pause, "av_read_pause");

  --*
  -- * Close an opened input AVFormatContext. Free it and all its contents
  -- * and set *s to NULL.
  --  

   procedure avformat_close_input (s : System.Address);  -- /usr/include/ffmpeg/libavformat/avformat.h:2408
   pragma Import (C, avformat_close_input, "avformat_close_input");

  --*
  -- * @}
  --  

  --*
  -- * @addtogroup lavf_encoding
  -- * @{
  --  

  --*
  -- * Allocate the stream private data and write the stream header to
  -- * an output media file.
  -- *
  -- * @param s Media file handle, must be allocated with avformat_alloc_context().
  -- *          Its oformat field must be set to the desired output format;
  -- *          Its pb field must be set to an already opened AVIOContext.
  -- * @param options  An AVDictionary filled with AVFormatContext and muxer-private options.
  -- *                 On return this parameter will be destroyed and replaced with a dict containing
  -- *                 options that were not found. May be NULL.
  -- *
  -- * @return AVSTREAM_INIT_IN_WRITE_HEADER on success if the codec had not already been fully initialized in avformat_init,
  -- *         AVSTREAM_INIT_IN_INIT_OUTPUT  on success if the codec had already been fully initialized in avformat_init,
  -- *         negative AVERROR on failure.
  -- *
  -- * @see av_opt_find, av_dict_set, avio_open, av_oformat_next, avformat_init_output.
  --  

   function avformat_write_header (s : access AVFormatContext; options : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2444
   pragma Import (C, avformat_write_header, "avformat_write_header");

  --*
  -- * Allocate the stream private data and initialize the codec, but do not write the header.
  -- * May optionally be used before avformat_write_header to initialize stream parameters
  -- * before actually writing the header.
  -- * If using this function, do not pass the same options to avformat_write_header.
  -- *
  -- * @param s Media file handle, must be allocated with avformat_alloc_context().
  -- *          Its oformat field must be set to the desired output format;
  -- *          Its pb field must be set to an already opened AVIOContext.
  -- * @param options  An AVDictionary filled with AVFormatContext and muxer-private options.
  -- *                 On return this parameter will be destroyed and replaced with a dict containing
  -- *                 options that were not found. May be NULL.
  -- *
  -- * @return AVSTREAM_INIT_IN_WRITE_HEADER on success if the codec requires avformat_write_header to fully initialize,
  -- *         AVSTREAM_INIT_IN_INIT_OUTPUT  on success if the codec has been fully initialized,
  -- *         negative AVERROR on failure.
  -- *
  -- * @see av_opt_find, av_dict_set, avio_open, av_oformat_next, avformat_write_header.
  --  

   function avformat_init_output (s : access AVFormatContext; options : System.Address) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2466
   pragma Import (C, avformat_init_output, "avformat_init_output");

  --*
  -- * Write a packet to an output media file.
  -- *
  -- * This function passes the packet directly to the muxer, without any buffering
  -- * or reordering. The caller is responsible for correctly interleaving the
  -- * packets if the format requires it. Callers that want libavformat to handle
  -- * the interleaving should call av_interleaved_write_frame() instead of this
  -- * function.
  -- *
  -- * @param s media file handle
  -- * @param pkt The packet containing the data to be written. Note that unlike
  -- *            av_interleaved_write_frame(), this function does not take
  -- *            ownership of the packet passed to it (though some muxers may make
  -- *            an internal reference to the input packet).
  -- *            <br>
  -- *            This parameter can be NULL (at any time, not just at the end), in
  -- *            order to immediately flush data buffered within the muxer, for
  -- *            muxers that buffer up data internally before writing it to the
  -- *            output.
  -- *            <br>
  -- *            Packet's @ref AVPacket.stream_index "stream_index" field must be
  -- *            set to the index of the corresponding stream in @ref
  -- *            AVFormatContext.streams "s->streams".
  -- *            <br>
  -- *            The timestamps (@ref AVPacket.pts "pts", @ref AVPacket.dts "dts")
  -- *            must be set to correct values in the stream's timebase (unless the
  -- *            output format is flagged with the AVFMT_NOTIMESTAMPS flag, then
  -- *            they can be set to AV_NOPTS_VALUE).
  -- *            The dts for subsequent packets passed to this function must be strictly
  -- *            increasing when compared in their respective timebases (unless the
  -- *            output format is flagged with the AVFMT_TS_NONSTRICT, then they
  -- *            merely have to be nondecreasing).  @ref AVPacket.duration
  -- *            "duration") should also be set if known.
  -- * @return < 0 on error, = 0 if OK, 1 if flushed and there is no more data to flush
  -- *
  -- * @see av_interleaved_write_frame()
  --  

   function av_write_frame (s : access AVFormatContext; pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2505
   pragma Import (C, av_write_frame, "av_write_frame");

  --*
  -- * Write a packet to an output media file ensuring correct interleaving.
  -- *
  -- * This function will buffer the packets internally as needed to make sure the
  -- * packets in the output file are properly interleaved in the order of
  -- * increasing dts. Callers doing their own interleaving should call
  -- * av_write_frame() instead of this function.
  -- *
  -- * Using this function instead of av_write_frame() can give muxers advance
  -- * knowledge of future packets, improving e.g. the behaviour of the mp4
  -- * muxer for VFR content in fragmenting mode.
  -- *
  -- * @param s media file handle
  -- * @param pkt The packet containing the data to be written.
  -- *            <br>
  -- *            If the packet is reference-counted, this function will take
  -- *            ownership of this reference and unreference it later when it sees
  -- *            fit.
  -- *            The caller must not access the data through this reference after
  -- *            this function returns. If the packet is not reference-counted,
  -- *            libavformat will make a copy.
  -- *            <br>
  -- *            This parameter can be NULL (at any time, not just at the end), to
  -- *            flush the interleaving queues.
  -- *            <br>
  -- *            Packet's @ref AVPacket.stream_index "stream_index" field must be
  -- *            set to the index of the corresponding stream in @ref
  -- *            AVFormatContext.streams "s->streams".
  -- *            <br>
  -- *            The timestamps (@ref AVPacket.pts "pts", @ref AVPacket.dts "dts")
  -- *            must be set to correct values in the stream's timebase (unless the
  -- *            output format is flagged with the AVFMT_NOTIMESTAMPS flag, then
  -- *            they can be set to AV_NOPTS_VALUE).
  -- *            The dts for subsequent packets in one stream must be strictly
  -- *            increasing (unless the output format is flagged with the
  -- *            AVFMT_TS_NONSTRICT, then they merely have to be nondecreasing).
  -- *            @ref AVPacket.duration "duration") should also be set if known.
  -- *
  -- * @return 0 on success, a negative AVERROR on error. Libavformat will always
  -- *         take care of freeing the packet, even if this function fails.
  -- *
  -- * @see av_write_frame(), AVFormatContext.max_interleave_delta
  --  

   function av_interleaved_write_frame (s : access AVFormatContext; pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2550
   pragma Import (C, av_interleaved_write_frame, "av_interleaved_write_frame");

  --*
  -- * Write an uncoded frame to an output media file.
  -- *
  -- * The frame must be correctly interleaved according to the container
  -- * specification; if not, then av_interleaved_write_frame() must be used.
  -- *
  -- * See av_interleaved_write_frame() for details.
  --  

   function av_write_uncoded_frame
     (s : access AVFormatContext;
      stream_index : int;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2560
   pragma Import (C, av_write_uncoded_frame, "av_write_uncoded_frame");

  --*
  -- * Write an uncoded frame to an output media file.
  -- *
  -- * If the muxer supports it, this function makes it possible to write an AVFrame
  -- * structure directly, without encoding it into a packet.
  -- * It is mostly useful for devices and similar special muxers that use raw
  -- * video or PCM data and will not serialize it into a byte stream.
  -- *
  -- * To test whether it is possible to use it with a given muxer and stream,
  -- * use av_write_uncoded_frame_query().
  -- *
  -- * The caller gives up ownership of the frame and must not access it
  -- * afterwards.
  -- *
  -- * @return  >=0 for success, a negative code on error
  --  

   function av_interleaved_write_uncoded_frame
     (s : access AVFormatContext;
      stream_index : int;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2579
   pragma Import (C, av_interleaved_write_uncoded_frame, "av_interleaved_write_uncoded_frame");

  --*
  -- * Test whether a muxer supports uncoded frame.
  -- *
  -- * @return  >=0 if an uncoded frame can be written to that muxer and stream,
  -- *          <0 if not
  --  

   function av_write_uncoded_frame_query (s : access AVFormatContext; stream_index : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2588
   pragma Import (C, av_write_uncoded_frame_query, "av_write_uncoded_frame_query");

  --*
  -- * Write the stream trailer to an output media file and free the
  -- * file private data.
  -- *
  -- * May only be called after a successful call to avformat_write_header.
  -- *
  -- * @param s media file handle
  -- * @return 0 if OK, AVERROR_xxx on error
  --  

   function av_write_trailer (s : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2599
   pragma Import (C, av_write_trailer, "av_write_trailer");

  --*
  -- * Return the output format in the list of registered output formats
  -- * which best matches the provided parameters, or return NULL if
  -- * there is no match.
  -- *
  -- * @param short_name if non-NULL checks if short_name matches with the
  -- * names of the registered formats
  -- * @param filename if non-NULL checks if filename terminates with the
  -- * extensions of the registered formats
  -- * @param mime_type if non-NULL checks if mime_type matches with the
  -- * MIME type of the registered formats
  --  

   function av_guess_format
     (short_name : Interfaces.C.Strings.chars_ptr;
      filename : Interfaces.C.Strings.chars_ptr;
      mime_type : Interfaces.C.Strings.chars_ptr) return access AVOutputFormat;  -- /usr/include/ffmpeg/libavformat/avformat.h:2613
   pragma Import (C, av_guess_format, "av_guess_format");

  --*
  -- * Guess the codec ID based upon muxer and filename.
  --  

   function av_guess_codec
     (fmt : access AVOutputFormat;
      short_name : Interfaces.C.Strings.chars_ptr;
      filename : Interfaces.C.Strings.chars_ptr;
      mime_type : Interfaces.C.Strings.chars_ptr;
      c_type : FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType) return FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:2620
   pragma Import (C, av_guess_codec, "av_guess_codec");

  --*
  -- * Get timing information for the data currently output.
  -- * The exact meaning of "currently output" depends on the format.
  -- * It is mostly relevant for devices that have an internal buffer and/or
  -- * work in real time.
  -- * @param s          media file handle
  -- * @param stream     stream in the media file
  -- * @param[out] dts   DTS of the last packet output for the stream, in stream
  -- *                   time_base units
  -- * @param[out] wall  absolute time when that packet whas output,
  -- *                   in microsecond
  -- * @return  0 if OK, AVERROR(ENOSYS) if the format does not support it
  -- * Note: some formats or devices may not allow to measure dts and wall
  -- * atomically.
  --  

   function av_get_output_timestamp
     (s : access AVFormatContext;
      stream : int;
      dts : access Interfaces.Integer_64;
      wall : access Interfaces.Integer_64) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2639
   pragma Import (C, av_get_output_timestamp, "av_get_output_timestamp");

  --*
  -- * @}
  --  

  --*
  -- * @defgroup lavf_misc Utility functions
  -- * @ingroup libavf
  -- * @{
  -- *
  -- * Miscellaneous utility functions related to both muxing and demuxing
  -- * (or neither).
  --  

  --*
  -- * Send a nice hexadecimal dump of a buffer to the specified file stream.
  -- *
  -- * @param f The file stream pointer where the dump should be sent to.
  -- * @param buf buffer
  -- * @param size buffer size
  -- *
  -- * @see av_hex_dump_log, av_pkt_dump2, av_pkt_dump_log2
  --  

   procedure av_hex_dump
     (f : access Interfaces.C_Streams.FILEs;
      buf : access Interfaces.Unsigned_8;
      size : int);  -- /usr/include/ffmpeg/libavformat/avformat.h:2666
   pragma Import (C, av_hex_dump, "av_hex_dump");

  --*
  -- * Send a nice hexadecimal dump of a buffer to the log.
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- * pointer to an AVClass struct.
  -- * @param level The importance level of the message, lower values signifying
  -- * higher importance.
  -- * @param buf buffer
  -- * @param size buffer size
  -- *
  -- * @see av_hex_dump, av_pkt_dump2, av_pkt_dump_log2
  --  

   procedure av_hex_dump_log
     (avcl : System.Address;
      level : int;
      buf : access Interfaces.Unsigned_8;
      size : int);  -- /usr/include/ffmpeg/libavformat/avformat.h:2680
   pragma Import (C, av_hex_dump_log, "av_hex_dump_log");

  --*
  -- * Send a nice dump of a packet to the specified file stream.
  -- *
  -- * @param f The file stream pointer where the dump should be sent to.
  -- * @param pkt packet to dump
  -- * @param dump_payload True if the payload must be displayed, too.
  -- * @param st AVStream that the packet belongs to
  --  

   procedure av_pkt_dump2
     (f : access Interfaces.C_Streams.FILEs;
      pkt : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      dump_payload : int;
      st : access constant AVStream);  -- /usr/include/ffmpeg/libavformat/avformat.h:2690
   pragma Import (C, av_pkt_dump2, "av_pkt_dump2");

  --*
  -- * Send a nice dump of a packet to the log.
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- * pointer to an AVClass struct.
  -- * @param level The importance level of the message, lower values signifying
  -- * higher importance.
  -- * @param pkt packet to dump
  -- * @param dump_payload True if the payload must be displayed, too.
  -- * @param st AVStream that the packet belongs to
  --  

   procedure av_pkt_dump_log2
     (avcl : System.Address;
      level : int;
      pkt : access constant FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      dump_payload : int;
      st : access constant AVStream);  -- /usr/include/ffmpeg/libavformat/avformat.h:2704
   pragma Import (C, av_pkt_dump_log2, "av_pkt_dump_log2");

  --*
  -- * Get the AVCodecID for the given codec tag tag.
  -- * If no codec id is found returns AV_CODEC_ID_NONE.
  -- *
  -- * @param tags list of supported codec_id-codec_tag pairs, as stored
  -- * in AVInputFormat.codec_tag and AVOutputFormat.codec_tag
  -- * @param tag  codec tag to match to a codec ID
  --  

   function av_codec_get_id (tags : System.Address; tag : unsigned) return FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;  -- /usr/include/ffmpeg/libavformat/avformat.h:2715
   pragma Import (C, av_codec_get_id, "av_codec_get_id");

  --*
  -- * Get the codec tag for the given codec id id.
  -- * If no codec tag is found returns 0.
  -- *
  -- * @param tags list of supported codec_id-codec_tag pairs, as stored
  -- * in AVInputFormat.codec_tag and AVOutputFormat.codec_tag
  -- * @param id   codec ID to match to a codec tag
  --  

   function av_codec_get_tag (tags : System.Address; id : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID) return unsigned;  -- /usr/include/ffmpeg/libavformat/avformat.h:2725
   pragma Import (C, av_codec_get_tag, "av_codec_get_tag");

  --*
  -- * Get the codec tag for the given codec id.
  -- *
  -- * @param tags list of supported codec_id - codec_tag pairs, as stored
  -- * in AVInputFormat.codec_tag and AVOutputFormat.codec_tag
  -- * @param id codec id that should be searched for in the list
  -- * @param tag A pointer to the found tag
  -- * @return 0 if id was not found in tags, > 0 if it was found
  --  

   function av_codec_get_tag2
     (tags : System.Address;
      id : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;
      tag : access unsigned) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2736
   pragma Import (C, av_codec_get_tag2, "av_codec_get_tag2");

   function av_find_default_stream_index (s : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2739
   pragma Import (C, av_find_default_stream_index, "av_find_default_stream_index");

  --*
  -- * Get the index for a specific timestamp.
  -- *
  -- * @param st        stream that the timestamp belongs to
  -- * @param timestamp timestamp to retrieve the index for
  -- * @param flags if AVSEEK_FLAG_BACKWARD then the returned index will correspond
  -- *                 to the timestamp which is <= the requested one, if backward
  -- *                 is 0, then it will be >=
  -- *              if AVSEEK_FLAG_ANY seek to any frame, only keyframes otherwise
  -- * @return < 0 if no such timestamp could be found
  --  

   function av_index_search_timestamp
     (st : access AVStream;
      timestamp : Interfaces.Integer_64;
      flags : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2752
   pragma Import (C, av_index_search_timestamp, "av_index_search_timestamp");

  --*
  -- * Add an index entry into a sorted list. Update the entry if the list
  -- * already contains it.
  -- *
  -- * @param timestamp timestamp in the time base of the given stream
  --  

   function av_add_index_entry
     (st : access AVStream;
      pos : Interfaces.Integer_64;
      timestamp : Interfaces.Integer_64;
      size : int;
      distance : int;
      flags : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2760
   pragma Import (C, av_add_index_entry, "av_add_index_entry");

  --*
  -- * Split a URL string into components.
  -- *
  -- * The pointers to buffers for storing individual components may be null,
  -- * in order to ignore that component. Buffers for components not found are
  -- * set to empty strings. If the port is not found, it is set to a negative
  -- * value.
  -- *
  -- * @param proto the buffer for the protocol
  -- * @param proto_size the size of the proto buffer
  -- * @param authorization the buffer for the authorization
  -- * @param authorization_size the size of the authorization buffer
  -- * @param hostname the buffer for the host name
  -- * @param hostname_size the size of the hostname buffer
  -- * @param port_ptr a pointer to store the port number in
  -- * @param path the buffer for the path
  -- * @param path_size the size of the path buffer
  -- * @param url the URL to split
  --  

   procedure av_url_split
     (proto : Interfaces.C.Strings.chars_ptr;
      proto_size : int;
      authorization : Interfaces.C.Strings.chars_ptr;
      authorization_size : int;
      hostname : Interfaces.C.Strings.chars_ptr;
      hostname_size : int;
      port_ptr : access int;
      path : Interfaces.C.Strings.chars_ptr;
      path_size : int;
      url : Interfaces.C.Strings.chars_ptr);  -- /usr/include/ffmpeg/libavformat/avformat.h:2783
   pragma Import (C, av_url_split, "av_url_split");

  --*
  -- * Print detailed information about the input or output format, such as
  -- * duration, bitrate, streams, container, programs, metadata, side data,
  -- * codec and time base.
  -- *
  -- * @param ic        the context to analyze
  -- * @param index     index of the stream to dump information about
  -- * @param url       the URL to print, such as source or destination file
  -- * @param is_output Select whether the specified context is an input(0) or output(1)
  --  

   procedure av_dump_format
     (ic : access AVFormatContext;
      index : int;
      url : Interfaces.C.Strings.chars_ptr;
      is_output : int);  -- /usr/include/ffmpeg/libavformat/avformat.h:2801
   pragma Import (C, av_dump_format, "av_dump_format");

  --*
  -- * Return in 'buf' the path with '%d' replaced by a number.
  -- *
  -- * Also handles the '%0nd' format where 'n' is the total number
  -- * of digits and '%%'.
  -- *
  -- * @param buf destination buffer
  -- * @param buf_size destination buffer size
  -- * @param path numbered sequence string
  -- * @param number frame number
  -- * @param flags AV_FRAME_FILENAME_FLAGS_*
  -- * @return 0 if OK, -1 on format error
  --  

   function av_get_frame_filename2
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      path : Interfaces.C.Strings.chars_ptr;
      number : int;
      flags : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2822
   pragma Import (C, av_get_frame_filename2, "av_get_frame_filename2");

   function av_get_frame_filename
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      path : Interfaces.C.Strings.chars_ptr;
      number : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2825
   pragma Import (C, av_get_frame_filename, "av_get_frame_filename");

  --*
  -- * Check whether filename actually is a numbered sequence generator.
  -- *
  -- * @param filename possible numbered sequence string
  -- * @return 1 if a valid numbered sequence string, 0 otherwise
  --  

   function av_filename_number_test (filename : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2834
   pragma Import (C, av_filename_number_test, "av_filename_number_test");

  --*
  -- * Generate an SDP for an RTP session.
  -- *
  -- * Note, this overwrites the id values of AVStreams in the muxer contexts
  -- * for getting unique dynamic payload types.
  -- *
  -- * @param ac array of AVFormatContexts describing the RTP streams. If the
  -- *           array is composed by only one context, such context can contain
  -- *           multiple AVStreams (one AVStream per RTP stream). Otherwise,
  -- *           all the contexts in the array (an AVCodecContext per RTP stream)
  -- *           must contain only one AVStream.
  -- * @param n_files number of AVCodecContexts contained in ac
  -- * @param buf buffer where the SDP will be stored (must be allocated by
  -- *            the caller)
  -- * @param size the size of the buffer
  -- * @return 0 if OK, AVERROR_xxx on error
  --  

   function av_sdp_create
     (ac : System.Address;
      n_files : int;
      buf : Interfaces.C.Strings.chars_ptr;
      size : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2853
   pragma Import (C, av_sdp_create, "av_sdp_create");

  --*
  -- * Return a positive value if the given filename has one of the given
  -- * extensions, 0 otherwise.
  -- *
  -- * @param filename   file name to check against the given extensions
  -- * @param extensions a comma-separated list of filename extensions
  --  

   function av_match_ext (filename : Interfaces.C.Strings.chars_ptr; extensions : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2862
   pragma Import (C, av_match_ext, "av_match_ext");

  --*
  -- * Test if the given container can store a codec.
  -- *
  -- * @param ofmt           container to check for compatibility
  -- * @param codec_id       codec to potentially store in container
  -- * @param std_compliance standards compliance level, one of FF_COMPLIANCE_*
  -- *
  -- * @return 1 if codec with ID codec_id can be stored in ofmt, 0 if it cannot.
  -- *         A negative number if this information is not available.
  --  

   function avformat_query_codec
     (ofmt : access constant AVOutputFormat;
      codec_id : FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecID;
      std_compliance : int) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2874
   pragma Import (C, avformat_query_codec, "avformat_query_codec");

  --*
  -- * @defgroup riff_fourcc RIFF FourCCs
  -- * @{
  -- * Get the tables mapping RIFF FourCCs to libavcodec AVCodecIDs. The tables are
  -- * meant to be passed to av_codec_get_id()/av_codec_get_tag() as in the
  -- * following code:
  -- * @code
  -- * uint32_t tag = MKTAG('H', '2', '6', '4');
  -- * const struct AVCodecTag *table[] = { avformat_get_riff_video_tags(), 0 };
  -- * enum AVCodecID id = av_codec_get_id(table, tag);
  -- * @endcode
  --  

  --*
  -- * @return the table mapping RIFF FourCCs for video to libavcodec AVCodecID.
  --  

   function avformat_get_riff_video_tags return System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:2892
   pragma Import (C, avformat_get_riff_video_tags, "avformat_get_riff_video_tags");

  --*
  -- * @return the table mapping RIFF FourCCs for audio to AVCodecID.
  --  

   function avformat_get_riff_audio_tags return System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:2896
   pragma Import (C, avformat_get_riff_audio_tags, "avformat_get_riff_audio_tags");

  --*
  -- * @return the table mapping MOV FourCCs for video to libavcodec AVCodecID.
  --  

   function avformat_get_mov_video_tags return System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:2900
   pragma Import (C, avformat_get_mov_video_tags, "avformat_get_mov_video_tags");

  --*
  -- * @return the table mapping MOV FourCCs for audio to AVCodecID.
  --  

   function avformat_get_mov_audio_tags return System.Address;  -- /usr/include/ffmpeg/libavformat/avformat.h:2904
   pragma Import (C, avformat_get_mov_audio_tags, "avformat_get_mov_audio_tags");

  --*
  -- * @}
  --  

  --*
  -- * Guess the sample aspect ratio of a frame, based on both the stream and the
  -- * frame aspect ratio.
  -- *
  -- * Since the frame aspect ratio is set by the codec but the stream aspect ratio
  -- * is set by the demuxer, these two may not be equal. This function tries to
  -- * return the value that you should use if you would like to display the frame.
  -- *
  -- * Basic logic is to use the stream aspect ratio if it is set to something sane
  -- * otherwise use the frame aspect ratio. This way a container setting, which is
  -- * usually easy to modify can override the coded value in the frames.
  -- *
  -- * @param format the format context which the stream is part of
  -- * @param stream the stream which the frame is part of
  -- * @param frame the frame with the aspect ratio to be determined
  -- * @return the guessed (valid) sample_aspect_ratio, 0/1 if no idea
  --  

   function av_guess_sample_aspect_ratio
     (format : access AVFormatContext;
      stream : access AVStream;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:2927
   pragma Import (C, av_guess_sample_aspect_ratio, "av_guess_sample_aspect_ratio");

  --*
  -- * Guess the frame rate, based on both the container and codec information.
  -- *
  -- * @param ctx the format context which the stream is part of
  -- * @param stream the stream which the frame is part of
  -- * @param frame the frame for which the frame rate should be determined, may be NULL
  -- * @return the guessed (valid) frame rate, 0/1 if no idea
  --  

   function av_guess_frame_rate
     (ctx : access AVFormatContext;
      stream : access AVStream;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:2937
   pragma Import (C, av_guess_frame_rate, "av_guess_frame_rate");

  --*
  -- * Check if the stream st contained in s is matched by the stream specifier
  -- * spec.
  -- *
  -- * See the "stream specifiers" chapter in the documentation for the syntax
  -- * of spec.
  -- *
  -- * @return  >0 if st is matched by spec;
  -- *          0  if st is not matched by spec;
  -- *          AVERROR code if spec is invalid
  -- *
  -- * @note  A stream specifier can match several streams in the format.
  --  

   function avformat_match_stream_specifier
     (s : access AVFormatContext;
      st : access AVStream;
      spec : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2952
   pragma Import (C, avformat_match_stream_specifier, "avformat_match_stream_specifier");

   function avformat_queue_attached_pictures (s : access AVFormatContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2955
   pragma Import (C, avformat_queue_attached_pictures, "avformat_queue_attached_pictures");

  --*
  -- * Apply a list of bitstream filters to a packet.
  -- *
  -- * @param codec AVCodecContext, usually from an AVStream
  -- * @param pkt the packet to apply filters to. If, on success, the returned
  -- *        packet has size == 0 and side_data_elems == 0, it indicates that
  -- *        the packet should be dropped
  -- * @param bsfc a NULL-terminated list of filters to apply
  -- * @return  >=0 on success;
  -- *          AVERROR code on failure
  --  

   function av_apply_bitstream_filters
     (codec : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVCodecContext;
      pkt : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVPacket;
      bsfc : access FFMpeg.Low_Level.ffmpeg_libavcodec_avcodec_h.AVBitStreamFilterContext) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2970
   pragma Import (C, av_apply_bitstream_filters, "av_apply_bitstream_filters");

   subtype AVTimebaseSource is int;
   AVFMT_TBCF_AUTO : constant AVTimebaseSource := -1;
   AVFMT_TBCF_DECODER : constant AVTimebaseSource := 0;
   AVFMT_TBCF_DEMUXER : constant AVTimebaseSource := 1;
   AVFMT_TBCF_R_FRAMERATE : constant AVTimebaseSource := 2;  -- /usr/include/ffmpeg/libavformat/avformat.h:2974

  --*
  -- * Transfer internal timing information from one stream to another.
  -- *
  -- * This function is useful when doing stream copy.
  -- *
  -- * @param ofmt     target output format for ost
  -- * @param ost      output stream which needs timings copy and adjustments
  -- * @param ist      reference input stream to copy timings from
  -- * @param copy_tb  define from where the stream codec timebase needs to be imported
  --  

   function avformat_transfer_internal_stream_timing_info
     (ofmt : access constant AVOutputFormat;
      ost : access AVStream;
      ist : access constant AVStream;
      copy_tb : AVTimebaseSource) return int;  -- /usr/include/ffmpeg/libavformat/avformat.h:2993
   pragma Import (C, avformat_transfer_internal_stream_timing_info, "avformat_transfer_internal_stream_timing_info");

  --*
  -- * Get the internal codec timebase from a stream.
  -- *
  -- * @param st  input stream to extract the timebase from
  --  

   function av_stream_get_codec_timebase (st : access constant AVStream) return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavformat/avformat.h:3002
   pragma Import (C, av_stream_get_codec_timebase, "av_stream_get_codec_timebase");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavformat_avformat_h;
