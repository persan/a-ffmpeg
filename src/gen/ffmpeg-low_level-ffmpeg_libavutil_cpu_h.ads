pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package FFMpeg.Low_Level.ffmpeg_libavutil_cpu_h is

   AV_CPU_FLAG_FORCE : constant := 16#80000000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:26

   AV_CPU_FLAG_MMX : constant := 16#0001#;  --  /usr/include/ffmpeg/libavutil/cpu.h:29
   AV_CPU_FLAG_MMXEXT : constant := 16#0002#;  --  /usr/include/ffmpeg/libavutil/cpu.h:30
   AV_CPU_FLAG_MMX2 : constant := 16#0002#;  --  /usr/include/ffmpeg/libavutil/cpu.h:31
   AV_CPU_FLAG_3DNOW : constant := 16#0004#;  --  /usr/include/ffmpeg/libavutil/cpu.h:32
   AV_CPU_FLAG_SSE : constant := 16#0008#;  --  /usr/include/ffmpeg/libavutil/cpu.h:33
   AV_CPU_FLAG_SSE2 : constant := 16#0010#;  --  /usr/include/ffmpeg/libavutil/cpu.h:34
   AV_CPU_FLAG_SSE2SLOW : constant := 16#40000000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:35

   AV_CPU_FLAG_3DNOWEXT : constant := 16#0020#;  --  /usr/include/ffmpeg/libavutil/cpu.h:37
   AV_CPU_FLAG_SSE3 : constant := 16#0040#;  --  /usr/include/ffmpeg/libavutil/cpu.h:38
   AV_CPU_FLAG_SSE3SLOW : constant := 16#20000000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:39

   AV_CPU_FLAG_SSSE3 : constant := 16#0080#;  --  /usr/include/ffmpeg/libavutil/cpu.h:41
   AV_CPU_FLAG_SSSE3SLOW : constant := 16#4000000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:42
   AV_CPU_FLAG_ATOM : constant := 16#10000000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:43
   AV_CPU_FLAG_SSE4 : constant := 16#0100#;  --  /usr/include/ffmpeg/libavutil/cpu.h:44
   AV_CPU_FLAG_SSE42 : constant := 16#0200#;  --  /usr/include/ffmpeg/libavutil/cpu.h:45
   AV_CPU_FLAG_AESNI : constant := 16#80000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:46
   AV_CPU_FLAG_AVX : constant := 16#4000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:47
   AV_CPU_FLAG_AVXSLOW : constant := 16#8000000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:48
   AV_CPU_FLAG_XOP : constant := 16#0400#;  --  /usr/include/ffmpeg/libavutil/cpu.h:49
   AV_CPU_FLAG_FMA4 : constant := 16#0800#;  --  /usr/include/ffmpeg/libavutil/cpu.h:50
   AV_CPU_FLAG_CMOV : constant := 16#1000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:51
   AV_CPU_FLAG_AVX2 : constant := 16#8000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:52
   AV_CPU_FLAG_FMA3 : constant := 16#10000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:53
   AV_CPU_FLAG_BMI1 : constant := 16#20000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:54
   AV_CPU_FLAG_BMI2 : constant := 16#40000#;  --  /usr/include/ffmpeg/libavutil/cpu.h:55

   AV_CPU_FLAG_ALTIVEC : constant := 16#0001#;  --  /usr/include/ffmpeg/libavutil/cpu.h:57
   AV_CPU_FLAG_VSX : constant := 16#0002#;  --  /usr/include/ffmpeg/libavutil/cpu.h:58
   AV_CPU_FLAG_POWER8 : constant := 16#0004#;  --  /usr/include/ffmpeg/libavutil/cpu.h:59

   AV_CPU_FLAG_ARMV5TE : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavutil/cpu.h:61
   AV_CPU_FLAG_ARMV6 : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavutil/cpu.h:62
   AV_CPU_FLAG_ARMV6T2 : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavutil/cpu.h:63
   AV_CPU_FLAG_VFP : constant := (2 ** 3);  --  /usr/include/ffmpeg/libavutil/cpu.h:64
   AV_CPU_FLAG_VFPV3 : constant := (2 ** 4);  --  /usr/include/ffmpeg/libavutil/cpu.h:65
   AV_CPU_FLAG_NEON : constant := (2 ** 5);  --  /usr/include/ffmpeg/libavutil/cpu.h:66
   AV_CPU_FLAG_ARMV8 : constant := (2 ** 6);  --  /usr/include/ffmpeg/libavutil/cpu.h:67
   AV_CPU_FLAG_VFP_VM : constant := (2 ** 7);  --  /usr/include/ffmpeg/libavutil/cpu.h:68
   AV_CPU_FLAG_SETEND : constant := (2 **16);  --  /usr/include/ffmpeg/libavutil/cpu.h:69

  -- * Copyright (c) 2000, 2001, 2002 Fabrice Bellard
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

  -- lower 16 bits - CPU features  
  --/< than regular MMX/SSE (e.g. Core1)
  --/< than regular MMX/SSE (e.g. Core1)
  --*
  -- * Return the flags which specify extensions supported by the CPU.
  -- * The returned value is affected by av_force_cpu_flags() if that was used
  -- * before. So av_get_cpu_flags() can easily be used in an application to
  -- * detect the enabled cpu flags.
  --  

   function av_get_cpu_flags return int;  -- /usr/include/ffmpeg/libavutil/cpu.h:77
   pragma Import (C, av_get_cpu_flags, "av_get_cpu_flags");

  --*
  -- * Disables cpu detection and forces the specified flags.
  -- * -1 is a special case that disables forcing of specific flags.
  --  

   procedure av_force_cpu_flags (flags : int);  -- /usr/include/ffmpeg/libavutil/cpu.h:83
   pragma Import (C, av_force_cpu_flags, "av_force_cpu_flags");

  --*
  -- * Set a mask on flags returned by av_get_cpu_flags().
  -- * This function is mainly useful for testing.
  -- * Please use av_force_cpu_flags() and av_get_cpu_flags() instead which are more flexible
  --  

   procedure av_set_cpu_flags_mask (mask : int);  -- /usr/include/ffmpeg/libavutil/cpu.h:90
   pragma Import (C, av_set_cpu_flags_mask, "av_set_cpu_flags_mask");

  --*
  -- * Parse CPU flags from a string.
  -- *
  -- * The returned flags contain the specified flags as well as related unspecified flags.
  -- *
  -- * This function exists only for compatibility with libav.
  -- * Please use av_parse_cpu_caps() when possible.
  -- * @return a combination of AV_CPU_* flags, negative on error.
  --  

   function av_parse_cpu_flags (s : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavutil/cpu.h:102
   pragma Import (C, av_parse_cpu_flags, "av_parse_cpu_flags");

  --*
  -- * Parse CPU caps from a string and update the given AV_CPU_* flags based on that.
  -- *
  -- * @return negative on error.
  --  

   function av_parse_cpu_caps (flags : access unsigned; s : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavutil/cpu.h:109
   pragma Import (C, av_parse_cpu_caps, "av_parse_cpu_caps");

  --*
  -- * @return the number of logical CPU cores present.
  --  

   function av_cpu_count return int;  -- /usr/include/ffmpeg/libavutil/cpu.h:114
   pragma Import (C, av_cpu_count, "av_cpu_count");

end FFMpeg.Low_Level.ffmpeg_libavutil_cpu_h;
