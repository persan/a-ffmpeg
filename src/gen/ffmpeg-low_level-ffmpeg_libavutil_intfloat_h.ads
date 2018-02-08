pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package FFMpeg.Low_Level.ffmpeg_libavutil_intfloat_h is

  -- * Copyright (c) 2011 Mans Rullgard
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

   type av_intfloat32 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            i : aliased Interfaces.Unsigned_32;  -- /usr/include/ffmpeg/libavutil/intfloat.h:28
         when others =>
            f : aliased float;  -- /usr/include/ffmpeg/libavutil/intfloat.h:29
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, av_intfloat32);
   pragma Unchecked_Union (av_intfloat32);  -- /usr/include/ffmpeg/libavutil/intfloat.h:27

   type av_intfloat64 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            i : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavutil/intfloat.h:33
         when others =>
            f : aliased double;  -- /usr/include/ffmpeg/libavutil/intfloat.h:34
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, av_intfloat64);
   pragma Unchecked_Union (av_intfloat64);  -- /usr/include/ffmpeg/libavutil/intfloat.h:32

  --*
  -- * Reinterpret a 32-bit integer as a float.
  --  

   function av_int2float (i : Interfaces.Unsigned_32) return float;  -- /usr/include/ffmpeg/libavutil/intfloat.h:40
   pragma Import (C, av_int2float, "av_int2float");

  --*
  -- * Reinterpret a float as a 32-bit integer.
  --  

   function av_float2int (f : float) return Interfaces.Unsigned_32;  -- /usr/include/ffmpeg/libavutil/intfloat.h:50
   pragma Import (C, av_float2int, "av_float2int");

  --*
  -- * Reinterpret a 64-bit integer as a double.
  --  

   function av_int2double (i : Interfaces.Unsigned_64) return double;  -- /usr/include/ffmpeg/libavutil/intfloat.h:60
   pragma Import (C, av_int2double, "av_int2double");

  --*
  -- * Reinterpret a double as a 64-bit integer.
  --  

   function av_double2int (f : double) return Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavutil/intfloat.h:70
   pragma Import (C, av_double2int, "av_double2int");

end FFMpeg.Low_Level.ffmpeg_libavutil_intfloat_h;
