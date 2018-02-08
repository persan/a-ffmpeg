pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;


package FFMpeg.Low_Level.ffmpeg_libavutil_error_h is

   --  arg-macro: function AVERROR (e)
   --    return -(e);
   --  arg-macro: function AVUNERROR (e)
   --    return -(e);
   --  arg-macro: function FFERRTAG (a, b, c, d)
   --    return -(int)MKTAG(a, b, c, d);
   --  unsupported macro: AVERROR_BSF_NOT_FOUND FFERRTAG(0xF8,'B','S','F')
   --  unsupported macro: AVERROR_BUG FFERRTAG( 'B','U','G','!')
   --  unsupported macro: AVERROR_BUFFER_TOO_SMALL FFERRTAG( 'B','U','F','S')
   --  unsupported macro: AVERROR_DECODER_NOT_FOUND FFERRTAG(0xF8,'D','E','C')
   --  unsupported macro: AVERROR_DEMUXER_NOT_FOUND FFERRTAG(0xF8,'D','E','M')
   --  unsupported macro: AVERROR_ENCODER_NOT_FOUND FFERRTAG(0xF8,'E','N','C')
   --  unsupported macro: AVERROR_EOF FFERRTAG( 'E','O','F',' ')
   --  unsupported macro: AVERROR_EXIT FFERRTAG( 'E','X','I','T')
   --  unsupported macro: AVERROR_EXTERNAL FFERRTAG( 'E','X','T',' ')
   --  unsupported macro: AVERROR_FILTER_NOT_FOUND FFERRTAG(0xF8,'F','I','L')
   --  unsupported macro: AVERROR_INVALIDDATA FFERRTAG( 'I','N','D','A')
   --  unsupported macro: AVERROR_MUXER_NOT_FOUND FFERRTAG(0xF8,'M','U','X')
   --  unsupported macro: AVERROR_OPTION_NOT_FOUND FFERRTAG(0xF8,'O','P','T')
   --  unsupported macro: AVERROR_PATCHWELCOME FFERRTAG( 'P','A','W','E')
   --  unsupported macro: AVERROR_PROTOCOL_NOT_FOUND FFERRTAG(0xF8,'P','R','O')
   --  unsupported macro: AVERROR_STREAM_NOT_FOUND FFERRTAG(0xF8,'S','T','R')
   --  unsupported macro: AVERROR_BUG2 FFERRTAG( 'B','U','G',' ')
   --  unsupported macro: AVERROR_UNKNOWN FFERRTAG( 'U','N','K','N')
   AVERROR_EXPERIMENTAL : constant := (-16#2bb2afa8#);  --  /usr/include/ffmpeg/libavutil/error.h:72
   AVERROR_INPUT_CHANGED : constant := (-16#636e6701#);  --  /usr/include/ffmpeg/libavutil/error.h:73
   AVERROR_OUTPUT_CHANGED : constant := (-16#636e6702#);  --  /usr/include/ffmpeg/libavutil/error.h:74
   --  unsupported macro: AVERROR_HTTP_BAD_REQUEST FFERRTAG(0xF8,'4','0','0')
   --  unsupported macro: AVERROR_HTTP_UNAUTHORIZED FFERRTAG(0xF8,'4','0','1')
   --  unsupported macro: AVERROR_HTTP_FORBIDDEN FFERRTAG(0xF8,'4','0','3')
   --  unsupported macro: AVERROR_HTTP_NOT_FOUND FFERRTAG(0xF8,'4','0','4')
   --  unsupported macro: AVERROR_HTTP_OTHER_4XX FFERRTAG(0xF8,'4','X','X')
   --  unsupported macro: AVERROR_HTTP_SERVER_ERROR FFERRTAG(0xF8,'5','X','X')

   AV_ERROR_MAX_STRING_SIZE : constant := 64;  --  /usr/include/ffmpeg/libavutil/error.h:83
   --  arg-macro: procedure av_err2str (errnum)
   --    av_make_error_string((char(AV_ERROR_MAX_STRING_SIZE)){0}, AV_ERROR_MAX_STRING_SIZE, errnum)

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
  -- * error code definitions
  --  

  --*
  -- * @addtogroup lavu_error
  -- *
  -- * @{
  --  

  -- error handling  
  -- Some platforms have E* and errno already negated.  
  --*
  -- * This is semantically identical to AVERROR_BUG
  -- * it has been introduced in Libav after our AVERROR_BUG and with a modified value.
  --  

  -- HTTP & RTSP errors  
  --*
  -- * Put a description of the AVERROR code errnum in errbuf.
  -- * In case of failure the global variable errno is set to indicate the
  -- * error. Even in case of failure av_strerror() will print a generic
  -- * error message indicating the errnum provided to errbuf.
  -- *
  -- * @param errnum      error code to describe
  -- * @param errbuf      buffer to which description is written
  -- * @param errbuf_size the size in bytes of errbuf
  -- * @return 0 on success, a negative value if a description for errnum
  -- * cannot be found
  --  

   function av_strerror
     (errnum : int;
      errbuf : Interfaces.C.Strings.chars_ptr;
      errbuf_size : size_t) return int;  -- /usr/include/ffmpeg/libavutil/error.h:97
   pragma Import (C, av_strerror, "av_strerror");

  --*
  -- * Fill the provided buffer with a string containing an error string
  -- * corresponding to the AVERROR code errnum.
  -- *
  -- * @param errbuf         a buffer
  -- * @param errbuf_size    size in bytes of errbuf
  -- * @param errnum         error code to describe
  -- * @return the buffer in input, filled with the error description
  -- * @see av_strerror()
  --  

   function av_make_error_string
     (errbuf : Interfaces.C.Strings.chars_ptr;
      errbuf_size : size_t;
      errnum : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/error.h:109
   pragma Import (C, av_make_error_string, "av_make_error_string");

  --*
  -- * Convenience macro, the return value should be used only directly in
  -- * function arguments but never stand-alone.
  --  

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_error_h;
