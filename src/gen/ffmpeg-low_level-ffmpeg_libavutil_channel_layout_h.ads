pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;


package FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h is

   AV_CH_FRONT_LEFT : constant := 16#00000001#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:49
   AV_CH_FRONT_RIGHT : constant := 16#00000002#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:50
   AV_CH_FRONT_CENTER : constant := 16#00000004#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:51
   AV_CH_LOW_FREQUENCY : constant := 16#00000008#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:52
   AV_CH_BACK_LEFT : constant := 16#00000010#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:53
   AV_CH_BACK_RIGHT : constant := 16#00000020#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:54
   AV_CH_FRONT_LEFT_OF_CENTER : constant := 16#00000040#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:55
   AV_CH_FRONT_RIGHT_OF_CENTER : constant := 16#00000080#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:56
   AV_CH_BACK_CENTER : constant := 16#00000100#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:57
   AV_CH_SIDE_LEFT : constant := 16#00000200#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:58
   AV_CH_SIDE_RIGHT : constant := 16#00000400#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:59
   AV_CH_TOP_CENTER : constant := 16#00000800#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:60
   AV_CH_TOP_FRONT_LEFT : constant := 16#00001000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:61
   AV_CH_TOP_FRONT_CENTER : constant := 16#00002000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:62
   AV_CH_TOP_FRONT_RIGHT : constant := 16#00004000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:63
   AV_CH_TOP_BACK_LEFT : constant := 16#00008000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:64
   AV_CH_TOP_BACK_CENTER : constant := 16#00010000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:65
   AV_CH_TOP_BACK_RIGHT : constant := 16#00020000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:66
   AV_CH_STEREO_LEFT : constant := 16#20000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:67
   AV_CH_STEREO_RIGHT : constant := 16#40000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:68
   AV_CH_WIDE_LEFT : constant := 16#0000000080000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:69
   AV_CH_WIDE_RIGHT : constant := 16#0000000100000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:70
   AV_CH_SURROUND_DIRECT_LEFT : constant := 16#0000000200000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:71
   AV_CH_SURROUND_DIRECT_RIGHT : constant := 16#0000000400000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:72
   AV_CH_LOW_FREQUENCY_2 : constant := 16#0000000800000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:73

   AV_CH_LAYOUT_NATIVE : constant := 16#8000000000000000#;  --  /usr/include/ffmpeg/libavutil/channel_layout.h:78
   --  unsupported macro: AV_CH_LAYOUT_MONO (AV_CH_FRONT_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_STEREO (AV_CH_FRONT_LEFT|AV_CH_FRONT_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_2POINT1 (AV_CH_LAYOUT_STEREO|AV_CH_LOW_FREQUENCY)
   --  unsupported macro: AV_CH_LAYOUT_2_1 (AV_CH_LAYOUT_STEREO|AV_CH_BACK_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_SURROUND (AV_CH_LAYOUT_STEREO|AV_CH_FRONT_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_3POINT1 (AV_CH_LAYOUT_SURROUND|AV_CH_LOW_FREQUENCY)
   --  unsupported macro: AV_CH_LAYOUT_4POINT0 (AV_CH_LAYOUT_SURROUND|AV_CH_BACK_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_4POINT1 (AV_CH_LAYOUT_4POINT0|AV_CH_LOW_FREQUENCY)
   --  unsupported macro: AV_CH_LAYOUT_2_2 (AV_CH_LAYOUT_STEREO|AV_CH_SIDE_LEFT|AV_CH_SIDE_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_QUAD (AV_CH_LAYOUT_STEREO|AV_CH_BACK_LEFT|AV_CH_BACK_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_5POINT0 (AV_CH_LAYOUT_SURROUND|AV_CH_SIDE_LEFT|AV_CH_SIDE_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_5POINT1 (AV_CH_LAYOUT_5POINT0|AV_CH_LOW_FREQUENCY)
   --  unsupported macro: AV_CH_LAYOUT_5POINT0_BACK (AV_CH_LAYOUT_SURROUND|AV_CH_BACK_LEFT|AV_CH_BACK_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_5POINT1_BACK (AV_CH_LAYOUT_5POINT0_BACK|AV_CH_LOW_FREQUENCY)
   --  unsupported macro: AV_CH_LAYOUT_6POINT0 (AV_CH_LAYOUT_5POINT0|AV_CH_BACK_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_6POINT0_FRONT (AV_CH_LAYOUT_2_2|AV_CH_FRONT_LEFT_OF_CENTER|AV_CH_FRONT_RIGHT_OF_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_HEXAGONAL (AV_CH_LAYOUT_5POINT0_BACK|AV_CH_BACK_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_6POINT1 (AV_CH_LAYOUT_5POINT1|AV_CH_BACK_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_6POINT1_BACK (AV_CH_LAYOUT_5POINT1_BACK|AV_CH_BACK_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_6POINT1_FRONT (AV_CH_LAYOUT_6POINT0_FRONT|AV_CH_LOW_FREQUENCY)
   --  unsupported macro: AV_CH_LAYOUT_7POINT0 (AV_CH_LAYOUT_5POINT0|AV_CH_BACK_LEFT|AV_CH_BACK_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_7POINT0_FRONT (AV_CH_LAYOUT_5POINT0|AV_CH_FRONT_LEFT_OF_CENTER|AV_CH_FRONT_RIGHT_OF_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_7POINT1 (AV_CH_LAYOUT_5POINT1|AV_CH_BACK_LEFT|AV_CH_BACK_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_7POINT1_WIDE (AV_CH_LAYOUT_5POINT1|AV_CH_FRONT_LEFT_OF_CENTER|AV_CH_FRONT_RIGHT_OF_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_7POINT1_WIDE_BACK (AV_CH_LAYOUT_5POINT1_BACK|AV_CH_FRONT_LEFT_OF_CENTER|AV_CH_FRONT_RIGHT_OF_CENTER)
   --  unsupported macro: AV_CH_LAYOUT_OCTAGONAL (AV_CH_LAYOUT_5POINT0|AV_CH_BACK_LEFT|AV_CH_BACK_CENTER|AV_CH_BACK_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_HEXADECAGONAL (AV_CH_LAYOUT_OCTAGONAL|AV_CH_WIDE_LEFT|AV_CH_WIDE_RIGHT|AV_CH_TOP_BACK_LEFT|AV_CH_TOP_BACK_RIGHT|AV_CH_TOP_BACK_CENTER|AV_CH_TOP_FRONT_CENTER|AV_CH_TOP_FRONT_LEFT|AV_CH_TOP_FRONT_RIGHT)
   --  unsupported macro: AV_CH_LAYOUT_STEREO_DOWNMIX (AV_CH_STEREO_LEFT|AV_CH_STEREO_RIGHT)

  -- * Copyright (c) 2006 Michael Niedermayer <michaelni@gmx.at>
  -- * Copyright (c) 2008 Peter Ross
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
  -- * audio channel layout utility functions
  --  

  --*
  -- * @addtogroup lavu_audio
  -- * @{
  --  

  --*
  -- * @defgroup channel_masks Audio channel masks
  -- *
  -- * A channel layout is a 64-bits integer with a bit set for every channel.
  -- * The number of bits set must be equal to the number of channels.
  -- * The value 0 means that the channel layout is not known.
  -- * @note this data structure is not powerful enough to handle channels
  -- * combinations that have the same channel multiple times, such as
  -- * dual-mono.
  -- *
  -- * @{
  --  

  --* Channel mask value used for AVCodecContext.request_channel_layout
  --    to indicate that the user requests the channel order of the decoder output
  --    to be the native codec channel order.  

  --*
  -- * @}
  -- * @defgroup channel_mask_c Audio channel layouts
  -- * @{
  -- *  

   type AVMatrixEncoding is 
     (AV_MATRIX_ENCODING_NONE,
      AV_MATRIX_ENCODING_DOLBY,
      AV_MATRIX_ENCODING_DPLII,
      AV_MATRIX_ENCODING_DPLIIX,
      AV_MATRIX_ENCODING_DPLIIZ,
      AV_MATRIX_ENCODING_DOLBYEX,
      AV_MATRIX_ENCODING_DOLBYHEADPHONE,
      AV_MATRIX_ENCODING_NB);
   pragma Convention (C, AVMatrixEncoding);  -- /usr/include/ffmpeg/libavutil/channel_layout.h:114

  --*
  -- * Return a channel layout id that matches name, or 0 if no match is found.
  -- *
  -- * name can be one or several of the following notations,
  -- * separated by '+' or '|':
  -- * - the name of an usual channel layout (mono, stereo, 4.0, quad, 5.0,
  -- *   5.0(side), 5.1, 5.1(side), 7.1, 7.1(wide), downmix);
  -- * - the name of a single channel (FL, FR, FC, LFE, BL, BR, FLC, FRC, BC,
  -- *   SL, SR, TC, TFL, TFC, TFR, TBL, TBC, TBR, DL, DR);
  -- * - a number of channels, in decimal, followed by 'c', yielding
  -- *   the default channel layout for that number of channels (@see
  -- *   av_get_default_channel_layout);
  -- * - a channel layout mask, in hexadecimal starting with "0x" (see the
  -- *   AV_CH_* macros).
  -- *
  -- * Example: "stereo+FC" = "2c+FC" = "2c+1c" = "0x7"
  --  

   function av_get_channel_layout (name : Interfaces.C.Strings.chars_ptr) return Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:142
   pragma Import (C, av_get_channel_layout, "av_get_channel_layout");

  --*
  -- * Return a channel layout and the number of channels based on the specified name.
  -- *
  -- * This function is similar to (@see av_get_channel_layout), but can also parse
  -- * unknown channel layout specifications.
  -- *
  -- * @param[in]  name             channel layout specification string
  -- * @param[out] channel_layout   parsed channel layout (0 if unknown)
  -- * @param[out] nb_channels      number of channels
  -- *
  -- * @return 0 on success, AVERROR(EINVAL) if the parsing fails.
  --  

   function av_get_extended_channel_layout
     (name : Interfaces.C.Strings.chars_ptr;
      channel_layout : access Interfaces.Unsigned_64;
      nb_channels : access int) return int;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:156
   pragma Import (C, av_get_extended_channel_layout, "av_get_extended_channel_layout");

  --*
  -- * Return a description of a channel layout.
  -- * If nb_channels is <= 0, it is guessed from the channel_layout.
  -- *
  -- * @param buf put here the string containing the channel layout
  -- * @param buf_size size in bytes of the buffer
  --  

   procedure av_get_channel_layout_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      nb_channels : int;
      channel_layout : Interfaces.Unsigned_64);  -- /usr/include/ffmpeg/libavutil/channel_layout.h:165
   pragma Import (C, av_get_channel_layout_string, "av_get_channel_layout_string");

   --  skipped empty struct AVBPrint

  --*
  -- * Append a description of a channel layout to a bprint buffer.
  --  

   procedure av_bprint_channel_layout
     (bp : System.Address;
      nb_channels : int;
      channel_layout : Interfaces.Unsigned_64);  -- /usr/include/ffmpeg/libavutil/channel_layout.h:171
   pragma Import (C, av_bprint_channel_layout, "av_bprint_channel_layout");

  --*
  -- * Return the number of channels in the channel layout.
  --  

   function av_get_channel_layout_nb_channels (channel_layout : Interfaces.Unsigned_64) return int;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:176
   pragma Import (C, av_get_channel_layout_nb_channels, "av_get_channel_layout_nb_channels");

  --*
  -- * Return default channel layout for a given number of channels.
  --  

   function av_get_default_channel_layout (nb_channels : int) return Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:181
   pragma Import (C, av_get_default_channel_layout, "av_get_default_channel_layout");

  --*
  -- * Get the index of a channel in channel_layout.
  -- *
  -- * @param channel a channel layout describing exactly one channel which must be
  -- *                present in channel_layout.
  -- *
  -- * @return index of channel in channel_layout on success, a negative AVERROR
  -- *         on error.
  --  

   function av_get_channel_layout_channel_index (channel_layout : Interfaces.Unsigned_64; channel : Interfaces.Unsigned_64) return int;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:192
   pragma Import (C, av_get_channel_layout_channel_index, "av_get_channel_layout_channel_index");

  --*
  -- * Get the channel with the given index in channel_layout.
  --  

   function av_channel_layout_extract_channel (channel_layout : Interfaces.Unsigned_64; index : int) return Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:198
   pragma Import (C, av_channel_layout_extract_channel, "av_channel_layout_extract_channel");

  --*
  -- * Get the name of a given channel.
  -- *
  -- * @return channel name on success, NULL on error.
  --  

   function av_get_channel_name (channel : Interfaces.Unsigned_64) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:205
   pragma Import (C, av_get_channel_name, "av_get_channel_name");

  --*
  -- * Get the description of a given channel.
  -- *
  -- * @param channel  a channel layout with a single channel
  -- * @return  channel description on success, NULL on error
  --  

   function av_get_channel_description (channel : Interfaces.Unsigned_64) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:213
   pragma Import (C, av_get_channel_description, "av_get_channel_description");

  --*
  -- * Get the value and name of a standard channel layout.
  -- *
  -- * @param[in]  index   index in an internal list, starting at 0
  -- * @param[out] layout  channel layout mask
  -- * @param[out] name    name of the layout
  -- * @return  0  if the layout exists,
  -- *          <0 if index is beyond the limits
  --  

   function av_get_standard_channel_layout
     (index : unsigned;
      layout : access Interfaces.Unsigned_64;
      name : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/channel_layout.h:224
   pragma Import (C, av_get_standard_channel_layout, "av_get_standard_channel_layout");

  --*
  -- * @}
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_channel_layout_h;
