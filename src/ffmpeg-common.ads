pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;



package FFMpeg.common is

   --  arg-macro: function AV_NE (be, le)
   --    return le;
   --  arg-macro: function RSHIFT (a, b)
   --    return (a) > 0 ? ((a) + ((2**(b))>>1))>>(b) : ((a) + ((2**(b))>>1)-1)>>(b);
   --  arg-macro: function ROUNDED_DIV (a, b)
   --    return ((a)>0 ? (a) + ((b)>>1) : (a) - ((b)>>1))/(b);
   --  arg-macro: function AV_CEIL_RSHIFT (a, b)
   --    return notav_builtin_constant_p(b) ? -((-(a)) >> (b)) : ((a) + (2**(b)) - 1) >> (b);
   --  unsupported macro: FF_CEIL_RSHIFT AV_CEIL_RSHIFT
   --  arg-macro: function FFUDIV (a, b)
   --    return ((a)>0 ?(a):(a)-(b)+1) / (b);
   --  arg-macro: function FFUMOD (a, b)
   --    return (a)-(b)*FFUDIV(a,b);
   --  arg-macro: function FFABS (a)
   --    return (a) >= 0 ? (a) : (-(a));
   --  arg-macro: function FFSIGN (a)
   --    return (a) > 0 ? 1 : -1;
   --  arg-macro: function FFNABS (a)
   --    return (a) <= 0 ? (a) : (-(a));
   --  arg-macro: function FFDIFFSIGN (x, y)
   --    return ((x)>(y)) - ((x)<(y));
   --  arg-macro: function FFMAX (a, b)
   --    return (a) > (b) ? (a) : (b);
   --  arg-macro: procedure FFMAX3 (a, b, c)
   --    FFMAX(FFMAX(a,b),c)
   --  arg-macro: function FFMIN (a, b)
   --    return (a) > (b) ? (b) : (a);
   --  arg-macro: procedure FFMIN3 (a, b, c)
   --    FFMIN(FFMIN(a,b),c)
   --  arg-macro: procedure FFSWAP (type, a, b)
   --    do{type SWAP_tmp:= b; b:= a; a:= SWAP_tmp;}while(0)
   --  arg-macro: function FF_ARRAY_ELEMS (a)
   --    return sizeof(a) / sizeof((a)(0));
   --  unsupported macro: ceil_log2 ceil_log2_c
   --  unsupported macro: clip clip_c
   --  unsupported macro: clip64 clip64_c
   --  unsupported macro: clip_uint8 clip_uint8_c
   --  unsupported macro: clip_int8 clip_int8_c
   --  unsupported macro: clip_uint16 clip_uint16_c
   --  unsupported macro: clip_int16 clip_int16_c
   --  unsupported macro: clipl_int32 clipl_int32_c
   --  unsupported macro: clip_intp2 clip_intp2_c
   --  unsupported macro: clip_uintp2 clip_uintp2_c
   --  unsupported macro: mod_uintp2 mod_uintp2_c
   --  unsupported macro: sat_add32 sat_add32_c
   --  unsupported macro: sat_dadd32 sat_dadd32_c
   --  unsupported macro: clipf clipf_c
   --  unsupported macro: clipd clipd_c
   --  unsupported macro: popcount popcount_c
   --  unsupported macro: popcount64 popcount64_c
   --  unsupported macro: parity parity_c
   --  arg-macro: function MKTAG (a, b, c, d)
   --    return (a) or ((b) << 8) or ((c) << 16) or ((unsigned)(d) << 24);
   --  arg-macro: function MKBETAG (a, b, c, d)
   --    return (d) or ((c) << 8) or ((b) << 16) or ((unsigned)(a) << 24);
   --  arg-macro: procedure GET_UTF8 (val, GET_BYTE, ERROR)
   --    val:= (GET_BYTE); { uint32_t top := (val and 128) >> 1; if ((val and 16#c0#) = 16#80#  or else  val >= 16#FE#) ERROR while (val and top) { int tmp:= (GET_BYTE) - 128; if(tmp>>6) ERROR val:= (val<<6) + tmp; top <<= 5; } val &= (top << 1) - 1; }
   --  arg-macro: procedure GET_UTF16 (val, GET_16BIT, ERROR)
   --    val := GET_16BIT; { unsigned int hi := val - 16#D800#; if (hi < 16#800#) { val := GET_16BIT - 16#DC00#; if (val > 16#3FF#  or else  hi > 16#3FF#) ERROR val += (hi<<10) + 16#10000#; } }
   --  arg-macro: procedure PUT_UTF8 (val, tmp, PUT_BYTE)
   --    { int bytes, shift; uint32_t in := val; if (in < 16#80#) { tmp := in; PUT_BYTE } else { bytes := (av_log2(in) + 4) / 5; shift := (bytes - 1) * 6; tmp := (256 - (256 >> bytes)) or (in >> shift); PUT_BYTE while (shift >= 6) { shift -= 6; tmp := 16#80# or ((in >> shift) and 16#3f#); PUT_BYTE } } }
   --  arg-macro: procedure PUT_UTF16 (val, tmp, PUT_16BIT)
   --    { uint32_t in := val; if (in < 16#10000#) { tmp := in; PUT_16BIT } else { tmp := 16#D800# or ((in - 16#10000#) >> 10); PUT_16BIT tmp := 16#DC00# or ((in - 16#10000#) and 16#3FF#); PUT_16BIT } }
  -- * copyright (c) 2006 Michael Niedermayer <michaelni@gmx.at>
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
  -- * common internal and external API header
  --

  --rounded division & shift
  -- assume b>0
  -- Fast a/(1<<b) rounded toward +inf. Assume a>=0 and b>=0
  -- Backwards compat.
  --*
  -- * Absolute value, Note, INT_MIN / INT64_MIN result in undefined behavior as they
  -- * are not representable as absolute values of their type. This is the same
  -- * as with *abs()
  -- * @see FFNABS()
  --

  --*
  -- * Negative Absolute value.
  -- * this works for all integers of all types.
  -- * As with many macros, this evaluates its argument twice, it thus must not have
  -- * a sideeffect, that is FFNABS(x++) has undefined behavior.
  --

  --*
  -- * Comparator.
  -- * For two numerical expressions x and y, gives 1 if x > y, -1 if x < y, and 0
  -- * if x == y. This is useful for instance in a qsort comparator callback.
  -- * Furthermore, compilers are able to optimize this to branchless code, and
  -- * there is no risk of overflow with signed types.
  -- * As with many macros, this evaluates its argument multiple times, it thus
  -- * must not have a side-effect.
  --

  -- misc math functions
  -- Pull in unguarded fallback defines at the end of this file.
   function log2 (v : unsigned) return int;


   function log2_16bit (v : unsigned) return int;


  --*
  -- * Clip a signed integer value into the amin-amax range.
  -- * @param a value to clip
  -- * @param amin minimum value of the clip range
  -- * @param amax maximum value of the clip range
  -- * @return clipped value
  --

   function clip_c
     (a : int;
      amin : int;
      amax : int) return int;


  --*
  -- * Clip a signed 64bit integer value into the amin-amax range.
  -- * @param a value to clip
  -- * @param amin minimum value of the clip range
  -- * @param amax maximum value of the clip range
  -- * @return clipped value
  --

   function clip64_c
     (a : Interfaces.Integer_64;
      amin : Interfaces.Integer_64;
      amax : Interfaces.Integer_64) return Interfaces.Integer_64;


  --*
  -- * Clip a signed integer value into the 0-255 range.
  -- * @param a value to clip
  -- * @return clipped value
  --

   function clip_uint8_c (a : int) return Interfaces.Unsigned_8;


  --*
  -- * Clip a signed integer value into the -128,127 range.
  -- * @param a value to clip
  -- * @return clipped value
  --

   function clip_int8_c (a : int) return Interfaces.Integer_8;


  --*
  -- * Clip a signed integer value into the 0-65535 range.
  -- * @param a value to clip
  -- * @return clipped value
  --

   function clip_uint16_c (a : int) return Interfaces.Unsigned_16;


  --*
  -- * Clip a signed integer value into the -32768,32767 range.
  -- * @param a value to clip
  -- * @return clipped value
  --

   function clip_int16_c (a : int) return Interfaces.Integer_16;


  --*
  -- * Clip a signed 64-bit integer value into the -2147483648,2147483647 range.
  -- * @param a value to clip
  -- * @return clipped value
  --

   function clipl_int32_c (a : Interfaces.Integer_64) return Interfaces.Integer_32;


  --*
  -- * Clip a signed integer into the -(2^p),(2^p-1) range.
  -- * @param  a value to clip
  -- * @param  p bit position to clip at
  -- * @return clipped value
  --

   function clip_intp2_c (a : int; p : int) return int;


  --*
  -- * Clip a signed integer to an unsigned power of two range.
  -- * @param  a value to clip
  -- * @param  p bit position to clip at
  -- * @return clipped value
  --

   function clip_uintp2_c (a : int; p : int) return unsigned;


  --*
  -- * Clear high bits from an unsigned integer starting with specific bit position
  -- * @param  a value to clip
  -- * @param  p bit position to clip at
  -- * @return clipped value
  --

   function mod_uintp2_c (a : unsigned; p : unsigned) return unsigned;


  --*
  -- * Add two signed 32-bit values with saturation.
  -- *
  -- * @param  a one value
  -- * @param  b another value
  -- * @return sum with signed saturation
  --

   function sat_add32_c (a : int; b : int) return int;


  --*
  -- * Add a doubled value to another value with saturation at both stages.
  -- *
  -- * @param  a first value
  -- * @param  b value doubled and added to a
  -- * @return sum with signed saturation
  --

   function sat_dadd32_c (a : int; b : int) return int;


  --*
  -- * Clip a float value into the amin-amax range.
  -- * @param a value to clip
  -- * @param amin minimum value of the clip range
  -- * @param amax maximum value of the clip range
  -- * @return clipped value
  --

   function clipf_c
     (a : float;
      amin : float;
      amax : float) return float;


  --*
  -- * Clip a double value into the amin-amax range.
  -- * @param a value to clip
  -- * @param amin minimum value of the clip range
  -- * @param amax maximum value of the clip range
  -- * @return clipped value
  --

   function clipd_c
     (a : double;
      amin : double;
      amax : double) return double;


  --* Compute ceil(log2(x)).
  -- * @param x value used to compute ceil(log2(x))
  -- * @return computed ceiling of log2(x)
  --

   function ceil_log2_c (x : int) return int;


  --*
  -- * Count number of bits set to one in x
  -- * @param x value to count bits of
  -- * @return the number of bits set to one in x
  --

   function popcount_c (x : Interfaces.Unsigned_32) return int;


  --*
  -- * Count number of bits set to one in x
  -- * @param x value to count bits of
  -- * @return the number of bits set to one in x
  --

   function popcount64_c (x : Interfaces.Unsigned_64) return int;


   function parity_c (v : Interfaces.Unsigned_32) return int;


  --*
  -- * Convert a UTF-8 character (up to 4 bytes) to its 32-bit UCS-4 encoded form.
  -- *
  -- * @param val      Output value, must be an lvalue of type uint32_t.
  -- * @param GET_BYTE Expression reading one byte from the input.
  -- *                 Evaluated up to 7 times (4 for the currently
  -- *                 assigned Unicode range).  With a memory buffer
  -- *                 input, this could be *ptr++.
  -- * @param ERROR    Expression to be evaluated on invalid input,
  -- *                 typically a goto statement.
  -- *
  -- * @warning ERROR should not contain a loop control statement which
  -- * could interact with the internal while loop, and should force an
  -- * exit from the macro code (e.g. through a goto or a return) in order
  -- * to prevent undefined results.
  --

  --*
  -- * Convert a UTF-16 character (2 or 4 bytes) to its 32-bit UCS-4 encoded form.
  -- *
  -- * @param val       Output value, must be an lvalue of type uint32_t.
  -- * @param GET_16BIT Expression returning two bytes of UTF-16 data converted
  -- *                  to native byte order.  Evaluated one or two times.
  -- * @param ERROR     Expression to be evaluated on invalid input,
  -- *                  typically a goto statement.
  --

  --*
  -- * @def PUT_UTF8(val, tmp, PUT_BYTE)
  -- * Convert a 32-bit Unicode character to its UTF-8 encoded form (up to 4 bytes long).
  -- * @param val is an input-only argument and should be of type uint32_t. It holds
  -- * a UCS-4 encoded Unicode character that is to be converted to UTF-8. If
  -- * val is given as a function it is executed only once.
  -- * @param tmp is a temporary variable and should be of type uint8_t. It
  -- * represents an intermediate value during conversion that is to be
  -- * output by PUT_BYTE.
  -- * @param PUT_BYTE writes the converted UTF-8 bytes to any proper destination.
  -- * It could be a function or a statement, and uses tmp as the input byte.
  -- * For example, PUT_BYTE could be "*output++ = tmp;" PUT_BYTE will be
  -- * executed up to 4 times for values in the valid UTF-8 range and up to
  -- * 7 times in the general case, depending on the length of the converted
  -- * Unicode character.
  --

  --*
  -- * @def PUT_UTF16(val, tmp, PUT_16BIT)
  -- * Convert a 32-bit Unicode character to its UTF-16 encoded form (2 or 4 bytes).
  -- * @param val is an input-only argument and should be of type uint32_t. It holds
  -- * a UCS-4 encoded Unicode character that is to be converted to UTF-16. If
  -- * val is given as a function it is executed only once.
  -- * @param tmp is a temporary variable and should be of type uint16_t. It
  -- * represents an intermediate value during conversion that is to be
  -- * output by PUT_16BIT.
  -- * @param PUT_16BIT writes the converted UTF-16 data to any proper destination
  -- * in desired endianness. It could be a function or a statement, and uses tmp
  -- * as the input byte.  For example, PUT_BYTE could be "*output++ = tmp;"
  -- * PUT_BYTE will be executed 1 or 2 times depending on input character.
  --

  -- * copyright (c) 2006 Michael Niedermayer <michaelni@gmx.at>
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

end FFMpeg.common;
