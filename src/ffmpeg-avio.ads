pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;



package FFMpeg.avio is

   AVIO_SEEKABLE_NORMAL : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavformat/avio.h:40

   AVIO_SEEKABLE_TIME : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavformat/avio.h:45

   AVSEEK_SIZE : constant := 16#10000#;  --  /usr/include/ffmpeg/libavformat/avio.h:499

   AVSEEK_FORCE : constant := 16#20000#;  --  /usr/include/ffmpeg/libavformat/avio.h:507

   AVIO_FLAG_READ : constant := 1;  --  /usr/include/ffmpeg/libavformat/avio.h:620
   AVIO_FLAG_WRITE : constant := 2;  --  /usr/include/ffmpeg/libavformat/avio.h:621
   --  unsupported macro: AVIO_FLAG_READ_WRITE (AVIO_FLAG_READ|AVIO_FLAG_WRITE)

   AVIO_FLAG_NONBLOCK : constant := 8;  --  /usr/include/ffmpeg/libavformat/avio.h:639

   AVIO_FLAG_DIRECT : constant := 16#8000#;  --  /usr/include/ffmpeg/libavformat/avio.h:647

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
  -- * @ingroup lavf_io
  -- * Buffered I/O operations
  --

  --*
  -- * Seeking works like for a local file.
  --

  --*
  -- * Seeking by timestamp with seek_time() is possible.
  --

  --*
  -- * Callback for checking whether to abort blocking functions.
  -- * AVERROR_EXIT is returned in this case by the interrupted
  -- * function. During blocking operations, callback is called with
  -- * opaque as parameter. If the callback returns 1, the
  -- * blocking operation will be aborted.
  -- *
  -- * No members can be added to this struct without a major bump, if
  -- * new elements have been added after this struct in AVFormatContext
  -- * or AVIOContext.
  --

   type AVIOInterruptCB is record
      callback : access function  (arg1 : System.Address) return int;
      opaque : System.Address;
   end record;
   pragma Convention (C_Pass_By_Copy, AVIOInterruptCB);

  --*
  -- * Directory entry types.
  --

   type AVIODirEntryType is
     (AVIO_ENTRY_UNKNOWN,
      AVIO_ENTRY_BLOCK_DEVICE,
      AVIO_ENTRY_CHARACTER_DEVICE,
      AVIO_ENTRY_DIRECTORY,
      AVIO_ENTRY_NAMED_PIPE,
      AVIO_ENTRY_SYMBOLIC_LINK,
      AVIO_ENTRY_SOCKET,
      AVIO_ENTRY_FILE,
      AVIO_ENTRY_SERVER,
      AVIO_ENTRY_SHARE,
      AVIO_ENTRY_WORKGROUP);
   pragma Convention (C, AVIODirEntryType);

  --*
  -- * Describes single entry of the directory.
  -- *
  -- * Only name and type fields are guaranteed be set.
  -- * Rest of fields are protocol or/and platform dependent and might be unknown.
  --

  --*< Filename
   type AVIODirEntry is record
      name : Interfaces.C.Strings.chars_ptr;
      c_type : aliased int;
      utf8 : aliased int;
      size : aliased Interfaces.Integer_64;
      modification_timestamp : aliased Interfaces.Integer_64;
      access_timestamp : aliased Interfaces.Integer_64;
      status_change_timestamp : aliased Interfaces.Integer_64;
      user_id : aliased Interfaces.Integer_64;
      group_id : aliased Interfaces.Integer_64;
      filemode : aliased Interfaces.Integer_64;
   end record;
   pragma Convention (C_Pass_By_Copy, AVIODirEntry);

  --*< Type of the entry
  --*< Set to 1 when name is encoded with UTF-8, 0 otherwise.
  --                                               Name can be encoded with UTF-8 even though 0 is set.

  --*< File size in bytes, -1 if unknown.
  --*< Time of last modification in microseconds since unix
  --                                               epoch, -1 if unknown.

  --*< Time of last access in microseconds since unix epoch,
  --                                               -1 if unknown.

  --*< Time of last status change in microseconds since unix
  --                                               epoch, -1 if unknown.

  --*< User ID of owner, -1 if unknown.
  --*< Group ID of owner, -1 if unknown.
  --*< Unix file mode, -1 if unknown.
   type AVIODirContext is record
      url_context : System.Address;
   end record;
   pragma Convention (C_Pass_By_Copy, AVIODirContext);

   --  skipped empty struct URLContext

  --*
  -- * Different data types that can be returned via the AVIO
  -- * write_data_type callback.
  --

   type AVIODataMarkerType is
     (AVIO_DATA_MARKER_HEADER,
      AVIO_DATA_MARKER_SYNC_POINT,
      AVIO_DATA_MARKER_BOUNDARY_POINT,
      AVIO_DATA_MARKER_UNKNOWN,
      AVIO_DATA_MARKER_TRAILER);
   pragma Convention (C, AVIODataMarkerType);

  --*
  --     * Header data; this needs to be present for the stream to be decodeable.
  --

  --*
  --     * A point in the output bytestream where a decoder can start decoding
  --     * (i.e. a keyframe). A demuxer/decoder given the data flagged with
  --     * AVIO_DATA_MARKER_HEADER, followed by any AVIO_DATA_MARKER_SYNC_POINT,
  --     * should give decodeable results.
  --

  --*
  --     * A point in the output bytestream where a demuxer can start parsing
  --     * (for non self synchronizing bytestream formats). That is, any
  --     * non-keyframe packet start point.
  --

  --*
  --     * This is any, unlabelled data. It can either be a muxer not marking
  --     * any positions at all, it can be an actual boundary/sync point
  --     * that the muxer chooses not to mark, or a later part of a packet/fragment
  --     * that is cut into multiple write callbacks due to limited IO buffer size.
  --

  --*
  --     * Trailer data, which doesn't contain actual content, but only for
  --     * finalizing the output file.
  --

  --*
  -- * Bytestream IO Context.
  -- * New fields can be added to the end with minor version bumps.
  -- * Removal, reordering and changes to existing fields require a major
  -- * version bump.
  -- * sizeof(AVIOContext) must not be used outside libav*.
  -- *
  -- * @note None of the function pointers in AVIOContext should be called
  -- *       directly, they should only be set by the client application
  -- *       when implementing custom I/O. Normally these are set to the
  -- *       function pointers specified in alloc_context()
  --

  --*
  --     * A class for private options.
  --     *
  --     * If this AVIOContext is created by open2(), av_class is set and
  --     * passes the options down to protocols.
  --     *
  --     * If this AVIOContext is manually allocated, then av_class may be set by
  --     * the caller.
  --     *
  --     * warning -- this field can be NULL, be sure to not pass this AVIOContext
  --     * to any av_opt_* functions in that case.
  --

   type AVIOContext is record
      av_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      buffer : access unsigned_char;
      buffer_size : aliased int;
      buf_ptr : access unsigned_char;
      buf_end : access unsigned_char;
      opaque : System.Address;
      read_packet : access function
           (arg1 : System.Address;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : int) return int;
      write_packet : access function
           (arg1 : System.Address;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : int) return int;
      seek : access function
           (arg1 : System.Address;
            arg2 : Interfaces.Integer_64;
            arg3 : int) return Interfaces.Integer_64;
      pos : aliased Interfaces.Integer_64;
      must_flush : aliased int;
      eof_reached : aliased int;
      write_flag : aliased int;
      max_packet_size : aliased int;
      checksum : aliased unsigned_long;
      checksum_ptr : access unsigned_char;
      update_checksum : access function
           (arg1 : unsigned_long;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : unsigned) return unsigned_long;
      error : aliased int;
      read_pause : access function  (arg1 : System.Address; arg2 : int) return int;
      read_seek : access function
           (arg1 : System.Address;
            arg2 : int;
            arg3 : Interfaces.Integer_64;
            arg4 : int) return Interfaces.Integer_64;
      seekable : aliased int;
      maxsize : aliased Interfaces.Integer_64;
      direct : aliased int;
      bytes_read : aliased Interfaces.Integer_64;
      seek_count : aliased int;
      writeout_count : aliased int;
      orig_buffer_size : aliased int;
      short_seek_threshold : aliased int;
      protocol_whitelist : Interfaces.C.Strings.chars_ptr;
      protocol_blacklist : Interfaces.C.Strings.chars_ptr;
      write_data_type : access function
           (arg1 : System.Address;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : int;
            arg4 : AVIODataMarkerType;
            arg5 : Interfaces.Integer_64) return int;
      ignore_boundary_point : aliased int;
      current_type : aliased AVIODataMarkerType;
      last_time : aliased Interfaces.Integer_64;
      short_seek_get : access function  (arg1 : System.Address) return int;
   end record;
   pragma Convention (C_Pass_By_Copy, AVIOContext);

  --     * The following shows the relationship between buffer, buf_ptr, buf_end, buf_size,
  --     * and pos, when reading and when writing (since AVIOContext is used for both):
  --     *
  --     **********************************************************************************
  --     *                                   READING
  --     **********************************************************************************
  --     *
  --     *                            |              buffer_size              |
  --     *                            |---------------------------------------|
  --     *                            |                                       |
  --     *
  --     *                         buffer          buf_ptr       buf_end
  --     *                            +---------------+-----------------------+
  --     *                            |/ / / / / / / /|/ / / / / / /|         |
  --     *  read buffer:              |/ / consumed / | to be read /|         |
  --     *                            |/ / / / / / / /|/ / / / / / /|         |
  --     *                            +---------------+-----------------------+
  --     *
  --     *                                                         pos
  --     *              +-------------------------------------------+-----------------+
  --     *  input file: |                                           |                 |
  --     *              +-------------------------------------------+-----------------+
  --     *
  --     *
  --     **********************************************************************************
  --     *                                   WRITING
  --     **********************************************************************************
  --     *
  --     *                                          |          buffer_size          |
  --     *                                          |-------------------------------|
  --     *                                          |                               |
  --     *
  --     *                                       buffer              buf_ptr     buf_end
  --     *                                          +-------------------+-----------+
  --     *                                          |/ / / / / / / / / /|           |
  --     *  write buffer:                           | / to be flushed / |           |
  --     *                                          |/ / / / / / / / / /|           |
  --     *                                          +-------------------+-----------+
  --     *
  --     *                                         pos
  --     *               +--------------------------+-----------------------------------+
  --     *  output file: |                          |                                   |
  --     *               +--------------------------+-----------------------------------+
  --     *
  --

  --*< Start of the buffer.
  --*< Maximum buffer size
  --*< Current position in the buffer
  --*< End of the data, may be less than
  --                                 buffer+buffer_size if the read function returned
  --                                 less data than requested, e.g. for streams where
  --                                 no more data has been received yet.

  --*< A private pointer, passed to the read/write/seek/...
  --                                 functions.

  --*< position in the file of the current buffer
  --*< true if the next seek should flush
  --*< true if eof reached
  --*< true if open for writing
  --*< contains the error code or 0 if no error happened
  --*
  --     * Pause or resume playback for network streaming protocols - e.g. MMS.
  --

  --*
  --     * Seek to a given timestamp in stream with the specified stream_index.
  --     * Needed for some network streaming protocols which don't support seeking
  --     * to byte position.
  --

  --*
  --     * A combination of AVIO_SEEKABLE_ flags or 0 when the stream is not seekable.
  --

  --*
  --     * max filesize, used to limit allocations
  --     * This field is internal to libavformat and access from outside is not allowed.
  --

  --*
  --     * read and write should if possible be satisfied directly
  --     * instead of going through a buffer, and seek will always
  --     * call the underlying seek function directly.
  --

  --*
  --     * Bytes read statistic
  --     * This field is internal to libavformat and access from outside is not allowed.
  --

  --*
  --     * seek statistic
  --     * This field is internal to libavformat and access from outside is not allowed.
  --

  --*
  --     * writeout statistic
  --     * This field is internal to libavformat and access from outside is not allowed.
  --

  --*
  --     * Original buffer size
  --     * used internally after probing and ensure seekback to reset the buffer size
  --     * This field is internal to libavformat and access from outside is not allowed.
  --

  --*
  --     * Threshold to favor readahead over seek.
  --     * This is current internal only, do not use from outside.
  --

  --*
  --     * ',' separated list of allowed protocols.
  --

  --*
  --     * ',' separated list of disallowed protocols.
  --

  --*
  --     * A callback that is used instead of write_packet.
  --

  --*
  --     * If set, don't call write_data_type separately for AVIO_DATA_MARKER_BOUNDARY_POINT,
  --     * but ignore them and treat them as AVIO_DATA_MARKER_UNKNOWN (to avoid needlessly
  --     * small chunks of data returned from the callback).
  --

  --*
  --     * Internal, not meant to be used from outside of AVIOContext.
  --

  --*
  --     * A callback that is used instead of short_seek_threshold.
  --     * This is current internal only, do not use from outside.
  --

  --*
  -- * Return the name of the protocol that will handle the passed URL.
  -- *
  -- * NULL is returned if no protocol could be found for the given URL.
  -- *
  -- * @return Name of the protocol or NULL.
  --

   function find_protocol_name (url : Interfaces.C.Strings.chars_ptr) return String;


  --*
  -- * Return AVIO_FLAG_* access flags corresponding to the access permissions
  -- * of the resource in url, or a negative value corresponding to an
  -- * AVERROR code in case of failure. The returned access flags are
  -- * masked by the value in flags.
  -- *
  -- * @note This function is intrinsically unsafe, in the sense that the
  -- * checked resource may change its existence or permission status from
  -- * one call to another. Thus you should not trust the returned value,
  -- * unless you are sure that no other processes are accessing the
  -- * checked resource.
  --

   function check (url : Interfaces.C.Strings.chars_ptr; flags : int) return int;


  --*
  -- * Move or rename a resource.
  -- *
  -- * @note url_src and url_dst should share the same protocol and authority.
  -- *
  -- * @param url_src url to resource to be moved
  -- * @param url_dst new url to resource if the operation succeeded
  -- * @return >=0 on success or negative on error.
  --

   function avpriv_io_move (url_src : Interfaces.C.Strings.chars_ptr; url_dst : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Delete a resource.
  -- *
  -- * @param url resource to be deleted.
  -- * @return >=0 on success or negative on error.
  --

   function avpriv_io_delete (url : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Open directory for reading.
  -- *
  -- * @param s       directory read context. Pointer to a NULL pointer must be passed.
  -- * @param url     directory to be listed.
  -- * @param options A dictionary filled with protocol-private options. On return
  -- *                this parameter will be destroyed and replaced with a dictionary
  -- *                containing options that were not found. May be NULL.
  -- * @return >=0 on success or negative on error.
  --

   function open_dir
     (s : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      options : System.Address) return int;


  --*
  -- * Get next directory entry.
  -- *
  -- * Returned entry must be freed with free_directory_entry(). In particular
  -- * it may outlive AVIODirContext.
  -- *
  -- * @param s         directory read context.
  -- * @param[out] next next entry or NULL when no more entries.
  -- * @return >=0 on success or negative on error. End of list is not considered an
  -- *             error.
  --

   function read_dir (s : access AVIODirContext; next : System.Address) return int;


  --*
  -- * Close directory.
  -- *
  -- * @note Entries created using read_dir() are not deleted and must be
  -- * freeded with free_directory_entry().
  -- *
  -- * @param s         directory read context.
  -- * @return >=0 on success or negative on error.
  --

   function close_dir (s : System.Address) return int;


  --*
  -- * Free entry allocated by read_dir().
  -- *
  -- * @param entry entry to be freed.
  --

   procedure free_directory_entry (c_entry : System.Address);


  --*
  -- * Allocate and initialize an AVIOContext for buffered I/O. It must be later
  -- * freed with av_free().
  -- *
  -- * @param buffer Memory block for input/output operations via AVIOContext.
  -- *        The buffer must be allocated with av_malloc() and friends.
  -- *        It may be freed and replaced with a new buffer by libavformat.
  -- *        AVIOContext.buffer holds the buffer currently in use,
  -- *        which must be later freed with av_free().
  -- * @param buffer_size The buffer size is very important for performance.
  -- *        For protocols with fixed blocksize it should be set to this blocksize.
  -- *        For others a typical size is a cache page, e.g. 4kb.
  -- * @param write_flag Set to 1 if the buffer should be writable, 0 otherwise.
  -- * @param opaque An opaque pointer to user-specific data.
  -- * @param read_packet  A function for refilling the buffer, may be NULL.
  -- * @param write_packet A function for writing the buffer contents, may be NULL.
  -- *        The function may not change the input buffers content.
  -- * @param seek A function for seeking to specified byte position, may be NULL.
  -- *
  -- * @return Allocated AVIOContext or NULL on failure.
  --

   function alloc_context
     (buffer : access unsigned_char;
      buffer_size : int;
      write_flag : int;
      opaque : System.Address;
      read_packet : access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_8;
         arg3 : int) return int;
      write_packet : access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_8;
         arg3 : int) return int;
      seek : access function
        (arg1 : System.Address;
         arg2 : Interfaces.Integer_64;
         arg3 : int) return Interfaces.Integer_64) return access AVIOContext;


   procedure w8 (s : access AVIOContext; b : int);


   procedure write
     (s : access AVIOContext;
      buf : access unsigned_char;
      size : int);


   procedure wl64 (s : access AVIOContext; val : Interfaces.Unsigned_64);


   procedure wb64 (s : access AVIOContext; val : Interfaces.Unsigned_64);


   procedure wl32 (s : access AVIOContext; val : unsigned);


   procedure wb32 (s : access AVIOContext; val : unsigned);


   procedure wl24 (s : access AVIOContext; val : unsigned);


   procedure wb24 (s : access AVIOContext; val : unsigned);


   procedure wl16 (s : access AVIOContext; val : unsigned);


   procedure wb16 (s : access AVIOContext; val : unsigned);


  --*
  -- * Write a NULL-terminated string.
  -- * @return number of bytes written.
  --

   function put_str (s : access AVIOContext; str : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Convert an UTF-8 string to UTF-16LE and write it.
  -- * @param s the AVIOContext
  -- * @param str NULL-terminated UTF-8 string
  -- *
  -- * @return number of bytes written.
  --

   function put_str16le (s : access AVIOContext; str : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Convert an UTF-8 string to UTF-16BE and write it.
  -- * @param s the AVIOContext
  -- * @param str NULL-terminated UTF-8 string
  -- *
  -- * @return number of bytes written.
  --

   function put_str16be (s : access AVIOContext; str : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Mark the written bytestream as a specific type.
  -- *
  -- * Zero-length ranges are omitted from the output.
  -- *
  -- * @param time the stream time the current bytestream pos corresponds to
  -- *             (in AV_TIME_BASE units), or AV_NOPTS_VALUE if unknown or not
  -- *             applicable
  -- * @param type the kind of data written starting at the current pos
  --

   procedure write_marker
     (s : access AVIOContext;
      time : Interfaces.Integer_64;
      c_type : AVIODataMarkerType);


  --*
  -- * ORing this as the "whence" parameter to a seek function causes it to
  -- * return the filesize without seeking anywhere. Supporting this is optional.
  -- * If it is not supported then the seek function will return <0.
  --

  --*
  -- * Passing this flag as the "whence" parameter to a seek function causes it to
  -- * seek by any means (like reopening and linear reading) or other normally unreasonable
  -- * means that can be extremely slow.
  -- * This may be ignored by the seek code.
  --

  --*
  -- * fseek() equivalent for AVIOContext.
  -- * @return new position or AVERROR.
  --

   function seek
     (s : access AVIOContext;
      offset : Interfaces.Integer_64;
      whence : int) return Interfaces.Integer_64;


  --*
  -- * Skip given number of bytes forward
  -- * @return new position or AVERROR.
  --

   function skip (s : access AVIOContext; offset : Interfaces.Integer_64) return Interfaces.Integer_64;


  --*
  -- * ftell() equivalent for AVIOContext.
  -- * @return position or AVERROR.
  --

   function tell (s : access AVIOContext) return Interfaces.Integer_64;


  --*
  -- * Get the filesize.
  -- * @return filesize or AVERROR
  --

   function size (s : access AVIOContext) return Interfaces.Integer_64;


  --*
  -- * feof() equivalent for AVIOContext.
  -- * @return non zero if and only if end of file
  --

   function feof (s : access AVIOContext) return int;


  --*
  -- * @deprecated use feof()
  --

   function url_feof (s : access AVIOContext) return int;


  --* @warning Writes up to 4 KiB per call
   function printf (s : access AVIOContext; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int;


  --*
  -- * Force flushing of buffered data.
  -- *
  -- * For write streams, force the buffered data to be immediately written to the output,
  -- * without to wait to fill the internal buffer.
  -- *
  -- * For read streams, discard all currently buffered data, and advance the
  -- * reported file position to that of the underlying stream. This does not
  -- * read new data, and does not perform any seeks.
  --

   procedure flush (s : access AVIOContext);


  --*
  -- * Read size bytes from AVIOContext into buf.
  -- * @return number of bytes read or AVERROR
  --

   function read
     (s : access AVIOContext;
      buf : access unsigned_char;
      size : int) return int;


  --*
  -- * @name Functions for reading from AVIOContext
  -- * @{
  -- *
  -- * @note return 0 if EOF, so you cannot use it if EOF handling is
  -- *       necessary
  --

   function r8 (s : access AVIOContext) return int;


   function rl16 (s : access AVIOContext) return unsigned;


   function rl24 (s : access AVIOContext) return unsigned;


   function rl32 (s : access AVIOContext) return unsigned;


   function rl64 (s : access AVIOContext) return Interfaces.Unsigned_64;


   function rb16 (s : access AVIOContext) return unsigned;


   function rb24 (s : access AVIOContext) return unsigned;


   function rb32 (s : access AVIOContext) return unsigned;


   function rb64 (s : access AVIOContext) return Interfaces.Unsigned_64;


  --*
  -- * @}
  --

  --*
  -- * Read a string from pb into buf. The reading will terminate when either
  -- * a NULL character was encountered, maxlen bytes have been read, or nothing
  -- * more can be read from pb. The result is guaranteed to be NULL-terminated, it
  -- * will be truncated if buf is too small.
  -- * Note that the string is not interpreted or validated in any way, it
  -- * might get truncated in the middle of a sequence for multi-byte encodings.
  -- *
  -- * @return number of bytes read (is always <= maxlen).
  -- * If reading ends on EOF or error, the return value will be one more than
  -- * bytes actually read.
  --

   function get_str
     (pb : access AVIOContext;
      maxlen : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int) return int;


  --*
  -- * Read a UTF-16 string from pb and convert it to UTF-8.
  -- * The reading will terminate when either a null or invalid character was
  -- * encountered or maxlen bytes have been read.
  -- * @return number of bytes read (is always <= maxlen)
  --

   function get_str16le
     (pb : access AVIOContext;
      maxlen : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int) return int;


   function get_str16be
     (pb : access AVIOContext;
      maxlen : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int) return int;


  --*
  -- * @name URL open modes
  -- * The flags argument to open must be one of the following
  -- * constants, optionally ORed with other flags.
  -- * @{
  --

  --*
  -- * @}
  --

  --*
  -- * Use non-blocking mode.
  -- * If this flag is set, operations on the context will return
  -- * AVERROR(EAGAIN) if they can not be performed immediately.
  -- * If this flag is not set, operations on the context will never return
  -- * AVERROR(EAGAIN).
  -- * Note that this flag does not affect the opening/connecting of the
  -- * context. Connecting a protocol will always block if necessary (e.g. on
  -- * network protocols) but never hang (e.g. on busy devices).
  -- * Warning: non-blocking protocols is work-in-progress; this flag may be
  -- * silently ignored.
  --

  --*
  -- * Use direct mode.
  -- * read and write should if possible be satisfied directly
  -- * instead of going through a buffer, and seek will always
  -- * call the underlying seek function directly.
  --

  --*
  -- * Create and initialize a AVIOContext for accessing the
  -- * resource indicated by url.
  -- * @note When the resource indicated by url has been opened in
  -- * read+write mode, the AVIOContext can be used only for writing.
  -- *
  -- * @param s Used to return the pointer to the created AVIOContext.
  -- * In case of failure the pointed to value is set to NULL.
  -- * @param url resource to access
  -- * @param flags flags which control how the resource indicated by url
  -- * is to be opened
  -- * @return >= 0 in case of success, a negative value corresponding to an
  -- * AVERROR code in case of failure
  --

   function open
     (s : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      flags : int) return int;


  --*
  -- * Create and initialize a AVIOContext for accessing the
  -- * resource indicated by url.
  -- * @note When the resource indicated by url has been opened in
  -- * read+write mode, the AVIOContext can be used only for writing.
  -- *
  -- * @param s Used to return the pointer to the created AVIOContext.
  -- * In case of failure the pointed to value is set to NULL.
  -- * @param url resource to access
  -- * @param flags flags which control how the resource indicated by url
  -- * is to be opened
  -- * @param int_cb an interrupt callback to be used at the protocols level
  -- * @param options  A dictionary filled with protocol-private options. On return
  -- * this parameter will be destroyed and replaced with a dict containing options
  -- * that were not found. May be NULL.
  -- * @return >= 0 in case of success, a negative value corresponding to an
  -- * AVERROR code in case of failure
  --

   function open2
     (s : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      flags : int;
      int_cb : access constant AVIOInterruptCB;
      options : System.Address) return int;


  --*
  -- * Close the resource accessed by the AVIOContext s and free it.
  -- * This function can only be used if s was opened by open().
  -- *
  -- * The internal buffer is automatically flushed before closing the
  -- * resource.
  -- *
  -- * @return 0 on success, an AVERROR < 0 on error.
  -- * @see closep
  --

   function close (s : access AVIOContext) return int;


  --*
  -- * Close the resource accessed by the AVIOContext *s, free it
  -- * and set the pointer pointing to it to NULL.
  -- * This function can only be used if s was opened by open().
  -- *
  -- * The internal buffer is automatically flushed before closing the
  -- * resource.
  -- *
  -- * @return 0 on success, an AVERROR < 0 on error.
  -- * @see close
  --

   function closep (s : System.Address) return int;


  --*
  -- * Open a write only memory stream.
  -- *
  -- * @param s new IO context
  -- * @return zero if no error.
  --

   function open_dyn_buf (s : System.Address) return int;


  --*
  -- * Return the written size and a pointer to the buffer.
  -- * The AVIOContext stream is left intact.
  -- * The buffer must NOT be freed.
  -- * No padding is added to the buffer.
  -- *
  -- * @param s IO context
  -- * @param pbuffer pointer to a byte buffer
  -- * @return the length of the byte buffer
  --

   function get_dyn_buf (s : access AVIOContext; pbuffer : System.Address) return int;


  --*
  -- * Return the written size and a pointer to the buffer. The buffer
  -- * must be freed with av_free().
  -- * Padding of AV_INPUT_BUFFER_PADDING_SIZE is added to the buffer.
  -- *
  -- * @param s IO context
  -- * @param pbuffer pointer to a byte buffer
  -- * @return the length of the byte buffer
  --

   function close_dyn_buf (s : access AVIOContext; pbuffer : System.Address) return int;


  --*
  -- * Iterate through names of available protocols.
  -- *
  -- * @param opaque A private pointer representing current protocol.
  -- *        It must be a pointer to NULL on first iteration and will
  -- *        be updated by successive calls to enum_protocols.
  -- * @param output If set to 1, iterate over output protocols,
  -- *               otherwise over input protocols.
  -- *
  -- * @return A static string containing the name of current protocol or NULL
  --

   function enum_protocols (opaque : System.Address; output : int) return String;


  --*
  -- * Pause and resume playing - only meaningful if using a network streaming
  -- * protocol (e.g. MMS).
  -- *
  -- * @param h     IO context from which to call the read_pause function pointer
  -- * @param pause 1 for pause, 0 for resume
  --

   function pause (h : access AVIOContext; pause : int) return int;


  --*
  -- * Seek to a given timestamp relative to some component stream.
  -- * Only meaningful if using a network streaming protocol (e.g. MMS.).
  -- *
  -- * @param h IO context from which to call the seek function pointers
  -- * @param stream_index The stream index that the timestamp is relative to.
  -- *        If stream_index is (-1) the timestamp should be in AV_TIME_BASE
  -- *        units from the beginning of the presentation.
  -- *        If a stream_index >= 0 is used and the protocol does not support
  -- *        seeking based on component streams, the call will fail.
  -- * @param timestamp timestamp in AVStream.time_base units
  -- *        or if there is no stream specified then in AV_TIME_BASE units.
  -- * @param flags Optional combination of AVSEEK_FLAG_BACKWARD, AVSEEK_FLAG_BYTE
  -- *        and AVSEEK_FLAG_ANY. The protocol may silently ignore
  -- *        AVSEEK_FLAG_BACKWARD and AVSEEK_FLAG_ANY, but AVSEEK_FLAG_BYTE will
  -- *        fail if used and not supported.
  -- * @return >= 0 on success
  -- * @see AVInputFormat::read_seek
  --

   function seek_time
     (h : access AVIOContext;
      stream_index : int;
      timestamp : Interfaces.Integer_64;
      flags : int) return Interfaces.Integer_64;


  -- Avoid a warning. The header can not be included because it breaks c++.
  --*
  -- * Read contents of h into print buffer, up to max_size bytes, or up to EOF.
  -- *
  -- * @return 0 for success (max_size bytes read or EOF reached), negative error
  -- * code otherwise
  --

   function read_to_bprint
     (h : access AVIOContext;
      pb : System.Address;
      max_size : size_t) return int;


  --*
  -- * Accept and allocate a client context on a server context.
  -- * @param  s the server context
  -- * @param  c the client context, must be unallocated
  -- * @return   >= 0 on success or a negative value corresponding
  -- *           to an AVERROR on failure
  --

   function av_accept (s : access AVIOContext; c : System.Address) return int;


  --*
  -- * Perform one step of the protocol handshake to accept a new client.
  -- * This function must be called on a client returned by accept() before
  -- * using it as a read/write context.
  -- * It is separate from accept() because it may block.
  -- * A step of the handshake is defined by places where the application may
  -- * decide to change the proceedings.
  -- * For example, on a protocol with a request header and a reply header, each
  -- * one can constitute a step because the application may use the parameters
  -- * from the request to change parameters in the reply; or each individual
  -- * chunk of the request can constitute a step.
  -- * If the handshake is already finished, handshake() does nothing and
  -- * returns 0 immediately.
  -- *
  -- * @param  c the client context to perform the handshake on
  -- * @return   0   on a complete and successful handshake
  -- *           > 0 if the handshake progressed, but is not complete
  -- *           < 0 for an AVERROR code
  --

   function handshake (c : access AVIOContext) return int;


end FFMpeg.avio;
