pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h is

   AVPALETTE_SIZE : constant := 1024;  --  /usr/include/ffmpeg/libavutil/pixfmt.h:32
   AVPALETTE_COUNT : constant := 256;  --  /usr/include/ffmpeg/libavutil/pixfmt.h:33
   --  unsupported macro: AV_PIX_FMT_NE(be,le) AV_PIX_FMT_ ##le
   --  unsupported macro: AV_PIX_FMT_RGB32 AV_PIX_FMT_NE(ARGB, BGRA)
   --  unsupported macro: AV_PIX_FMT_RGB32_1 AV_PIX_FMT_NE(RGBA, ABGR)
   --  unsupported macro: AV_PIX_FMT_BGR32 AV_PIX_FMT_NE(ABGR, RGBA)
   --  unsupported macro: AV_PIX_FMT_BGR32_1 AV_PIX_FMT_NE(BGRA, ARGB)
   --  unsupported macro: AV_PIX_FMT_0RGB32 AV_PIX_FMT_NE(0RGB, BGR0)
   --  unsupported macro: AV_PIX_FMT_0BGR32 AV_PIX_FMT_NE(0BGR, RGB0)
   --  unsupported macro: AV_PIX_FMT_GRAY10 AV_PIX_FMT_NE(GRAY10BE, GRAY10LE)
   --  unsupported macro: AV_PIX_FMT_GRAY12 AV_PIX_FMT_NE(GRAY12BE, GRAY12LE)
   --  unsupported macro: AV_PIX_FMT_GRAY16 AV_PIX_FMT_NE(GRAY16BE, GRAY16LE)
   --  unsupported macro: AV_PIX_FMT_YA16 AV_PIX_FMT_NE(YA16BE, YA16LE)
   --  unsupported macro: AV_PIX_FMT_RGB48 AV_PIX_FMT_NE(RGB48BE, RGB48LE)
   --  unsupported macro: AV_PIX_FMT_RGB565 AV_PIX_FMT_NE(RGB565BE, RGB565LE)
   --  unsupported macro: AV_PIX_FMT_RGB555 AV_PIX_FMT_NE(RGB555BE, RGB555LE)
   --  unsupported macro: AV_PIX_FMT_RGB444 AV_PIX_FMT_NE(RGB444BE, RGB444LE)
   --  unsupported macro: AV_PIX_FMT_RGBA64 AV_PIX_FMT_NE(RGBA64BE, RGBA64LE)
   --  unsupported macro: AV_PIX_FMT_BGR48 AV_PIX_FMT_NE(BGR48BE, BGR48LE)
   --  unsupported macro: AV_PIX_FMT_BGR565 AV_PIX_FMT_NE(BGR565BE, BGR565LE)
   --  unsupported macro: AV_PIX_FMT_BGR555 AV_PIX_FMT_NE(BGR555BE, BGR555LE)
   --  unsupported macro: AV_PIX_FMT_BGR444 AV_PIX_FMT_NE(BGR444BE, BGR444LE)
   --  unsupported macro: AV_PIX_FMT_BGRA64 AV_PIX_FMT_NE(BGRA64BE, BGRA64LE)
   --  unsupported macro: AV_PIX_FMT_YUV420P9 AV_PIX_FMT_NE(YUV420P9BE , YUV420P9LE)
   --  unsupported macro: AV_PIX_FMT_YUV422P9 AV_PIX_FMT_NE(YUV422P9BE , YUV422P9LE)
   --  unsupported macro: AV_PIX_FMT_YUV444P9 AV_PIX_FMT_NE(YUV444P9BE , YUV444P9LE)
   --  unsupported macro: AV_PIX_FMT_YUV420P10 AV_PIX_FMT_NE(YUV420P10BE, YUV420P10LE)
   --  unsupported macro: AV_PIX_FMT_YUV422P10 AV_PIX_FMT_NE(YUV422P10BE, YUV422P10LE)
   --  unsupported macro: AV_PIX_FMT_YUV440P10 AV_PIX_FMT_NE(YUV440P10BE, YUV440P10LE)
   --  unsupported macro: AV_PIX_FMT_YUV444P10 AV_PIX_FMT_NE(YUV444P10BE, YUV444P10LE)
   --  unsupported macro: AV_PIX_FMT_YUV420P12 AV_PIX_FMT_NE(YUV420P12BE, YUV420P12LE)
   --  unsupported macro: AV_PIX_FMT_YUV422P12 AV_PIX_FMT_NE(YUV422P12BE, YUV422P12LE)
   --  unsupported macro: AV_PIX_FMT_YUV440P12 AV_PIX_FMT_NE(YUV440P12BE, YUV440P12LE)
   --  unsupported macro: AV_PIX_FMT_YUV444P12 AV_PIX_FMT_NE(YUV444P12BE, YUV444P12LE)
   --  unsupported macro: AV_PIX_FMT_YUV420P14 AV_PIX_FMT_NE(YUV420P14BE, YUV420P14LE)
   --  unsupported macro: AV_PIX_FMT_YUV422P14 AV_PIX_FMT_NE(YUV422P14BE, YUV422P14LE)
   --  unsupported macro: AV_PIX_FMT_YUV444P14 AV_PIX_FMT_NE(YUV444P14BE, YUV444P14LE)
   --  unsupported macro: AV_PIX_FMT_YUV420P16 AV_PIX_FMT_NE(YUV420P16BE, YUV420P16LE)
   --  unsupported macro: AV_PIX_FMT_YUV422P16 AV_PIX_FMT_NE(YUV422P16BE, YUV422P16LE)
   --  unsupported macro: AV_PIX_FMT_YUV444P16 AV_PIX_FMT_NE(YUV444P16BE, YUV444P16LE)
   --  unsupported macro: AV_PIX_FMT_GBRP9 AV_PIX_FMT_NE(GBRP9BE , GBRP9LE)
   --  unsupported macro: AV_PIX_FMT_GBRP10 AV_PIX_FMT_NE(GBRP10BE, GBRP10LE)
   --  unsupported macro: AV_PIX_FMT_GBRP12 AV_PIX_FMT_NE(GBRP12BE, GBRP12LE)
   --  unsupported macro: AV_PIX_FMT_GBRP14 AV_PIX_FMT_NE(GBRP14BE, GBRP14LE)
   --  unsupported macro: AV_PIX_FMT_GBRP16 AV_PIX_FMT_NE(GBRP16BE, GBRP16LE)
   --  unsupported macro: AV_PIX_FMT_GBRAP10 AV_PIX_FMT_NE(GBRAP10BE, GBRAP10LE)
   --  unsupported macro: AV_PIX_FMT_GBRAP12 AV_PIX_FMT_NE(GBRAP12BE, GBRAP12LE)
   --  unsupported macro: AV_PIX_FMT_GBRAP16 AV_PIX_FMT_NE(GBRAP16BE, GBRAP16LE)
   --  unsupported macro: AV_PIX_FMT_BAYER_BGGR16 AV_PIX_FMT_NE(BAYER_BGGR16BE, BAYER_BGGR16LE)
   --  unsupported macro: AV_PIX_FMT_BAYER_RGGB16 AV_PIX_FMT_NE(BAYER_RGGB16BE, BAYER_RGGB16LE)
   --  unsupported macro: AV_PIX_FMT_BAYER_GBRG16 AV_PIX_FMT_NE(BAYER_GBRG16BE, BAYER_GBRG16LE)
   --  unsupported macro: AV_PIX_FMT_BAYER_GRBG16 AV_PIX_FMT_NE(BAYER_GRBG16BE, BAYER_GRBG16LE)
   --  unsupported macro: AV_PIX_FMT_YUVA420P9 AV_PIX_FMT_NE(YUVA420P9BE , YUVA420P9LE)
   --  unsupported macro: AV_PIX_FMT_YUVA422P9 AV_PIX_FMT_NE(YUVA422P9BE , YUVA422P9LE)
   --  unsupported macro: AV_PIX_FMT_YUVA444P9 AV_PIX_FMT_NE(YUVA444P9BE , YUVA444P9LE)
   --  unsupported macro: AV_PIX_FMT_YUVA420P10 AV_PIX_FMT_NE(YUVA420P10BE, YUVA420P10LE)
   --  unsupported macro: AV_PIX_FMT_YUVA422P10 AV_PIX_FMT_NE(YUVA422P10BE, YUVA422P10LE)
   --  unsupported macro: AV_PIX_FMT_YUVA444P10 AV_PIX_FMT_NE(YUVA444P10BE, YUVA444P10LE)
   --  unsupported macro: AV_PIX_FMT_YUVA420P16 AV_PIX_FMT_NE(YUVA420P16BE, YUVA420P16LE)
   --  unsupported macro: AV_PIX_FMT_YUVA422P16 AV_PIX_FMT_NE(YUVA422P16BE, YUVA422P16LE)
   --  unsupported macro: AV_PIX_FMT_YUVA444P16 AV_PIX_FMT_NE(YUVA444P16BE, YUVA444P16LE)
   --  unsupported macro: AV_PIX_FMT_XYZ12 AV_PIX_FMT_NE(XYZ12BE, XYZ12LE)
   --  unsupported macro: AV_PIX_FMT_NV20 AV_PIX_FMT_NE(NV20BE, NV20LE)
   --  unsupported macro: AV_PIX_FMT_AYUV64 AV_PIX_FMT_NE(AYUV64BE, AYUV64LE)
   --  unsupported macro: AV_PIX_FMT_P010 AV_PIX_FMT_NE(P010BE, P010LE)
   --  unsupported macro: AV_PIX_FMT_P016 AV_PIX_FMT_NE(P016BE, P016LE)
   --  unsupported macro: AVCOL_SPC_YCGCO AVCOL_SPC_YCOCG

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
  -- * pixel format definitions
  --  

  --*
  -- * Pixel format.
  -- *
  -- * @note
  -- * AV_PIX_FMT_RGB32 is handled in an endian-specific manner. An RGBA
  -- * color is put together as:
  -- *  (A << 24) | (R << 16) | (G << 8) | B
  -- * This is stored as BGRA on little-endian CPU architectures and ARGB on
  -- * big-endian CPUs.
  -- *
  -- * @par
  -- * When the pixel format is palettized RGB32 (AV_PIX_FMT_PAL8), the palettized
  -- * image data is stored in AVFrame.data[0]. The palette is transported in
  -- * AVFrame.data[1], is 1024 bytes long (256 4-byte entries) and is
  -- * formatted the same as in AV_PIX_FMT_RGB32 described above (i.e., it is
  -- * also endian-specific). Note also that the individual RGB32 palette
  -- * components stored in AVFrame.data[1] should be in the range 0..255.
  -- * This is important as many custom PAL8 video codecs that were designed
  -- * to run on the IBM VGA graphics adapter use 6-bit palette components.
  -- *
  -- * @par
  -- * For all the 8 bits per pixel formats, an RGB32 palette is in data[1] like
  -- * for pal8. This palette is filled in automatically by the function
  -- * allocating the picture.
  --  

   subtype AVPixelFormat is int;
   AV_PIX_FMT_NONE : constant AVPixelFormat := -1;
   AV_PIX_FMT_YUV420P : constant AVPixelFormat := 0;
   AV_PIX_FMT_YUYV422 : constant AVPixelFormat := 1;
   AV_PIX_FMT_RGB24 : constant AVPixelFormat := 2;
   AV_PIX_FMT_BGR24 : constant AVPixelFormat := 3;
   AV_PIX_FMT_YUV422P : constant AVPixelFormat := 4;
   AV_PIX_FMT_YUV444P : constant AVPixelFormat := 5;
   AV_PIX_FMT_YUV410P : constant AVPixelFormat := 6;
   AV_PIX_FMT_YUV411P : constant AVPixelFormat := 7;
   AV_PIX_FMT_GRAY8 : constant AVPixelFormat := 8;
   AV_PIX_FMT_MONOWHITE : constant AVPixelFormat := 9;
   AV_PIX_FMT_MONOBLACK : constant AVPixelFormat := 10;
   AV_PIX_FMT_PAL8 : constant AVPixelFormat := 11;
   AV_PIX_FMT_YUVJ420P : constant AVPixelFormat := 12;
   AV_PIX_FMT_YUVJ422P : constant AVPixelFormat := 13;
   AV_PIX_FMT_YUVJ444P : constant AVPixelFormat := 14;
   AV_PIX_FMT_XVMC_MPEG2_MC : constant AVPixelFormat := 15;
   AV_PIX_FMT_XVMC_MPEG2_IDCT : constant AVPixelFormat := 16;
   AV_PIX_FMT_XVMC : constant AVPixelFormat := 16;
   AV_PIX_FMT_UYVY422 : constant AVPixelFormat := 17;
   AV_PIX_FMT_UYYVYY411 : constant AVPixelFormat := 18;
   AV_PIX_FMT_BGR8 : constant AVPixelFormat := 19;
   AV_PIX_FMT_BGR4 : constant AVPixelFormat := 20;
   AV_PIX_FMT_BGR4_BYTE : constant AVPixelFormat := 21;
   AV_PIX_FMT_RGB8 : constant AVPixelFormat := 22;
   AV_PIX_FMT_RGB4 : constant AVPixelFormat := 23;
   AV_PIX_FMT_RGB4_BYTE : constant AVPixelFormat := 24;
   AV_PIX_FMT_NV12 : constant AVPixelFormat := 25;
   AV_PIX_FMT_NV21 : constant AVPixelFormat := 26;
   AV_PIX_FMT_ARGB : constant AVPixelFormat := 27;
   AV_PIX_FMT_RGBA : constant AVPixelFormat := 28;
   AV_PIX_FMT_ABGR : constant AVPixelFormat := 29;
   AV_PIX_FMT_BGRA : constant AVPixelFormat := 30;
   AV_PIX_FMT_GRAY16BE : constant AVPixelFormat := 31;
   AV_PIX_FMT_GRAY16LE : constant AVPixelFormat := 32;
   AV_PIX_FMT_YUV440P : constant AVPixelFormat := 33;
   AV_PIX_FMT_YUVJ440P : constant AVPixelFormat := 34;
   AV_PIX_FMT_YUVA420P : constant AVPixelFormat := 35;
   AV_PIX_FMT_VDPAU_H264 : constant AVPixelFormat := 36;
   AV_PIX_FMT_VDPAU_MPEG1 : constant AVPixelFormat := 37;
   AV_PIX_FMT_VDPAU_MPEG2 : constant AVPixelFormat := 38;
   AV_PIX_FMT_VDPAU_WMV3 : constant AVPixelFormat := 39;
   AV_PIX_FMT_VDPAU_VC1 : constant AVPixelFormat := 40;
   AV_PIX_FMT_RGB48BE : constant AVPixelFormat := 41;
   AV_PIX_FMT_RGB48LE : constant AVPixelFormat := 42;
   AV_PIX_FMT_RGB565BE : constant AVPixelFormat := 43;
   AV_PIX_FMT_RGB565LE : constant AVPixelFormat := 44;
   AV_PIX_FMT_RGB555BE : constant AVPixelFormat := 45;
   AV_PIX_FMT_RGB555LE : constant AVPixelFormat := 46;
   AV_PIX_FMT_BGR565BE : constant AVPixelFormat := 47;
   AV_PIX_FMT_BGR565LE : constant AVPixelFormat := 48;
   AV_PIX_FMT_BGR555BE : constant AVPixelFormat := 49;
   AV_PIX_FMT_BGR555LE : constant AVPixelFormat := 50;
   AV_PIX_FMT_VAAPI_MOCO : constant AVPixelFormat := 51;
   AV_PIX_FMT_VAAPI_IDCT : constant AVPixelFormat := 52;
   AV_PIX_FMT_VAAPI_VLD : constant AVPixelFormat := 53;
   AV_PIX_FMT_VAAPI : constant AVPixelFormat := 53;
   AV_PIX_FMT_YUV420P16LE : constant AVPixelFormat := 54;
   AV_PIX_FMT_YUV420P16BE : constant AVPixelFormat := 55;
   AV_PIX_FMT_YUV422P16LE : constant AVPixelFormat := 56;
   AV_PIX_FMT_YUV422P16BE : constant AVPixelFormat := 57;
   AV_PIX_FMT_YUV444P16LE : constant AVPixelFormat := 58;
   AV_PIX_FMT_YUV444P16BE : constant AVPixelFormat := 59;
   AV_PIX_FMT_VDPAU_MPEG4 : constant AVPixelFormat := 60;
   AV_PIX_FMT_DXVA2_VLD : constant AVPixelFormat := 61;
   AV_PIX_FMT_RGB444LE : constant AVPixelFormat := 62;
   AV_PIX_FMT_RGB444BE : constant AVPixelFormat := 63;
   AV_PIX_FMT_BGR444LE : constant AVPixelFormat := 64;
   AV_PIX_FMT_BGR444BE : constant AVPixelFormat := 65;
   AV_PIX_FMT_YA8 : constant AVPixelFormat := 66;
   AV_PIX_FMT_Y400A : constant AVPixelFormat := 66;
   AV_PIX_FMT_GRAY8A : constant AVPixelFormat := 66;
   AV_PIX_FMT_BGR48BE : constant AVPixelFormat := 67;
   AV_PIX_FMT_BGR48LE : constant AVPixelFormat := 68;
   AV_PIX_FMT_YUV420P9BE : constant AVPixelFormat := 69;
   AV_PIX_FMT_YUV420P9LE : constant AVPixelFormat := 70;
   AV_PIX_FMT_YUV420P10BE : constant AVPixelFormat := 71;
   AV_PIX_FMT_YUV420P10LE : constant AVPixelFormat := 72;
   AV_PIX_FMT_YUV422P10BE : constant AVPixelFormat := 73;
   AV_PIX_FMT_YUV422P10LE : constant AVPixelFormat := 74;
   AV_PIX_FMT_YUV444P9BE : constant AVPixelFormat := 75;
   AV_PIX_FMT_YUV444P9LE : constant AVPixelFormat := 76;
   AV_PIX_FMT_YUV444P10BE : constant AVPixelFormat := 77;
   AV_PIX_FMT_YUV444P10LE : constant AVPixelFormat := 78;
   AV_PIX_FMT_YUV422P9BE : constant AVPixelFormat := 79;
   AV_PIX_FMT_YUV422P9LE : constant AVPixelFormat := 80;
   AV_PIX_FMT_VDA_VLD : constant AVPixelFormat := 81;
   AV_PIX_FMT_GBRP : constant AVPixelFormat := 82;
   AV_PIX_FMT_GBR24P : constant AVPixelFormat := 82;
   AV_PIX_FMT_GBRP9BE : constant AVPixelFormat := 83;
   AV_PIX_FMT_GBRP9LE : constant AVPixelFormat := 84;
   AV_PIX_FMT_GBRP10BE : constant AVPixelFormat := 85;
   AV_PIX_FMT_GBRP10LE : constant AVPixelFormat := 86;
   AV_PIX_FMT_GBRP16BE : constant AVPixelFormat := 87;
   AV_PIX_FMT_GBRP16LE : constant AVPixelFormat := 88;
   AV_PIX_FMT_YUVA422P : constant AVPixelFormat := 89;
   AV_PIX_FMT_YUVA444P : constant AVPixelFormat := 90;
   AV_PIX_FMT_YUVA420P9BE : constant AVPixelFormat := 91;
   AV_PIX_FMT_YUVA420P9LE : constant AVPixelFormat := 92;
   AV_PIX_FMT_YUVA422P9BE : constant AVPixelFormat := 93;
   AV_PIX_FMT_YUVA422P9LE : constant AVPixelFormat := 94;
   AV_PIX_FMT_YUVA444P9BE : constant AVPixelFormat := 95;
   AV_PIX_FMT_YUVA444P9LE : constant AVPixelFormat := 96;
   AV_PIX_FMT_YUVA420P10BE : constant AVPixelFormat := 97;
   AV_PIX_FMT_YUVA420P10LE : constant AVPixelFormat := 98;
   AV_PIX_FMT_YUVA422P10BE : constant AVPixelFormat := 99;
   AV_PIX_FMT_YUVA422P10LE : constant AVPixelFormat := 100;
   AV_PIX_FMT_YUVA444P10BE : constant AVPixelFormat := 101;
   AV_PIX_FMT_YUVA444P10LE : constant AVPixelFormat := 102;
   AV_PIX_FMT_YUVA420P16BE : constant AVPixelFormat := 103;
   AV_PIX_FMT_YUVA420P16LE : constant AVPixelFormat := 104;
   AV_PIX_FMT_YUVA422P16BE : constant AVPixelFormat := 105;
   AV_PIX_FMT_YUVA422P16LE : constant AVPixelFormat := 106;
   AV_PIX_FMT_YUVA444P16BE : constant AVPixelFormat := 107;
   AV_PIX_FMT_YUVA444P16LE : constant AVPixelFormat := 108;
   AV_PIX_FMT_VDPAU : constant AVPixelFormat := 109;
   AV_PIX_FMT_XYZ12LE : constant AVPixelFormat := 110;
   AV_PIX_FMT_XYZ12BE : constant AVPixelFormat := 111;
   AV_PIX_FMT_NV16 : constant AVPixelFormat := 112;
   AV_PIX_FMT_NV20LE : constant AVPixelFormat := 113;
   AV_PIX_FMT_NV20BE : constant AVPixelFormat := 114;
   AV_PIX_FMT_RGBA64BE : constant AVPixelFormat := 115;
   AV_PIX_FMT_RGBA64LE : constant AVPixelFormat := 116;
   AV_PIX_FMT_BGRA64BE : constant AVPixelFormat := 117;
   AV_PIX_FMT_BGRA64LE : constant AVPixelFormat := 118;
   AV_PIX_FMT_YVYU422 : constant AVPixelFormat := 119;
   AV_PIX_FMT_VDA : constant AVPixelFormat := 120;
   AV_PIX_FMT_YA16BE : constant AVPixelFormat := 121;
   AV_PIX_FMT_YA16LE : constant AVPixelFormat := 122;
   AV_PIX_FMT_GBRAP : constant AVPixelFormat := 123;
   AV_PIX_FMT_GBRAP16BE : constant AVPixelFormat := 124;
   AV_PIX_FMT_GBRAP16LE : constant AVPixelFormat := 125;
   AV_PIX_FMT_QSV : constant AVPixelFormat := 126;
   AV_PIX_FMT_MMAL : constant AVPixelFormat := 127;
   AV_PIX_FMT_D3D11VA_VLD : constant AVPixelFormat := 128;
   AV_PIX_FMT_CUDA : constant AVPixelFormat := 129;
   AV_PIX_FMT_0RGB : constant AVPixelFormat := 295;
   AV_PIX_FMT_RGB0 : constant AVPixelFormat := 296;
   AV_PIX_FMT_0BGR : constant AVPixelFormat := 297;
   AV_PIX_FMT_BGR0 : constant AVPixelFormat := 298;
   AV_PIX_FMT_YUV420P12BE : constant AVPixelFormat := 299;
   AV_PIX_FMT_YUV420P12LE : constant AVPixelFormat := 300;
   AV_PIX_FMT_YUV420P14BE : constant AVPixelFormat := 301;
   AV_PIX_FMT_YUV420P14LE : constant AVPixelFormat := 302;
   AV_PIX_FMT_YUV422P12BE : constant AVPixelFormat := 303;
   AV_PIX_FMT_YUV422P12LE : constant AVPixelFormat := 304;
   AV_PIX_FMT_YUV422P14BE : constant AVPixelFormat := 305;
   AV_PIX_FMT_YUV422P14LE : constant AVPixelFormat := 306;
   AV_PIX_FMT_YUV444P12BE : constant AVPixelFormat := 307;
   AV_PIX_FMT_YUV444P12LE : constant AVPixelFormat := 308;
   AV_PIX_FMT_YUV444P14BE : constant AVPixelFormat := 309;
   AV_PIX_FMT_YUV444P14LE : constant AVPixelFormat := 310;
   AV_PIX_FMT_GBRP12BE : constant AVPixelFormat := 311;
   AV_PIX_FMT_GBRP12LE : constant AVPixelFormat := 312;
   AV_PIX_FMT_GBRP14BE : constant AVPixelFormat := 313;
   AV_PIX_FMT_GBRP14LE : constant AVPixelFormat := 314;
   AV_PIX_FMT_YUVJ411P : constant AVPixelFormat := 315;
   AV_PIX_FMT_BAYER_BGGR8 : constant AVPixelFormat := 316;
   AV_PIX_FMT_BAYER_RGGB8 : constant AVPixelFormat := 317;
   AV_PIX_FMT_BAYER_GBRG8 : constant AVPixelFormat := 318;
   AV_PIX_FMT_BAYER_GRBG8 : constant AVPixelFormat := 319;
   AV_PIX_FMT_BAYER_BGGR16LE : constant AVPixelFormat := 320;
   AV_PIX_FMT_BAYER_BGGR16BE : constant AVPixelFormat := 321;
   AV_PIX_FMT_BAYER_RGGB16LE : constant AVPixelFormat := 322;
   AV_PIX_FMT_BAYER_RGGB16BE : constant AVPixelFormat := 323;
   AV_PIX_FMT_BAYER_GBRG16LE : constant AVPixelFormat := 324;
   AV_PIX_FMT_BAYER_GBRG16BE : constant AVPixelFormat := 325;
   AV_PIX_FMT_BAYER_GRBG16LE : constant AVPixelFormat := 326;
   AV_PIX_FMT_BAYER_GRBG16BE : constant AVPixelFormat := 327;
   AV_PIX_FMT_YUV440P10LE : constant AVPixelFormat := 328;
   AV_PIX_FMT_YUV440P10BE : constant AVPixelFormat := 329;
   AV_PIX_FMT_YUV440P12LE : constant AVPixelFormat := 330;
   AV_PIX_FMT_YUV440P12BE : constant AVPixelFormat := 331;
   AV_PIX_FMT_AYUV64LE : constant AVPixelFormat := 332;
   AV_PIX_FMT_AYUV64BE : constant AVPixelFormat := 333;
   AV_PIX_FMT_VIDEOTOOLBOX : constant AVPixelFormat := 334;
   AV_PIX_FMT_P010LE : constant AVPixelFormat := 335;
   AV_PIX_FMT_P010BE : constant AVPixelFormat := 336;
   AV_PIX_FMT_GBRAP12BE : constant AVPixelFormat := 337;
   AV_PIX_FMT_GBRAP12LE : constant AVPixelFormat := 338;
   AV_PIX_FMT_GBRAP10BE : constant AVPixelFormat := 339;
   AV_PIX_FMT_GBRAP10LE : constant AVPixelFormat := 340;
   AV_PIX_FMT_MEDIACODEC : constant AVPixelFormat := 341;
   AV_PIX_FMT_GRAY12BE : constant AVPixelFormat := 342;
   AV_PIX_FMT_GRAY12LE : constant AVPixelFormat := 343;
   AV_PIX_FMT_GRAY10BE : constant AVPixelFormat := 344;
   AV_PIX_FMT_GRAY10LE : constant AVPixelFormat := 345;
   AV_PIX_FMT_P016LE : constant AVPixelFormat := 346;
   AV_PIX_FMT_P016BE : constant AVPixelFormat := 347;
   AV_PIX_FMT_NB : constant AVPixelFormat := 348;  -- /usr/include/ffmpeg/libavutil/pixfmt.h:60

  --/< planar YUV 4:2:0, 12bpp, (1 Cr & Cb sample per 2x2 Y samples)
  --/< packed YUV 4:2:2, 16bpp, Y0 Cb Y1 Cr
  --/< packed RGB 8:8:8, 24bpp, RGBRGB...
  --/< packed RGB 8:8:8, 24bpp, BGRBGR...
  --/< planar YUV 4:2:2, 16bpp, (1 Cr & Cb sample per 2x1 Y samples)
  --/< planar YUV 4:4:4, 24bpp, (1 Cr & Cb sample per 1x1 Y samples)
  --/< planar YUV 4:1:0,  9bpp, (1 Cr & Cb sample per 4x4 Y samples)
  --/< planar YUV 4:1:1, 12bpp, (1 Cr & Cb sample per 4x1 Y samples)
  --/<        Y        ,  8bpp
  --/<        Y        ,  1bpp, 0 is white, 1 is black, in each byte pixels are ordered from the msb to the lsb
  --/<        Y        ,  1bpp, 0 is black, 1 is white, in each byte pixels are ordered from the msb to the lsb
  --/< 8 bits with AV_PIX_FMT_RGB32 palette
  --/< planar YUV 4:2:0, 12bpp, full scale (JPEG), deprecated in favor of AV_PIX_FMT_YUV420P and setting color_range
  --/< planar YUV 4:2:2, 16bpp, full scale (JPEG), deprecated in favor of AV_PIX_FMT_YUV422P and setting color_range
  --/< planar YUV 4:4:4, 24bpp, full scale (JPEG), deprecated in favor of AV_PIX_FMT_YUV444P and setting color_range
  --/< XVideo Motion Acceleration via common packet passing
  --/< packed YUV 4:2:2, 16bpp, Cb Y0 Cr Y1
  --/< packed YUV 4:1:1, 12bpp, Cb Y0 Y1 Cr Y2 Y3
  --/< packed RGB 3:3:2,  8bpp, (msb)2B 3G 3R(lsb)
  --/< packed RGB 1:2:1 bitstream,  4bpp, (msb)1B 2G 1R(lsb), a byte contains two pixels, the first pixel in the byte is the one composed by the 4 msb bits
  --/< packed RGB 1:2:1,  8bpp, (msb)1B 2G 1R(lsb)
  --/< packed RGB 3:3:2,  8bpp, (msb)2R 3G 3B(lsb)
  --/< packed RGB 1:2:1 bitstream,  4bpp, (msb)1R 2G 1B(lsb), a byte contains two pixels, the first pixel in the byte is the one composed by the 4 msb bits
  --/< packed RGB 1:2:1,  8bpp, (msb)1R 2G 1B(lsb)
  --/< planar YUV 4:2:0, 12bpp, 1 plane for Y and 1 plane for the UV components, which are interleaved (first byte U and the following byte V)
  --/< as above, but U and V bytes are swapped
  --/< packed ARGB 8:8:8:8, 32bpp, ARGBARGB...
  --/< packed RGBA 8:8:8:8, 32bpp, RGBARGBA...
  --/< packed ABGR 8:8:8:8, 32bpp, ABGRABGR...
  --/< packed BGRA 8:8:8:8, 32bpp, BGRABGRA...
  --/<        Y        , 16bpp, big-endian
  --/<        Y        , 16bpp, little-endian
  --/< planar YUV 4:4:0 (1 Cr & Cb sample per 1x2 Y samples)
  --/< planar YUV 4:4:0 full scale (JPEG), deprecated in favor of AV_PIX_FMT_YUV440P and setting color_range
  --/< planar YUV 4:2:0, 20bpp, (1 Cr & Cb sample per 2x2 Y & A samples)
  --/< H.264 HW decoding with VDPAU, data[0] contains a vdpau_render_state struct which contains the bitstream of the slices as well as various fields extracted from headers
  --/< MPEG-1 HW decoding with VDPAU, data[0] contains a vdpau_render_state struct which contains the bitstream of the slices as well as various fields extracted from headers
  --/< MPEG-2 HW decoding with VDPAU, data[0] contains a vdpau_render_state struct which contains the bitstream of the slices as well as various fields extracted from headers
  --/< WMV3 HW decoding with VDPAU, data[0] contains a vdpau_render_state struct which contains the bitstream of the slices as well as various fields extracted from headers
  --/< VC-1 HW decoding with VDPAU, data[0] contains a vdpau_render_state struct which contains the bitstream of the slices as well as various fields extracted from headers
  --/< packed RGB 16:16:16, 48bpp, 16R, 16G, 16B, the 2-byte value for each R/G/B component is stored as big-endian
  --/< packed RGB 16:16:16, 48bpp, 16R, 16G, 16B, the 2-byte value for each R/G/B component is stored as little-endian
  --/< packed RGB 5:6:5, 16bpp, (msb)   5R 6G 5B(lsb), big-endian
  --/< packed RGB 5:6:5, 16bpp, (msb)   5R 6G 5B(lsb), little-endian
  --/< packed RGB 5:5:5, 16bpp, (msb)1X 5R 5G 5B(lsb), big-endian   , X=unused/undefined
  --/< packed RGB 5:5:5, 16bpp, (msb)1X 5R 5G 5B(lsb), little-endian, X=unused/undefined
  --/< packed BGR 5:6:5, 16bpp, (msb)   5B 6G 5R(lsb), big-endian
  --/< packed BGR 5:6:5, 16bpp, (msb)   5B 6G 5R(lsb), little-endian
  --/< packed BGR 5:5:5, 16bpp, (msb)1X 5B 5G 5R(lsb), big-endian   , X=unused/undefined
  --/< packed BGR 5:5:5, 16bpp, (msb)1X 5B 5G 5R(lsb), little-endian, X=unused/undefined
  --* @name Deprecated pixel formats  
  --*@{ 
  --/< HW acceleration through VA API at motion compensation entry-point, Picture.data[3] contains a vaapi_render_state struct which contains macroblocks as well as various fields extracted from headers
  --/< HW acceleration through VA API at IDCT entry-point, Picture.data[3] contains a vaapi_render_state struct which contains fields extracted from headers
  --/< HW decoding through VA API, Picture.data[3] contains a VASurfaceID
  --*@} 
  --*
  --     *  Hardware acceleration through VA-API, data[3] contains a
  --     *  VASurfaceID.
  --      

  --/< planar YUV 4:2:0, 24bpp, (1 Cr & Cb sample per 2x2 Y samples), little-endian
  --/< planar YUV 4:2:0, 24bpp, (1 Cr & Cb sample per 2x2 Y samples), big-endian
  --/< planar YUV 4:2:2, 32bpp, (1 Cr & Cb sample per 2x1 Y samples), little-endian
  --/< planar YUV 4:2:2, 32bpp, (1 Cr & Cb sample per 2x1 Y samples), big-endian
  --/< planar YUV 4:4:4, 48bpp, (1 Cr & Cb sample per 1x1 Y samples), little-endian
  --/< planar YUV 4:4:4, 48bpp, (1 Cr & Cb sample per 1x1 Y samples), big-endian
  --/< MPEG-4 HW decoding with VDPAU, data[0] contains a vdpau_render_state struct which contains the bitstream of the slices as well as various fields extracted from headers
  --/< HW decoding through DXVA2, Picture.data[3] contains a LPDIRECT3DSURFACE9 pointer
  --/< packed RGB 4:4:4, 16bpp, (msb)4X 4R 4G 4B(lsb), little-endian, X=unused/undefined
  --/< packed RGB 4:4:4, 16bpp, (msb)4X 4R 4G 4B(lsb), big-endian,    X=unused/undefined
  --/< packed BGR 4:4:4, 16bpp, (msb)4X 4B 4G 4R(lsb), little-endian, X=unused/undefined
  --/< packed BGR 4:4:4, 16bpp, (msb)4X 4B 4G 4R(lsb), big-endian,    X=unused/undefined
  --/< 8 bits gray, 8 bits alpha
  --/< alias for AV_PIX_FMT_YA8
  --/< alias for AV_PIX_FMT_YA8
  --/< packed RGB 16:16:16, 48bpp, 16B, 16G, 16R, the 2-byte value for each R/G/B component is stored as big-endian
  --/< packed RGB 16:16:16, 48bpp, 16B, 16G, 16R, the 2-byte value for each R/G/B component is stored as little-endian
  --*
  --     * The following 12 formats have the disadvantage of needing 1 format for each bit depth.
  --     * Notice that each 9/10 bits sample is stored in 16 bits with extra padding.
  --     * If you want to support multiple bit depths, then using AV_PIX_FMT_YUV420P16* with the bpp stored separately is better.
  --      

  --/< planar YUV 4:2:0, 13.5bpp, (1 Cr & Cb sample per 2x2 Y samples), big-endian
  --/< planar YUV 4:2:0, 13.5bpp, (1 Cr & Cb sample per 2x2 Y samples), little-endian
  --/< planar YUV 4:2:0, 15bpp, (1 Cr & Cb sample per 2x2 Y samples), big-endian
  --/< planar YUV 4:2:0, 15bpp, (1 Cr & Cb sample per 2x2 Y samples), little-endian
  --/< planar YUV 4:2:2, 20bpp, (1 Cr & Cb sample per 2x1 Y samples), big-endian
  --/< planar YUV 4:2:2, 20bpp, (1 Cr & Cb sample per 2x1 Y samples), little-endian
  --/< planar YUV 4:4:4, 27bpp, (1 Cr & Cb sample per 1x1 Y samples), big-endian
  --/< planar YUV 4:4:4, 27bpp, (1 Cr & Cb sample per 1x1 Y samples), little-endian
  --/< planar YUV 4:4:4, 30bpp, (1 Cr & Cb sample per 1x1 Y samples), big-endian
  --/< planar YUV 4:4:4, 30bpp, (1 Cr & Cb sample per 1x1 Y samples), little-endian
  --/< planar YUV 4:2:2, 18bpp, (1 Cr & Cb sample per 2x1 Y samples), big-endian
  --/< planar YUV 4:2:2, 18bpp, (1 Cr & Cb sample per 2x1 Y samples), little-endian
  --/< hardware decoding through VDA
  --/< planar GBR 4:4:4 24bpp
  -- alias for #AV_PIX_FMT_GBRP
  --/< planar GBR 4:4:4 27bpp, big-endian
  --/< planar GBR 4:4:4 27bpp, little-endian
  --/< planar GBR 4:4:4 30bpp, big-endian
  --/< planar GBR 4:4:4 30bpp, little-endian
  --/< planar GBR 4:4:4 48bpp, big-endian
  --/< planar GBR 4:4:4 48bpp, little-endian
  --/< planar YUV 4:2:2 24bpp, (1 Cr & Cb sample per 2x1 Y & A samples)
  --/< planar YUV 4:4:4 32bpp, (1 Cr & Cb sample per 1x1 Y & A samples)
  --/< planar YUV 4:2:0 22.5bpp, (1 Cr & Cb sample per 2x2 Y & A samples), big-endian
  --/< planar YUV 4:2:0 22.5bpp, (1 Cr & Cb sample per 2x2 Y & A samples), little-endian
  --/< planar YUV 4:2:2 27bpp, (1 Cr & Cb sample per 2x1 Y & A samples), big-endian
  --/< planar YUV 4:2:2 27bpp, (1 Cr & Cb sample per 2x1 Y & A samples), little-endian
  --/< planar YUV 4:4:4 36bpp, (1 Cr & Cb sample per 1x1 Y & A samples), big-endian
  --/< planar YUV 4:4:4 36bpp, (1 Cr & Cb sample per 1x1 Y & A samples), little-endian
  --/< planar YUV 4:2:0 25bpp, (1 Cr & Cb sample per 2x2 Y & A samples, big-endian)
  --/< planar YUV 4:2:0 25bpp, (1 Cr & Cb sample per 2x2 Y & A samples, little-endian)
  --/< planar YUV 4:2:2 30bpp, (1 Cr & Cb sample per 2x1 Y & A samples, big-endian)
  --/< planar YUV 4:2:2 30bpp, (1 Cr & Cb sample per 2x1 Y & A samples, little-endian)
  --/< planar YUV 4:4:4 40bpp, (1 Cr & Cb sample per 1x1 Y & A samples, big-endian)
  --/< planar YUV 4:4:4 40bpp, (1 Cr & Cb sample per 1x1 Y & A samples, little-endian)
  --/< planar YUV 4:2:0 40bpp, (1 Cr & Cb sample per 2x2 Y & A samples, big-endian)
  --/< planar YUV 4:2:0 40bpp, (1 Cr & Cb sample per 2x2 Y & A samples, little-endian)
  --/< planar YUV 4:2:2 48bpp, (1 Cr & Cb sample per 2x1 Y & A samples, big-endian)
  --/< planar YUV 4:2:2 48bpp, (1 Cr & Cb sample per 2x1 Y & A samples, little-endian)
  --/< planar YUV 4:4:4 64bpp, (1 Cr & Cb sample per 1x1 Y & A samples, big-endian)
  --/< planar YUV 4:4:4 64bpp, (1 Cr & Cb sample per 1x1 Y & A samples, little-endian)
  --/< HW acceleration through VDPAU, Picture.data[3] contains a VdpVideoSurface
  --/< packed XYZ 4:4:4, 36 bpp, (msb) 12X, 12Y, 12Z (lsb), the 2-byte value for each X/Y/Z is stored as little-endian, the 4 lower bits are set to 0
  --/< packed XYZ 4:4:4, 36 bpp, (msb) 12X, 12Y, 12Z (lsb), the 2-byte value for each X/Y/Z is stored as big-endian, the 4 lower bits are set to 0
  --/< interleaved chroma YUV 4:2:2, 16bpp, (1 Cr & Cb sample per 2x1 Y samples)
  --/< interleaved chroma YUV 4:2:2, 20bpp, (1 Cr & Cb sample per 2x1 Y samples), little-endian
  --/< interleaved chroma YUV 4:2:2, 20bpp, (1 Cr & Cb sample per 2x1 Y samples), big-endian
  --/< packed RGBA 16:16:16:16, 64bpp, 16R, 16G, 16B, 16A, the 2-byte value for each R/G/B/A component is stored as big-endian
  --/< packed RGBA 16:16:16:16, 64bpp, 16R, 16G, 16B, 16A, the 2-byte value for each R/G/B/A component is stored as little-endian
  --/< packed RGBA 16:16:16:16, 64bpp, 16B, 16G, 16R, 16A, the 2-byte value for each R/G/B/A component is stored as big-endian
  --/< packed RGBA 16:16:16:16, 64bpp, 16B, 16G, 16R, 16A, the 2-byte value for each R/G/B/A component is stored as little-endian
  --/< packed YUV 4:2:2, 16bpp, Y0 Cr Y1 Cb
  --/< HW acceleration through VDA, data[3] contains a CVPixelBufferRef
  --/< 16 bits gray, 16 bits alpha (big-endian)
  --/< 16 bits gray, 16 bits alpha (little-endian)
  --/< planar GBRA 4:4:4:4 32bpp
  --/< planar GBRA 4:4:4:4 64bpp, big-endian
  --/< planar GBRA 4:4:4:4 64bpp, little-endian
  --*
  --     *  HW acceleration through QSV, data[3] contains a pointer to the
  --     *  mfxFrameSurface1 structure.
  --      

  --*
  --     * HW acceleration though MMAL, data[3] contains a pointer to the
  --     * MMAL_BUFFER_HEADER_T structure.
  --      

  --/< HW decoding through Direct3D11, Picture.data[3] contains a ID3D11VideoDecoderOutputView pointer
  --*
  --     * HW acceleration through CUDA. data[i] contain CUdeviceptr pointers
  --     * exactly as for system memory frames.
  --      

  --/< packed RGB 8:8:8, 32bpp, XRGBXRGB...   X=unused/undefined
  --/< packed RGB 8:8:8, 32bpp, RGBXRGBX...   X=unused/undefined
  --/< packed BGR 8:8:8, 32bpp, XBGRXBGR...   X=unused/undefined
  --/< packed BGR 8:8:8, 32bpp, BGRXBGRX...   X=unused/undefined
  --/< planar YUV 4:2:0,18bpp, (1 Cr & Cb sample per 2x2 Y samples), big-endian
  --/< planar YUV 4:2:0,18bpp, (1 Cr & Cb sample per 2x2 Y samples), little-endian
  --/< planar YUV 4:2:0,21bpp, (1 Cr & Cb sample per 2x2 Y samples), big-endian
  --/< planar YUV 4:2:0,21bpp, (1 Cr & Cb sample per 2x2 Y samples), little-endian
  --/< planar YUV 4:2:2,24bpp, (1 Cr & Cb sample per 2x1 Y samples), big-endian
  --/< planar YUV 4:2:2,24bpp, (1 Cr & Cb sample per 2x1 Y samples), little-endian
  --/< planar YUV 4:2:2,28bpp, (1 Cr & Cb sample per 2x1 Y samples), big-endian
  --/< planar YUV 4:2:2,28bpp, (1 Cr & Cb sample per 2x1 Y samples), little-endian
  --/< planar YUV 4:4:4,36bpp, (1 Cr & Cb sample per 1x1 Y samples), big-endian
  --/< planar YUV 4:4:4,36bpp, (1 Cr & Cb sample per 1x1 Y samples), little-endian
  --/< planar YUV 4:4:4,42bpp, (1 Cr & Cb sample per 1x1 Y samples), big-endian
  --/< planar YUV 4:4:4,42bpp, (1 Cr & Cb sample per 1x1 Y samples), little-endian
  --/< planar GBR 4:4:4 36bpp, big-endian
  --/< planar GBR 4:4:4 36bpp, little-endian
  --/< planar GBR 4:4:4 42bpp, big-endian
  --/< planar GBR 4:4:4 42bpp, little-endian
  --/< planar YUV 4:1:1, 12bpp, (1 Cr & Cb sample per 4x1 Y samples) full scale (JPEG), deprecated in favor of AV_PIX_FMT_YUV411P and setting color_range
  --/< bayer, BGBG..(odd line), GRGR..(even line), 8-bit samples  
  --/< bayer, RGRG..(odd line), GBGB..(even line), 8-bit samples  
  --/< bayer, GBGB..(odd line), RGRG..(even line), 8-bit samples  
  --/< bayer, GRGR..(odd line), BGBG..(even line), 8-bit samples  
  --/< bayer, BGBG..(odd line), GRGR..(even line), 16-bit samples, little-endian  
  --/< bayer, BGBG..(odd line), GRGR..(even line), 16-bit samples, big-endian  
  --/< bayer, RGRG..(odd line), GBGB..(even line), 16-bit samples, little-endian  
  --/< bayer, RGRG..(odd line), GBGB..(even line), 16-bit samples, big-endian  
  --/< bayer, GBGB..(odd line), RGRG..(even line), 16-bit samples, little-endian  
  --/< bayer, GBGB..(odd line), RGRG..(even line), 16-bit samples, big-endian  
  --/< bayer, GRGR..(odd line), BGBG..(even line), 16-bit samples, little-endian  
  --/< bayer, GRGR..(odd line), BGBG..(even line), 16-bit samples, big-endian  
  --/< XVideo Motion Acceleration via common packet passing
  --/< planar YUV 4:4:0,20bpp, (1 Cr & Cb sample per 1x2 Y samples), little-endian
  --/< planar YUV 4:4:0,20bpp, (1 Cr & Cb sample per 1x2 Y samples), big-endian
  --/< planar YUV 4:4:0,24bpp, (1 Cr & Cb sample per 1x2 Y samples), little-endian
  --/< planar YUV 4:4:0,24bpp, (1 Cr & Cb sample per 1x2 Y samples), big-endian
  --/< packed AYUV 4:4:4,64bpp (1 Cr & Cb sample per 1x1 Y & A samples), little-endian
  --/< packed AYUV 4:4:4,64bpp (1 Cr & Cb sample per 1x1 Y & A samples), big-endian
  --/< hardware decoding through Videotoolbox
  --/< like NV12, with 10bpp per component, data in the high bits, zeros in the low bits, little-endian
  --/< like NV12, with 10bpp per component, data in the high bits, zeros in the low bits, big-endian
  --/< planar GBR 4:4:4:4 48bpp, big-endian
  --/< planar GBR 4:4:4:4 48bpp, little-endian
  --/< planar GBR 4:4:4:4 40bpp, big-endian
  --/< planar GBR 4:4:4:4 40bpp, little-endian
  --/< hardware decoding through MediaCodec
  --/<        Y        , 12bpp, big-endian
  --/<        Y        , 12bpp, little-endian
  --/<        Y        , 10bpp, big-endian
  --/<        Y        , 10bpp, little-endian
  --/< like NV12, with 16bpp per component, little-endian
  --/< like NV12, with 16bpp per component, big-endian
  --/< number of pixel formats, DO NOT USE THIS if you want to link with shared libav* because the number of formats might differ between versions
  --*
  --  * Chromaticity coordinates of the source primaries.
  --   

   subtype AVColorPrimaries is unsigned;
   AVCOL_PRI_RESERVED0 : constant AVColorPrimaries := 0;
   AVCOL_PRI_BT709 : constant AVColorPrimaries := 1;
   AVCOL_PRI_UNSPECIFIED : constant AVColorPrimaries := 2;
   AVCOL_PRI_RESERVED : constant AVColorPrimaries := 3;
   AVCOL_PRI_BT470M : constant AVColorPrimaries := 4;
   AVCOL_PRI_BT470BG : constant AVColorPrimaries := 5;
   AVCOL_PRI_SMPTE170M : constant AVColorPrimaries := 6;
   AVCOL_PRI_SMPTE240M : constant AVColorPrimaries := 7;
   AVCOL_PRI_FILM : constant AVColorPrimaries := 8;
   AVCOL_PRI_BT2020 : constant AVColorPrimaries := 9;
   AVCOL_PRI_SMPTE428 : constant AVColorPrimaries := 10;
   AVCOL_PRI_SMPTEST428_1 : constant AVColorPrimaries := 10;
   AVCOL_PRI_SMPTE431 : constant AVColorPrimaries := 11;
   AVCOL_PRI_SMPTE432 : constant AVColorPrimaries := 12;
   AVCOL_PRI_JEDEC_P22 : constant AVColorPrimaries := 22;
   AVCOL_PRI_NB : constant AVColorPrimaries := 23;  -- /usr/include/ffmpeg/libavutil/pixfmt.h:400

  --/< also ITU-R BT1361 / IEC 61966-2-4 / SMPTE RP177 Annex B
  --/< also FCC Title 47 Code of Federal Regulations 73.682 (a)(20)
  --/< also ITU-R BT601-6 625 / ITU-R BT1358 625 / ITU-R BT1700 625 PAL & SECAM
  --/< also ITU-R BT601-6 525 / ITU-R BT1358 525 / ITU-R BT1700 NTSC
  --/< functionally identical to above
  --/< colour filters using Illuminant C
  --/< ITU-R BT2020
  --/< SMPTE ST 428-1 (CIE 1931 XYZ)
  --/< SMPTE ST 431-2 (2011) / DCI P3
  --/< SMPTE ST 432-1 (2010) / P3 D65 / Display P3
  --/< JEDEC P22 phosphors
  --/< Not part of ABI
  --*
  -- * Color Transfer Characteristic.
  --  

   subtype AVColorTransferCharacteristic is unsigned;
   AVCOL_TRC_RESERVED0 : constant AVColorTransferCharacteristic := 0;
   AVCOL_TRC_BT709 : constant AVColorTransferCharacteristic := 1;
   AVCOL_TRC_UNSPECIFIED : constant AVColorTransferCharacteristic := 2;
   AVCOL_TRC_RESERVED : constant AVColorTransferCharacteristic := 3;
   AVCOL_TRC_GAMMA22 : constant AVColorTransferCharacteristic := 4;
   AVCOL_TRC_GAMMA28 : constant AVColorTransferCharacteristic := 5;
   AVCOL_TRC_SMPTE170M : constant AVColorTransferCharacteristic := 6;
   AVCOL_TRC_SMPTE240M : constant AVColorTransferCharacteristic := 7;
   AVCOL_TRC_LINEAR : constant AVColorTransferCharacteristic := 8;
   AVCOL_TRC_LOG : constant AVColorTransferCharacteristic := 9;
   AVCOL_TRC_LOG_SQRT : constant AVColorTransferCharacteristic := 10;
   AVCOL_TRC_IEC61966_2_4 : constant AVColorTransferCharacteristic := 11;
   AVCOL_TRC_BT1361_ECG : constant AVColorTransferCharacteristic := 12;
   AVCOL_TRC_IEC61966_2_1 : constant AVColorTransferCharacteristic := 13;
   AVCOL_TRC_BT2020_10 : constant AVColorTransferCharacteristic := 14;
   AVCOL_TRC_BT2020_12 : constant AVColorTransferCharacteristic := 15;
   AVCOL_TRC_SMPTE2084 : constant AVColorTransferCharacteristic := 16;
   AVCOL_TRC_SMPTEST2084 : constant AVColorTransferCharacteristic := 16;
   AVCOL_TRC_SMPTE428 : constant AVColorTransferCharacteristic := 17;
   AVCOL_TRC_SMPTEST428_1 : constant AVColorTransferCharacteristic := 17;
   AVCOL_TRC_ARIB_STD_B67 : constant AVColorTransferCharacteristic := 18;
   AVCOL_TRC_NB : constant AVColorTransferCharacteristic := 19;  -- /usr/include/ffmpeg/libavutil/pixfmt.h:423

  --/< also ITU-R BT1361
  --/< also ITU-R BT470M / ITU-R BT1700 625 PAL & SECAM
  --/< also ITU-R BT470BG
  --/< also ITU-R BT601-6 525 or 625 / ITU-R BT1358 525 or 625 / ITU-R BT1700 NTSC
  --/< "Linear transfer characteristics"
  --/< "Logarithmic transfer characteristic (100:1 range)"
  --/< "Logarithmic transfer characteristic (100 * Sqrt(10) : 1 range)"
  --/< IEC 61966-2-4
  --/< ITU-R BT1361 Extended Colour Gamut
  --/< IEC 61966-2-1 (sRGB or sYCC)
  --/< ITU-R BT2020 for 10-bit system
  --/< ITU-R BT2020 for 12-bit system
  --/< SMPTE ST 2084 for 10-, 12-, 14- and 16-bit systems
  --/< SMPTE ST 428-1
  --/< ARIB STD-B67, known as "Hybrid log-gamma"
  --/< Not part of ABI
  --*
  -- * YUV colorspace type.
  --  

   subtype AVColorSpace is unsigned;
   AVCOL_SPC_RGB : constant AVColorSpace := 0;
   AVCOL_SPC_BT709 : constant AVColorSpace := 1;
   AVCOL_SPC_UNSPECIFIED : constant AVColorSpace := 2;
   AVCOL_SPC_RESERVED : constant AVColorSpace := 3;
   AVCOL_SPC_FCC : constant AVColorSpace := 4;
   AVCOL_SPC_BT470BG : constant AVColorSpace := 5;
   AVCOL_SPC_SMPTE170M : constant AVColorSpace := 6;
   AVCOL_SPC_SMPTE240M : constant AVColorSpace := 7;
   AVCOL_SPC_YCGCO : constant AVColorSpace := 8;
   AVCOL_SPC_YCOCG : constant AVColorSpace := 8;
   AVCOL_SPC_BT2020_NCL : constant AVColorSpace := 9;
   AVCOL_SPC_BT2020_CL : constant AVColorSpace := 10;
   AVCOL_SPC_SMPTE2085 : constant AVColorSpace := 11;
   AVCOL_SPC_NB : constant AVColorSpace := 12;  -- /usr/include/ffmpeg/libavutil/pixfmt.h:451

  --/< order of coefficients is actually GBR, also IEC 61966-2-1 (sRGB)
  --/< also ITU-R BT1361 / IEC 61966-2-4 xvYCC709 / SMPTE RP177 Annex B
  --/< FCC Title 47 Code of Federal Regulations 73.682 (a)(20)
  --/< also ITU-R BT601-6 625 / ITU-R BT1358 625 / ITU-R BT1700 625 PAL & SECAM / IEC 61966-2-4 xvYCC601
  --/< also ITU-R BT601-6 525 / ITU-R BT1358 525 / ITU-R BT1700 NTSC
  --/< functionally identical to above
  --/< Used by Dirac / VC-2 and H.264 FRext, see ITU-T SG16
  --/< ITU-R BT2020 non-constant luminance system
  --/< ITU-R BT2020 constant luminance system
  --/< SMPTE 2085, Y'D'zD'x
  --/< Not part of ABI
  --*
  -- * MPEG vs JPEG YUV range.
  --  

   type AVColorRange is 
     (AVCOL_RANGE_UNSPECIFIED,
      AVCOL_RANGE_MPEG,
      AVCOL_RANGE_JPEG,
      AVCOL_RANGE_NB);
   pragma Convention (C, AVColorRange);  -- /usr/include/ffmpeg/libavutil/pixfmt.h:473

  --/< the normal 219*2^(n-8) "MPEG" YUV ranges
  --/< the normal     2^n-1   "JPEG" YUV ranges
  --/< Not part of ABI
  --*
  -- * Location of chroma samples.
  -- *
  -- * Illustration showing the location of the first (top left) chroma sample of the
  -- * image, the left shows only luma, the right
  -- * shows the location of the chroma sample, the 2 could be imagined to overlay
  -- * each other but are drawn separately due to limitations of ASCII
  -- *
  -- *                1st 2nd       1st 2nd horizontal luma sample positions
  -- *                 v   v         v   v
  -- *                 ______        ______
  -- *1st luma line > |X   X ...    |3 4 X ...     X are luma samples,
  -- *                |             |1 2           1-6 are possible chroma positions
  -- *2nd luma line > |X   X ...    |5 6 X ...     0 is undefined/unknown position
  --  

   type AVChromaLocation is 
     (AVCHROMA_LOC_UNSPECIFIED,
      AVCHROMA_LOC_LEFT,
      AVCHROMA_LOC_CENTER,
      AVCHROMA_LOC_TOPLEFT,
      AVCHROMA_LOC_TOP,
      AVCHROMA_LOC_BOTTOMLEFT,
      AVCHROMA_LOC_BOTTOM,
      AVCHROMA_LOC_NB);
   pragma Convention (C, AVChromaLocation);  -- /usr/include/ffmpeg/libavutil/pixfmt.h:495

  --/< MPEG-2/4 4:2:0, H.264 default for 4:2:0
  --/< MPEG-1 4:2:0, JPEG 4:2:0, H.263 4:2:0
  --/< ITU-R 601, SMPTE 274M 296M S314M(DV 4:1:1), mpeg2 4:2:2
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

  --/< Not part of ABI
end FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h;
