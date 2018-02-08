pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;



package FFMpeg.Low_Level.ffmpeg_libavutil_rational_h is

  -- * rational numbers
  -- * Copyright (c) 2003 Michael Niedermayer <michaelni@gmx.at>
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
  -- * @ingroup lavu_math_rational
  -- * Utilties for rational number calculation.
  -- * @author Michael Niedermayer <michaelni@gmx.at>
  --  

  --*
  -- * @defgroup lavu_math_rational AVRational
  -- * @ingroup lavu_math
  -- * Rational number calculation.
  -- *
  -- * While rational numbers can be expressed as floating-point numbers, the
  -- * conversion process is a lossy one, so are floating-point operations. On the
  -- * other hand, the nature of FFmpeg demands highly accurate calculation of
  -- * timestamps. This set of rational number utilities serves as a generic
  -- * interface for manipulating rational numbers as pairs of numerators and
  -- * denominators.
  -- *
  -- * Many of the functions that operate on AVRational's have the suffix `_q`, in
  -- * reference to the mathematical symbol "ℚ" (Q) which denotes the set of all
  -- * rational numbers.
  -- *
  -- * @{
  --  

  --*
  -- * Rational number (pair of numerator and denominator).
  --  

  --/< Numerator
   type AVRational is record
      num : aliased int;  -- /usr/include/ffmpeg/libavutil/rational.h:59
      den : aliased int;  -- /usr/include/ffmpeg/libavutil/rational.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, AVRational);  -- /usr/include/ffmpeg/libavutil/rational.h:58

  --/< Denominator
  --*
  -- * Create an AVRational.
  -- *
  -- * Useful for compilers that do not support compound literals.
  -- *
  -- * @note The return value is not reduced.
  -- * @see av_reduce()
  --  

   function av_make_q (num : int; den : int) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:71
   pragma Import (C, av_make_q, "av_make_q");

  --*
  -- * Compare two rationals.
  -- *
  -- * @param a First rational
  -- * @param b Second rational
  -- *
  -- * @return One of the following values:
  -- *         - 0 if `a == b`
  -- *         - 1 if `a > b`
  -- *         - -1 if `a < b`
  -- *         - `INT_MIN` if one of the values is of the form `0 / 0`
  --  

   function av_cmp_q (a : AVRational; b : AVRational) return int;  -- /usr/include/ffmpeg/libavutil/rational.h:89
   pragma Import (C, av_cmp_q, "av_cmp_q");

  --*
  -- * Convert an AVRational to a `double`.
  -- * @param a AVRational to convert
  -- * @return `a` in floating-point form
  -- * @see av_d2q()
  --  

   function av_q2d (a : AVRational) return double;  -- /usr/include/ffmpeg/libavutil/rational.h:104
   pragma Import (C, av_q2d, "av_q2d");

  --*
  -- * Reduce a fraction.
  -- *
  -- * This is useful for framerate calculations.
  -- *
  -- * @param[out] dst_num Destination numerator
  -- * @param[out] dst_den Destination denominator
  -- * @param[in]      num Source numerator
  -- * @param[in]      den Source denominator
  -- * @param[in]      max Maximum allowed values for `dst_num` & `dst_den`
  -- * @return 1 if the operation is exact, 0 otherwise
  --  

   function av_reduce
     (dst_num : access int;
      dst_den : access int;
      num : Interfaces.Integer_64;
      den : Interfaces.Integer_64;
      max : Interfaces.Integer_64) return int;  -- /usr/include/ffmpeg/libavutil/rational.h:120
   pragma Import (C, av_reduce, "av_reduce");

  --*
  -- * Multiply two rationals.
  -- * @param b First rational
  -- * @param c Second rational
  -- * @return b*c
  --  

   function av_mul_q (b : AVRational; c : AVRational) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:128
   pragma Import (C, av_mul_q, "av_mul_q");

  --*
  -- * Divide one rational by another.
  -- * @param b First rational
  -- * @param c Second rational
  -- * @return b/c
  --  

   function av_div_q (b : AVRational; c : AVRational) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:136
   pragma Import (C, av_div_q, "av_div_q");

  --*
  -- * Add two rationals.
  -- * @param b First rational
  -- * @param c Second rational
  -- * @return b+c
  --  

   function av_add_q (b : AVRational; c : AVRational) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:144
   pragma Import (C, av_add_q, "av_add_q");

  --*
  -- * Subtract one rational from another.
  -- * @param b First rational
  -- * @param c Second rational
  -- * @return b-c
  --  

   function av_sub_q (b : AVRational; c : AVRational) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:152
   pragma Import (C, av_sub_q, "av_sub_q");

  --*
  -- * Invert a rational.
  -- * @param q value
  -- * @return 1 / q
  --  

   function av_inv_q (q : AVRational) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:159
   pragma Import (C, av_inv_q, "av_inv_q");

  --*
  -- * Convert a double precision floating point number to a rational.
  -- *
  -- * In case of infinity, the returned value is expressed as `{1, 0}` or
  -- * `{-1, 0}` depending on the sign.
  -- *
  -- * @param d   `double` to convert
  -- * @param max Maximum allowed numerator and denominator
  -- * @return `d` in AVRational form
  -- * @see av_q2d()
  --  

   function av_d2q (d : double; max : int) return AVRational;  -- /usr/include/ffmpeg/libavutil/rational.h:176
   pragma Import (C, av_d2q, "av_d2q");

  --*
  -- * Find which of the two rationals is closer to another rational.
  -- *
  -- * @param q     Rational to be compared against
  -- * @param q1,q2 Rationals to be tested
  -- * @return One of the following values:
  -- *         - 1 if `q1` is nearer to `q` than `q2`
  -- *         - -1 if `q2` is nearer to `q` than `q1`
  -- *         - 0 if they have the same distance
  --  

   function av_nearer_q
     (q : AVRational;
      q1 : AVRational;
      q2 : AVRational) return int;  -- /usr/include/ffmpeg/libavutil/rational.h:188
   pragma Import (C, av_nearer_q, "av_nearer_q");

  --*
  -- * Find the value in a list of rationals nearest a given reference rational.
  -- *
  -- * @param q      Reference rational
  -- * @param q_list Array of rationals terminated by `{0, 0}`
  -- * @return Index of the nearest value found in the array
  --  

   function av_find_nearest_q_idx (q : AVRational; q_list : access constant AVRational) return int;  -- /usr/include/ffmpeg/libavutil/rational.h:197
   pragma Import (C, av_find_nearest_q_idx, "av_find_nearest_q_idx");

  --*
  -- * Convert an AVRational to a IEEE 32-bit `float` expressed in fixed-point
  -- * format.
  -- *
  -- * @param q Rational to be converted
  -- * @return Equivalent floating-point value, expressed as an unsigned 32-bit
  -- *         integer.
  -- * @note The returned value is platform-indepedant.
  --  

  -- * rational numbers
  -- * Copyright (c) 2003 Michael Niedermayer <michaelni@gmx.at>
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

   function av_q2intfloat (q : AVRational) return Interfaces.Unsigned_32;  -- /usr/include/ffmpeg/libavutil/rational.h:208
   pragma Import (C, av_q2intfloat, "av_q2intfloat");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;
