pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h;
with Interfaces.C.Strings;
with System;


limited with FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_frame_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h;


package FFMpeg.avcodec is

   --  unsupported macro: AV_CODEC_ID_IFF_BYTERUN1 AV_CODEC_ID_IFF_ILBM
   --  unsupported macro: AV_CODEC_ID_H265 AV_CODEC_ID_HEVC
   AV_CODEC_PROP_INTRA_ONLY : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:729

   AV_CODEC_PROP_LOSSY : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:735

   AV_CODEC_PROP_LOSSLESS : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:739

   AV_CODEC_PROP_REORDER : constant := (2 ** 3);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:749

   AV_CODEC_PROP_BITMAP_SUB : constant := (2 ** 16);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:754

   AV_CODEC_PROP_TEXT_SUB : constant := (2 ** 17);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:759

   AV_INPUT_BUFFER_PADDING_SIZE : constant := 32;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:769

   AV_INPUT_BUFFER_MIN_SIZE : constant := 16384;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:776

   FF_INPUT_BUFFER_PADDING_SIZE : constant := 32;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:782

   FF_MIN_BUFFER_SIZE : constant := 16384;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:787

   FF_MAX_B_FRAMES : constant := 16;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:852

   AV_CODEC_FLAG_UNALIGNED : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:864

   AV_CODEC_FLAG_QSCALE : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:868

   AV_CODEC_FLAG_4MV : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:872

   AV_CODEC_FLAG_OUTPUT_CORRUPT : constant := (2 ** 3);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:876

   AV_CODEC_FLAG_QPEL : constant := (2 ** 4);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:880

   AV_CODEC_FLAG_PASS1 : constant := (2 ** 9);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:884

   AV_CODEC_FLAG_PASS2 : constant := (2 ** 10);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:888

   AV_CODEC_FLAG_LOOP_FILTER : constant := (2 ** 11);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:892

   AV_CODEC_FLAG_GRAY : constant := (2 ** 13);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:896

   AV_CODEC_FLAG_PSNR : constant := (2 ** 15);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:900

   AV_CODEC_FLAG_TRUNCATED : constant := (2 ** 16);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:905

   AV_CODEC_FLAG_INTERLACED_DCT : constant := (2 ** 18);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:909

   AV_CODEC_FLAG_LOW_DELAY : constant := (2 ** 19);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:913

   AV_CODEC_FLAG_GLOBAL_HEADER : constant := (2 ** 22);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:917

   AV_CODEC_FLAG_BITEXACT : constant := (2 ** 23);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:921

   AV_CODEC_FLAG_AC_PRED : constant := (2 ** 24);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:926

   AV_CODEC_FLAG_INTERLACED_ME : constant := (2 ** 29);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:930
   AV_CODEC_FLAG_CLOSED_GOP : constant := (2 ** 31);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:931

   AV_CODEC_FLAG2_FAST : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:936

   AV_CODEC_FLAG2_NO_OUTPUT : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:940

   AV_CODEC_FLAG2_LOCAL_HEADER : constant := (2 ** 3);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:944

   AV_CODEC_FLAG2_DROP_FRAME_TIMECODE : constant := (2 ** 13);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:949

   AV_CODEC_FLAG2_CHUNKS : constant := (2 ** 15);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:955

   AV_CODEC_FLAG2_IGNORE_CROP : constant := (2 ** 16);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:959

   AV_CODEC_FLAG2_SHOW_ALL : constant := (2 ** 22);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:964

   AV_CODEC_FLAG2_EXPORT_MVS : constant := (2 ** 28);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:968

   AV_CODEC_FLAG2_SKIP_MANUAL : constant := (2 ** 29);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:972

   AV_CODEC_FLAG2_RO_FLUSH_NOOP : constant := (2 ** 30);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:976

   AV_CODEC_CAP_DRAW_HORIZ_BAND : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:988

   AV_CODEC_CAP_DR1 : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:994
   AV_CODEC_CAP_TRUNCATED : constant := (2 ** 3);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:995

   AV_CODEC_CAP_DELAY : constant := (2 ** 5);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1019

   AV_CODEC_CAP_SMALL_LAST_FRAME : constant := (2 ** 6);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1024

   AV_CODEC_CAP_HWACCEL_VDPAU : constant := (2 ** 7);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1030

   AV_CODEC_CAP_SUBFRAMES : constant := (2 ** 8);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1044

   AV_CODEC_CAP_EXPERIMENTAL : constant := (2 ** 9);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1049

   AV_CODEC_CAP_CHANNEL_CONF : constant := (2 ** 10);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1053

   AV_CODEC_CAP_FRAME_THREADS : constant := (2 ** 12);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1057

   AV_CODEC_CAP_SLICE_THREADS : constant := (2 ** 13);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1061

   AV_CODEC_CAP_PARAM_CHANGE : constant := (2 ** 14);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1065

   AV_CODEC_CAP_AUTO_THREADS : constant := (2 ** 15);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1069

   AV_CODEC_CAP_VARIABLE_FRAME_SIZE : constant := (2 ** 16);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1073

   AV_CODEC_CAP_AVOID_PROBING : constant := (2 ** 17);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1083

   AV_CODEC_CAP_INTRA_ONLY : constant := 16#40000000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1087

   AV_CODEC_CAP_LOSSLESS : constant := 16#80000000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1091
   --  unsupported macro: CODEC_FLAG_UNALIGNED AV_CODEC_FLAG_UNALIGNED
   --  unsupported macro: CODEC_FLAG_QSCALE AV_CODEC_FLAG_QSCALE
   --  unsupported macro: CODEC_FLAG_4MV AV_CODEC_FLAG_4MV
   --  unsupported macro: CODEC_FLAG_OUTPUT_CORRUPT AV_CODEC_FLAG_OUTPUT_CORRUPT
   --  unsupported macro: CODEC_FLAG_QPEL AV_CODEC_FLAG_QPEL

   CODEC_FLAG_GMC : constant := 16#0020#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1108

   CODEC_FLAG_MV0 : constant := 16#0040#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1115

   CODEC_FLAG_INPUT_PRESERVED : constant := 16#0100#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1122
   --  unsupported macro: CODEC_FLAG_PASS1 AV_CODEC_FLAG_PASS1
   --  unsupported macro: CODEC_FLAG_PASS2 AV_CODEC_FLAG_PASS2
   --  unsupported macro: CODEC_FLAG_GRAY AV_CODEC_FLAG_GRAY

   CODEC_FLAG_EMU_EDGE : constant := 16#4000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1132
   --  unsupported macro: CODEC_FLAG_PSNR AV_CODEC_FLAG_PSNR
   --  unsupported macro: CODEC_FLAG_TRUNCATED AV_CODEC_FLAG_TRUNCATED

   CODEC_FLAG_NORMALIZE_AQP : constant := 16#00020000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1142
   --  unsupported macro: CODEC_FLAG_INTERLACED_DCT AV_CODEC_FLAG_INTERLACED_DCT
   --  unsupported macro: CODEC_FLAG_LOW_DELAY AV_CODEC_FLAG_LOW_DELAY
   --  unsupported macro: CODEC_FLAG_GLOBAL_HEADER AV_CODEC_FLAG_GLOBAL_HEADER
   --  unsupported macro: CODEC_FLAG_BITEXACT AV_CODEC_FLAG_BITEXACT
   --  unsupported macro: CODEC_FLAG_AC_PRED AV_CODEC_FLAG_AC_PRED
   --  unsupported macro: CODEC_FLAG_LOOP_FILTER AV_CODEC_FLAG_LOOP_FILTER
   --  unsupported macro: CODEC_FLAG_INTERLACED_ME AV_CODEC_FLAG_INTERLACED_ME
   --  unsupported macro: CODEC_FLAG_CLOSED_GOP AV_CODEC_FLAG_CLOSED_GOP
   --  unsupported macro: CODEC_FLAG2_FAST AV_CODEC_FLAG2_FAST
   --  unsupported macro: CODEC_FLAG2_NO_OUTPUT AV_CODEC_FLAG2_NO_OUTPUT
   --  unsupported macro: CODEC_FLAG2_LOCAL_HEADER AV_CODEC_FLAG2_LOCAL_HEADER
   --  unsupported macro: CODEC_FLAG2_DROP_FRAME_TIMECODE AV_CODEC_FLAG2_DROP_FRAME_TIMECODE
   --  unsupported macro: CODEC_FLAG2_IGNORE_CROP AV_CODEC_FLAG2_IGNORE_CROP
   --  unsupported macro: CODEC_FLAG2_CHUNKS AV_CODEC_FLAG2_CHUNKS
   --  unsupported macro: CODEC_FLAG2_SHOW_ALL AV_CODEC_FLAG2_SHOW_ALL
   --  unsupported macro: CODEC_FLAG2_EXPORT_MVS AV_CODEC_FLAG2_EXPORT_MVS
   --  unsupported macro: CODEC_FLAG2_SKIP_MANUAL AV_CODEC_FLAG2_SKIP_MANUAL
   --  unsupported macro: CODEC_CAP_DRAW_HORIZ_BAND AV_CODEC_CAP_DRAW_HORIZ_BAND
   --  unsupported macro: CODEC_CAP_DR1 AV_CODEC_CAP_DR1
   --  unsupported macro: CODEC_CAP_TRUNCATED AV_CODEC_CAP_TRUNCATED

   CODEC_CAP_HWACCEL : constant := 16#0010#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1186
   --  unsupported macro: CODEC_CAP_DELAY AV_CODEC_CAP_DELAY
   --  unsupported macro: CODEC_CAP_SMALL_LAST_FRAME AV_CODEC_CAP_SMALL_LAST_FRAME
   --  unsupported macro: CODEC_CAP_HWACCEL_VDPAU AV_CODEC_CAP_HWACCEL_VDPAU
   --  unsupported macro: CODEC_CAP_SUBFRAMES AV_CODEC_CAP_SUBFRAMES
   --  unsupported macro: CODEC_CAP_EXPERIMENTAL AV_CODEC_CAP_EXPERIMENTAL
   --  unsupported macro: CODEC_CAP_CHANNEL_CONF AV_CODEC_CAP_CHANNEL_CONF

   CODEC_CAP_NEG_LINESIZES : constant := 16#0800#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1248
   --  unsupported macro: CODEC_CAP_FRAME_THREADS AV_CODEC_CAP_FRAME_THREADS
   --  unsupported macro: CODEC_CAP_SLICE_THREADS AV_CODEC_CAP_SLICE_THREADS
   --  unsupported macro: CODEC_CAP_PARAM_CHANGE AV_CODEC_CAP_PARAM_CHANGE
   --  unsupported macro: CODEC_CAP_AUTO_THREADS AV_CODEC_CAP_AUTO_THREADS
   --  unsupported macro: CODEC_CAP_VARIABLE_FRAME_SIZE AV_CODEC_CAP_VARIABLE_FRAME_SIZE
   --  unsupported macro: CODEC_CAP_INTRA_ONLY AV_CODEC_CAP_INTRA_ONLY
   --  unsupported macro: CODEC_CAP_LOSSLESS AV_CODEC_CAP_LOSSLESS

   HWACCEL_CODEC_CAP_EXPERIMENTAL : constant := 16#0200#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1283

   MB_TYPE_INTRA4x4 : constant := 16#0001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1288
   MB_TYPE_INTRA16x16 : constant := 16#0002#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1289
   MB_TYPE_INTRA_PCM : constant := 16#0004#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1290
   MB_TYPE_16x16 : constant := 16#0008#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1291
   MB_TYPE_16x8 : constant := 16#0010#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1292
   MB_TYPE_8x16 : constant := 16#0020#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1293
   MB_TYPE_8x8 : constant := 16#0040#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1294
   MB_TYPE_INTERLACED : constant := 16#0080#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1295
   MB_TYPE_DIRECT2 : constant := 16#0100#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1296
   MB_TYPE_ACPRED : constant := 16#0200#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1297
   MB_TYPE_GMC : constant := 16#0400#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1298
   MB_TYPE_SKIP : constant := 16#0800#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1299
   MB_TYPE_P0L0 : constant := 16#1000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1300
   MB_TYPE_P1L0 : constant := 16#2000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1301
   MB_TYPE_P0L1 : constant := 16#4000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1302
   MB_TYPE_P1L1 : constant := 16#8000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1303
   --  unsupported macro: MB_TYPE_L0 (MB_TYPE_P0L0 | MB_TYPE_P1L0)
   --  unsupported macro: MB_TYPE_L1 (MB_TYPE_P0L1 | MB_TYPE_P1L1)
   --  unsupported macro: MB_TYPE_L0L1 (MB_TYPE_L0 | MB_TYPE_L1)

   MB_TYPE_QUANT : constant := 16#00010000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1307
   MB_TYPE_CBP : constant := 16#00020000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1308

   FF_QSCALE_TYPE_MPEG1 : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1380
   FF_QSCALE_TYPE_MPEG2 : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1381
   FF_QSCALE_TYPE_H264 : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1382
   FF_QSCALE_TYPE_VP56 : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1383

   AV_GET_BUFFER_FLAG_REF : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1389
   --  unsupported macro: AV_PKT_DATA_QUALITY_FACTOR AV_PKT_DATA_QUALITY_STATS

   AV_PKT_FLAG_KEY : constant := 16#0001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1689
   AV_PKT_FLAG_CORRUPT : constant := 16#0002#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1690

   AV_PKT_FLAG_DISCARD : constant := 16#0004#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1696

   FF_COMPRESSION_DEFAULT : constant := -1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1820

   FF_ASPECT_EXTENDED : constant := 15;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:1937

   FF_RC_STRATEGY_XVID : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2032

   FF_PRED_LEFT : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2124
   FF_PRED_PLANE : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2125
   FF_PRED_MEDIAN : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2126

   FF_CMP_SAD : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2169
   FF_CMP_SSE : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2170
   FF_CMP_SATD : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2171
   FF_CMP_DCT : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2172
   FF_CMP_PSNR : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2173
   FF_CMP_BIT : constant := 5;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2174
   FF_CMP_RD : constant := 6;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2175
   FF_CMP_ZERO : constant := 7;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2176
   FF_CMP_VSAD : constant := 8;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2177
   FF_CMP_VSSE : constant := 9;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2178
   FF_CMP_NSSE : constant := 10;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2179
   FF_CMP_W53 : constant := 11;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2180
   FF_CMP_W97 : constant := 12;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2181
   FF_CMP_DCTMAX : constant := 13;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2182
   FF_CMP_DCT264 : constant := 14;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2183
   FF_CMP_MEDIAN_SAD : constant := 15;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2184
   FF_CMP_CHROMA : constant := 256;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2185

   FF_DTG_AFD_SAME : constant := 8;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2239
   FF_DTG_AFD_4_3 : constant := 9;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2240
   FF_DTG_AFD_16_9 : constant := 10;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2241
   FF_DTG_AFD_14_9 : constant := 11;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2242
   FF_DTG_AFD_4_3_SP_14_9 : constant := 13;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2243
   FF_DTG_AFD_16_9_SP_14_9 : constant := 14;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2244
   FF_DTG_AFD_SP_4_3 : constant := 15;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2245

   FF_DEFAULT_QUANT_BIAS : constant := 999999;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2262

   SLICE_FLAG_CODED_ORDER : constant := 16#0001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2276
   SLICE_FLAG_ALLOW_FIELD : constant := 16#0002#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2277
   SLICE_FLAG_ALLOW_PLANE : constant := 16#0004#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2278

   FF_MB_DECISION_SIMPLE : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2296
   FF_MB_DECISION_BITS : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2297
   FF_MB_DECISION_RD : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2298

   FF_CODER_TYPE_VLC : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2774
   FF_CODER_TYPE_AC : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2775
   FF_CODER_TYPE_RAW : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2776
   FF_CODER_TYPE_RLE : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2777

   FF_CODER_TYPE_DEFLATE : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2779

   FF_BUG_AUTODETECT : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2917

   FF_BUG_OLD_MSMPEG4 : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2919

   FF_BUG_XVID_ILACE : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2921
   FF_BUG_UMP4 : constant := 8;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2922
   FF_BUG_NO_PADDING : constant := 16;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2923
   FF_BUG_AMV : constant := 32;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2924

   FF_BUG_AC_VLC : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2926

   FF_BUG_QPEL_CHROMA : constant := 64;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2928
   FF_BUG_STD_QPEL : constant := 128;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2929
   FF_BUG_QPEL_CHROMA2 : constant := 256;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2930
   FF_BUG_DIRECT_BLOCKSIZE : constant := 512;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2931
   FF_BUG_EDGE : constant := 1024;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2932
   FF_BUG_HPEL_CHROMA : constant := 2048;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2933
   FF_BUG_DC_CLIP : constant := 4096;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2934
   FF_BUG_MS : constant := 8192;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2935
   FF_BUG_TRUNCATED : constant := 16384;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2936
   FF_BUG_IEDGE : constant := 32768;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2937

   FF_COMPLIANCE_VERY_STRICT : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2952
   FF_COMPLIANCE_STRICT : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2953
   FF_COMPLIANCE_NORMAL : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2954
   FF_COMPLIANCE_UNOFFICIAL : constant := -1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2955
   FF_COMPLIANCE_EXPERIMENTAL : constant := -2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2956

   FF_EC_GUESS_MVS : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2964
   FF_EC_DEBLOCK : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2965
   FF_EC_FAVOR_INTER : constant := 256;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2966

   FF_DEBUG_PICT_INFO : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2974
   FF_DEBUG_RC : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2975
   FF_DEBUG_BITSTREAM : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2976
   FF_DEBUG_MB_TYPE : constant := 8;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2977
   FF_DEBUG_QP : constant := 16;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2978

   FF_DEBUG_MV : constant := 32;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2983

   FF_DEBUG_DCT_COEFF : constant := 16#00000040#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2985
   FF_DEBUG_SKIP : constant := 16#00000080#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2986
   FF_DEBUG_STARTCODE : constant := 16#00000100#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2987

   FF_DEBUG_PTS : constant := 16#00000200#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2989

   FF_DEBUG_ER : constant := 16#00000400#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2991
   FF_DEBUG_MMCO : constant := 16#00000800#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2992
   FF_DEBUG_BUGS : constant := 16#00001000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2993

   FF_DEBUG_VIS_QP : constant := 16#00002000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2995
   FF_DEBUG_VIS_MB_TYPE : constant := 16#00004000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2996

   FF_DEBUG_BUFFERS : constant := 16#00008000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2998
   FF_DEBUG_THREADS : constant := 16#00010000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:2999
   FF_DEBUG_GREEN_MD : constant := 16#00800000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3000
   FF_DEBUG_NOMC : constant := 16#01000000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3001

   FF_DEBUG_VIS_MV_P_FOR : constant := 16#00000001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3010
   FF_DEBUG_VIS_MV_B_FOR : constant := 16#00000002#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3011
   FF_DEBUG_VIS_MV_B_BACK : constant := 16#00000004#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3012

   AV_EF_CRCCHECK : constant := (2**0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3028
   AV_EF_BITSTREAM : constant := (2**1);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3029
   AV_EF_BUFFER : constant := (2**2);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3030
   AV_EF_EXPLODE : constant := (2**3);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3031

   AV_EF_IGNORE_ERR : constant := (2**15);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3033
   AV_EF_CAREFUL : constant := (2**16);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3034
   AV_EF_COMPLIANT : constant := (2**17);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3035
   AV_EF_AGGRESSIVE : constant := (2**18);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3036

   FF_DCT_AUTO : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3079
   FF_DCT_FASTINT : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3080
   FF_DCT_INT : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3081
   FF_DCT_MMX : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3082
   FF_DCT_ALTIVEC : constant := 5;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3083
   FF_DCT_FAAN : constant := 6;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3084

   FF_IDCT_AUTO : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3092
   FF_IDCT_INT : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3093
   FF_IDCT_SIMPLE : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3094
   FF_IDCT_SIMPLEMMX : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3095
   FF_IDCT_ARM : constant := 7;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3096
   FF_IDCT_ALTIVEC : constant := 8;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3097

   FF_IDCT_SH4 : constant := 9;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3099

   FF_IDCT_SIMPLEARM : constant := 10;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3101

   FF_IDCT_IPP : constant := 13;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3103

   FF_IDCT_XVID : constant := 14;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3105

   FF_IDCT_XVIDMMX : constant := 14;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3107

   FF_IDCT_SIMPLEARMV5TE : constant := 16;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3109
   FF_IDCT_SIMPLEARMV6 : constant := 17;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3110

   FF_IDCT_SIMPLEVIS : constant := 18;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3112

   FF_IDCT_FAAN : constant := 20;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3114
   FF_IDCT_SIMPLENEON : constant := 22;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3115

   FF_IDCT_SIMPLEALPHA : constant := 23;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3117

   FF_IDCT_SIMPLEAUTO : constant := 128;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3119

   FF_THREAD_FRAME : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3172
   FF_THREAD_SLICE : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3173

   FF_PROFILE_UNKNOWN : constant := -99;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3236
   FF_PROFILE_RESERVED : constant := -100;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3237

   FF_PROFILE_AAC_MAIN : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3239
   FF_PROFILE_AAC_LOW : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3240
   FF_PROFILE_AAC_SSR : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3241
   FF_PROFILE_AAC_LTP : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3242
   FF_PROFILE_AAC_HE : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3243
   FF_PROFILE_AAC_HE_V2 : constant := 28;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3244
   FF_PROFILE_AAC_LD : constant := 22;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3245
   FF_PROFILE_AAC_ELD : constant := 38;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3246
   FF_PROFILE_MPEG2_AAC_LOW : constant := 128;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3247
   FF_PROFILE_MPEG2_AAC_HE : constant := 131;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3248

   FF_PROFILE_DNXHD : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3250
   FF_PROFILE_DNXHR_LB : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3251
   FF_PROFILE_DNXHR_SQ : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3252
   FF_PROFILE_DNXHR_HQ : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3253
   FF_PROFILE_DNXHR_HQX : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3254
   FF_PROFILE_DNXHR_444 : constant := 5;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3255

   FF_PROFILE_DTS : constant := 20;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3257
   FF_PROFILE_DTS_ES : constant := 30;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3258
   FF_PROFILE_DTS_96_24 : constant := 40;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3259
   FF_PROFILE_DTS_HD_HRA : constant := 50;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3260
   FF_PROFILE_DTS_HD_MA : constant := 60;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3261
   FF_PROFILE_DTS_EXPRESS : constant := 70;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3262

   FF_PROFILE_MPEG2_422 : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3264
   FF_PROFILE_MPEG2_HIGH : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3265
   FF_PROFILE_MPEG2_SS : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3266
   FF_PROFILE_MPEG2_SNR_SCALABLE : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3267
   FF_PROFILE_MPEG2_MAIN : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3268
   FF_PROFILE_MPEG2_SIMPLE : constant := 5;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3269

   FF_PROFILE_H264_CONSTRAINED : constant := (2**9);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3271
   FF_PROFILE_H264_INTRA : constant := (2**11);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3272

   FF_PROFILE_H264_BASELINE : constant := 66;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3274
   --  unsupported macro: FF_PROFILE_H264_CONSTRAINED_BASELINE (66|FF_PROFILE_H264_CONSTRAINED)

   FF_PROFILE_H264_MAIN : constant := 77;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3276
   FF_PROFILE_H264_EXTENDED : constant := 88;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3277
   FF_PROFILE_H264_HIGH : constant := 100;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3278
   FF_PROFILE_H264_HIGH_10 : constant := 110;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3279
   --  unsupported macro: FF_PROFILE_H264_HIGH_10_INTRA (110|FF_PROFILE_H264_INTRA)

   FF_PROFILE_H264_MULTIVIEW_HIGH : constant := 118;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3281
   FF_PROFILE_H264_HIGH_422 : constant := 122;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3282
   --  unsupported macro: FF_PROFILE_H264_HIGH_422_INTRA (122|FF_PROFILE_H264_INTRA)

   FF_PROFILE_H264_STEREO_HIGH : constant := 128;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3284
   FF_PROFILE_H264_HIGH_444 : constant := 144;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3285
   FF_PROFILE_H264_HIGH_444_PREDICTIVE : constant := 244;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3286
   --  unsupported macro: FF_PROFILE_H264_HIGH_444_INTRA (244|FF_PROFILE_H264_INTRA)

   FF_PROFILE_H264_CAVLC_444 : constant := 44;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3288

   FF_PROFILE_VC1_SIMPLE : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3290
   FF_PROFILE_VC1_MAIN : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3291
   FF_PROFILE_VC1_COMPLEX : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3292
   FF_PROFILE_VC1_ADVANCED : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3293

   FF_PROFILE_MPEG4_SIMPLE : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3295
   FF_PROFILE_MPEG4_SIMPLE_SCALABLE : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3296
   FF_PROFILE_MPEG4_CORE : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3297
   FF_PROFILE_MPEG4_MAIN : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3298
   FF_PROFILE_MPEG4_N_BIT : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3299
   FF_PROFILE_MPEG4_SCALABLE_TEXTURE : constant := 5;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3300
   FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION : constant := 6;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3301
   FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE : constant := 7;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3302
   FF_PROFILE_MPEG4_HYBRID : constant := 8;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3303
   FF_PROFILE_MPEG4_ADVANCED_REAL_TIME : constant := 9;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3304
   FF_PROFILE_MPEG4_CORE_SCALABLE : constant := 10;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3305
   FF_PROFILE_MPEG4_ADVANCED_CODING : constant := 11;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3306
   FF_PROFILE_MPEG4_ADVANCED_CORE : constant := 12;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3307
   FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE : constant := 13;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3308
   FF_PROFILE_MPEG4_SIMPLE_STUDIO : constant := 14;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3309
   FF_PROFILE_MPEG4_ADVANCED_SIMPLE : constant := 15;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3310

   FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0 : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3312
   FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1 : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3313
   FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION : constant := 32768;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3314
   FF_PROFILE_JPEG2000_DCINEMA_2K : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3315
   FF_PROFILE_JPEG2000_DCINEMA_4K : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3316

   FF_PROFILE_VP9_0 : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3318
   FF_PROFILE_VP9_1 : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3319
   FF_PROFILE_VP9_2 : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3320
   FF_PROFILE_VP9_3 : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3321

   FF_PROFILE_HEVC_MAIN : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3323
   FF_PROFILE_HEVC_MAIN_10 : constant := 2;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3324
   FF_PROFILE_HEVC_MAIN_STILL_PICTURE : constant := 3;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3325
   FF_PROFILE_HEVC_REXT : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3326

   FF_LEVEL_UNKNOWN : constant := -99;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3334

   FF_SUB_CHARENC_MODE_DO_NOTHING : constant := -1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3485
   FF_SUB_CHARENC_MODE_AUTOMATIC : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3486
   FF_SUB_CHARENC_MODE_PRE_DECODER : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3487

   FF_CODEC_PROPERTY_LOSSLESS : constant := 16#00000001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3551
   FF_CODEC_PROPERTY_CLOSED_CAPTIONS : constant := 16#00000002#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3552

   FF_SUB_TEXT_FMT_ASS : constant := 0;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3593

   FF_SUB_TEXT_FMT_ASS_WITH_TIMINGS : constant := 1;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3595

   AV_HWACCEL_FLAG_IGNORE_LEVEL : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3948

   AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavcodec/avcodec.h:3954

   AV_SUBTITLE_FLAG_FORCED : constant := 16#00000001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:4005

   AV_PARSER_PTS_NB : constant := 4;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:5102

   PARSER_FLAG_COMPLETE_FRAMES : constant := 16#0001#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:5109
   PARSER_FLAG_ONCE : constant := 16#0002#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:5110

   PARSER_FLAG_FETCHED_OFFSET : constant := 16#0004#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:5112
   PARSER_FLAG_USE_CODEC_TS : constant := 16#1000#;  --  /usr/include/ffmpeg/libavcodec/avcodec.h:5113

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
  -- * @ingroup libavc
  -- * Libavcodec external API header
  --

  --*
  -- * @defgroup libavc libavcodec
  -- * Encoding/Decoding Library
  -- *
  -- * @{
  -- *
  -- * @defgroup lavc_decoding Decoding
  -- * @{
  -- * @}
  -- *
  -- * @defgroup lavc_encoding Encoding
  -- * @{
  -- * @}
  -- *
  -- * @defgroup lavc_codec Codecs
  -- * @{
  -- * @defgroup lavc_codec_native Native Codecs
  -- * @{
  -- * @}
  -- * @defgroup lavc_codec_wrappers External library wrappers
  -- * @{
  -- * @}
  -- * @defgroup lavc_codec_hwaccel Hardware Accelerators bridge
  -- * @{
  -- * @}
  -- * @}
  -- * @defgroup lavc_internal Internal
  -- * @{
  -- * @}
  -- * @}
  --

  --*
  -- * @ingroup libavc
  -- * @defgroup lavc_encdec send/receive encoding and decoding API overview
  -- * @{
  -- *
  -- * The send_packet()/avcodec_receive_frame()/avcodec_send_frame()/
  -- * receive_packet() functions provide an encode/decode API, which
  -- * decouples input and output.
  -- *
  -- * The API is very similar for encoding/decoding and audio/video, and works as
  -- * follows:
  -- * - Set up and open the AVCodecContext as usual.
  -- * - Send valid input:
  -- *   - For decoding, call send_packet() to give the decoder raw
  -- *     compressed data in an AVPacket.
  -- *   - For encoding, call send_frame() to give the encoder an AVFrame
  -- *     containing uncompressed audio or video.
  -- *   In both cases, it is recommended that AVPackets and AVFrames are
  -- *   refcounted, or libavcodec might have to copy the input data. (libavformat
  -- *   always returns refcounted AVPackets, and frame_get_buffer() allocates
  -- *   refcounted AVFrames.)
  -- * - Receive output in a loop. Periodically call one of the receive_*()
  -- *   functions and process their output:
  -- *   - For decoding, call receive_frame(). On success, it will return
  -- *     an AVFrame containing uncompressed audio or video data.
  -- *   - For encoding, call receive_packet(). On success, it will return
  -- *     an AVPacket with a compressed frame.
  -- *   Repeat this call until it returns AVERROR(EAGAIN) or an error. The
  -- *   AVERROR(EAGAIN) return value means that new input data is required to
  -- *   return new output. In this case, continue with sending input. For each
  -- *   input frame/packet, the codec will typically return 1 output frame/packet,
  -- *   but it can also be 0 or more than 1.
  -- *
  -- * At the beginning of decoding or encoding, the codec might accept multiple
  -- * input frames/packets without returning a frame, until its internal buffers
  -- * are filled. This situation is handled transparently if you follow the steps
  -- * outlined above.
  -- *
  -- * In theory, sending input can result in EAGAIN - this should happen only if
  -- * not all output was received. You can use this to structure alternative decode
  -- * or encode loops other than the one suggested above. For example, you could
  -- * try sending new input on each iteration, and try to receive output if that
  -- * returns EAGAIN.
  -- *
  -- * End of stream situations. These require "flushing" (aka draining) the codec,
  -- * as the codec might buffer multiple frames or packets internally for
  -- * performance or out of necessity (consider B-frames).
  -- * This is handled as follows:
  -- * - Instead of valid input, send NULL to the send_packet() (decoding)
  -- *   or send_frame() (encoding) functions. This will enter draining
  -- *   mode.
  -- * - Call receive_frame() (decoding) or receive_packet()
  -- *   (encoding) in a loop until AVERROR_EOF is returned. The functions will
  -- *   not return AVERROR(EAGAIN), unless you forgot to enter draining mode.
  -- * - Before decoding can be resumed again, the codec has to be reset with
  -- *   flush_buffers().
  -- *
  -- * Using the API as outlined above is highly recommended. But it is also
  -- * possible to call functions outside of this rigid schema. For example, you can
  -- * call send_packet() repeatedly without calling
  -- * receive_frame(). In this case, send_packet() will succeed
  -- * until the codec's internal buffer has been filled up (which is typically of
  -- * size 1 per output frame, after initial input), and then reject input with
  -- * AVERROR(EAGAIN). Once it starts rejecting input, you have no choice but to
  -- * read at least some output.
  -- *
  -- * Not all codecs will follow a rigid and predictable dataflow; the only
  -- * guarantee is that an AVERROR(EAGAIN) return value on a send/receive call on
  -- * one end implies that a receive/send call on the other end will succeed, or
  -- * at least will not fail with AVERROR(EAGAIN). In general, no codec will
  -- * permit unlimited buffering of input or output.
  -- *
  -- * This API replaces the following legacy functions:
  -- * - decode_video2() and decode_audio4():
  -- *   Use send_packet() to feed input to the decoder, then use
  -- *   receive_frame() to receive decoded frames after each packet.
  -- *   Unlike with the old video decoding API, multiple frames might result from
  -- *   a packet. For audio, splitting the input packet into frames by partially
  -- *   decoding packets becomes transparent to the API user. You never need to
  -- *   feed an AVPacket to the API twice (unless it is rejected with AVERROR(EAGAIN) - then
  -- *   no data was read from the packet).
  -- *   Additionally, sending a flush/draining packet is required only once.
  -- * - encode_video2()/avcodec_encode_audio2():
  -- *   Use send_frame() to feed input to the encoder, then use
  -- *   receive_packet() to receive encoded packets.
  -- *   Providing user-allocated buffers for receive_packet() is not
  -- *   possible.
  -- * - The new API does not handle subtitles yet.
  -- *
  -- * Mixing new and old function calls on the same AVCodecContext is not allowed,
  -- * and will result in undefined behavior.
  -- *
  -- * Some codecs might require using the new API; using the old API will return
  -- * an error when calling it. All codecs support the new API.
  -- *
  -- * A codec is not allowed to return AVERROR(EAGAIN) for both sending and receiving. This
  -- * would be an invalid state, which could put the codec user into an endless
  -- * loop. The API has no concept of time either: it cannot happen that trying to
  -- * do send_packet() results in AVERROR(EAGAIN), but a repeated call 1 second
  -- * later accepts the packet (with no other receive/flush API calls involved).
  -- * The API is a strict state machine, and the passage of time is not supposed
  -- * to influence it. Some timing-dependent behavior might still be deemed
  -- * acceptable in certain cases. But it must never result in both send/receive
  -- * returning EAGAIN at the same time at any point. It must also absolutely be
  -- * avoided that the current state is "unstable" and can "flip-flop" between
  -- * the send/receive APIs allowing progress. For example, it's not allowed that
  -- * the codec randomly decides that it actually wants to consume a packet now
  -- * instead of returning a frame, after it just returned AVERROR(EAGAIN) on an
  -- * send_packet() call.
  -- * @}
  --

  --*
  -- * @defgroup lavc_core Core functions/structures.
  -- * @ingroup libavc
  -- *
  -- * Basic definitions, functions for querying libavcodec capabilities,
  -- * allocating core structures, etc.
  -- * @{
  --

  --*
  -- * Identify the syntax and semantics of the bitstream.
  -- * The principle is roughly:
  -- * Two decoders with the same ID can decode the same streams.
  -- * Two encoders with the same ID can encode compatible streams.
  -- * There may be slight deviations from the principle due to implementation
  -- * details.
  -- *
  -- * If you add a codec ID to this list, add it so that
  -- * 1. no value of an existing codec ID changes (that would break ABI),
  -- * 2. it is as close as possible to similar codecs
  -- *
  -- * After adding new codec IDs, do not forget to add an entry to the codec
  -- * descriptor list and bump libavcodec minor version.
  --

   subtype AVCodecID is unsigned;
   AV_CODEC_ID_NONE : constant AVCodecID := 0;
   AV_CODEC_ID_MPEG1VIDEO : constant AVCodecID := 1;
   AV_CODEC_ID_MPEG2VIDEO : constant AVCodecID := 2;
   AV_CODEC_ID_MPEG2VIDEO_XVMC : constant AVCodecID := 3;
   AV_CODEC_ID_H261 : constant AVCodecID := 4;
   AV_CODEC_ID_H263 : constant AVCodecID := 5;
   AV_CODEC_ID_RV10 : constant AVCodecID := 6;
   AV_CODEC_ID_RV20 : constant AVCodecID := 7;
   AV_CODEC_ID_MJPEG : constant AVCodecID := 8;
   AV_CODEC_ID_MJPEGB : constant AVCodecID := 9;
   AV_CODEC_ID_LJPEG : constant AVCodecID := 10;
   AV_CODEC_ID_SP5X : constant AVCodecID := 11;
   AV_CODEC_ID_JPEGLS : constant AVCodecID := 12;
   AV_CODEC_ID_MPEG4 : constant AVCodecID := 13;
   AV_CODEC_ID_RAWVIDEO : constant AVCodecID := 14;
   AV_CODEC_ID_MSMPEG4V1 : constant AVCodecID := 15;
   AV_CODEC_ID_MSMPEG4V2 : constant AVCodecID := 16;
   AV_CODEC_ID_MSMPEG4V3 : constant AVCodecID := 17;
   AV_CODEC_ID_WMV1 : constant AVCodecID := 18;
   AV_CODEC_ID_WMV2 : constant AVCodecID := 19;
   AV_CODEC_ID_H263P : constant AVCodecID := 20;
   AV_CODEC_ID_H263I : constant AVCodecID := 21;
   AV_CODEC_ID_FLV1 : constant AVCodecID := 22;
   AV_CODEC_ID_SVQ1 : constant AVCodecID := 23;
   AV_CODEC_ID_SVQ3 : constant AVCodecID := 24;
   AV_CODEC_ID_DVVIDEO : constant AVCodecID := 25;
   AV_CODEC_ID_HUFFYUV : constant AVCodecID := 26;
   AV_CODEC_ID_CYUV : constant AVCodecID := 27;
   AV_CODEC_ID_H264 : constant AVCodecID := 28;
   AV_CODEC_ID_INDEO3 : constant AVCodecID := 29;
   AV_CODEC_ID_VP3 : constant AVCodecID := 30;
   AV_CODEC_ID_THEORA : constant AVCodecID := 31;
   AV_CODEC_ID_ASV1 : constant AVCodecID := 32;
   AV_CODEC_ID_ASV2 : constant AVCodecID := 33;
   AV_CODEC_ID_FFV1 : constant AVCodecID := 34;
   AV_CODEC_ID_4XM : constant AVCodecID := 35;
   AV_CODEC_ID_VCR1 : constant AVCodecID := 36;
   AV_CODEC_ID_CLJR : constant AVCodecID := 37;
   AV_CODEC_ID_MDEC : constant AVCodecID := 38;
   AV_CODEC_ID_ROQ : constant AVCodecID := 39;
   AV_CODEC_ID_INTERPLAY_VIDEO : constant AVCodecID := 40;
   AV_CODEC_ID_XAN_WC3 : constant AVCodecID := 41;
   AV_CODEC_ID_XAN_WC4 : constant AVCodecID := 42;
   AV_CODEC_ID_RPZA : constant AVCodecID := 43;
   AV_CODEC_ID_CINEPAK : constant AVCodecID := 44;
   AV_CODEC_ID_WS_VQA : constant AVCodecID := 45;
   AV_CODEC_ID_MSRLE : constant AVCodecID := 46;
   AV_CODEC_ID_MSVIDEO1 : constant AVCodecID := 47;
   AV_CODEC_ID_IDCIN : constant AVCodecID := 48;
   AV_CODEC_ID_8BPS : constant AVCodecID := 49;
   AV_CODEC_ID_SMC : constant AVCodecID := 50;
   AV_CODEC_ID_FLIC : constant AVCodecID := 51;
   AV_CODEC_ID_TRUEMOTION1 : constant AVCodecID := 52;
   AV_CODEC_ID_VMDVIDEO : constant AVCodecID := 53;
   AV_CODEC_ID_MSZH : constant AVCodecID := 54;
   AV_CODEC_ID_ZLIB : constant AVCodecID := 55;
   AV_CODEC_ID_QTRLE : constant AVCodecID := 56;
   AV_CODEC_ID_TSCC : constant AVCodecID := 57;
   AV_CODEC_ID_ULTI : constant AVCodecID := 58;
   AV_CODEC_ID_QDRAW : constant AVCodecID := 59;
   AV_CODEC_ID_VIXL : constant AVCodecID := 60;
   AV_CODEC_ID_QPEG : constant AVCodecID := 61;
   AV_CODEC_ID_PNG : constant AVCodecID := 62;
   AV_CODEC_ID_PPM : constant AVCodecID := 63;
   AV_CODEC_ID_PBM : constant AVCodecID := 64;
   AV_CODEC_ID_PGM : constant AVCodecID := 65;
   AV_CODEC_ID_PGMYUV : constant AVCodecID := 66;
   AV_CODEC_ID_PAM : constant AVCodecID := 67;
   AV_CODEC_ID_FFVHUFF : constant AVCodecID := 68;
   AV_CODEC_ID_RV30 : constant AVCodecID := 69;
   AV_CODEC_ID_RV40 : constant AVCodecID := 70;
   AV_CODEC_ID_VC1 : constant AVCodecID := 71;
   AV_CODEC_ID_WMV3 : constant AVCodecID := 72;
   AV_CODEC_ID_LOCO : constant AVCodecID := 73;
   AV_CODEC_ID_WNV1 : constant AVCodecID := 74;
   AV_CODEC_ID_AASC : constant AVCodecID := 75;
   AV_CODEC_ID_INDEO2 : constant AVCodecID := 76;
   AV_CODEC_ID_FRAPS : constant AVCodecID := 77;
   AV_CODEC_ID_TRUEMOTION2 : constant AVCodecID := 78;
   AV_CODEC_ID_BMP : constant AVCodecID := 79;
   AV_CODEC_ID_CSCD : constant AVCodecID := 80;
   AV_CODEC_ID_MMVIDEO : constant AVCodecID := 81;
   AV_CODEC_ID_ZMBV : constant AVCodecID := 82;
   AV_CODEC_ID_AVS : constant AVCodecID := 83;
   AV_CODEC_ID_SMACKVIDEO : constant AVCodecID := 84;
   AV_CODEC_ID_NUV : constant AVCodecID := 85;
   AV_CODEC_ID_KMVC : constant AVCodecID := 86;
   AV_CODEC_ID_FLASHSV : constant AVCodecID := 87;
   AV_CODEC_ID_CAVS : constant AVCodecID := 88;
   AV_CODEC_ID_JPEG2000 : constant AVCodecID := 89;
   AV_CODEC_ID_VMNC : constant AVCodecID := 90;
   AV_CODEC_ID_VP5 : constant AVCodecID := 91;
   AV_CODEC_ID_VP6 : constant AVCodecID := 92;
   AV_CODEC_ID_VP6F : constant AVCodecID := 93;
   AV_CODEC_ID_TARGA : constant AVCodecID := 94;
   AV_CODEC_ID_DSICINVIDEO : constant AVCodecID := 95;
   AV_CODEC_ID_TIERTEXSEQVIDEO : constant AVCodecID := 96;
   AV_CODEC_ID_TIFF : constant AVCodecID := 97;
   AV_CODEC_ID_GIF : constant AVCodecID := 98;
   AV_CODEC_ID_DXA : constant AVCodecID := 99;
   AV_CODEC_ID_DNXHD : constant AVCodecID := 100;
   AV_CODEC_ID_THP : constant AVCodecID := 101;
   AV_CODEC_ID_SGI : constant AVCodecID := 102;
   AV_CODEC_ID_C93 : constant AVCodecID := 103;
   AV_CODEC_ID_BETHSOFTVID : constant AVCodecID := 104;
   AV_CODEC_ID_PTX : constant AVCodecID := 105;
   AV_CODEC_ID_TXD : constant AVCodecID := 106;
   AV_CODEC_ID_VP6A : constant AVCodecID := 107;
   AV_CODEC_ID_AMV : constant AVCodecID := 108;
   AV_CODEC_ID_VB : constant AVCodecID := 109;
   AV_CODEC_ID_PCX : constant AVCodecID := 110;
   AV_CODEC_ID_SUNRAST : constant AVCodecID := 111;
   AV_CODEC_ID_INDEO4 : constant AVCodecID := 112;
   AV_CODEC_ID_INDEO5 : constant AVCodecID := 113;
   AV_CODEC_ID_MIMIC : constant AVCodecID := 114;
   AV_CODEC_ID_RL2 : constant AVCodecID := 115;
   AV_CODEC_ID_ESCAPE124 : constant AVCodecID := 116;
   AV_CODEC_ID_DIRAC : constant AVCodecID := 117;
   AV_CODEC_ID_BFI : constant AVCodecID := 118;
   AV_CODEC_ID_CMV : constant AVCodecID := 119;
   AV_CODEC_ID_MOTIONPIXELS : constant AVCodecID := 120;
   AV_CODEC_ID_TGV : constant AVCodecID := 121;
   AV_CODEC_ID_TGQ : constant AVCodecID := 122;
   AV_CODEC_ID_TQI : constant AVCodecID := 123;
   AV_CODEC_ID_AURA : constant AVCodecID := 124;
   AV_CODEC_ID_AURA2 : constant AVCodecID := 125;
   AV_CODEC_ID_V210X : constant AVCodecID := 126;
   AV_CODEC_ID_TMV : constant AVCodecID := 127;
   AV_CODEC_ID_V210 : constant AVCodecID := 128;
   AV_CODEC_ID_DPX : constant AVCodecID := 129;
   AV_CODEC_ID_MAD : constant AVCodecID := 130;
   AV_CODEC_ID_FRWU : constant AVCodecID := 131;
   AV_CODEC_ID_FLASHSV2 : constant AVCodecID := 132;
   AV_CODEC_ID_CDGRAPHICS : constant AVCodecID := 133;
   AV_CODEC_ID_R210 : constant AVCodecID := 134;
   AV_CODEC_ID_ANM : constant AVCodecID := 135;
   AV_CODEC_ID_BINKVIDEO : constant AVCodecID := 136;
   AV_CODEC_ID_IFF_ILBM : constant AVCodecID := 137;
   AV_CODEC_ID_KGV1 : constant AVCodecID := 138;
   AV_CODEC_ID_YOP : constant AVCodecID := 139;
   AV_CODEC_ID_VP8 : constant AVCodecID := 140;
   AV_CODEC_ID_PICTOR : constant AVCodecID := 141;
   AV_CODEC_ID_ANSI : constant AVCodecID := 142;
   AV_CODEC_ID_A64_MULTI : constant AVCodecID := 143;
   AV_CODEC_ID_A64_MULTI5 : constant AVCodecID := 144;
   AV_CODEC_ID_R10K : constant AVCodecID := 145;
   AV_CODEC_ID_MXPEG : constant AVCodecID := 146;
   AV_CODEC_ID_LAGARITH : constant AVCodecID := 147;
   AV_CODEC_ID_PRORES : constant AVCodecID := 148;
   AV_CODEC_ID_JV : constant AVCodecID := 149;
   AV_CODEC_ID_DFA : constant AVCodecID := 150;
   AV_CODEC_ID_WMV3IMAGE : constant AVCodecID := 151;
   AV_CODEC_ID_VC1IMAGE : constant AVCodecID := 152;
   AV_CODEC_ID_UTVIDEO : constant AVCodecID := 153;
   AV_CODEC_ID_BMV_VIDEO : constant AVCodecID := 154;
   AV_CODEC_ID_VBLE : constant AVCodecID := 155;
   AV_CODEC_ID_DXTORY : constant AVCodecID := 156;
   AV_CODEC_ID_V410 : constant AVCodecID := 157;
   AV_CODEC_ID_XWD : constant AVCodecID := 158;
   AV_CODEC_ID_CDXL : constant AVCodecID := 159;
   AV_CODEC_ID_XBM : constant AVCodecID := 160;
   AV_CODEC_ID_ZEROCODEC : constant AVCodecID := 161;
   AV_CODEC_ID_MSS1 : constant AVCodecID := 162;
   AV_CODEC_ID_MSA1 : constant AVCodecID := 163;
   AV_CODEC_ID_TSCC2 : constant AVCodecID := 164;
   AV_CODEC_ID_MTS2 : constant AVCodecID := 165;
   AV_CODEC_ID_CLLC : constant AVCodecID := 166;
   AV_CODEC_ID_MSS2 : constant AVCodecID := 167;
   AV_CODEC_ID_VP9 : constant AVCodecID := 168;
   AV_CODEC_ID_AIC : constant AVCodecID := 169;
   AV_CODEC_ID_ESCAPE130 : constant AVCodecID := 170;
   AV_CODEC_ID_G2M : constant AVCodecID := 171;
   AV_CODEC_ID_WEBP : constant AVCodecID := 172;
   AV_CODEC_ID_HNM4_VIDEO : constant AVCodecID := 173;
   AV_CODEC_ID_HEVC : constant AVCodecID := 174;
   AV_CODEC_ID_FIC : constant AVCodecID := 175;
   AV_CODEC_ID_ALIAS_PIX : constant AVCodecID := 176;
   AV_CODEC_ID_BRENDER_PIX : constant AVCodecID := 177;
   AV_CODEC_ID_PAF_VIDEO : constant AVCodecID := 178;
   AV_CODEC_ID_EXR : constant AVCodecID := 179;
   AV_CODEC_ID_VP7 : constant AVCodecID := 180;
   AV_CODEC_ID_SANM : constant AVCodecID := 181;
   AV_CODEC_ID_SGIRLE : constant AVCodecID := 182;
   AV_CODEC_ID_MVC1 : constant AVCodecID := 183;
   AV_CODEC_ID_MVC2 : constant AVCodecID := 184;
   AV_CODEC_ID_HQX : constant AVCodecID := 185;
   AV_CODEC_ID_TDSC : constant AVCodecID := 186;
   AV_CODEC_ID_HQ_HQA : constant AVCodecID := 187;
   AV_CODEC_ID_HAP : constant AVCodecID := 188;
   AV_CODEC_ID_DDS : constant AVCodecID := 189;
   AV_CODEC_ID_DXV : constant AVCodecID := 190;
   AV_CODEC_ID_SCREENPRESSO : constant AVCodecID := 191;
   AV_CODEC_ID_RSCC : constant AVCodecID := 192;
   AV_CODEC_ID_Y41P : constant AVCodecID := 32768;
   AV_CODEC_ID_AVRP : constant AVCodecID := 32769;
   AV_CODEC_ID_012V : constant AVCodecID := 32770;
   AV_CODEC_ID_AVUI : constant AVCodecID := 32771;
   AV_CODEC_ID_AYUV : constant AVCodecID := 32772;
   AV_CODEC_ID_TARGA_Y216 : constant AVCodecID := 32773;
   AV_CODEC_ID_V308 : constant AVCodecID := 32774;
   AV_CODEC_ID_V408 : constant AVCodecID := 32775;
   AV_CODEC_ID_YUV4 : constant AVCodecID := 32776;
   AV_CODEC_ID_AVRN : constant AVCodecID := 32777;
   AV_CODEC_ID_CPIA : constant AVCodecID := 32778;
   AV_CODEC_ID_XFACE : constant AVCodecID := 32779;
   AV_CODEC_ID_SNOW : constant AVCodecID := 32780;
   AV_CODEC_ID_SMVJPEG : constant AVCodecID := 32781;
   AV_CODEC_ID_APNG : constant AVCodecID := 32782;
   AV_CODEC_ID_DAALA : constant AVCodecID := 32783;
   AV_CODEC_ID_CFHD : constant AVCodecID := 32784;
   AV_CODEC_ID_TRUEMOTION2RT : constant AVCodecID := 32785;
   AV_CODEC_ID_M101 : constant AVCodecID := 32786;
   AV_CODEC_ID_MAGICYUV : constant AVCodecID := 32787;
   AV_CODEC_ID_SHEERVIDEO : constant AVCodecID := 32788;
   AV_CODEC_ID_YLC : constant AVCodecID := 32789;
   AV_CODEC_ID_PSD : constant AVCodecID := 32790;
   AV_CODEC_ID_PIXLET : constant AVCodecID := 32791;
   AV_CODEC_ID_SPEEDHQ : constant AVCodecID := 32792;
   AV_CODEC_ID_FMVC : constant AVCodecID := 32793;
   AV_CODEC_ID_SCPR : constant AVCodecID := 32794;
   AV_CODEC_ID_CLEARVIDEO : constant AVCodecID := 32795;
   AV_CODEC_ID_XPM : constant AVCodecID := 32796;
   AV_CODEC_ID_AV1 : constant AVCodecID := 32797;
   AV_CODEC_ID_FIRST_AUDIO : constant AVCodecID := 65536;
   AV_CODEC_ID_PCM_S16LE : constant AVCodecID := 65536;
   AV_CODEC_ID_PCM_S16BE : constant AVCodecID := 65537;
   AV_CODEC_ID_PCM_U16LE : constant AVCodecID := 65538;
   AV_CODEC_ID_PCM_U16BE : constant AVCodecID := 65539;
   AV_CODEC_ID_PCM_S8 : constant AVCodecID := 65540;
   AV_CODEC_ID_PCM_U8 : constant AVCodecID := 65541;
   AV_CODEC_ID_PCM_MULAW : constant AVCodecID := 65542;
   AV_CODEC_ID_PCM_ALAW : constant AVCodecID := 65543;
   AV_CODEC_ID_PCM_S32LE : constant AVCodecID := 65544;
   AV_CODEC_ID_PCM_S32BE : constant AVCodecID := 65545;
   AV_CODEC_ID_PCM_U32LE : constant AVCodecID := 65546;
   AV_CODEC_ID_PCM_U32BE : constant AVCodecID := 65547;
   AV_CODEC_ID_PCM_S24LE : constant AVCodecID := 65548;
   AV_CODEC_ID_PCM_S24BE : constant AVCodecID := 65549;
   AV_CODEC_ID_PCM_U24LE : constant AVCodecID := 65550;
   AV_CODEC_ID_PCM_U24BE : constant AVCodecID := 65551;
   AV_CODEC_ID_PCM_S24DAUD : constant AVCodecID := 65552;
   AV_CODEC_ID_PCM_ZORK : constant AVCodecID := 65553;
   AV_CODEC_ID_PCM_S16LE_PLANAR : constant AVCodecID := 65554;
   AV_CODEC_ID_PCM_DVD : constant AVCodecID := 65555;
   AV_CODEC_ID_PCM_F32BE : constant AVCodecID := 65556;
   AV_CODEC_ID_PCM_F32LE : constant AVCodecID := 65557;
   AV_CODEC_ID_PCM_F64BE : constant AVCodecID := 65558;
   AV_CODEC_ID_PCM_F64LE : constant AVCodecID := 65559;
   AV_CODEC_ID_PCM_BLURAY : constant AVCodecID := 65560;
   AV_CODEC_ID_PCM_LXF : constant AVCodecID := 65561;
   AV_CODEC_ID_S302M : constant AVCodecID := 65562;
   AV_CODEC_ID_PCM_S8_PLANAR : constant AVCodecID := 65563;
   AV_CODEC_ID_PCM_S24LE_PLANAR : constant AVCodecID := 65564;
   AV_CODEC_ID_PCM_S32LE_PLANAR : constant AVCodecID := 65565;
   AV_CODEC_ID_PCM_S16BE_PLANAR : constant AVCodecID := 65566;
   AV_CODEC_ID_PCM_S64LE : constant AVCodecID := 67584;
   AV_CODEC_ID_PCM_S64BE : constant AVCodecID := 67585;
   AV_CODEC_ID_PCM_F16LE : constant AVCodecID := 67586;
   AV_CODEC_ID_PCM_F24LE : constant AVCodecID := 67587;
   AV_CODEC_ID_ADPCM_IMA_QT : constant AVCodecID := 69632;
   AV_CODEC_ID_ADPCM_IMA_WAV : constant AVCodecID := 69633;
   AV_CODEC_ID_ADPCM_IMA_DK3 : constant AVCodecID := 69634;
   AV_CODEC_ID_ADPCM_IMA_DK4 : constant AVCodecID := 69635;
   AV_CODEC_ID_ADPCM_IMA_WS : constant AVCodecID := 69636;
   AV_CODEC_ID_ADPCM_IMA_SMJPEG : constant AVCodecID := 69637;
   AV_CODEC_ID_ADPCM_MS : constant AVCodecID := 69638;
   AV_CODEC_ID_ADPCM_4XM : constant AVCodecID := 69639;
   AV_CODEC_ID_ADPCM_XA : constant AVCodecID := 69640;
   AV_CODEC_ID_ADPCM_ADX : constant AVCodecID := 69641;
   AV_CODEC_ID_ADPCM_EA : constant AVCodecID := 69642;
   AV_CODEC_ID_ADPCM_G726 : constant AVCodecID := 69643;
   AV_CODEC_ID_ADPCM_CT : constant AVCodecID := 69644;
   AV_CODEC_ID_ADPCM_SWF : constant AVCodecID := 69645;
   AV_CODEC_ID_ADPCM_YAMAHA : constant AVCodecID := 69646;
   AV_CODEC_ID_ADPCM_SBPRO_4 : constant AVCodecID := 69647;
   AV_CODEC_ID_ADPCM_SBPRO_3 : constant AVCodecID := 69648;
   AV_CODEC_ID_ADPCM_SBPRO_2 : constant AVCodecID := 69649;
   AV_CODEC_ID_ADPCM_THP : constant AVCodecID := 69650;
   AV_CODEC_ID_ADPCM_IMA_AMV : constant AVCodecID := 69651;
   AV_CODEC_ID_ADPCM_EA_R1 : constant AVCodecID := 69652;
   AV_CODEC_ID_ADPCM_EA_R3 : constant AVCodecID := 69653;
   AV_CODEC_ID_ADPCM_EA_R2 : constant AVCodecID := 69654;
   AV_CODEC_ID_ADPCM_IMA_EA_SEAD : constant AVCodecID := 69655;
   AV_CODEC_ID_ADPCM_IMA_EA_EACS : constant AVCodecID := 69656;
   AV_CODEC_ID_ADPCM_EA_XAS : constant AVCodecID := 69657;
   AV_CODEC_ID_ADPCM_EA_MAXIS_XA : constant AVCodecID := 69658;
   AV_CODEC_ID_ADPCM_IMA_ISS : constant AVCodecID := 69659;
   AV_CODEC_ID_ADPCM_G722 : constant AVCodecID := 69660;
   AV_CODEC_ID_ADPCM_IMA_APC : constant AVCodecID := 69661;
   AV_CODEC_ID_ADPCM_VIMA : constant AVCodecID := 69662;
   AV_CODEC_ID_VIMA : constant AVCodecID := 69662;
   AV_CODEC_ID_ADPCM_AFC : constant AVCodecID := 71680;
   AV_CODEC_ID_ADPCM_IMA_OKI : constant AVCodecID := 71681;
   AV_CODEC_ID_ADPCM_DTK : constant AVCodecID := 71682;
   AV_CODEC_ID_ADPCM_IMA_RAD : constant AVCodecID := 71683;
   AV_CODEC_ID_ADPCM_G726LE : constant AVCodecID := 71684;
   AV_CODEC_ID_ADPCM_THP_LE : constant AVCodecID := 71685;
   AV_CODEC_ID_ADPCM_PSX : constant AVCodecID := 71686;
   AV_CODEC_ID_ADPCM_AICA : constant AVCodecID := 71687;
   AV_CODEC_ID_ADPCM_IMA_DAT4 : constant AVCodecID := 71688;
   AV_CODEC_ID_ADPCM_MTAF : constant AVCodecID := 71689;
   AV_CODEC_ID_AMR_NB : constant AVCodecID := 73728;
   AV_CODEC_ID_AMR_WB : constant AVCodecID := 73729;
   AV_CODEC_ID_RA_144 : constant AVCodecID := 77824;
   AV_CODEC_ID_RA_288 : constant AVCodecID := 77825;
   AV_CODEC_ID_ROQ_DPCM : constant AVCodecID := 81920;
   AV_CODEC_ID_INTERPLAY_DPCM : constant AVCodecID := 81921;
   AV_CODEC_ID_XAN_DPCM : constant AVCodecID := 81922;
   AV_CODEC_ID_SOL_DPCM : constant AVCodecID := 81923;
   AV_CODEC_ID_SDX2_DPCM : constant AVCodecID := 83968;
   AV_CODEC_ID_MP2 : constant AVCodecID := 86016;
   AV_CODEC_ID_MP3 : constant AVCodecID := 86017;
   AV_CODEC_ID_AAC : constant AVCodecID := 86018;
   AV_CODEC_ID_AC3 : constant AVCodecID := 86019;
   AV_CODEC_ID_DTS : constant AVCodecID := 86020;
   AV_CODEC_ID_VORBIS : constant AVCodecID := 86021;
   AV_CODEC_ID_DVAUDIO : constant AVCodecID := 86022;
   AV_CODEC_ID_WMAV1 : constant AVCodecID := 86023;
   AV_CODEC_ID_WMAV2 : constant AVCodecID := 86024;
   AV_CODEC_ID_MACE3 : constant AVCodecID := 86025;
   AV_CODEC_ID_MACE6 : constant AVCodecID := 86026;
   AV_CODEC_ID_VMDAUDIO : constant AVCodecID := 86027;
   AV_CODEC_ID_FLAC : constant AVCodecID := 86028;
   AV_CODEC_ID_MP3ADU : constant AVCodecID := 86029;
   AV_CODEC_ID_MP3ON4 : constant AVCodecID := 86030;
   AV_CODEC_ID_SHORTEN : constant AVCodecID := 86031;
   AV_CODEC_ID_ALAC : constant AVCodecID := 86032;
   AV_CODEC_ID_WESTWOOD_SND1 : constant AVCodecID := 86033;
   AV_CODEC_ID_GSM : constant AVCodecID := 86034;
   AV_CODEC_ID_QDM2 : constant AVCodecID := 86035;
   AV_CODEC_ID_COOK : constant AVCodecID := 86036;
   AV_CODEC_ID_TRUESPEECH : constant AVCodecID := 86037;
   AV_CODEC_ID_TTA : constant AVCodecID := 86038;
   AV_CODEC_ID_SMACKAUDIO : constant AVCodecID := 86039;
   AV_CODEC_ID_QCELP : constant AVCodecID := 86040;
   AV_CODEC_ID_WAVPACK : constant AVCodecID := 86041;
   AV_CODEC_ID_DSICINAUDIO : constant AVCodecID := 86042;
   AV_CODEC_ID_IMC : constant AVCodecID := 86043;
   AV_CODEC_ID_MUSEPACK7 : constant AVCodecID := 86044;
   AV_CODEC_ID_MLP : constant AVCodecID := 86045;
   AV_CODEC_ID_GSM_MS : constant AVCodecID := 86046;
   AV_CODEC_ID_ATRAC3 : constant AVCodecID := 86047;
   AV_CODEC_ID_VOXWARE : constant AVCodecID := 86048;
   AV_CODEC_ID_APE : constant AVCodecID := 86049;
   AV_CODEC_ID_NELLYMOSER : constant AVCodecID := 86050;
   AV_CODEC_ID_MUSEPACK8 : constant AVCodecID := 86051;
   AV_CODEC_ID_SPEEX : constant AVCodecID := 86052;
   AV_CODEC_ID_WMAVOICE : constant AVCodecID := 86053;
   AV_CODEC_ID_WMAPRO : constant AVCodecID := 86054;
   AV_CODEC_ID_WMALOSSLESS : constant AVCodecID := 86055;
   AV_CODEC_ID_ATRAC3P : constant AVCodecID := 86056;
   AV_CODEC_ID_EAC3 : constant AVCodecID := 86057;
   AV_CODEC_ID_SIPR : constant AVCodecID := 86058;
   AV_CODEC_ID_MP1 : constant AVCodecID := 86059;
   AV_CODEC_ID_TWINVQ : constant AVCodecID := 86060;
   AV_CODEC_ID_TRUEHD : constant AVCodecID := 86061;
   AV_CODEC_ID_MP4ALS : constant AVCodecID := 86062;
   AV_CODEC_ID_ATRAC1 : constant AVCodecID := 86063;
   AV_CODEC_ID_BINKAUDIO_RDFT : constant AVCodecID := 86064;
   AV_CODEC_ID_BINKAUDIO_DCT : constant AVCodecID := 86065;
   AV_CODEC_ID_AAC_LATM : constant AVCodecID := 86066;
   AV_CODEC_ID_QDMC : constant AVCodecID := 86067;
   AV_CODEC_ID_CELT : constant AVCodecID := 86068;
   AV_CODEC_ID_G723_1 : constant AVCodecID := 86069;
   AV_CODEC_ID_G729 : constant AVCodecID := 86070;
   AV_CODEC_ID_8SVX_EXP : constant AVCodecID := 86071;
   AV_CODEC_ID_8SVX_FIB : constant AVCodecID := 86072;
   AV_CODEC_ID_BMV_AUDIO : constant AVCodecID := 86073;
   AV_CODEC_ID_RALF : constant AVCodecID := 86074;
   AV_CODEC_ID_IAC : constant AVCodecID := 86075;
   AV_CODEC_ID_ILBC : constant AVCodecID := 86076;
   AV_CODEC_ID_OPUS : constant AVCodecID := 86077;
   AV_CODEC_ID_COMFORT_NOISE : constant AVCodecID := 86078;
   AV_CODEC_ID_TAK : constant AVCodecID := 86079;
   AV_CODEC_ID_METASOUND : constant AVCodecID := 86080;
   AV_CODEC_ID_PAF_AUDIO : constant AVCodecID := 86081;
   AV_CODEC_ID_ON2AVC : constant AVCodecID := 86082;
   AV_CODEC_ID_DSS_SP : constant AVCodecID := 86083;
   AV_CODEC_ID_FFWAVESYNTH : constant AVCodecID := 88064;
   AV_CODEC_ID_SONIC : constant AVCodecID := 88065;
   AV_CODEC_ID_SONIC_LS : constant AVCodecID := 88066;
   AV_CODEC_ID_EVRC : constant AVCodecID := 88067;
   AV_CODEC_ID_SMV : constant AVCodecID := 88068;
   AV_CODEC_ID_DSD_LSBF : constant AVCodecID := 88069;
   AV_CODEC_ID_DSD_MSBF : constant AVCodecID := 88070;
   AV_CODEC_ID_DSD_LSBF_PLANAR : constant AVCodecID := 88071;
   AV_CODEC_ID_DSD_MSBF_PLANAR : constant AVCodecID := 88072;
   AV_CODEC_ID_4GV : constant AVCodecID := 88073;
   AV_CODEC_ID_INTERPLAY_ACM : constant AVCodecID := 88074;
   AV_CODEC_ID_XMA1 : constant AVCodecID := 88075;
   AV_CODEC_ID_XMA2 : constant AVCodecID := 88076;
   AV_CODEC_ID_DST : constant AVCodecID := 88077;
   AV_CODEC_ID_ATRAC3AL : constant AVCodecID := 88078;
   AV_CODEC_ID_ATRAC3PAL : constant AVCodecID := 88079;
   AV_CODEC_ID_FIRST_SUBTITLE : constant AVCodecID := 94208;
   AV_CODEC_ID_DVD_SUBTITLE : constant AVCodecID := 94208;
   AV_CODEC_ID_DVB_SUBTITLE : constant AVCodecID := 94209;
   AV_CODEC_ID_TEXT : constant AVCodecID := 94210;
   AV_CODEC_ID_XSUB : constant AVCodecID := 94211;
   AV_CODEC_ID_SSA : constant AVCodecID := 94212;
   AV_CODEC_ID_MOV_TEXT : constant AVCodecID := 94213;
   AV_CODEC_ID_HDMV_PGS_SUBTITLE : constant AVCodecID := 94214;
   AV_CODEC_ID_DVB_TELETEXT : constant AVCodecID := 94215;
   AV_CODEC_ID_SRT : constant AVCodecID := 94216;
   AV_CODEC_ID_MICRODVD : constant AVCodecID := 96256;
   AV_CODEC_ID_EIA_608 : constant AVCodecID := 96257;
   AV_CODEC_ID_JACOSUB : constant AVCodecID := 96258;
   AV_CODEC_ID_SAMI : constant AVCodecID := 96259;
   AV_CODEC_ID_REALTEXT : constant AVCodecID := 96260;
   AV_CODEC_ID_STL : constant AVCodecID := 96261;
   AV_CODEC_ID_SUBVIEWER1 : constant AVCodecID := 96262;
   AV_CODEC_ID_SUBVIEWER : constant AVCodecID := 96263;
   AV_CODEC_ID_SUBRIP : constant AVCodecID := 96264;
   AV_CODEC_ID_WEBVTT : constant AVCodecID := 96265;
   AV_CODEC_ID_MPL2 : constant AVCodecID := 96266;
   AV_CODEC_ID_VPLAYER : constant AVCodecID := 96267;
   AV_CODEC_ID_PJS : constant AVCodecID := 96268;
   AV_CODEC_ID_ASS : constant AVCodecID := 96269;
   AV_CODEC_ID_HDMV_TEXT_SUBTITLE : constant AVCodecID := 96270;
   AV_CODEC_ID_FIRST_UNKNOWN : constant AVCodecID := 98304;
   AV_CODEC_ID_TTF : constant AVCodecID := 98304;
   AV_CODEC_ID_SCTE_35 : constant AVCodecID := 98305;
   AV_CODEC_ID_BINTEXT : constant AVCodecID := 100352;
   AV_CODEC_ID_XBIN : constant AVCodecID := 100353;
   AV_CODEC_ID_IDF : constant AVCodecID := 100354;
   AV_CODEC_ID_OTF : constant AVCodecID := 100355;
   AV_CODEC_ID_SMPTE_KLV : constant AVCodecID := 100356;
   AV_CODEC_ID_DVD_NAV : constant AVCodecID := 100357;
   AV_CODEC_ID_TIMED_ID3 : constant AVCodecID := 100358;
   AV_CODEC_ID_BIN_DATA : constant AVCodecID := 100359;
   AV_CODEC_ID_PROBE : constant AVCodecID := 102400;
   AV_CODEC_ID_MPEG2TS : constant AVCodecID := 131072;
   AV_CODEC_ID_MPEG4SYSTEMS : constant AVCodecID := 131073;
   AV_CODEC_ID_FFMETADATA : constant AVCodecID := 135168;
   AV_CODEC_ID_WRAPPED_AVFRAME : constant AVCodecID := 135169;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:214

  -- video codecs
  --/< preferred ID for MPEG-1/2 video decoding
  -- various PCM "codecs"
  --/< A dummy id pointing at the start of audio codecs
  -- various ADPCM codecs
  -- AMR
  -- RealAudio codecs
  -- various DPCM codecs
  -- audio codecs
  --/< preferred ID for decoding MPEG audio layer 1, 2 or 3
  --/< as in Berlin toast format
  -- as found in WAV
  -- subtitle codecs
  --/< A dummy ID pointing at the start of subtitle codecs.
  --/< raw UTF-8 text
  -- other specific kind of codecs (generally used for attachments)
  --/< A dummy ID pointing at the start of various fake codecs.
  --/< Contain timestamp estimated through PCR of program stream.
  --/< codec_id is not known (like AV_CODEC_ID_NONE) but lavf should attempt to identify it
  --*< _FAKE_ codec to indicate a raw MPEG-2 TS
  --                                * stream (only used by libavformat)

  --*< _FAKE_ codec to indicate a MPEG-4 Systems
  --                                * stream (only used by libavformat)

  --/< Dummy codec for streams containing only metadata information.
  --/< Passthrough codec, AVFrames wrapped in AVPacket
  --*
  -- * This struct describes the properties of a single codec described by an
  -- * AVCodecID.
  -- * @see descriptor_get()
  --

   type AVProfile;
   type AVCodecDescriptor is record
      id : aliased AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:696
      c_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:697
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:703
      long_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:707
      props : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:711
      mime_types : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:717
      profiles : access constant AVProfile;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:722
   end record;
   pragma Convention (C_Pass_By_Copy, AVCodecDescriptor);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:695

  --*
  --     * Name of the codec described by this descriptor. It is non-empty and
  --     * unique for each codec descriptor. It should contain alphanumeric
  --     * characters and '_' only.
  --

  --*
  --     * A more descriptive name for this codec. May be NULL.
  --

  --*
  --     * Codec properties, a combination of AV_CODEC_PROP_* flags.
  --

  --*
  --     * MIME type(s) associated with the codec.
  --     * May be NULL; if not, a NULL-terminated array of MIME types.
  --     * The first item is always non-NULL and is the preferred MIME type.
  --

  --*
  --     * If non-NULL, an array of profiles recognized for this codec.
  --     * Terminated with FF_PROFILE_UNKNOWN.
  --

  --*
  -- * Codec uses only intra compression.
  -- * Video codecs only.
  --

  --*
  -- * Codec supports lossy compression. Audio and video codecs only.
  -- * @note a codec may support both lossy and lossless
  -- * compression modes
  --

  --*
  -- * Codec supports lossless compression. Audio and video codecs only.
  --

  --*
  -- * Codec supports frame reordering. That is, the coded order (the order in which
  -- * the encoded packets are output by the encoders / stored / input to the
  -- * decoders) may be different from the presentation order of the corresponding
  -- * frames.
  -- *
  -- * For codecs that do not have this property set, PTS and DTS should always be
  -- * equal.
  --

  --*
  -- * Subtitle codec is bitmap based
  -- * Decoded AVSubtitle data can be read from the AVSubtitleRect->pict field.
  --

  --*
  -- * Subtitle codec is text based.
  -- * Decoded AVSubtitle data can be read from the AVSubtitleRect->ass field.
  --

  --*
  -- * @ingroup lavc_decoding
  -- * Required number of additionally allocated bytes at the end of the input bitstream for decoding.
  -- * This is mainly needed because some optimized bitstream readers read
  -- * 32 or 64 bit at once and could read over the end.<br>
  -- * Note: If the first 23 bits of the additional bytes are not 0, then damaged
  -- * MPEG bitstreams could cause overread and segfault.
  --

  --*
  -- * @ingroup lavc_encoding
  -- * minimum encoding buffer size
  -- * Used to avoid some checks during header writing.
  --

  --*
  -- * @deprecated use AV_INPUT_BUFFER_PADDING_SIZE instead
  --

  --*
  -- * @deprecated use AV_INPUT_BUFFER_MIN_SIZE instead
  --

  --*
  -- * @ingroup lavc_encoding
  -- * motion estimation type.
  -- * @deprecated use codec private option instead
  --

   subtype Motion_Est_ID is unsigned;
   ME_ZERO : constant Motion_Est_ID := 1;
   ME_FULL : constant Motion_Est_ID := 2;
   ME_LOG : constant Motion_Est_ID := 3;
   ME_PHODS : constant Motion_Est_ID := 4;
   ME_EPZS : constant Motion_Est_ID := 5;
   ME_X1 : constant Motion_Est_ID := 6;
   ME_HEX : constant Motion_Est_ID := 7;
   ME_UMH : constant Motion_Est_ID := 8;
   ME_TESA : constant Motion_Est_ID := 9;
   ME_ITER : constant Motion_Est_ID := 50;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:796

  --/< no search, that is use 0,0 vector whenever one is needed
  --/< enhanced predictive zonal search
  --/< reserved for experiments
  --/< hexagon based search
  --/< uneven multi-hexagon search
  --/< transformed exhaustive search algorithm
  --/< iterative search
  --*
  -- * @ingroup lavc_decoding
  --

   subtype AVDiscard is int;
   AVDISCARD_NONE : constant AVDiscard := -16;
   AVDISCARD_DEFAULT : constant AVDiscard := 0;
   AVDISCARD_NONREF : constant AVDiscard := 8;
   AVDISCARD_BIDIR : constant AVDiscard := 16;
   AVDISCARD_NONINTRA : constant AVDiscard := 24;
   AVDISCARD_NONKEY : constant AVDiscard := 32;
   AVDISCARD_ALL : constant AVDiscard := 48;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:813

  -- We leave some space between them for extensions (drop some
  --     * keyframes for intra-only or drop just some bidir frames).

  --/< discard nothing
  --/< discard useless packets like 0 size packets in avi
  --/< discard all non reference
  --/< discard all bidirectional frames
  --/< discard all non intra frames
  --/< discard all frames except keyframes
  --/< discard all
   type AVAudioServiceType is
     (AV_AUDIO_SERVICE_TYPE_MAIN,
      AV_AUDIO_SERVICE_TYPE_EFFECTS,
      AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED,
      AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED,
      AV_AUDIO_SERVICE_TYPE_DIALOGUE,
      AV_AUDIO_SERVICE_TYPE_COMMENTARY,
      AV_AUDIO_SERVICE_TYPE_EMERGENCY,
      AV_AUDIO_SERVICE_TYPE_VOICE_OVER,
      AV_AUDIO_SERVICE_TYPE_KARAOKE,
      AV_AUDIO_SERVICE_TYPE_NB);
   pragma Convention (C, AVAudioServiceType);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:825

  --/< Not part of ABI
  --*
  -- * @ingroup lavc_encoding
  --

   type RcOverride is record
      start_frame : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:842
      end_frame : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:843
      qscale : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:844
      quality_factor : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:845
   end record;
   pragma Convention (C_Pass_By_Copy, RcOverride);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:841

  -- If this is 0 then quality_factor will be used instead.
  --*
  -- * @deprecated there is no libavcodec-wide limit on the number of B-frames
  --

  -- encoding support
  --   These flags can be passed in AVCodecContext.flags before initialization.
  --   Note: Not everything is supported yet.
  --

  --*
  -- * Allow decoders to produce frames with data planes that are not aligned
  -- * to CPU requirements (e.g. due to cropping).
  --

  --*
  -- * Use fixed qscale.
  --

  --*
  -- * 4 MV per MB allowed / advanced prediction for H.263.
  --

  --*
  -- * Output even those frames that might be corrupted.
  --

  --*
  -- * Use qpel MC.
  --

  --*
  -- * Use internal 2pass ratecontrol in first pass mode.
  --

  --*
  -- * Use internal 2pass ratecontrol in second pass mode.
  --

  --*
  -- * loop filter.
  --

  --*
  -- * Only decode/encode grayscale.
  --

  --*
  -- * error[?] variables will be set during encoding.
  --

  --*
  -- * Input bitstream might be truncated at a random location
  -- * instead of only at frame boundaries.
  --

  --*
  -- * Use interlaced DCT.
  --

  --*
  -- * Force low delay.
  --

  --*
  -- * Place global headers in extradata instead of every keyframe.
  --

  --*
  -- * Use only bitexact stuff (except (I)DCT).
  --

  -- Fx : Flag for H.263+ extra options
  --*
  -- * H.263 advanced intra coding / MPEG-4 AC prediction
  --

  --*
  -- * interlaced motion estimation
  --

  --*
  -- * Allow non spec compliant speedup tricks.
  --

  --*
  -- * Skip bitstream encoding.
  --

  --*
  -- * Place global headers at every keyframe instead of in extradata.
  --

  --*
  -- * timecode is in drop frame format. DEPRECATED!!!!
  --

  --*
  -- * Input bitstream might be truncated at a packet boundaries
  -- * instead of only at frame boundaries.
  --

  --*
  -- * Discard cropping information from SPS.
  --

  --*
  -- * Show all frames before the first keyframe
  --

  --*
  -- * Export motion vectors through frame side data
  --

  --*
  -- * Do not skip samples and export skip information as frame side data
  --

  --*
  -- * Do not reset ASS ReadOrder field on flush (subtitles decoding)
  --

  -- Unsupported options :
  -- *              Syntax Arithmetic coding (SAC)
  -- *              Reference Picture Selection
  -- *              Independent Segment Decoding

  -- /Fx
  -- codec capabilities
  --*
  -- * Decoder can use draw_horiz_band callback.
  --

  --*
  -- * Codec uses get_buffer() for allocating buffers and supports custom allocators.
  -- * If not set, it might not use get_buffer() at all or use operations that
  -- * assume the buffer was allocated by default_get_buffer.
  --

  --*
  -- * Encoder or decoder requires flushing with NULL input at the end in order to
  -- * give the complete and correct output.
  -- *
  -- * NOTE: If this flag is not set, the codec is guaranteed to never be fed with
  -- *       with NULL data. The user can still send NULL data to the public encode
  -- *       or decode function, but libavcodec will not pass it along to the codec
  -- *       unless this flag is set.
  -- *
  -- * Decoders:
  -- * The decoder has a non-zero delay and needs to be fed with avpkt->data=NULL,
  -- * avpkt->size=0 at the end to get the delayed data until the decoder no longer
  -- * returns frames.
  -- *
  -- * Encoders:
  -- * The encoder needs to be fed with NULL data at the end of encoding until the
  -- * encoder no longer returns data.
  -- *
  -- * NOTE: For encoders implementing the AVCodec.encode2() function, setting this
  -- *       flag also means that the encoder must set the pts and duration for
  -- *       each output packet. If this flag is not set, the pts and duration will
  -- *       be determined by libavcodec from the input frame.
  --

  --*
  -- * Codec can be fed a final frame with a smaller size.
  -- * This can be used to prevent truncation of the last audio samples.
  --

  --*
  -- * Codec can export data for HW decoding (VDPAU).
  --

  --*
  -- * Codec can output multiple frames per AVPacket
  -- * Normally demuxers return one frame at a time, demuxers which do not do
  -- * are connected to a parser to split what they return into proper frames.
  -- * This flag is reserved to the very rare category of codecs which have a
  -- * bitstream that cannot be split into frames without timeconsuming
  -- * operations like full decoding. Demuxers carrying such bitstreams thus
  -- * may return multiple frames in a packet. This has many disadvantages like
  -- * prohibiting stream copy in many cases thus it should only be considered
  -- * as a last resort.
  --

  --*
  -- * Codec is experimental and is thus avoided in favor of non experimental
  -- * encoders
  --

  --*
  -- * Codec should fill in channel configuration and samplerate instead of container
  --

  --*
  -- * Codec supports frame-level multithreading.
  --

  --*
  -- * Codec supports slice-based (or partition-based) multithreading.
  --

  --*
  -- * Codec supports changed parameters at any point.
  --

  --*
  -- * Codec supports avctx->thread_count == 0 (auto).
  --

  --*
  -- * Audio encoder supports receiving a different number of samples in each call.
  --

  --*
  -- * Decoder is not a preferred choice for probing.
  -- * This indicates that the decoder is not a good choice for probing.
  -- * It could for example be an expensive to spin up hardware decoder,
  -- * or it could simply not provide a lot of useful information about
  -- * the stream.
  -- * A decoder marked with this flag should only be used as last resort
  -- * choice for probing.
  --

  --*
  -- * Codec is intra only.
  --

  --*
  -- * Codec is lossless.
  --

  --*
  -- * Allow decoders to produce frames with data planes that are not aligned
  -- * to CPU requirements (e.g. due to cropping).
  --

  --*
  -- * @deprecated use the "gmc" private option of the libxvid encoder
  --

  --*
  -- * @deprecated use the flag "mv0" in the "mpv_flags" private option of the
  -- * mpegvideo encoders
  --

  --*
  -- * @deprecated passing reference-counted frames to the encoders replaces this
  -- * flag
  --

  --*
  -- * @deprecated edges are not used/required anymore. I.e. this flag is now always
  -- * set.
  --

  --*
  -- * @deprecated use the flag "naq" in the "mpv_flags" private option of the
  -- * mpegvideo encoders
  --

  -- Unsupported options :
  -- *              Syntax Arithmetic coding (SAC)
  -- *              Reference Picture Selection
  -- *              Independent Segment Decoding

  -- /Fx
  -- codec capabilities
  --*
  -- * Codec uses get_buffer() for allocating buffers and supports custom allocators.
  -- * If not set, it might not use get_buffer() at all or use operations that
  -- * assume the buffer was allocated by default_get_buffer.
  --

  -- Codec can export data for HW decoding. This flag indicates that
  -- * the codec would call get_format() with list that might contain HW accelerated
  -- * pixel formats (XvMC, VDPAU, VAAPI, etc). The application can pick any of them
  -- * including raw image format.
  -- * The application can use the passed context to determine bitstream version,
  -- * chroma format, resolution etc.
  --

  --*
  -- * Encoder or decoder requires flushing with NULL input at the end in order to
  -- * give the complete and correct output.
  -- *
  -- * NOTE: If this flag is not set, the codec is guaranteed to never be fed with
  -- *       with NULL data. The user can still send NULL data to the public encode
  -- *       or decode function, but libavcodec will not pass it along to the codec
  -- *       unless this flag is set.
  -- *
  -- * Decoders:
  -- * The decoder has a non-zero delay and needs to be fed with avpkt->data=NULL,
  -- * avpkt->size=0 at the end to get the delayed data until the decoder no longer
  -- * returns frames.
  -- *
  -- * Encoders:
  -- * The encoder needs to be fed with NULL data at the end of encoding until the
  -- * encoder no longer returns data.
  -- *
  -- * NOTE: For encoders implementing the AVCodec.encode2() function, setting this
  -- *       flag also means that the encoder must set the pts and duration for
  -- *       each output packet. If this flag is not set, the pts and duration will
  -- *       be determined by libavcodec from the input frame.
  --

  --*
  -- * Codec can be fed a final frame with a smaller size.
  -- * This can be used to prevent truncation of the last audio samples.
  --

  --*
  -- * Codec can export data for HW decoding (VDPAU).
  --

  --*
  -- * Codec can output multiple frames per AVPacket
  -- * Normally demuxers return one frame at a time, demuxers which do not do
  -- * are connected to a parser to split what they return into proper frames.
  -- * This flag is reserved to the very rare category of codecs which have a
  -- * bitstream that cannot be split into frames without timeconsuming
  -- * operations like full decoding. Demuxers carrying such bitstreams thus
  -- * may return multiple frames in a packet. This has many disadvantages like
  -- * prohibiting stream copy in many cases thus it should only be considered
  -- * as a last resort.
  --

  --*
  -- * Codec is experimental and is thus avoided in favor of non experimental
  -- * encoders
  --

  --*
  -- * Codec should fill in channel configuration and samplerate instead of container
  --

  --*
  -- * @deprecated no codecs use this capability
  --

  --*
  -- * Codec supports frame-level multithreading.
  --

  --*
  -- * Codec supports slice-based (or partition-based) multithreading.
  --

  --*
  -- * Codec supports changed parameters at any point.
  --

  --*
  -- * Codec supports avctx->thread_count == 0 (auto).
  --

  --*
  -- * Audio encoder supports receiving a different number of samples in each call.
  --

  --*
  -- * Codec is intra only.
  --

  --*
  -- * Codec is lossless.
  --

  --*
  -- * HWAccel is experimental and is thus avoided in favor of non experimental
  -- * codecs
  --

  --The following defines may change, don't expect compatibility if you use them.
  -- Note bits 24-31 are reserved for codec specific use (H.264 ref0, MPEG-1 0mv, ...)
  --*
  -- * Pan Scan area.
  -- * This specifies the area which should be displayed.
  -- * Note there may be multiple such areas for one frame.
  --

  --*
  --     * id
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

   type AVPanScan_position_array is array (0 .. 2, 0 .. 1) of aliased Interfaces.Integer_16;
   type AVPanScan is record
      id : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1323
      width : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1330
      height : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1331
      position : aliased AVPanScan_position_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1338
   end record;
   pragma Convention (C_Pass_By_Copy, AVPanScan);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1317

  --*
  --     * width and height in 1/16 pel
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * position of the top left corner in 1/16 pel for up to 3 fields/frames
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --*
  -- * This structure describes the bitrate properties of an encoded bitstream. It
  -- * roughly corresponds to a subset the VBV parameters for MPEG-2 or HRD
  -- * parameters for H.264/HEVC.
  --

  --*
  --     * Maximum bitrate of the stream, in bits per second.
  --     * Zero if unknown or unspecified.
  --

   type AVCPBProperties is record
      max_bitrate : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1351
      min_bitrate : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1356
      avg_bitrate : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1361
      buffer_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1367
      vbv_delay : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1376
   end record;
   pragma Convention (C_Pass_By_Copy, AVCPBProperties);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1346

  --*
  --     * Minimum bitrate of the stream, in bits per second.
  --     * Zero if unknown or unspecified.
  --

  --*
  --     * Average bitrate of the stream, in bits per second.
  --     * Zero if unknown or unspecified.
  --

  --*
  --     * The size of the buffer to which the ratecontrol is applied, in bits.
  --     * Zero if unknown or unspecified.
  --

  --*
  --     * The delay between the time the packet this structure is associated with
  --     * is received and the time when it should be decoded, in periods of a 27MHz
  --     * clock.
  --     *
  --     * UINT64_MAX when unknown or unspecified.
  --

  --*
  -- * The decoder will keep a reference to the frame and may reuse it later.
  --

  --*
  -- * @defgroup lavc_packet AVPacket
  -- *
  -- * Types and functions for working with AVPacket.
  -- * @{
  --

   subtype AVPacketSideDataType is unsigned;
   AV_PKT_DATA_PALETTE : constant AVPacketSideDataType := 0;
   AV_PKT_DATA_NEW_EXTRADATA : constant AVPacketSideDataType := 1;
   AV_PKT_DATA_PARAM_CHANGE : constant AVPacketSideDataType := 2;
   AV_PKT_DATA_H263_MB_INFO : constant AVPacketSideDataType := 3;
   AV_PKT_DATA_REPLAYGAIN : constant AVPacketSideDataType := 4;
   AV_PKT_DATA_DISPLAYMATRIX : constant AVPacketSideDataType := 5;
   AV_PKT_DATA_STEREO3D : constant AVPacketSideDataType := 6;
   AV_PKT_DATA_AUDIO_SERVICE_TYPE : constant AVPacketSideDataType := 7;
   AV_PKT_DATA_QUALITY_STATS : constant AVPacketSideDataType := 8;
   AV_PKT_DATA_FALLBACK_TRACK : constant AVPacketSideDataType := 9;
   AV_PKT_DATA_CPB_PROPERTIES : constant AVPacketSideDataType := 10;
   AV_PKT_DATA_SKIP_SAMPLES : constant AVPacketSideDataType := 70;
   AV_PKT_DATA_JP_DUALMONO : constant AVPacketSideDataType := 71;
   AV_PKT_DATA_STRINGS_METADATA : constant AVPacketSideDataType := 72;
   AV_PKT_DATA_SUBTITLE_POSITION : constant AVPacketSideDataType := 73;
   AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL : constant AVPacketSideDataType := 74;
   AV_PKT_DATA_WEBVTT_IDENTIFIER : constant AVPacketSideDataType := 75;
   AV_PKT_DATA_WEBVTT_SETTINGS : constant AVPacketSideDataType := 76;
   AV_PKT_DATA_METADATA_UPDATE : constant AVPacketSideDataType := 77;
   AV_PKT_DATA_MPEGTS_STREAM_ID : constant AVPacketSideDataType := 78;
   AV_PKT_DATA_MASTERING_DISPLAY_METADATA : constant AVPacketSideDataType := 79;
   AV_PKT_DATA_SPHERICAL : constant AVPacketSideDataType := 80;
   AV_PKT_DATA_NB : constant AVPacketSideDataType := 81;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1397

  --*
  --     * An AV_PKT_DATA_PALETTE side data packet contains exactly AVPALETTE_SIZE
  --     * bytes worth of palette. This side data signals that a new palette is
  --     * present.
  --

  --*
  --     * The AV_PKT_DATA_NEW_EXTRADATA is used to notify the codec or the format
  --     * that the extradata buffer was changed and the receiving side should
  --     * act upon it appropriately. The new extradata is embedded in the side
  --     * data buffer and should be immediately used for processing the current
  --     * frame or packet.
  --

  --*
  --     * An AV_PKT_DATA_PARAM_CHANGE side data packet is laid out as follows:
  --     * @code
  --     * u32le param_flags
  --     * if (param_flags & AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT)
  --     *     s32le channel_count
  --     * if (param_flags & AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT)
  --     *     u64le channel_layout
  --     * if (param_flags & AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE)
  --     *     s32le sample_rate
  --     * if (param_flags & AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS)
  --     *     s32le width
  --     *     s32le height
  --     * @endcode
  --

  --*
  --     * An AV_PKT_DATA_H263_MB_INFO side data packet contains a number of
  --     * structures with info about macroblocks relevant to splitting the
  --     * packet into smaller packets on macroblock edges (e.g. as for RFC 2190).
  --     * That is, it does not necessarily contain info about all macroblocks,
  --     * as long as the distance between macroblocks in the info is smaller
  --     * than the target payload size.
  --     * Each MB info structure is 12 bytes, and is laid out as follows:
  --     * @code
  --     * u32le bit offset from the start of the packet
  --     * u8    current quantizer at the start of the macroblock
  --     * u8    GOB number
  --     * u16le macroblock address within the GOB
  --     * u8    horizontal MV predictor
  --     * u8    vertical MV predictor
  --     * u8    horizontal MV predictor for block number 3
  --     * u8    vertical MV predictor for block number 3
  --     * @endcode
  --

  --*
  --     * This side data should be associated with an audio stream and contains
  --     * ReplayGain information in form of the AVReplayGain struct.
  --

  --*
  --     * This side data contains a 3x3 transformation matrix describing an affine
  --     * transformation that needs to be applied to the decoded video frames for
  --     * correct presentation.
  --     *
  --     * See libavutil/display.h for a detailed description of the data.
  --

  --*
  --     * This side data should be associated with a video stream and contains
  --     * Stereoscopic 3D information in form of the AVStereo3D struct.
  --

  --*
  --     * This side data should be associated with an audio stream and corresponds
  --     * to enum AVAudioServiceType.
  --

  --*
  --     * This side data contains quality related information from the encoder.
  --     * @code
  --     * u32le quality factor of the compressed frame. Allowed range is between 1 (good) and FF_LAMBDA_MAX (bad).
  --     * u8    picture type
  --     * u8    error count
  --     * u16   reserved
  --     * u64le[error count] sum of squared differences between encoder in and output
  --     * @endcode
  --

  --*
  --     * This side data contains an integer value representing the stream index
  --     * of a "fallback" track.  A fallback track indicates an alternate
  --     * track to use when the current track can not be decoded for some reason.
  --     * e.g. no decoder available for codec.
  --

  --*
  --     * This side data corresponds to the AVCPBProperties struct.
  --

  --*
  --     * Recommmends skipping the specified number of samples
  --     * @code
  --     * u32le number of samples to skip from start of this packet
  --     * u32le number of samples to skip from end of this packet
  --     * u8    reason for start skip
  --     * u8    reason for end   skip (0=padding silence, 1=convergence)
  --     * @endcode
  --

  --*
  --     * An AV_PKT_DATA_JP_DUALMONO side data packet indicates that
  --     * the packet may contain "dual mono" audio specific to Japanese DTV
  --     * and if it is true, recommends only the selected channel to be used.
  --     * @code
  --     * u8    selected channels (0=mail/left, 1=sub/right, 2=both)
  --     * @endcode
  --

  --*
  --     * A list of zero terminated key/value strings. There is no end marker for
  --     * the list, so it is required to rely on the side data size to stop.
  --

  --*
  --     * Subtitle event position
  --     * @code
  --     * u32le x1
  --     * u32le y1
  --     * u32le x2
  --     * u32le y2
  --     * @endcode
  --

  --*
  --     * Data found in BlockAdditional element of matroska container. There is
  --     * no end marker for the data, so it is required to rely on the side data
  --     * size to recognize the end. 8 byte id (as found in BlockAddId) followed
  --     * by data.
  --

  --*
  --     * The optional first identifier line of a WebVTT cue.
  --

  --*
  --     * The optional settings (rendering instructions) that immediately
  --     * follow the timestamp specifier of a WebVTT cue.
  --

  --*
  --     * A list of zero terminated key/value strings. There is no end marker for
  --     * the list, so it is required to rely on the side data size to stop. This
  --     * side data includes updated metadata which appeared in the stream.
  --

  --*
  --     * MPEGTS stream ID, this is required to pass the stream ID
  --     * information from the demuxer to the corresponding muxer.
  --

  --*
  --     * Mastering display metadata (based on SMPTE-2086:2014). This metadata
  --     * should be associated with a video stream and containts data in the form
  --     * of the AVMasteringDisplayMetadata struct.
  --

  --*
  --     * This side data should be associated with a video stream and corresponds
  --     * to the AVSphericalMapping structure.
  --

  --*
  --     * The number of side data elements (in fact a bit more than it).
  --     * This is not part of the public API/ABI in the sense that it may
  --     * change when new side data types are added.
  --     * This must stay the last enum value.
  --     * If its value becomes huge, some code using it
  --     * needs to be updated as it assumes it to be smaller than other limits.
  --

   type AVPacketSideData is record
      data : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1601
      size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1602
      c_type : aliased AVPacketSideDataType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1603
   end record;
   pragma Convention (C_Pass_By_Copy, AVPacketSideData);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1600

  --*
  -- * This structure stores compressed data. It is typically exported by demuxers
  -- * and then passed as input to decoders, or received as output from encoders and
  -- * then passed to muxers.
  -- *
  -- * For video, it should typically contain one compressed frame. For audio it may
  -- * contain several compressed frames. Encoders are allowed to output empty
  -- * packets, with no compressed data, containing only side data
  -- * (e.g. to update some stream parameters at the end of encoding).
  -- *
  -- * AVPacket is one of the few structs in FFmpeg, whose size is a part of public
  -- * ABI. Thus it may be allocated on stack and no new fields can be added to it
  -- * without libavcodec and libavformat major bump.
  -- *
  -- * The semantics of data ownership depends on the buf field.
  -- * If it is set, the packet data is dynamically allocated and is
  -- * valid indefinitely until a call to packet_unref() reduces the
  -- * reference count to 0.
  -- *
  -- * If the buf field is not set packet_ref() would make a copy instead
  -- * of increasing the reference count.
  -- *
  -- * The side data is always allocated with malloc(), copied by
  -- * packet_ref() and freed by packet_unref().
  -- *
  -- * @see packet_ref
  -- * @see packet_unref
  --

  --*
  --     * A reference to the reference-counted buffer where the packet data is
  --     * stored.
  --     * May be NULL, then the packet data is not reference-counted.
  --

   type AVPacket is record
      buf : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1640
      pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1650
      dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1656
      data : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1657
      size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1658
      stream_index : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1659
      flags : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1663
      side_data : access AVPacketSideData;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1668
      side_data_elems : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1669
      duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1675
      pos : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1677
      convergence_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1686
   end record;
   pragma Convention (C_Pass_By_Copy, AVPacket);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1634

  --*
  --     * Presentation timestamp in AVStream->time_base units; the time at which
  --     * the decompressed packet will be presented to the user.
  --     * Can be AV_NOPTS_VALUE if it is not stored in the file.
  --     * pts MUST be larger or equal to dts as presentation cannot happen before
  --     * decompression, unless one wants to view hex dumps. Some formats misuse
  --     * the terms dts and pts/cts to mean something different. Such timestamps
  --     * must be converted to true pts/dts before they are stored in AVPacket.
  --

  --*
  --     * Decompression timestamp in AVStream->time_base units; the time at which
  --     * the packet is decompressed.
  --     * Can be AV_NOPTS_VALUE if it is not stored in the file.
  --

  --*
  --     * A combination of AV_PKT_FLAG values
  --

  --*
  --     * Additional packet data that can be provided by the container.
  --     * Packet can contain several types of side information.
  --

  --*
  --     * Duration of this packet in AVStream->time_base units, 0 if unknown.
  --     * Equals next_pts - this_pts in presentation order.
  --

  --/< byte position in stream, -1 if unknown
  --*
  --     * @deprecated Same as the duration field, but as int64_t. This was required
  --     * for Matroska subtitles, whose duration values could overflow when the
  --     * duration field was still an int.
  --

  --*
  -- * Flag is used to discard packets which are required to maintain valid
  -- * decoder state but are not required for output and should be dropped
  -- * after decoding.
  -- *

   subtype AVSideDataParamChangeFlags is unsigned;
   AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT : constant AVSideDataParamChangeFlags := 1;
   AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT : constant AVSideDataParamChangeFlags := 2;
   AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE : constant AVSideDataParamChangeFlags := 4;
   AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS : constant AVSideDataParamChangeFlags := 8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1698

  --*
  -- * @}
  --

   --  skipped empty struct AVCodecInternal

   type AVFieldOrder is
     (AV_FIELD_UNKNOWN,
      AV_FIELD_PROGRESSIVE,
      AV_FIELD_TT,
      AV_FIELD_BB,
      AV_FIELD_TB,
      AV_FIELD_BT);
   pragma Convention (C, AVFieldOrder);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1710

  --< Top coded_first, top displayed first
  --< Bottom coded first, bottom displayed first
  --< Top coded first, bottom displayed first
  --< Bottom coded first, top displayed first
  --*
  -- * main external API structure.
  -- * New fields can be added to the end with minor version bumps.
  -- * Removal, reordering and changes to existing fields require a major
  -- * version bump.
  -- * You can use AVOptions (av_opt* / set/get*()) to access these fields from user
  -- * applications.
  -- * The name string for AVOptions options matches the associated command line
  -- * parameter name and can be found in libavcodec/options_table.h
  -- * The AVOption/command line parameter names differ in some cases from the C
  -- * structure field names for historic reasons or brevity.
  -- * sizeof(AVCodecContext) must not be used outside libav*.
  --

  --*
  --     * information on struct for log
  --     * - set by alloc_context3
  --

   type AVCodec;
   subtype AVCodecContext_codec_name_array is Interfaces.C.char_array (0 .. 31);
   type AVHWAccel;
   type AVCodecContext_error_array is array (0 .. 7) of aliased Interfaces.Unsigned_64;
   type AVCodecContext is record
      class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1737
      log_level_offset : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1738
      codec_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1740
      codec : access constant AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1741
      codec_name : aliased AVCodecContext_codec_name_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1747
      codec_id : aliased AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1749
      codec_tag : aliased unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1764
      stream_codec_tag : aliased unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1771
      priv_data : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1774
      internal : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1782
      opaque : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1789
      bit_rate : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1797
      bit_rate_tolerance : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1805
      global_quality : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1813
      compression_level : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1819
      flags : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1827
      flags2 : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1834
      extradata : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1847
      extradata_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1848
      time_base : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1869
      ticks_per_frame : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1878
      c_delay : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1902
      width : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1919
      height : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1919
      coded_width : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1934
      coded_height : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1934
      gop_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1945
      pix_fmt : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1960
      me_method : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1967
      draw_horiz_band : access procedure
           (arg1 : access AVCodecContext;
            arg2 : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
            arg3 : access int;
            arg4 : int;
            arg5 : int;
            arg6 : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1995
      get_format : access function  (arg1 : access AVCodecContext; arg2 : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2010
      max_b_frames : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2018
      b_quant_factor : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2027
      rc_strategy : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2031
      b_frame_strategy : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2038
      b_quant_offset : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2046
      has_b_frames : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2054
      mpeg_quant : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2059
      i_quant_factor : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2069
      i_quant_offset : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2076
      lumi_masking : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2083
      temporal_cplx_masking : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2090
      spatial_cplx_masking : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2097
      p_masking : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2104
      dark_masking : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2111
      slice_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2118
      prediction_method : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2123
      slice_offset : access int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2134
      sample_aspect_ratio : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2143
      me_cmp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2150
      me_sub_cmp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2156
      mb_cmp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2162
      ildct_cmp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2168
      dia_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2192
      last_predictor_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2199
      pre_me : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2204
      me_pre_cmp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2212
      pre_dia_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2219
      me_subpel_quality : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2226
      dtg_active_format : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2238
      me_range : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2255
      intra_quant_bias : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2261
      inter_quant_bias : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2267
      slice_flags : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2275
      xvmc_acceleration : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2287
      mb_decision : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2295
      intra_matrix : access Interfaces.Unsigned_16;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2305
      inter_matrix : access Interfaces.Unsigned_16;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2312
      scenechange_threshold : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2317
      noise_reduction : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2321
      me_threshold : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2329
      mb_threshold : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2335
      intra_dc_precision : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2343
      skip_top : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2350
      skip_bottom : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2357
      border_masking : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2364
      mb_lmin : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2372
      mb_lmax : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2379
      me_penalty_compensation : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2386
      bidir_refine : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2393
      brd_scale : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2398
      keyint_min : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2406
      refs : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2413
      chromaoffset : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2418
      scenechange_factor : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2427
      mv0_threshold : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2435
      b_sensitivity : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2440
      color_primaries : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorPrimaries;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2448
      color_trc : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorTransferCharacteristic;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2455
      colorspace : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2462
      color_range : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2469
      chroma_sample_location : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2476
      slices : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2485
      field_order : aliased AVFieldOrder;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2491
      sample_rate : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2494
      channels : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2495
      sample_fmt : aliased FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2502
      frame_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2514
      frame_number : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2525
      block_align : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2531
      cutoff : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2538
      channel_layout : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2545
      request_channel_layout : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2552
      audio_service_type : aliased AVAudioServiceType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2559
      request_sample_fmt : aliased FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2567
      get_buffer2 : access function
           (arg1 : access AVCodecContext;
            arg2 : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
            arg3 : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2649
      refcounted_frames : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2664
      qcompress : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2667
      qblur : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2668
      qmin : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2675
      qmax : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2682
      max_qdiff : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2689
      rc_qsquish : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2696
      rc_qmod_amp : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2699
      rc_qmod_freq : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2701
      rc_buffer_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2709
      rc_override_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2716
      rc_override : access RcOverride;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2717
      rc_eq : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2724
      rc_max_rate : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2732
      rc_min_rate : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2739
      rc_buffer_aggressivity : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2746
      rc_initial_cplx : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2749
      rc_max_available_vbv_use : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2757
      rc_min_vbv_overflow_use : aliased float;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2764
      rc_initial_buffer_occupancy : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2771
      coder_type : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2785
      context_model : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2791
      lmin : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2799
      lmax : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2805
      frame_skip_threshold : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2811
      frame_skip_factor : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2815
      frame_skip_exp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2819
      frame_skip_cmp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2823
      trellis : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2831
      min_prediction_order : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2836
      max_prediction_order : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2840
      timecode_frame_start : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2844
      rtp_callback : access procedure
           (arg1 : access AVCodecContext;
            arg2 : System.Address;
            arg3 : int;
            arg4 : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2858
      rtp_payload_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2864
      mv_bits : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2875
      header_bits : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2877
      i_tex_bits : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2879
      p_tex_bits : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2881
      i_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2883
      p_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2885
      skip_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2887
      misc_bits : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2889
      frame_bits : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2893
      stats_out : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2901
      stats_in : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2909
      workaround_bugs : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2916
      strict_std_compliance : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2951
      error_concealment : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2963
      debug : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:2973
      debug_mv : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3009
      err_recognition : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3020
      reordered_opaque : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3045
      hwaccel : access AVHWAccel;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3052
      hwaccel_context : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3064
      error : aliased AVCodecContext_error_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3071
      dct_algo : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3078
      idct_algo : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3091
      bits_per_coded_sample : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3126
      bits_per_raw_sample : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3133
      lowres : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3141
      coded_frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3152
      thread_count : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3161
      thread_type : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3171
      active_thread_type : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3180
      thread_safe_callbacks : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3190
      execute : access function
           (arg1 : access AVCodecContext;
            arg2 : access function  (arg1 : access AVCodecContext; arg2 : System.Address) return int;
            arg3 : System.Address;
            arg4 : access int;
            arg5 : int;
            arg6 : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3201
      execute2 : access function
           (arg1 : access AVCodecContext;
            arg2 : access function
              (arg1 : access AVCodecContext;
               arg2 : System.Address;
               arg3 : int;
               arg4 : int) return int;
            arg3 : System.Address;
            arg4 : access int;
            arg5 : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3221
      nsse_weight : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3228
      profile : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3235
      level : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3333
      skip_loop_filter : aliased AVDiscard;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3341
      skip_idct : aliased AVDiscard;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3348
      skip_frame : aliased AVDiscard;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3355
      subtitle_header : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3365
      subtitle_header_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3366
      error_rate : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3374
      vbv_delay : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3387
      side_data_only_packets : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3402
      initial_padding : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3420
      framerate : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3429
      sw_pix_fmt : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3436
      pkt_timebase : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3443
      codec_descriptor : access constant AVCodecDescriptor;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3450
      pts_correction_num_faulty_pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3466
      pts_correction_num_faulty_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3467
      pts_correction_last_pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3468
      pts_correction_last_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3469
      sub_charenc : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3476
      sub_charenc_mode : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3484
      skip_alpha : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3501
      seek_preroll : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3508
      chroma_intra_matrix : access Interfaces.Unsigned_16;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3527
      dump_separator : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3535
      codec_whitelist : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3543
      properties : aliased unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3550
      coded_side_data : access AVPacketSideData;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3560
      nb_coded_side_data : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3561
      hw_frames_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3585
      sub_text_format : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3592
      trailing_padding : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3607
      max_pixels : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3615
      hw_device_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3637
      hwaccel_flags : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3646
   end record;
   pragma Convention (C_Pass_By_Copy, AVCodecContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:1732

  -- see AVMEDIA_TYPE_xxx
  --*
  --     * @deprecated this field is not used for anything in libavcodec
  --

  -- see AV_CODEC_ID_xxx
  --*
  --     * fourcc (LSB first, so "ABCD" -> ('D'<<24) + ('C'<<16) + ('B'<<8) + 'A').
  --     * This is used to work around some encoder bugs.
  --     * A demuxer should set this to what is stored in the field used to identify the codec.
  --     * If there are multiple such fields in a container then the demuxer should choose the one
  --     * which maximizes the information about the used codec.
  --     * If the codec tag field in a container is larger than 32 bits then the demuxer should
  --     * remap the longer ID to 32 bits with a table or other structure. Alternatively a new
  --     * extra_codec_tag + size could be added but for this a clear advantage must be demonstrated
  --     * first.
  --     * - encoding: Set by user, if not then the default based on codec_id will be used.
  --     * - decoding: Set by user, will be converted to uppercase by libavcodec during init.
  --

  --*
  --     * @deprecated this field is unused
  --

  --*
  --     * Private context used for internal data.
  --     *
  --     * Unlike priv_data, this is not codec-specific. It is used in general
  --     * libavcodec functions.
  --

  --*
  --     * Private data of the user, can be used to carry app specific stuff.
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * the average bitrate
  --     * - encoding: Set by user; unused for constant quantizer encoding.
  --     * - decoding: Set by user, may be overwritten by libavcodec
  --     *             if this info is available in the stream
  --

  --*
  --     * number of bits the bitstream is allowed to diverge from the reference.
  --     *           the reference can be CBR (for CBR pass1) or VBR (for pass2)
  --     * - encoding: Set by user; unused for constant quantizer encoding.
  --     * - decoding: unused
  --

  --*
  --     * Global quality for codecs which cannot change it per frame.
  --     * This should be proportional to MPEG-1/2/4 qscale.
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * AV_CODEC_FLAG_*.
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * AV_CODEC_FLAG2_*
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * some codecs need / can use extradata like Huffman tables.
  --     * MJPEG: Huffman tables
  --     * rv10: additional flags
  --     * MPEG-4: global headers (they can be in the bitstream or here)
  --     * The allocated memory should be AV_INPUT_BUFFER_PADDING_SIZE bytes larger
  --     * than extradata_size to avoid problems if it is read with the bitstream reader.
  --     * The bytewise contents of extradata must not depend on the architecture or CPU endianness.
  --     * - encoding: Set/allocated/freed by libavcodec.
  --     * - decoding: Set/allocated/freed by user.
  --

  --*
  --     * This is the fundamental unit of time (in seconds) in terms
  --     * of which frame timestamps are represented. For fixed-fps content,
  --     * timebase should be 1/framerate and timestamp increments should be
  --     * identically 1.
  --     * This often, but not always is the inverse of the frame rate or field rate
  --     * for video. 1/time_base is not the average frame rate if the frame rate is not
  --     * constant.
  --     *
  --     * Like containers, elementary streams also can store timestamps, 1/time_base
  --     * is the unit in which these timestamps are specified.
  --     * As example of such codec time base see ISO/IEC 14496-2:2001(E)
  --     * vop_time_increment_resolution and fixed_vop_rate
  --     * (fixed_vop_rate == 0 implies that it is different from the framerate)
  --     *
  --     * - encoding: MUST be set by user.
  --     * - decoding: the use of this field for decoding is deprecated.
  --     *             Use framerate instead.
  --

  --*
  --     * For some codecs, the time base is closer to the field rate than the frame rate.
  --     * Most notably, H.264 and MPEG-2 specify time_base as half of frame duration
  --     * if no telecine is used ...
  --     *
  --     * Set to time_base ticks per frame. Default 1, e.g., H.264/MPEG-2 set it to 2.
  --

  --*
  --     * Codec delay.
  --     *
  --     * Encoding: Number of frames delay there will be from the encoder input to
  --     *           the decoder output. (we assume the decoder matches the spec)
  --     * Decoding: Number of frames delay in addition to what a standard decoder
  --     *           as specified in the spec would produce.
  --     *
  --     * Video:
  --     *   Number of frames the decoded output will be delayed relative to the
  --     *   encoded input.
  --     *
  --     * Audio:
  --     *   For encoding, this field is unused (see initial_padding).
  --     *
  --     *   For decoding, this is the number of samples the decoder needs to
  --     *   output before the decoder's output is valid. When seeking, you should
  --     *   start decoding this many samples prior to your desired seek point.
  --     *
  --     * - encoding: Set by libavcodec.
  --     * - decoding: Set by libavcodec.
  --

  -- video only
  --*
  --     * picture width / height.
  --     *
  --     * @note Those fields may not match the values of the last
  --     * AVFrame output by decode_video2 due frame
  --     * reordering.
  --     *
  --     * - encoding: MUST be set by user.
  --     * - decoding: May be set by the user before opening the decoder if known e.g.
  --     *             from the container. Some decoders will require the dimensions
  --     *             to be set by the caller. During decoding, the decoder may
  --     *             overwrite those values as required while parsing the data.
  --

  --*
  --     * Bitstream width / height, may be different from width/height e.g. when
  --     * the decoded frame is cropped before being output or lowres is enabled.
  --     *
  --     * @note Those field may not match the value of the last
  --     * AVFrame output by receive_frame() due frame
  --     * reordering.
  --     *
  --     * - encoding: unused
  --     * - decoding: May be set by the user before opening the decoder if known
  --     *             e.g. from the container. During decoding, the decoder may
  --     *             overwrite those values as required while parsing the data.
  --

  --*
  --     * the number of pictures in a group of pictures, or 0 for intra_only
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * Pixel format, see AV_PIX_FMT_xxx.
  --     * May be set by the demuxer if known from headers.
  --     * May be overridden by the decoder if it knows better.
  --     *
  --     * @note This field may not match the value of the last
  --     * AVFrame output by receive_frame() due frame
  --     * reordering.
  --     *
  --     * - encoding: Set by user.
  --     * - decoding: Set by user if known, overridden by libavcodec while
  --     *             parsing the data.
  --

  --*
  --     * This option does nothing
  --     * @deprecated use codec private options instead
  --

  --*
  --     * If non NULL, 'draw_horiz_band' is called by the libavcodec
  --     * decoder to draw a horizontal band. It improves cache usage. Not
  --     * all codecs can do that. You must check the codec capabilities
  --     * beforehand.
  --     * When multithreading is used, it may be called from multiple threads
  --     * at the same time; threads might draw different parts of the same AVFrame,
  --     * or multiple AVFrames, and there is no guarantee that slices will be drawn
  --     * in order.
  --     * The function is also used by hardware acceleration APIs.
  --     * It is called at least once during frame decoding to pass
  --     * the data needed for hardware render.
  --     * In that mode instead of pixel data, AVFrame points to
  --     * a structure specific to the acceleration API. The application
  --     * reads the structure and can change some fields to indicate progress
  --     * or mark state.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --     * @param height the height of the slice
  --     * @param y the y position of the slice
  --     * @param type 1->top field, 2->bottom field, 3->frame
  --     * @param offset offset into the AVFrame.data from which the slice should be read
  --

  --*
  --     * callback to negotiate the pixelFormat
  --     * @param fmt is the list of formats which are supported by the codec,
  --     * it is terminated by -1 as 0 is a valid format, the formats are ordered by quality.
  --     * The first is always the native one.
  --     * @note The callback may be called again immediately if initialization for
  --     * the selected (hardware-accelerated) pixel format failed.
  --     * @warning Behavior is undefined if the callback returns a value not
  --     * in the fmt list of formats.
  --     * @return the chosen format
  --     * - encoding: unused
  --     * - decoding: Set by user, if not set the native format will be chosen.
  --

  --*
  --     * maximum number of B-frames between non-B-frames
  --     * Note: The output will be delayed by max_b_frames+1 relative to the input.
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * qscale factor between IP and B-frames
  --     * If > 0 then the last P-frame quantizer will be used (q= lastp_q*factor+offset).
  --     * If < 0 then normal ratecontrol will be done (q= -normal_q*factor+offset).
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --* @deprecated use codec private option instead
  --* @deprecated use encoder private options instead
  --*
  --     * qscale offset between IP and B-frames
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * Size of the frame reordering buffer in the decoder.
  --     * For MPEG-2 it is 1 IPB or 0 low delay IP.
  --     * - encoding: Set by libavcodec.
  --     * - decoding: Set by libavcodec.
  --

  --* @deprecated use encoder private options instead
  --*
  --     * qscale factor between P- and I-frames
  --     * If > 0 then the last P-frame quantizer will be used (q = lastp_q * factor + offset).
  --     * If < 0 then normal ratecontrol will be done (q= -normal_q*factor+offset).
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * qscale offset between P and I-frames
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * luminance masking (0-> disabled)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * temporary complexity masking (0-> disabled)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * spatial complexity masking (0-> disabled)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * p block masking (0-> disabled)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * darkness masking (0-> disabled)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * slice count
  --     * - encoding: Set by libavcodec.
  --     * - decoding: Set by user (or 0).
  --

  --* @deprecated use encoder private options instead
  --*
  --     * slice offsets in the frame in bytes
  --     * - encoding: Set/allocated by libavcodec.
  --     * - decoding: Set/allocated by user (or NULL).
  --

  --*
  --     * sample aspect ratio (0 if unknown)
  --     * That is the width of a pixel divided by the height of the pixel.
  --     * Numerator and denominator must be relatively prime and smaller than 256 for some video standards.
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * motion estimation comparison function
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * subpixel motion estimation comparison function
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * macroblock comparison function (not supported yet)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * interlaced DCT comparison function
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * ME diamond size & shape
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * amount of previous MV predictors (2a+1 x 2a+1 square)
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --* @deprecated use encoder private options instead
  --*
  --     * motion estimation prepass comparison function
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * ME prepass diamond size & shape
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * subpel ME quality
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * DTG active format information (additional aspect ratio
  --     * information only used in DVB MPEG-2 transport streams)
  --     * 0 if not set.
  --     *
  --     * - encoding: unused
  --     * - decoding: Set by decoder.
  --     * @deprecated Deprecated in favor of AVSideData
  --

  --*
  --     * maximum motion estimation search range in subpel units
  --     * If 0 then no limit.
  --     *
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * @deprecated use encoder private option instead
  --

  --*
  --     * @deprecated use encoder private option instead
  --

  --*
  --     * slice flags
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * XVideo Motion Acceleration
  --     * - encoding: forbidden
  --     * - decoding: set by decoder
  --     * @deprecated XvMC doesn't need it anymore.
  --

  --*
  --     * macroblock decision mode
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * custom intra quantization matrix
  --     * - encoding: Set by user, can be NULL.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * custom inter quantization matrix
  --     * - encoding: Set by user, can be NULL.
  --     * - decoding: Set by libavcodec.
  --

  --* @deprecated use encoder private options instead
  --* @deprecated use encoder private options instead
  --*
  --     * @deprecated this field is unused
  --

  --*
  --     * @deprecated this field is unused
  --

  --*
  --     * precision of the intra DC coefficient - 8
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * Number of macroblock rows at the top which are skipped.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Number of macroblock rows at the bottom which are skipped.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --*
  --     * minimum MB Lagrange multiplier
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * maximum MB Lagrange multiplier
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --*
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --* @deprecated use encoder private options instead
  --*
  --     * minimum GOP size
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * number of reference frames
  --     * - encoding: Set by user.
  --     * - decoding: Set by lavc.
  --

  --* @deprecated use encoder private options instead
  --*
  --     * Multiplied by qscale for each frame and added to scene_change_score.
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * Note: Value depends upon the compare function used for fullpel ME.
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --* @deprecated use encoder private options instead
  --*
  --     * Chromaticity coordinates of the source primaries.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * Color Transfer Characteristic.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * YUV colorspace type.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * MPEG vs JPEG YUV range.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * This defines the location of chroma samples.
  --     * - encoding: Set by user
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * Number of slices.
  --     * Indicates number of picture subdivisions. Used for parallelized
  --     * decoding.
  --     * - encoding: Set by user
  --     * - decoding: unused
  --

  --* Field order
  --     * - encoding: set by libavcodec
  --     * - decoding: Set by user.
  --

  -- audio only
  --/< samples per second
  --/< number of audio channels
  --*
  --     * audio sample format
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --/< sample format
  -- The following data should not be initialized.
  --*
  --     * Number of samples per channel in an audio frame.
  --     *
  --     * - encoding: set by libavcodec in open2(). Each submitted frame
  --     *   except the last must contain exactly frame_size samples per channel.
  --     *   May be 0 when the codec has AV_CODEC_CAP_VARIABLE_FRAME_SIZE set, then the
  --     *   frame size is not restricted.
  --     * - decoding: may be set by some decoders to indicate constant frame size
  --

  --*
  --     * Frame counter, set by libavcodec.
  --     *
  --     * - decoding: total number of frames returned from the decoder so far.
  --     * - encoding: total number of frames passed to the encoder so far.
  --     *
  --     *   @note the counter is not incremented if encoding/decoding resulted in
  --     *   an error.
  --

  --*
  --     * number of bytes per packet if constant and known or 0
  --     * Used by some WAV based audio codecs.
  --

  --*
  --     * Audio cutoff bandwidth (0 means "automatic")
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * Audio channel layout.
  --     * - encoding: set by user.
  --     * - decoding: set by user, may be overwritten by libavcodec.
  --

  --*
  --     * Request decoder to use this channel layout if it can (0 for default)
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Type of service that the audio stream conveys.
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * desired sample format
  --     * - encoding: Not used.
  --     * - decoding: Set by user.
  --     * Decoder will decode to this format if it can.
  --

  --*
  --     * This callback is called at the beginning of each frame to get data
  --     * buffer(s) for it. There may be one contiguous buffer for all the data or
  --     * there may be a buffer per each data plane or anything in between. What
  --     * this means is, you may set however many entries in buf[] you feel necessary.
  --     * Each buffer must be reference-counted using the AVBuffer API (see description
  --     * of buf[] below).
  --     *
  --     * The following fields will be set in the frame before this callback is
  --     * called:
  --     * - format
  --     * - width, height (video only)
  --     * - sample_rate, channel_layout, nb_samples (audio only)
  --     * Their values may differ from the corresponding values in
  --     * AVCodecContext. This callback must use the frame values, not the codec
  --     * context values, to calculate the required buffer size.
  --     *
  --     * This callback must fill the following fields in the frame:
  --     * - data[]
  --     * - linesize[]
  --     * - extended_data:
  --     *   * if the data is planar audio with more than 8 channels, then this
  --     *     callback must allocate and fill extended_data to contain all pointers
  --     *     to all data planes. data[] must hold as many pointers as it can.
  --     *     extended_data must be allocated with malloc() and will be freed in
  --     *     frame_unref().
  --     *   * otherwise extended_data must point to data
  --     * - buf[] must contain one or more pointers to AVBufferRef structures. Each of
  --     *   the frame's data and extended_data pointers must be contained in these. That
  --     *   is, one AVBufferRef for each allocated chunk of memory, not necessarily one
  --     *   AVBufferRef per data[] entry. See: buffer_create(), buffer_alloc(),
  --     *   and buffer_ref().
  --     * - extended_buf and nb_extended_buf must be allocated with malloc() by
  --     *   this callback and filled with the extra buffers if there are more
  --     *   buffers than buf[] can hold. extended_buf will be freed in
  --     *   frame_unref().
  --     *
  --     * If AV_CODEC_CAP_DR1 is not set then get_buffer2() must call
  --     * default_get_buffer2() instead of providing buffers allocated by
  --     * some other means.
  --     *
  --     * Each data plane must be aligned to the maximum required by the target
  --     * CPU.
  --     *
  --     * @see default_get_buffer2()
  --     *
  --     * Video:
  --     *
  --     * If AV_GET_BUFFER_FLAG_REF is set in flags then the frame may be reused
  --     * (read and/or written to if it is writable) later by libavcodec.
  --     *
  --     * align_dimensions2() should be used to find the required width and
  --     * height, as they normally need to be rounded up to the next multiple of 16.
  --     *
  --     * Some decoders do not support linesizes changing between frames.
  --     *
  --     * If frame multithreading is used and thread_safe_callbacks is set,
  --     * this callback may be called from a different thread, but not from more
  --     * than one at once. Does not need to be reentrant.
  --     *
  --     * @see align_dimensions2()
  --     *
  --     * Audio:
  --     *
  --     * Decoders request a buffer of a particular size by setting
  --     * AVFrame.nb_samples prior to calling get_buffer2(). The decoder may,
  --     * however, utilize only part of the buffer by setting AVFrame.nb_samples
  --     * to a smaller value in the output frame.
  --     *
  --     * As a convenience, samples_get_buffer_size() and
  --     * samples_fill_arrays() in libavutil may be used by custom get_buffer2()
  --     * functions to find the required data size and to fill data pointers and
  --     * linesize. In AVFrame.linesize, only linesize[0] may be set for audio
  --     * since all planes must be the same size.
  --     *
  --     * @see samples_get_buffer_size(), samples_fill_arrays()
  --     *
  --     * - encoding: unused
  --     * - decoding: Set by libavcodec, user can override.
  --

  --*
  --     * If non-zero, the decoded audio and video frames returned from
  --     * decode_video2() and decode_audio4() are reference-counted
  --     * and are valid indefinitely. The caller must free them with
  --     * frame_unref() when they are not needed anymore.
  --     * Otherwise, the decoded frames must not be freed by the caller and are
  --     * only valid until the next decode call.
  --     *
  --     * This is always automatically enabled if receive_frame() is used.
  --     *
  --     * - encoding: unused
  --     * - decoding: set by the caller before open2().
  --

  -- - encoding parameters
  --/< amount of qscale change between easy & hard scenes (0.0-1.0)
  --/< amount of qscale smoothing over time (0.0-1.0)
  --*
  --     * minimum quantizer
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * maximum quantizer
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * maximum quantizer difference between frames
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --*
  --     * decoder bitstream buffer size
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * ratecontrol override, see RcOverride
  --     * - encoding: Allocated/set/freed by user.
  --     * - decoding: unused
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --*
  --     * maximum bitrate
  --     * - encoding: Set by user.
  --     * - decoding: Set by user, may be overwritten by libavcodec.
  --

  --*
  --     * minimum bitrate
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --*
  --     * Ratecontrol attempt to use, at maximum, <value> of what can be used without an underflow.
  --     * - encoding: Set by user.
  --     * - decoding: unused.
  --

  --*
  --     * Ratecontrol attempt to use, at least, <value> times the amount needed to prevent a vbv overflow.
  --     * - encoding: Set by user.
  --     * - decoding: unused.
  --

  --*
  --     * Number of bits which should be loaded into the rc buffer before decoding starts.
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --* @deprecated use encoder private options instead
  --*
  --     * @deprecated use encoder private options instead
  --

  --*
  --     * @deprecated use encoder private options instead
  --

  --* @deprecated use encoder private options instead
  --* @deprecated use encoder private options instead
  --* @deprecated use encoder private options instead
  --* @deprecated use encoder private options instead
  --*
  --     * trellis RD quantization
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --* @deprecated use encoder private options instead
  --* @deprecated use encoder private options instead
  --* @deprecated use encoder private options instead
  --*
  --     * @deprecated unused
  --

  -- The RTP callback: This function is called
  -- every time the encoder has a packet to send.
  -- It depends on the encoder if the data starts
  -- with a Start Code (it should). H.263 does.
  -- mb_nb contains the number of macroblocks
  -- encoded in the RTP payload.
  --* @deprecated use encoder private options instead
  -- The size of the RTP payload: the coder will
  -- do its best to deliver a chunk with size
  -- below rtp_payload_size, the chunk will start
  -- with a start code on some codecs like H.263.
  -- This doesn't take account of any particular
  -- headers inside the transmitted RTP payload.
  -- statistics, used for 2-pass encoding
  --* @deprecated this field is unused
  --*
  --     * pass1 encoding statistics output buffer
  --     * - encoding: Set by libavcodec.
  --     * - decoding: unused
  --

  --*
  --     * pass2 encoding statistics input buffer
  --     * Concatenated stuff from stats_out of pass1 should be placed here.
  --     * - encoding: Allocated/set/freed by user.
  --     * - decoding: unused
  --

  --*
  --     * Work around bugs in encoders which sometimes cannot be detected automatically.
  --     * - encoding: Set by user
  --     * - decoding: Set by user
  --

  --*
  --     * strictly follow the standard (MPEG-4, ...).
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --     * Setting this to STRICT or higher means the encoder and decoder will
  --     * generally do stupid things, whereas setting it to unofficial or lower
  --     * will mean the encoder might produce output that is not supported by all
  --     * spec-compliant decoders. Decoders don't differentiate between normal,
  --     * unofficial and experimental (that is, they always try to decode things
  --     * when they can) unless they are explicitly asked to behave stupidly
  --     * (=strictly conform to the specs)
  --

  --*
  --     * error concealment flags
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * debug
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  -- * @deprecated this option does nothing
  --

  --*
  --     * debug
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * Error recognition; may misdetect some more or less valid parts as errors.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  -- * Verify checksums embedded in the bitstream (could be of either encoded or
  -- * decoded data, depending on the codec) and print an error message on mismatch.
  -- * If AV_EF_EXPLODE is also set, a mismatching checksum will result in the
  -- * decoder returning an error.
  --

  --*
  --     * opaque 64-bit number (generally a PTS) that will be reordered and
  --     * output in AVFrame.reordered_opaque
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Hardware accelerator in use
  --     * - encoding: unused.
  --     * - decoding: Set by libavcodec
  --

  --*
  --     * Hardware accelerator context.
  --     * For some hardware accelerators, a global context needs to be
  --     * provided by the user. In that case, this holds display-dependent
  --     * data FFmpeg cannot instantiate itself. Please refer to the
  --     * FFmpeg HW accelerator documentation to know how to fill this
  --     * is. e.g. for VA API, this is a struct vaapi_context.
  --     * - encoding: unused
  --     * - decoding: Set by user
  --

  --*
  --     * error
  --     * - encoding: Set by libavcodec if flags & AV_CODEC_FLAG_PSNR.
  --     * - decoding: unused
  --

  --*
  --     * DCT algorithm, see FF_DCT_* below
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * IDCT algorithm, see FF_IDCT_* below.
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * bits per sample/pixel from the demuxer (needed for huffyuv).
  --     * - encoding: Set by libavcodec.
  --     * - decoding: Set by user.
  --

  --*
  --     * Bits per sample/pixel of internal libavcodec pixel/sample format.
  --     * - encoding: set by user.
  --     * - decoding: set by libavcodec.
  --

  --*
  --     * low resolution decoding, 1-> 1/2 size, 2->1/4 size
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * the picture in the bitstream
  --     * - encoding: Set by libavcodec.
  --     * - decoding: unused
  --     *
  --     * @deprecated use the quality factor packet side data instead
  --

  --*
  --     * thread count
  --     * is used to decide how many independent tasks should be passed to execute()
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * Which multithreading methods to use.
  --     * Use of FF_THREAD_FRAME will increase decoding delay by one frame per thread,
  --     * so clients which cannot provide future frames should not use it.
  --     *
  --     * - encoding: Set by user, otherwise the default is used.
  --     * - decoding: Set by user, otherwise the default is used.
  --

  --*
  --     * Which multithreading methods are in use by the codec.
  --     * - encoding: Set by libavcodec.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * Set by the client if its custom get_buffer() callback can be called
  --     * synchronously from another thread, which allows faster multithreaded decoding.
  --     * draw_horiz_band() will be called from other threads regardless of this setting.
  --     * Ignored if the default get_buffer() is used.
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * The codec may call this to execute several independent things.
  --     * It will return only after finishing all tasks.
  --     * The user may replace this with some multithreaded implementation,
  --     * the default implementation will execute the parts serially.
  --     * @param count the number of things to execute
  --     * - encoding: Set by libavcodec, user can override.
  --     * - decoding: Set by libavcodec, user can override.
  --

  --*
  --     * The codec may call this to execute several independent things.
  --     * It will return only after finishing all tasks.
  --     * The user may replace this with some multithreaded implementation,
  --     * the default implementation will execute the parts serially.
  --     * Also see thread_init and e.g. the --enable-pthread configure option.
  --     * @param c context passed also to func
  --     * @param count the number of things to execute
  --     * @param arg2 argument passed unchanged to func
  --     * @param ret return values of executed functions, must have space for "count" values. May be NULL.
  --     * @param func function that will be called count times, with jobnr from 0 to count-1.
  --     *             threadnr will be in the range 0 to c->thread_count-1 < MAX_THREADS and so that no
  --     *             two instances of func executing at the same time will have the same threadnr.
  --     * @return always 0 currently, but code should handle a future improvement where when any call to func
  --     *         returns < 0 no further calls to func may be done and < 0 is returned.
  --     * - encoding: Set by libavcodec, user can override.
  --     * - decoding: Set by libavcodec, user can override.
  --

  --*
  --     * noise vs. sse weight for the nsse comparison function
  --     * - encoding: Set by user.
  --     * - decoding: unused
  --

  --*
  --     * profile
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * level
  --     * - encoding: Set by user.
  --     * - decoding: Set by libavcodec.
  --

  --*
  --     * Skip loop filtering for selected frames.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Skip IDCT/dequantization for selected frames.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Skip decoding for selected frames.
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Header containing style information for text subtitles.
  --     * For SUBTITLE_ASS subtitle type, it should contain the whole ASS
  --     * [Script Info] and [V4+ Styles] section, plus the [Events] line and
  --     * the Format line following. It shouldn't include any Dialogue line.
  --     * - encoding: Set/allocated/freed by user (before open2())
  --     * - decoding: Set/allocated/freed by libavcodec (by open2())
  --

  --*
  --     * @deprecated use the 'error_rate' private AVOption of the mpegvideo
  --     * encoders
  --

  --*
  --     * VBV delay coded in the last frame (in periods of a 27 MHz clock).
  --     * Used for compliant TS muxing.
  --     * - encoding: Set by libavcodec.
  --     * - decoding: unused.
  --     * @deprecated this value is now exported as a part of
  --     * AV_PKT_DATA_CPB_PROPERTIES packet side data
  --

  --*
  --     * Encoding only and set by default. Allow encoders to output packets
  --     * that do not contain any encoded data, only side data.
  --     *
  --     * Some encoders need to output such packets, e.g. to update some stream
  --     * parameters at the end of encoding.
  --     *
  --     * @deprecated this field disables the default behaviour and
  --     *             it is kept only for compatibility.
  --

  --*
  --     * Audio only. The number of "priming" samples (padding) inserted by the
  --     * encoder at the beginning of the audio. I.e. this number of leading
  --     * decoded samples must be discarded by the caller to get the original audio
  --     * without leading padding.
  --     *
  --     * - decoding: unused
  --     * - encoding: Set by libavcodec. The timestamps on the output packets are
  --     *             adjusted by the encoder so that they always refer to the
  --     *             first sample of the data actually contained in the packet,
  --     *             including any added padding.  E.g. if the timebase is
  --     *             1/samplerate and the timestamp of the first input sample is
  --     *             0, the timestamp of the first output packet will be
  --     *             -initial_padding.
  --

  --*
  --     * - decoding: For codecs that store a framerate value in the compressed
  --     *             bitstream, the decoder may export it here. { 0, 1} when
  --     *             unknown.
  --     * - encoding: May be used to signal the framerate of CFR content to an
  --     *             encoder.
  --

  --*
  --     * Nominal unaccelerated pixel format, see AV_PIX_FMT_xxx.
  --     * - encoding: unused.
  --     * - decoding: Set by libavcodec before calling get_format()
  --

  --*
  --     * Timebase in which pkt_dts/pts and AVPacket.dts/pts are.
  --     * - encoding unused.
  --     * - decoding set by user.
  --

  --*
  --     * AVCodecDescriptor
  --     * - encoding: unused.
  --     * - decoding: set by libavcodec.
  --

  --*
  --     * low resolution decoding, 1-> 1/2 size, 2->1/4 size
  --     * - encoding: unused
  --     * - decoding: Set by user.
  --

  --*
  --     * Current statistics for PTS correction.
  --     * - decoding: maintained and used by libavcodec, not intended to be used by user apps
  --     * - encoding: unused
  --

  --/ Number of incorrect PTS values so far
  --/ Number of incorrect DTS values so far
  --/ PTS of the last frame
  --/ DTS of the last frame
  --*
  --     * Character encoding of the input subtitles file.
  --     * - decoding: set by user
  --     * - encoding: unused
  --

  --*
  --     * Subtitles character encoding mode. Formats or codecs might be adjusting
  --     * this setting (if they are doing the conversion themselves for instance).
  --     * - decoding: set by libavcodec
  --     * - encoding: unused
  --

  --*
  --     * Skip processing alpha if supported by codec.
  --     * Note that if the format uses pre-multiplied alpha (common with VP6,
  --     * and recommended due to better video quality/compression)
  --     * the image will look as if alpha-blended onto a black background.
  --     * However for formats that do not use pre-multiplied alpha
  --     * there might be serious artefacts (though e.g. libswscale currently
  --     * assumes pre-multiplied alpha anyway).
  --     *
  --     * - decoding: set by user
  --     * - encoding: unused
  --

  --*
  --     * Number of samples to skip after a discontinuity
  --     * - decoding: unused
  --     * - encoding: set by libavcodec
  --

  --*
  --     * debug motion vectors
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * custom intra quantization matrix
  --     * - encoding: Set by user, can be NULL.
  --     * - decoding: unused.
  --

  --*
  --     * dump format separator.
  --     * can be ", " or "\n      " or anything else
  --     * - encoding: Set by user.
  --     * - decoding: Set by user.
  --

  --*
  --     * ',' separated list of allowed decoders.
  --     * If NULL then all are allowed
  --     * - encoding: unused
  --     * - decoding: set by user
  --

  --     * Properties of the stream that gets decoded
  --     * - encoding: unused
  --     * - decoding: set by libavcodec
  --

  --*
  --     * Additional data associated with the entire coded stream.
  --     *
  --     * - decoding: unused
  --     * - encoding: may be set by libavcodec after open2().
  --

  --*
  --     * A reference to the AVHWFramesContext describing the input (for encoding)
  --     * or output (decoding) frames. The reference is set by the caller and
  --     * afterwards owned (and freed) by libavcodec - it should never be read by
  --     * the caller after being set.
  --     *
  --     * - decoding: This field should be set by the caller from the get_format()
  --     *             callback. The previous reference (if any) will always be
  --     *             unreffed by libavcodec before the get_format() call.
  --     *
  --     *             If the default get_buffer2() is used with a hwaccel pixel
  --     *             format, then this AVHWFramesContext will be used for
  --     *             allocating the frame buffers.
  --     *
  --     * - encoding: For hardware encoders configured to use a hwaccel pixel
  --     *             format, this field should be set by the caller to a reference
  --     *             to the AVHWFramesContext describing input frames.
  --     *             AVHWFramesContext.format must be equal to
  --     *             AVCodecContext.pix_fmt.
  --     *
  --     *             This field should be set before open2() is called.
  --

  --*
  --     * Control the form of AVSubtitle.rects[N]->ass
  --     * - decoding: set by user
  --     * - encoding: unused
  --

  --*
  --     * Audio only. The amount of padding (in samples) appended by the encoder to
  --     * the end of the audio. I.e. this number of decoded samples must be
  --     * discarded by the caller from the end of the stream to get the original
  --     * audio without any trailing padding.
  --     *
  --     * - decoding: unused
  --     * - encoding: unused
  --

  --*
  --     * The number of pixels per image to maximally accept.
  --     *
  --     * - decoding: set by user
  --     * - encoding: set by user
  --

  --*
  --     * A reference to the AVHWDeviceContext describing the device which will
  --     * be used by a hardware encoder/decoder.  The reference is set by the
  --     * caller and afterwards owned (and freed) by libavcodec.
  --     *
  --     * This should be used if either the codec device does not require
  --     * hardware frames or any that are used are to be allocated internally by
  --     * libavcodec.  If the user wishes to supply any of the frames used as
  --     * encoder input or decoder output then hw_frames_ctx should be used
  --     * instead.  When hw_frames_ctx is set in get_format() for a decoder, this
  --     * field will be ignored while decoding the associated stream segment, but
  --     * may again be used on a following one after another get_format() call.
  --     *
  --     * For both encoders and decoders this field should be set before
  --     * open2() is called and must not be written to thereafter.
  --     *
  --     * Note that some decoders may require this field to be set initially in
  --     * order to support hw_frames_ctx at all - in that case, all frames
  --     * contexts used must be created on the same device.
  --

  --*
  --     * Bit set of AV_HWACCEL_FLAG_* flags, which affect hardware accelerated
  --     * decoding (if active).
  --     * - encoding: unused
  --     * - decoding: Set by user (either before open2(), or in the
  --     *             AVCodecContext.get_format callback)
  --

   function get_pkt_timebase (avctx : access constant AVCodecContext) return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3649


   procedure set_pkt_timebase (avctx : access AVCodecContext; val : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3650


   function get_codec_descriptor (avctx : access constant AVCodecContext) return access constant AVCodecDescriptor;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3652


   procedure set_codec_descriptor (avctx : access AVCodecContext; desc : access constant AVCodecDescriptor);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3653


   function get_codec_properties (avctx : access constant AVCodecContext) return unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3655


   function get_lowres (avctx : access constant AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3657


   procedure set_lowres (avctx : access AVCodecContext; val : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3658


   function get_seek_preroll (avctx : access constant AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3660


   procedure set_seek_preroll (avctx : access AVCodecContext; val : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3661


   function get_chroma_intra_matrix (avctx : access constant AVCodecContext) return access Interfaces.Unsigned_16;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3663


   procedure set_chroma_intra_matrix (avctx : access AVCodecContext; val : access Interfaces.Unsigned_16);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3664


  --*
  -- * AVProfile.
  --

   type AVProfile is record
      profile : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3670
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3671
   end record;
   pragma Convention (C_Pass_By_Copy, AVProfile);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3669

  --/< short name for the profile
   --  skipped empty struct AVCodecDefault

  --*
  -- * AVCodec.
  --

  --*
  --     * Name of the codec implementation.
  --     * The name is globally unique among encoders and among decoders (but an
  --     * encoder and a decoder can share the same name).
  --     * This is the primary way to find a codec from the user perspective.
  --

   type AVCodec is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3688
      long_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3693
      c_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3694
      id : aliased AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3695
      capabilities : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3700
      supported_framerates : access constant FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3701
      pix_fmts : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3702
      supported_samplerates : access int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3703
      sample_fmts : access FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3704
      channel_layouts : access Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3705
      max_lowres : aliased Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3706
      priv_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3707
      profiles : access constant AVProfile;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3708
      priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3717
      next : access AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3718
      init_thread_copy : access function  (arg1 : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3728
      update_thread_context : access function  (arg1 : access AVCodecContext; arg2 : access constant AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3736
      defaults : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3742
      init_static_data : access procedure  (arg1 : access AVCodec);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3747
      init : access function  (arg1 : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3749
      encode_sub : access function
           (arg1 : access AVCodecContext;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : int;
            arg4 : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3751
      encode2 : access function
           (arg1 : access AVCodecContext;
            arg2 : access AVPacket;
            arg3 : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
            arg4 : access int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3763
      decode : access function
           (arg1 : access AVCodecContext;
            arg2 : System.Address;
            arg3 : access int;
            arg4 : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3764
      close : access function  (arg1 : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3765
      send_frame : access function  (arg1 : access AVCodecContext; arg2 : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3777
      send_packet : access function  (arg1 : access AVCodecContext; arg2 : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3778
      receive_frame : access function  (arg1 : access AVCodecContext; arg2 : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3779
      receive_packet : access function  (arg1 : access AVCodecContext; arg2 : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3780
      flush : access procedure  (arg1 : access AVCodecContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3785
      caps_internal : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3790
   end record;
   pragma Convention (C_Pass_By_Copy, AVCodec);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3681

  --*
  --     * Descriptive name for the codec, meant to be more human readable than name.
  --     * You should use the NULL_IF_CONFIG_SMALL() macro to define it.
  --

  --*
  --     * Codec capabilities.
  --     * see AV_CODEC_CAP_*
  --

  --/< array of supported framerates, or NULL if any, array is terminated by {0,0}
  --/< array of supported pixel formats, or NULL if unknown, array is terminated by -1
  --/< array of supported audio samplerates, or NULL if unknown, array is terminated by 0
  --/< array of supported sample formats, or NULL if unknown, array is terminated by -1
  --/< array of support channel layouts, or NULL if unknown. array is terminated by 0
  --/< maximum value for lowres supported by the decoder
  --/< AVClass for the private context
  --/< array of recognized profiles, or NULL if unknown, array is terminated by {FF_PROFILE_UNKNOWN}
  --****************************************************************
  --     * No fields below this line are part of the public API. They
  --     * may not be used outside of libavcodec and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --

  --*
  --     * @name Frame-level threading support functions
  --     * @{
  --

  --*
  --     * If defined, called on thread contexts when they are created.
  --     * If the codec allocates writable tables in init(), re-allocate them here.
  --     * priv_data will be set to a copy of the original.
  --

  --*
  --     * Copy necessary context variables from a previous thread context to the current one.
  --     * If not defined, the next thread will start automatically; otherwise, the codec
  --     * must call ff_thread_finish_setup().
  --     *
  --     * dst and src will (rarely) point to the same context, in which case memcpy should be skipped.
  --

  --* @}
  --*
  --     * Private codec-specific defaults.
  --

  --*
  --     * Initialize codec static data, called from register().
  --

  --*
  --     * Encode data to an AVPacket.
  --     *
  --     * @param      avctx          codec context
  --     * @param      avpkt          output AVPacket (may contain a user-provided buffer)
  --     * @param[in]  frame          AVFrame containing the raw data to be encoded
  --     * @param[out] got_packet_ptr encoder sets to 0 or 1 to indicate that a
  --     *                            non-empty packet was returned in avpkt.
  --     * @return 0 on success, negative error code on failure
  --

  --*
  --     * Decode/encode API with decoupled packet/frame dataflow. The API is the
  --     * same as the  prefixed APIs (avcodec_send_frame() etc.), except
  --     * that:
  --     * - never called if the codec is closed or the wrong type,
  --     * - AVPacket parameter change side data is applied right before calling
  --     *   AVCodec->send_packet,
  --     * - if AV_CODEC_CAP_DELAY is not set, drain packets or frames are never sent,
  --     * - only one drain packet is ever passed down (until the next flush()),
  --     * - a drain AVPacket is always NULL (no need to check for avpkt->size).
  --

  --*
  --     * Flush buffers.
  --     * Will be called when seeking
  --

  --*
  --     * Internal codec capabilities.
  --     * See FF_CODEC_CAP_* in internal.h
  --

   function get_max_lowres (codec : access constant AVCodec) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3793


   --  skipped empty struct MpegEncContext

  --*
  -- * @defgroup lavc_hwaccel AVHWAccel
  -- * @{
  --

  --*
  --     * Name of the hardware accelerated codec.
  --     * The name is globally unique among encoders and among decoders (but an
  --     * encoder and a decoder can share the same name).
  --

   type AVHWAccel is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3807
      c_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3814
      id : aliased AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3821
      pix_fmt : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3828
      capabilities : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3834
      next : access AVHWAccel;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3843
      alloc_frame : access function  (arg1 : access AVCodecContext; arg2 : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3848
      start_frame : access function
           (arg1 : access AVCodecContext;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : Interfaces.Unsigned_32) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3864
      decode_slice : access function
           (arg1 : access AVCodecContext;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : Interfaces.Unsigned_32) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3878
      end_frame : access function  (arg1 : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3889
      frame_priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3898
      decode_mb : access procedure  (arg1 : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3909
      init : access function  (arg1 : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3918
      uninit : access function  (arg1 : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3926
      priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3932
      caps_internal : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3937
   end record;
   pragma Convention (C_Pass_By_Copy, AVHWAccel);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3801

  --*
  --     * Type of codec implemented by the hardware accelerator.
  --     *
  --     * See AVMEDIA_TYPE_xxx
  --

  --*
  --     * Codec implemented by the hardware accelerator.
  --     *
  --     * See AV_CODEC_ID_xxx
  --

  --*
  --     * Supported pixel format.
  --     *
  --     * Only hardware accelerated formats are supported here.
  --

  --*
  --     * Hardware accelerated codec capabilities.
  --     * see HWACCEL_CODEC_CAP_*
  --

  --****************************************************************
  --     * No fields below this line are part of the public API. They
  --     * may not be used outside of libavcodec and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --

  --*
  --     * Allocate a custom buffer
  --

  --*
  --     * Called at the beginning of each frame or field picture.
  --     *
  --     * Meaningful frame information (codec specific) is guaranteed to
  --     * be parsed at this point. This function is mandatory.
  --     *
  --     * Note that buf can be NULL along with buf_size set to 0.
  --     * Otherwise, this means the whole frame is available at this point.
  --     *
  --     * @param avctx the codec context
  --     * @param buf the frame data buffer base
  --     * @param buf_size the size of the frame in bytes
  --     * @return zero if successful, a negative value otherwise
  --

  --*
  --     * Callback for each slice.
  --     *
  --     * Meaningful slice information (codec specific) is guaranteed to
  --     * be parsed at this point. This function is mandatory.
  --     * The only exception is XvMC, that works on MB level.
  --     *
  --     * @param avctx the codec context
  --     * @param buf the slice data buffer base
  --     * @param buf_size the size of the slice in bytes
  --     * @return zero if successful, a negative value otherwise
  --

  --*
  --     * Called at the end of each frame or field picture.
  --     *
  --     * The whole picture is parsed at this point and can now be sent
  --     * to the hardware accelerator. This function is mandatory.
  --     *
  --     * @param avctx the codec context
  --     * @return zero if successful, a negative value otherwise
  --

  --*
  --     * Size of per-frame hardware accelerator private data.
  --     *
  --     * Private data is allocated with mallocz() before
  --     * AVCodecContext.get_buffer() and deallocated after
  --     * AVCodecContext.release_buffer().
  --

  --*
  --     * Called for every Macroblock in a slice.
  --     *
  --     * XvMC uses it to replace the ff_mpv_decode_mb().
  --     * Instead of decoding to raw picture, MB parameters are
  --     * stored in an array provided by the video driver.
  --     *
  --     * @param s the mpeg context
  --

  --*
  --     * Initialize the hwaccel private data.
  --     *
  --     * This will be called from ff_get_format(), after hwaccel and
  --     * hwaccel_context are set and the hwaccel private data in AVCodecInternal
  --     * is allocated.
  --

  --*
  --     * Uninitialize the hwaccel private data.
  --     *
  --     * This will be called from get_format() or close(), after hwaccel
  --     * and hwaccel_context are already uninitialized.
  --

  --*
  --     * Size of the private data to allocate in
  --     * AVCodecInternal.hwaccel_priv_data.
  --

  --*
  --     * Internal hwaccel capabilities.
  --

  --*
  -- * Hardware acceleration should be used for decoding even if the codec level
  -- * used is unknown or higher than the maximum supported level reported by the
  -- * hardware driver.
  -- *
  -- * It's generally a good idea to pass this flag unless you have a specific
  -- * reason not to, as hardware tends to under-report supported levels.
  --

  --*
  -- * Hardware acceleration can output YUV pixel formats with a different chroma
  -- * sampling than 4:2:0 and/or other than 8 bits per component.
  --

  --*
  -- * @}
  --

  --*
  -- * @defgroup lavc_picture AVPicture
  -- *
  -- * Functions for working with AVPicture
  -- * @{
  --

  --*
  -- * Picture data structure.
  -- *
  -- * Up to four components can be stored into it, the last component is
  -- * alpha.
  -- * @deprecated use AVFrame or imgutils functions instead
  --

  --/< pointers to the image data planes
   type AVPicture_data_array is array (0 .. 7) of access Interfaces.Unsigned_8;
   type AVPicture_linesize_array is array (0 .. 7) of aliased int;
   type AVPicture is record
      data : AVPicture_data_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3977
      linesize : aliased AVPicture_linesize_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3979
   end record;
   pragma Convention (C_Pass_By_Copy, AVPicture);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3975

  --/< number of bytes per line
  --*
  -- * @}
  --

   type AVSubtitleType is
     (SUBTITLE_NONE,
      SUBTITLE_BITMAP,
      SUBTITLE_TEXT,
      SUBTITLE_ASS);
   pragma Convention (C, AVSubtitleType);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:3987

  --/< A bitmap, pict will be set
  --*
  --     * Plain text, the text field must be set by the decoder and is
  --     * authoritative. ass and pict fields may contain approximations.
  --

  --*
  --     * Formatted text, the ass field must be set by the decoder and is
  --     * authoritative. pict and text fields may contain approximations.
  --

  --/< top left corner  of pict, undefined when pict is not set
   type AVSubtitleRect_data_array is array (0 .. 3) of access Interfaces.Unsigned_8;
   type AVSubtitleRect_linesize_array is array (0 .. 3) of aliased int;
   type AVSubtitleRect is record
      x : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4008
      y : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4009
      w : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4010
      h : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4011
      nb_colors : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4012
      pict : aliased AVPicture;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4019
      data : AVSubtitleRect_data_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4025
      linesize : aliased AVSubtitleRect_linesize_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4026
      c_type : aliased AVSubtitleType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4028
      text : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4030
      ass : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4037
      flags : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4039
   end record;
   pragma Convention (C_Pass_By_Copy, AVSubtitleRect);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4007

  --/< top left corner  of pict, undefined when pict is not set
  --/< width            of pict, undefined when pict is not set
  --/< height           of pict, undefined when pict is not set
  --/< number of colors in pict, undefined when pict is not set
  --*
  --     * @deprecated unused
  --

  --*
  --     * data+linesize for the bitmap of this subtitle.
  --     * Can be set for text/ass as well once they are rendered.
  --

  --/< 0 terminated plain UTF-8 text
  --*
  --     * 0 terminated ASS/SSA compatible event line.
  --     * The presentation of this is unaffected by the other values in this
  --     * struct.
  --

  -- 0 = graphics
   type AVSubtitle is record
      format : aliased Interfaces.Unsigned_16;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4043
      start_display_time : aliased Interfaces.Unsigned_32;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4044
      end_display_time : aliased Interfaces.Unsigned_32;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4045
      num_rects : aliased unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4046
      rects : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4047
      pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4048
   end record;
   pragma Convention (C_Pass_By_Copy, AVSubtitle);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4042

  -- relative to packet pts, in ms
  -- relative to packet pts, in ms
  --/< Same as packet pts, in AV_TIME_BASE
  --*
  -- * This struct describes the properties of an encoded stream.
  -- *
  -- * sizeof(AVCodecParameters) is not a part of the public ABI, this struct must
  -- * be allocated with parameters_alloc() and freed with
  -- * parameters_free().
  --

  --*
  --     * General type of the encoded data.
  --

   type AVCodecParameters is record
      codec_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4062
      codec_id : aliased AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4066
      codec_tag : aliased Interfaces.Unsigned_32;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4070
      extradata : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4080
      extradata_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4084
      format : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4090
      bit_rate : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4095
      bits_per_coded_sample : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4108
      bits_per_raw_sample : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4121
      profile : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4126
      level : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4127
      width : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4132
      height : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4133
      sample_aspect_ratio : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4142
      field_order : aliased AVFieldOrder;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4147
      color_range : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorRange;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4152
      color_primaries : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorPrimaries;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4153
      color_trc : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorTransferCharacteristic;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4154
      color_space : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVColorSpace;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4155
      chroma_location : aliased FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4156
      video_delay : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4161
      channel_layout : aliased Interfaces.Unsigned_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4168
      channels : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4172
      sample_rate : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4176
      block_align : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4183
      frame_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4187
      initial_padding : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4195
      trailing_padding : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4202
      seek_preroll : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4206
   end record;
   pragma Convention (C_Pass_By_Copy, AVCodecParameters);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4058

  --*
  --     * Specific type of the encoded data (the codec used).
  --

  --*
  --     * Additional information about the codec (corresponds to the AVI FOURCC).
  --

  --*
  --     * Extra binary data needed for initializing the decoder, codec-dependent.
  --     *
  --     * Must be allocated with malloc() and will be freed by
  --     * parameters_free(). The allocated size of extradata must be at
  --     * least extradata_size + AV_INPUT_BUFFER_PADDING_SIZE, with the padding
  --     * bytes zeroed.
  --

  --*
  --     * Size of the extradata content in bytes.
  --

  --*
  --     * - video: the pixel format, the value corresponds to enum AVPixelFormat.
  --     * - audio: the sample format, the value corresponds to enum AVSampleFormat.
  --

  --*
  --     * The average bitrate of the encoded data (in bits per second).
  --

  --*
  --     * The number of bits per sample in the codedwords.
  --     *
  --     * This is basically the bitrate per sample. It is mandatory for a bunch of
  --     * formats to actually decode them. It's the number of bits for one sample in
  --     * the actual coded bitstream.
  --     *
  --     * This could be for example 4 for ADPCM
  --     * For PCM formats this matches bits_per_raw_sample
  --     * Can be 0
  --

  --*
  --     * This is the number of valid bits in each output sample. If the
  --     * sample format has more bits, the least significant bits are additional
  --     * padding bits, which are always 0. Use right shifts to reduce the sample
  --     * to its actual size. For example, audio formats with 24 bit samples will
  --     * have bits_per_raw_sample set to 24, and format set to AV_SAMPLE_FMT_S32.
  --     * To get the original sample use "(int32_t)sample >> 8"."
  --     *
  --     * For ADPCM this might be 12 or 16 or similar
  --     * Can be 0
  --

  --*
  --     * Codec-specific bitstream restrictions that the stream conforms to.
  --

  --*
  --     * Video only. The dimensions of the video frame in pixels.
  --

  --*
  --     * Video only. The aspect ratio (width / height) which a single pixel
  --     * should have when displayed.
  --     *
  --     * When the aspect ratio is unknown / undefined, the numerator should be
  --     * set to 0 (the denominator may have any value).
  --

  --*
  --     * Video only. The order of the fields in interlaced video.
  --

  --*
  --     * Video only. Additional colorspace characteristics.
  --

  --*
  --     * Video only. Number of delayed frames.
  --

  --*
  --     * Audio only. The channel layout bitmask. May be 0 if the channel layout is
  --     * unknown or unspecified, otherwise the number of bits set must be equal to
  --     * the channels field.
  --

  --*
  --     * Audio only. The number of audio channels.
  --

  --*
  --     * Audio only. The number of audio samples per second.
  --

  --*
  --     * Audio only. The number of bytes per coded audio frame, required by some
  --     * formats.
  --     *
  --     * Corresponds to nBlockAlign in WAVEFORMATEX.
  --

  --*
  --     * Audio only. Audio frame size, if known. Required by some formats to be static.
  --

  --*
  --     * Audio only. The amount of padding (in samples) inserted by the encoder at
  --     * the beginning of the audio. I.e. this number of leading decoded samples
  --     * must be discarded by the caller to get the original audio without leading
  --     * padding.
  --

  --*
  --     * Audio only. The amount of padding (in samples) appended by the encoder to
  --     * the end of the audio. I.e. this number of decoded samples must be
  --     * discarded by the caller from the end of the stream to get the original
  --     * audio without any trailing padding.
  --

  --*
  --     * Audio only. Number of samples to skip after a discontinuity.
  --

  --*
  -- * If c is NULL, returns the first registered codec,
  -- * if c is non-NULL, returns the next registered codec after c,
  -- * or NULL if c is the last one.
  --

   function next (c : access constant AVCodec) return access AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4214


  --*
  -- * Return the LIBAVCODEC_VERSION_INT constant.
  --

   function version return unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4219


  --*
  -- * Return the libavcodec build-time configuration.
  --

   function configuration return String;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4224


  --*
  -- * Return the libavcodec license.
  --

   function license return String;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4229


  --*
  -- * Register the codec codec and initialize libavcodec.
  -- *
  -- * @warning either this function or register_all() must be called
  -- * before any other libavcodec functions.
  -- *
  -- * @see register_all()
  --

   procedure register (codec : access AVCodec);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4239


  --*
  -- * Register all the codecs, parsers and bitstream filters which were enabled at
  -- * configuration time. If you do not call this function you can select exactly
  -- * which formats you want to support, by using the individual registration
  -- * functions.
  -- *
  -- * @see register
  -- * @see register_codec_parser
  -- * @see register_bitstream_filter
  --

   procedure register_all;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4251


  --*
  -- * Allocate an AVCodecContext and set its fields to default values. The
  -- * resulting struct should be freed with free_context().
  -- *
  -- * @param codec if non-NULL, allocate private data and initialize defaults
  -- *              for the given codec. It is illegal to then call open2()
  -- *              with a different codec.
  -- *              If NULL, then the codec-specific defaults won't be initialized,
  -- *              which may result in suboptimal default settings (this is
  -- *              important mainly for encoders, e.g. libx264).
  -- *
  -- * @return An AVCodecContext filled with default values or NULL on failure.
  --

   function alloc_context3 (codec : access constant AVCodec) return access AVCodecContext;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4266


  --*
  -- * Free the codec context and everything associated with it and write NULL to
  -- * the provided pointer.
  --

   procedure free_context (avctx : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4272


  --*
  -- * @deprecated This function should not be used, as closing and opening a codec
  -- * context multiple time is not supported. A new codec context should be
  -- * allocated for each new use.
  --

   function get_context_defaults3 (s : access AVCodecContext; codec : access constant AVCodec) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4280


  --*
  -- * Get the AVClass for AVCodecContext. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see opt_find().
  --

   function get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4289


  --*
  -- * Get the AVClass for AVFrame. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see opt_find().
  --

   function get_frame_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4298


  --*
  -- * Get the AVClass for AVSubtitleRect. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see opt_find().
  --

   function get_subtitle_rect_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4306


  --*
  -- * Copy the settings of the source AVCodecContext into the destination
  -- * AVCodecContext. The resulting destination codec context will be
  -- * unopened, i.e. you are required to call open2() before you
  -- * can use this AVCodecContext to decode/encode video/audio data.
  -- *
  -- * @param dest target codec context, should be initialized with
  -- *             alloc_context3(NULL), but otherwise uninitialized
  -- * @param src source codec context
  -- * @return AVERROR() on error (e.g. memory allocation error), 0 on success
  -- *
  -- * @deprecated The semantics of this function are ill-defined and it should not
  -- * be used. If you need to transfer the stream parameters from one codec context
  -- * to another, use an intermediate AVCodecParameters instance and the
  -- * parameters_from_context() / parameters_to_context()
  -- * functions.
  --

   function copy_context (dest : access AVCodecContext; src : access constant AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4326


  --*
  -- * Allocate a new AVCodecParameters and set its fields to default values
  -- * (unknown/invalid/0). The returned struct must be freed with
  -- * parameters_free().
  --

   function parameters_alloc return access AVCodecParameters;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4334


  --*
  -- * Free an AVCodecParameters instance and everything associated with it and
  -- * write NULL to the supplied pointer.
  --

   procedure parameters_free (par : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4340


  --*
  -- * Copy the contents of src to dst. Any allocated fields in dst are freed and
  -- * replaced with newly allocated duplicates of the corresponding fields in src.
  -- *
  -- * @return >= 0 on success, a negative AVERROR code on failure.
  --

   function parameters_copy (dst : access AVCodecParameters; src : access constant AVCodecParameters) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4348


  --*
  -- * Fill the parameters struct based on the values from the supplied codec
  -- * context. Any allocated fields in par are freed and replaced with duplicates
  -- * of the corresponding fields in codec.
  -- *
  -- * @return >= 0 on success, a negative AVERROR code on failure
  --

   function parameters_from_context (par : access AVCodecParameters; codec : access constant AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4357


  --*
  -- * Fill the codec context based on the values from the supplied codec
  -- * parameters. Any allocated fields in codec that have a corresponding field in
  -- * par are freed and replaced with duplicates of the corresponding field in par.
  -- * Fields in codec that do not have a counterpart in par are not touched.
  -- *
  -- * @return >= 0 on success, a negative AVERROR code on failure.
  --

   function parameters_to_context (codec : access AVCodecContext; par : access constant AVCodecParameters) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4368


  --*
  -- * Initialize the AVCodecContext to use the given AVCodec. Prior to using this
  -- * function the context has to be allocated with alloc_context3().
  -- *
  -- * The functions find_decoder_by_name(), find_encoder_by_name(),
  -- * find_decoder() and find_encoder() provide an easy way for
  -- * retrieving a codec.
  -- *
  -- * @warning This function is not thread safe!
  -- *
  -- * @note Always call this function before using decoding routines (such as
  -- * @ref receive_frame()).
  -- *
  -- * @code
  -- * register_all();
  -- * dict_set(&opts, "b", "2.5M", 0);
  -- * codec = find_decoder(AV_CODEC_ID_H264);
  -- * if (!codec)
  -- *     exit(1);
  -- *
  -- * context = alloc_context3(codec);
  -- *
  -- * if (avcodec_open2(context, codec, opts) < 0)
  -- *     exit(1);
  -- * @endcode
  -- *
  -- * @param avctx The context to initialize.
  -- * @param codec The codec to open this context for. If a non-NULL codec has been
  -- *              previously passed to alloc_context3() or
  -- *              for this context, then this parameter MUST be either NULL or
  -- *              equal to the previously passed codec.
  -- * @param options A dictionary filled with AVCodecContext and codec-private options.
  -- *                On return this object will be filled with options that were not found.
  -- *
  -- * @return zero on success, a negative value on error
  -- * @see alloc_context3(), find_decoder(), find_encoder(),
  -- *      dict_set(), opt_find().
  --

   function open2
     (avctx : access AVCodecContext;
      codec : access constant AVCodec;
      options : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4409


  --*
  -- * Close a given AVCodecContext and free all the data associated with it
  -- * (but not the AVCodecContext itself).
  -- *
  -- * Calling this function on an AVCodecContext that hasn't been opened will free
  -- * the codec-specific data allocated in alloc_context3() with a non-NULL
  -- * codec. Subsequent calls will do nothing.
  -- *
  -- * @note Do not use this function. Use free_context() to destroy a
  -- * codec context (either open or closed). Opening and closing a codec context
  -- * multiple times is not supported anymore -- use multiple codec contexts
  -- * instead.
  --

   function close (avctx : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4424


  --*
  -- * Free all allocated data in the given subtitle struct.
  -- *
  -- * @param sub AVSubtitle to free.
  --

   procedure avsubtitle_free (sub : access AVSubtitle);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4431


  --*
  -- * @}
  --

  --*
  -- * @addtogroup lavc_packet
  -- * @{
  --

  --*
  -- * Allocate an AVPacket and set its fields to default values.  The resulting
  -- * struct must be freed using packet_free().
  -- *
  -- * @return An AVPacket filled with default values or NULL on failure.
  -- *
  -- * @note this only allocates the AVPacket itself, not the data buffers. Those
  -- * must be allocated through other means such as new_packet.
  -- *
  -- * @see new_packet
  --

   function packet_alloc return access AVPacket;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4453


  --*
  -- * Create a new packet that references the same data as src.
  -- *
  -- * This is a shortcut for packet_alloc()+av_packet_ref().
  -- *
  -- * @return newly created AVPacket on success, NULL on error.
  -- *
  -- * @see packet_alloc
  -- * @see packet_ref
  --

   function packet_clone (src : access constant AVPacket) return access AVPacket;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4465


  --*
  -- * Free the packet, if the packet is reference counted, it will be
  -- * unreferenced first.
  -- *
  -- * @param packet packet to be freed. The pointer will be set to NULL.
  -- * @note passing NULL is a no-op.
  --

   procedure packet_free (pkt : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4474


  --*
  -- * Initialize optional fields of a packet with default values.
  -- *
  -- * Note, this does not touch the data and size members, which have to be
  -- * initialized separately.
  -- *
  -- * @param pkt packet
  --

   procedure init_packet (pkt : access AVPacket);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4484


  --*
  -- * Allocate the payload of a packet and initialize its fields with
  -- * default values.
  -- *
  -- * @param pkt packet
  -- * @param size wanted payload size
  -- * @return 0 if OK, AVERROR_xxx otherwise
  --

   function new_packet (pkt : access AVPacket; size : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4494


  --*
  -- * Reduce packet size, correctly zeroing padding
  -- *
  -- * @param pkt packet
  -- * @param size new size
  --

   procedure shrink_packet (pkt : access AVPacket; size : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4502


  --*
  -- * Increase packet size, correctly zeroing padding
  -- *
  -- * @param pkt packet
  -- * @param grow_by number of bytes by which to increase the size of the packet
  --

   function grow_packet (pkt : access AVPacket; grow_by : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4510


  --*
  -- * Initialize a reference-counted packet from malloc()ed data.
  -- *
  -- * @param pkt packet to be initialized. This function will set the data, size,
  -- *        buf and destruct fields, all others are left untouched.
  -- * @param data Data allocated by malloc() to be used as packet data. If this
  -- *        function returns successfully, the data is owned by the underlying AVBuffer.
  -- *        The caller may not access the data through other means.
  -- * @param size size of data in bytes, without the padding. I.e. the full buffer
  -- *        size is assumed to be size + AV_INPUT_BUFFER_PADDING_SIZE.
  -- *
  -- * @return 0 on success, a negative AVERROR on error
  --

   function packet_from_data
     (pkt : access AVPacket;
      data : access Interfaces.Unsigned_8;
      size : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4525


  --*
  -- * @warning This is a hack - the packet memory allocation stuff is broken. The
  -- * packet is allocated if it was not really allocated.
  -- *
  -- * @deprecated Use packet_ref
  --

   function dup_packet (pkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4535


  --*
  -- * Copy packet, including contents
  -- *
  -- * @return 0 on success, negative AVERROR on fail
  --

   function copy_packet (dst : access AVPacket; src : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4541


  --*
  -- * Copy packet side data
  -- *
  -- * @return 0 on success, negative AVERROR on fail
  --

   function copy_packet_side_data (dst : access AVPacket; src : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4548


  --*
  -- * Free a packet.
  -- *
  -- * @deprecated Use packet_unref
  -- *
  -- * @param pkt packet to free
  --

   procedure free_packet (pkt : access AVPacket);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4558


  --*
  -- * Allocate new information of a packet.
  -- *
  -- * @param pkt packet
  -- * @param type side information type
  -- * @param size side information size
  -- * @return pointer to fresh allocated data or NULL otherwise
  --

   function packet_new_side_data
     (pkt : access AVPacket;
      c_type : AVPacketSideDataType;
      size : int) return access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4568


  --*
  -- * Wrap an existing array as a packet side data.
  -- *
  -- * @param pkt packet
  -- * @param type side information type
  -- * @param data the side data array. It must be allocated with the malloc()
  -- *             family of functions. The ownership of the data is transferred to
  -- *             pkt.
  -- * @param size side information size
  -- * @return a non-negative number on success, a negative AVERROR code on
  -- *         failure. On failure, the packet is unchanged and the data remains
  -- *         owned by the caller.
  --

   function packet_add_side_data
     (pkt : access AVPacket;
      c_type : AVPacketSideDataType;
      data : access Interfaces.Unsigned_8;
      size : size_t) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4584


  --*
  -- * Shrink the already allocated side data buffer
  -- *
  -- * @param pkt packet
  -- * @param type side information type
  -- * @param size new side information size
  -- * @return 0 on success, < 0 on failure
  --

   function packet_shrink_side_data
     (pkt : access AVPacket;
      c_type : AVPacketSideDataType;
      size : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4595


  --*
  -- * Get side information from packet.
  -- *
  -- * @param pkt packet
  -- * @param type desired side information type
  -- * @param size pointer for side information size to store (optional)
  -- * @return pointer to data if present or NULL otherwise
  --

   function packet_get_side_data
     (pkt : access constant AVPacket;
      c_type : AVPacketSideDataType;
      size : access int) return access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4606


   function packet_merge_side_data (pkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4611


   function packet_split_side_data (pkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4614


   function packet_side_data_name (c_type : AVPacketSideDataType) return String;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4617


  --*
  -- * Pack a dictionary for use in side_data.
  -- *
  -- * @param dict The dictionary to pack.
  -- * @param size pointer to store the size of the returned data
  -- * @return pointer to data if successful, NULL otherwise
  --

   function packet_pack_dictionary (dict : System.Address; size : access int) return access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4626


  --*
  -- * Unpack a dictionary from side_data.
  -- *
  -- * @param data data from side_data
  -- * @param size size of the data
  -- * @param dict the metadata storage dictionary
  -- * @return 0 on success, < 0 on failure
  --

   function packet_unpack_dictionary
     (data : access Interfaces.Unsigned_8;
      size : int;
      dict : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4635


  --*
  -- * Convenience function to free all the side data stored.
  -- * All the other fields stay untouched.
  -- *
  -- * @param pkt packet
  --

   procedure packet_free_side_data (pkt : access AVPacket);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4644


  --*
  -- * Setup a new reference to the data described by a given packet
  -- *
  -- * If src is reference-counted, setup dst as a new reference to the
  -- * buffer in src. Otherwise allocate a new buffer in dst and copy the
  -- * data from src into it.
  -- *
  -- * All the other fields are copied from src.
  -- *
  -- * @see packet_unref
  -- *
  -- * @param dst Destination packet
  -- * @param src Source packet
  -- *
  -- * @return 0 on success, a negative AVERROR on error.
  --

   function packet_ref (dst : access AVPacket; src : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4662


  --*
  -- * Wipe the packet.
  -- *
  -- * Unreference the buffer referenced by the packet and reset the
  -- * remaining packet fields to their default values.
  -- *
  -- * @param pkt The packet to be unreferenced.
  --

   procedure packet_unref (pkt : access AVPacket);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4672


  --*
  -- * Move every field in src to dst and reset src.
  -- *
  -- * @see packet_unref
  -- *
  -- * @param src Source packet, will be reset
  -- * @param dst Destination packet
  --

   procedure packet_move_ref (dst : access AVPacket; src : access AVPacket);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4682


  --*
  -- * Copy only "properties" fields from src to dst.
  -- *
  -- * Properties for the purpose of this function are all the fields
  -- * beside those related to the packet data (buf, data, size)
  -- *
  -- * @param dst Destination packet
  -- * @param src Source packet
  -- *
  -- * @return 0 on success AVERROR on failure.
  --

   function packet_copy_props (dst : access AVPacket; src : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4695


  --*
  -- * Convert valid timing fields (timestamps / durations) in a packet from one
  -- * timebase to another. Timestamps with unknown values (AV_NOPTS_VALUE) will be
  -- * ignored.
  -- *
  -- * @param pkt packet on which the conversion will be performed
  -- * @param tb_src source timebase, in which the timing fields in pkt are
  -- *               expressed
  -- * @param tb_dst destination timebase, to which the timing fields will be
  -- *               converted
  --

   procedure packet_rescale_ts
     (pkt : access AVPacket;
      tb_src : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      tb_dst : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4708


  --*
  -- * @}
  --

  --*
  -- * @addtogroup lavc_decoding
  -- * @{
  --

  --*
  -- * Find a registered decoder with a matching codec ID.
  -- *
  -- * @param id AVCodecID of the requested decoder
  -- * @return A decoder if one was found, NULL otherwise.
  --

   function find_decoder (id : AVCodecID) return access AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4725


  --*
  -- * Find a registered decoder with the specified name.
  -- *
  -- * @param name name of the requested decoder
  -- * @return A decoder if one was found, NULL otherwise.
  --

   function find_decoder_by_name (name : Interfaces.C.Strings.chars_ptr) return access AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4733


  --*
  -- * The default callback for AVCodecContext.get_buffer2(). It is made public so
  -- * it can be called by custom get_buffer2() implementations for decoders without
  -- * AV_CODEC_CAP_DR1 set.
  --

   function default_get_buffer2
     (s : access AVCodecContext;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      flags : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4740


  --*
  -- * Return the amount of padding in pixels which the get_buffer callback must
  -- * provide around the edge of the image for codecs which do not have the
  -- * CODEC_FLAG_EMU_EDGE flag.
  -- *
  -- * @return Required padding in pixels.
  -- *
  -- * @deprecated CODEC_FLAG_EMU_EDGE is deprecated, so this function is no longer
  -- * needed
  --

   function get_edge_width return unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4754


  --*
  -- * Modify width and height values so that they will result in a memory
  -- * buffer that is acceptable for the codec if you do not use any horizontal
  -- * padding.
  -- *
  -- * May only be used if a codec with AV_CODEC_CAP_DR1 has been opened.
  --

   procedure align_dimensions
     (s : access AVCodecContext;
      width : access int;
      height : access int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4764


  --*
  -- * Modify width and height values so that they will result in a memory
  -- * buffer that is acceptable for the codec if you also ensure that all
  -- * line sizes are a multiple of the respective linesize_align[i].
  -- *
  -- * May only be used if a codec with AV_CODEC_CAP_DR1 has been opened.
  --

   procedure align_dimensions2
     (s : access AVCodecContext;
      width : access int;
      height : access int;
      linesize_align : access int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4773


  --*
  -- * Converts AVChromaLocation to swscale x/y chroma position.
  -- *
  -- * The positions represent the chroma (0,0) position in a coordinates system
  -- * with luma (0,0) representing the origin and luma(1,1) representing 256,256
  -- *
  -- * @param xpos  horizontal chroma sample position
  -- * @param ypos  vertical   chroma sample position
  --

   function enum_to_chroma_pos
     (xpos : access int;
      ypos : access int;
      pos : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4785


  --*
  -- * Converts swscale x/y chroma position to AVChromaLocation.
  -- *
  -- * The positions represent the chroma (0,0) position in a coordinates system
  -- * with luma (0,0) representing the origin and luma(1,1) representing 256,256
  -- *
  -- * @param xpos  horizontal chroma sample position
  -- * @param ypos  vertical   chroma sample position
  --

   function chroma_pos_to_enum (xpos : int; ypos : int) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVChromaLocation;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4796


  --*
  -- * Decode the audio frame of size avpkt->size from avpkt->data into frame.
  -- *
  -- * Some decoders may support multiple frames in a single AVPacket. Such
  -- * decoders would then just decode the first frame and the return value would be
  -- * less than the packet size. In this case, decode_audio4 has to be
  -- * called again with an AVPacket containing the remaining data in order to
  -- * decode the second frame, etc...  Even if no frames are returned, the packet
  -- * needs to be fed to the decoder with remaining data until it is completely
  -- * consumed or an error occurs.
  -- *
  -- * Some decoders (those marked with AV_CODEC_CAP_DELAY) have a delay between input
  -- * and output. This means that for some packets they will not immediately
  -- * produce decoded output and need to be flushed at the end of decoding to get
  -- * all the decoded data. Flushing is done by calling this function with packets
  -- * with avpkt->data set to NULL and avpkt->size set to 0 until it stops
  -- * returning samples. It is safe to flush even those decoders that are not
  -- * marked with AV_CODEC_CAP_DELAY, then no samples will be returned.
  -- *
  -- * @warning The input buffer, avpkt->data must be AV_INPUT_BUFFER_PADDING_SIZE
  -- *          larger than the actual read bytes because some optimized bitstream
  -- *          readers read 32 or 64 bits at once and could read over the end.
  -- *
  -- * @note The AVCodecContext MUST have been opened with @ref open2()
  -- * before packets may be fed to the decoder.
  -- *
  -- * @param      avctx the codec context
  -- * @param[out] frame The AVFrame in which to store decoded audio samples.
  -- *                   The decoder will allocate a buffer for the decoded frame by
  -- *                   calling the AVCodecContext.get_buffer2() callback.
  -- *                   When AVCodecContext.refcounted_frames is set to 1, the frame is
  -- *                   reference counted and the returned reference belongs to the
  -- *                   caller. The caller must release the frame using frame_unref()
  -- *                   when the frame is no longer needed. The caller may safely write
  -- *                   to the frame if frame_is_writable() returns 1.
  -- *                   When AVCodecContext.refcounted_frames is set to 0, the returned
  -- *                   reference belongs to the decoder and is valid only until the
  -- *                   next call to this function or until closing or flushing the
  -- *                   decoder. The caller may not write to it.
  -- * @param[out] got_frame_ptr Zero if no frame could be decoded, otherwise it is
  -- *                           non-zero. Note that this field being set to zero
  -- *                           does not mean that an error has occurred. For
  -- *                           decoders with AV_CODEC_CAP_DELAY set, no given decode
  -- *                           call is guaranteed to produce a frame.
  -- * @param[in]  avpkt The input AVPacket containing the input buffer.
  -- *                   At least avpkt->data and avpkt->size should be set. Some
  -- *                   decoders might also require additional fields to be set.
  -- * @return A negative error code is returned if an error occurred during
  -- *         decoding, otherwise the number of bytes consumed from the input
  -- *         AVPacket is returned.
  -- *
  --* @deprecated Use send_packet() and receive_frame().
  --

   function decode_audio4
     (avctx : access AVCodecContext;
      frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_frame_ptr : access int;
      avpkt : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4852


  --*
  -- * Decode the video frame of size avpkt->size from avpkt->data into picture.
  -- * Some decoders may support multiple frames in a single AVPacket, such
  -- * decoders would then just decode the first frame.
  -- *
  -- * @warning The input buffer must be AV_INPUT_BUFFER_PADDING_SIZE larger than
  -- * the actual read bytes because some optimized bitstream readers read 32 or 64
  -- * bits at once and could read over the end.
  -- *
  -- * @warning The end of the input buffer buf should be set to 0 to ensure that
  -- * no overreading happens for damaged MPEG streams.
  -- *
  -- * @note Codecs which have the AV_CODEC_CAP_DELAY capability set have a delay
  -- * between input and output, these need to be fed with avpkt->data=NULL,
  -- * avpkt->size=0 at the end to return the remaining frames.
  -- *
  -- * @note The AVCodecContext MUST have been opened with @ref open2()
  -- * before packets may be fed to the decoder.
  -- *
  -- * @param avctx the codec context
  -- * @param[out] picture The AVFrame in which the decoded video frame will be stored.
  -- *             Use frame_alloc() to get an AVFrame. The codec will
  -- *             allocate memory for the actual bitmap by calling the
  -- *             AVCodecContext.get_buffer2() callback.
  -- *             When AVCodecContext.refcounted_frames is set to 1, the frame is
  -- *             reference counted and the returned reference belongs to the
  -- *             caller. The caller must release the frame using frame_unref()
  -- *             when the frame is no longer needed. The caller may safely write
  -- *             to the frame if frame_is_writable() returns 1.
  -- *             When AVCodecContext.refcounted_frames is set to 0, the returned
  -- *             reference belongs to the decoder and is valid only until the
  -- *             next call to this function or until closing or flushing the
  -- *             decoder. The caller may not write to it.
  -- *
  -- * @param[in] avpkt The input AVPacket containing the input buffer.
  -- *            You can create such packet with init_packet() and by then setting
  -- *            data and size, some decoders might in addition need other fields like
  -- *            flags&AV_PKT_FLAG_KEY. All decoders are designed to use the least
  -- *            fields possible.
  -- * @param[in,out] got_picture_ptr Zero if no frame could be decompressed, otherwise, it is nonzero.
  -- * @return On error a negative value is returned, otherwise the number of bytes
  -- * used or zero if no frame could be decompressed.
  -- *
  -- * @deprecated Use send_packet() and receive_frame().
  --

   function decode_video2
     (avctx : access AVCodecContext;
      picture : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_picture_ptr : access int;
      avpkt : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4901


  --*
  -- * Decode a subtitle message.
  -- * Return a negative value on error, otherwise return the number of bytes used.
  -- * If no subtitle could be decompressed, got_sub_ptr is zero.
  -- * Otherwise, the subtitle is stored in *sub.
  -- * Note that AV_CODEC_CAP_DR1 is not available for subtitle codecs. This is for
  -- * simplicity, because the performance difference is expect to be negligible
  -- * and reusing a get_buffer written for video codecs would probably perform badly
  -- * due to a potentially very different allocation pattern.
  -- *
  -- * Some decoders (those marked with CODEC_CAP_DELAY) have a delay between input
  -- * and output. This means that for some packets they will not immediately
  -- * produce decoded output and need to be flushed at the end of decoding to get
  -- * all the decoded data. Flushing is done by calling this function with packets
  -- * with avpkt->data set to NULL and avpkt->size set to 0 until it stops
  -- * returning subtitles. It is safe to flush even those decoders that are not
  -- * marked with CODEC_CAP_DELAY, then no subtitles will be returned.
  -- *
  -- * @note The AVCodecContext MUST have been opened with @ref open2()
  -- * before packets may be fed to the decoder.
  -- *
  -- * @param avctx the codec context
  -- * @param[out] sub The Preallocated AVSubtitle in which the decoded subtitle will be stored,
  -- *                 must be freed with avsubtitle_free if *got_sub_ptr is set.
  -- * @param[in,out] got_sub_ptr Zero if no subtitle could be decompressed, otherwise, it is nonzero.
  -- * @param[in] avpkt The input AVPacket containing the input buffer.
  --

   function decode_subtitle2
     (avctx : access AVCodecContext;
      sub : access AVSubtitle;
      got_sub_ptr : access int;
      avpkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4932


  --*
  -- * Supply raw packet data as input to a decoder.
  -- *
  -- * Internally, this call will copy relevant AVCodecContext fields, which can
  -- * influence decoding per-packet, and apply them when the packet is actually
  -- * decoded. (For example AVCodecContext.skip_frame, which might direct the
  -- * decoder to drop the frame contained by the packet sent with this function.)
  -- *
  -- * @warning The input buffer, avpkt->data must be AV_INPUT_BUFFER_PADDING_SIZE
  -- *          larger than the actual read bytes because some optimized bitstream
  -- *          readers read 32 or 64 bits at once and could read over the end.
  -- *
  -- * @warning Do not mix this API with the legacy API (like decode_video2())
  -- *          on the same AVCodecContext. It will return unexpected results now
  -- *          or in future libavcodec versions.
  -- *
  -- * @note The AVCodecContext MUST have been opened with @ref open2()
  -- *       before packets may be fed to the decoder.
  -- *
  -- * @param avctx codec context
  -- * @param[in] avpkt The input AVPacket. Usually, this will be a single video
  -- *                  frame, or several complete audio frames.
  -- *                  Ownership of the packet remains with the caller, and the
  -- *                  decoder will not write to the packet. The decoder may create
  -- *                  a reference to the packet data (or copy it if the packet is
  -- *                  not reference-counted).
  -- *                  Unlike with older APIs, the packet is always fully consumed,
  -- *                  and if it contains multiple frames (e.g. some audio codecs),
  -- *                  will require you to call receive_frame() multiple
  -- *                  times afterwards before you can send a new packet.
  -- *                  It can be NULL (or an AVPacket with data set to NULL and
  -- *                  size set to 0); in this case, it is considered a flush
  -- *                  packet, which signals the end of the stream. Sending the
  -- *                  first flush packet will return success. Subsequent ones are
  -- *                  unnecessary and will return AVERROR_EOF. If the decoder
  -- *                  still has frames buffered, it will return them after sending
  -- *                  a flush packet.
  -- *
  -- * @return 0 on success, otherwise negative error code:
  -- *      AVERROR(EAGAIN):   input is not accepted in the current state - user
  -- *                         must read output with receive_frame() (once
  -- *                         all output is read, the packet should be resent, and
  -- *                         the call will not fail with EAGAIN).
  -- *      AVERROR_EOF:       the decoder has been flushed, and no new packets can
  -- *                         be sent to it (also returned if more than 1 flush
  -- *                         packet is sent)
  -- *      AVERROR(EINVAL):   codec not opened, it is an encoder, or requires flush
  -- *      AVERROR(ENOMEM):   failed to add packet to internal queue, or similar
  -- *      other errors: legitimate decoding errors
  --

   function send_packet (avctx : access AVCodecContext; avpkt : access constant AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:4986


  --*
  -- * Return decoded output data from a decoder.
  -- *
  -- * @param avctx codec context
  -- * @param frame This will be set to a reference-counted video or audio
  -- *              frame (depending on the decoder type) allocated by the
  -- *              decoder. Note that the function will always call
  -- *              frame_unref(frame) before doing anything else.
  -- *
  -- * @return
  -- *      0:                 success, a frame was returned
  -- *      AVERROR(EAGAIN):   output is not available in this state - user must try
  -- *                         to send new input
  -- *      AVERROR_EOF:       the decoder has been fully flushed, and there will be
  -- *                         no more output frames
  -- *      AVERROR(EINVAL):   codec not opened, or it is an encoder
  -- *      other negative values: legitimate decoding errors
  --

   function receive_frame (avctx : access AVCodecContext; frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5006


  --*
  -- * Supply a raw video or audio frame to the encoder. Use receive_packet()
  -- * to retrieve buffered output packets.
  -- *
  -- * @param avctx     codec context
  -- * @param[in] frame AVFrame containing the raw audio or video frame to be encoded.
  -- *                  Ownership of the frame remains with the caller, and the
  -- *                  encoder will not write to the frame. The encoder may create
  -- *                  a reference to the frame data (or copy it if the frame is
  -- *                  not reference-counted).
  -- *                  It can be NULL, in which case it is considered a flush
  -- *                  packet.  This signals the end of the stream. If the encoder
  -- *                  still has packets buffered, it will return them after this
  -- *                  call. Once flushing mode has been entered, additional flush
  -- *                  packets are ignored, and sending frames will return
  -- *                  AVERROR_EOF.
  -- *
  -- *                  For audio:
  -- *                  If AV_CODEC_CAP_VARIABLE_FRAME_SIZE is set, then each frame
  -- *                  can have any number of samples.
  -- *                  If it is not set, frame->nb_samples must be equal to
  -- *                  avctx->frame_size for all frames except the last.
  -- *                  The final frame may be smaller than avctx->frame_size.
  -- * @return 0 on success, otherwise negative error code:
  -- *      AVERROR(EAGAIN):   input is not accepted in the current state - user
  -- *                         must read output with receive_packet() (once
  -- *                         all output is read, the packet should be resent, and
  -- *                         the call will not fail with EAGAIN).
  -- *      AVERROR_EOF:       the encoder has been flushed, and no new frames can
  -- *                         be sent to it
  -- *      AVERROR(EINVAL):   codec not opened, refcounted_frames not set, it is a
  -- *                         decoder, or requires flush
  -- *      AVERROR(ENOMEM):   failed to add packet to internal queue, or similar
  -- *      other errors: legitimate decoding errors
  --

   function send_frame (avctx : access AVCodecContext; frame : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5043


  --*
  -- * Read encoded data from the encoder.
  -- *
  -- * @param avctx codec context
  -- * @param avpkt This will be set to a reference-counted packet allocated by the
  -- *              encoder. Note that the function will always call
  -- *              frame_unref(frame) before doing anything else.
  -- * @return 0 on success, otherwise negative error code:
  -- *      AVERROR(EAGAIN):   output is not available in the current state - user
  -- *                         must try to send input
  -- *      AVERROR_EOF:       the encoder has been fully flushed, and there will be
  -- *                         no more output packets
  -- *      AVERROR(EINVAL):   codec not opened, or it is an encoder
  -- *      other errors: legitimate decoding errors
  --

   function receive_packet (avctx : access AVCodecContext; avpkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5060


  --*
  -- * @defgroup lavc_parsing Frame parsing
  -- * @{
  --

   type AVPictureStructure is
     (AV_PICTURE_STRUCTURE_UNKNOWN,
      AV_PICTURE_STRUCTURE_TOP_FIELD,
      AV_PICTURE_STRUCTURE_BOTTOM_FIELD,
      AV_PICTURE_STRUCTURE_FRAME);
   pragma Convention (C, AVPictureStructure);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5068

  --< unknown
  --< coded as top field
  --< coded as bottom field
  --< coded as frame
   type AVCodecParser;
   type AVCodecParserContext_cur_frame_offset_array is array (0 .. 3) of aliased Interfaces.Integer_64;
   type AVCodecParserContext_cur_frame_pts_array is array (0 .. 3) of aliased Interfaces.Integer_64;
   type AVCodecParserContext_cur_frame_dts_array is array (0 .. 3) of aliased Interfaces.Integer_64;
   type AVCodecParserContext_cur_frame_end_array is array (0 .. 3) of aliased Interfaces.Integer_64;
   type AVCodecParserContext_cur_frame_pos_array is array (0 .. 3) of aliased Interfaces.Integer_64;
   type AVCodecParserContext is record
      priv_data : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5076
      parser : access AVCodecParser;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5077
      frame_offset : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5078
      cur_offset : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5079
      next_frame_offset : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5081
      pict_type : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5083
      repeat_pict : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5093
      pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5094
      dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5095
      last_pts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5098
      last_dts : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5099
      fetch_timestamp : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5100
      cur_frame_start_index : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5103
      cur_frame_offset : aliased AVCodecParserContext_cur_frame_offset_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5104
      cur_frame_pts : aliased AVCodecParserContext_cur_frame_pts_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5105
      cur_frame_dts : aliased AVCodecParserContext_cur_frame_dts_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5106
      flags : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5108
      offset : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5115
      cur_frame_end : aliased AVCodecParserContext_cur_frame_end_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5116
      key_frame : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5124
      convergence_duration : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5131
      dts_sync_point : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5144
      dts_ref_dts_delta : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5159
      pts_dts_delta : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5173
      cur_frame_pos : aliased AVCodecParserContext_cur_frame_pos_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5180
      pos : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5185
      last_pos : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5190
      duration : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5197
      field_order : aliased AVFieldOrder;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5199
      picture_structure : aliased AVPictureStructure;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5209
      output_picture_number : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5217
      width : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5222
      height : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5223
      coded_width : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5228
      coded_height : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5229
      format : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5239
   end record;
   pragma Convention (C_Pass_By_Copy, AVCodecParserContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5075

  -- offset of the current frame
  -- current offset
  --                           (incremented by each parser_parse())

  -- offset of the next frame
  -- video info
  -- XXX: Put it back in AVCodecContext.
  --*
  --     * This field is used for proper frame duration computation in lavf.
  --     * It signals, how much longer the frame duration of the current frame
  --     * is compared to normal frame duration.
  --     *
  --     * frame_duration = (1 + repeat_pict) * time_base
  --     *
  --     * It is used by codecs like H.264 to display telecined material.
  --

  -- XXX: Put it back in AVCodecContext.
  -- pts of the current frame
  -- dts of the current frame
  -- private data
  --/ Set if the parser has a valid file offset
  --/< byte offset from starting packet start
  --*
  --     * Set by parser to 1 for key frames and 0 for non-key frames.
  --     * It is initialized to -1, so if the parser doesn't set this flag,
  --     * old-style fallback using AV_PICTURE_TYPE_I picture type as key frames
  --     * will be used.
  --

  --*
  --     * @deprecated unused
  --

  -- Timestamp generation support:
  --*
  --     * Synchronization point for start of timestamp generation.
  --     *
  --     * Set to >0 for sync point, 0 for no sync point and <0 for undefined
  --     * (default).
  --     *
  --     * For example, this corresponds to presence of H.264 buffering period
  --     * SEI message.
  --

  --*
  --     * Offset of the current timestamp against last timestamp sync point in
  --     * units of AVCodecContext.time_base.
  --     *
  --     * Set to INT_MIN when dts_sync_point unused. Otherwise, it must
  --     * contain a valid timestamp offset.
  --     *
  --     * Note that the timestamp of sync point has usually a nonzero
  --     * dts_ref_dts_delta, which refers to the previous sync point. Offset of
  --     * the next frame after timestamp sync point will be usually 1.
  --     *
  --     * For example, this corresponds to H.264 cpb_removal_delay.
  --

  --*
  --     * Presentation delay of current frame in units of AVCodecContext.time_base.
  --     *
  --     * Set to INT_MIN when dts_sync_point unused. Otherwise, it must
  --     * contain valid non-negative timestamp delta (presentation time of a frame
  --     * must not lie in the past).
  --     *
  --     * This delay represents the difference between decoding and presentation
  --     * time of the frame.
  --     *
  --     * For example, this corresponds to H.264 dpb_output_delay.
  --

  --*
  --     * Position of the packet in file.
  --     *
  --     * Analogous to cur_frame_pts/dts
  --

  --*
  --     * Byte position of currently parsed frame in stream.
  --

  --*
  --     * Previous frame byte position.
  --

  --*
  --     * Duration of the current frame.
  --     * For audio, this is in units of 1 / AVCodecContext.sample_rate.
  --     * For all other types, this is in units of AVCodecContext.time_base.
  --

  --*
  --     * Indicate whether a picture is coded as a frame, top field or bottom field.
  --     *
  --     * For example, H.264 field_pic_flag equal to 0 corresponds to
  --     * AV_PICTURE_STRUCTURE_FRAME. An H.264 picture with field_pic_flag
  --     * equal to 1 and bottom_field_flag equal to 0 corresponds to
  --     * AV_PICTURE_STRUCTURE_TOP_FIELD.
  --

  --*
  --     * Picture number incremented in presentation or output order.
  --     * This field may be reinitialized at the first picture of a new sequence.
  --     *
  --     * For example, this corresponds to H.264 PicOrderCnt.
  --

  --*
  --     * Dimensions of the decoded video intended for presentation.
  --

  --*
  --     * Dimensions of the coded video.
  --

  --*
  --     * The format of the coded data, corresponds to enum AVPixelFormat for video
  --     * and for enum AVSampleFormat for audio.
  --     *
  --     * Note that a decoder can have considerable freedom in how exactly it
  --     * decodes the data, so the format reported here might be different from the
  --     * one returned by a decoder.
  --

  -- several codec IDs are permitted
   type AVCodecParser_codec_ids_array is array(1..5) of int;

   type AVCodecParser is record
      codec_ids : aliased AVCodecParser_codec_ids_array;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5243
      priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5244
      parser_init : access function  (arg1 : access AVCodecParserContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5245
      parser_parse : access function
           (arg1 : access AVCodecParserContext;
            arg2 : access AVCodecContext;
            arg3 : System.Address;
            arg4 : access int;
            arg5 : access Interfaces.Unsigned_8;
            arg6 : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5251
      parser_close : access procedure  (arg1 : access AVCodecParserContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5252
      split : access function
           (arg1 : access AVCodecContext;
            arg2 : access Interfaces.Unsigned_8;
            arg3 : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5253
      next : access AVCodecParser;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5254
   end record;
   pragma Convention (C_Pass_By_Copy, AVCodecParser);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5242

  -- This callback never returns an error, a negative value means that
  --     * the frame start was in a previous packet.

   function parser_next (c : access constant AVCodecParser) return access AVCodecParser;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5257


   procedure register_codec_parser (parser : access AVCodecParser);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5259


   function parser_init (codec_id : int) return access AVCodecParserContext;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5260


  --*
  -- * Parse a packet.
  -- *
  -- * @param s             parser context.
  -- * @param avctx         codec context.
  -- * @param poutbuf       set to pointer to parsed buffer or NULL if not yet finished.
  -- * @param poutbuf_size  set to size of parsed buffer or zero if not yet finished.
  -- * @param buf           input buffer.
  -- * @param buf_size      buffer size in bytes without the padding. I.e. the full buffer
  --                        size is assumed to be buf_size + AV_INPUT_BUFFER_PADDING_SIZE.
  --                        To signal EOF, this should be 0 (so that the last frame
  --                        can be output).
  -- * @param pts           input presentation timestamp.
  -- * @param dts           input decoding timestamp.
  -- * @param pos           input byte position in stream.
  -- * @return the number of bytes of the input bitstream used.
  -- *
  -- * Example:
  -- * @code
  -- *   while(in_len){
  -- *       len = parser_parse2(myparser, AVCodecContext, &data, &size,
  -- *                                        in_data, in_len,
  -- *                                        pts, dts, pos);
  -- *       in_data += len;
  -- *       in_len  -= len;
  -- *
  -- *       if(size)
  -- *          decode_frame(data, size);
  -- *   }
  -- * @endcode
  --

   function parser_parse2
     (s : access AVCodecParserContext;
      avctx : access AVCodecContext;
      poutbuf : System.Address;
      poutbuf_size : access int;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      pts : Interfaces.Integer_64;
      dts : Interfaces.Integer_64;
      pos : Interfaces.Integer_64) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5293


  --*
  -- * @return 0 if the output buffer is a subset of the input, 1 if it is allocated and must be freed
  -- * @deprecated use AVBitStreamFilter
  --

   function parser_change
     (s : access AVCodecParserContext;
      avctx : access AVCodecContext;
      poutbuf : System.Address;
      poutbuf_size : access int;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      keyframe : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5304


   procedure parser_close (s : access AVCodecParserContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5308


  --*
  -- * @}
  -- * @}
  --

  --*
  -- * @addtogroup lavc_encoding
  -- * @{
  --

  --*
  -- * Find a registered encoder with a matching codec ID.
  -- *
  -- * @param id AVCodecID of the requested encoder
  -- * @return An encoder if one was found, NULL otherwise.
  --

   function find_encoder (id : AVCodecID) return access AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5326


  --*
  -- * Find a registered encoder with the specified name.
  -- *
  -- * @param name name of the requested encoder
  -- * @return An encoder if one was found, NULL otherwise.
  --

   function find_encoder_by_name (name : Interfaces.C.Strings.chars_ptr) return access AVCodec;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5334


  --*
  -- * Encode a frame of audio.
  -- *
  -- * Takes input samples from frame and writes the next output packet, if
  -- * available, to avpkt. The output packet does not necessarily contain data for
  -- * the most recent frame, as encoders can delay, split, and combine input frames
  -- * internally as needed.
  -- *
  -- * @param avctx     codec context
  -- * @param avpkt     output AVPacket.
  -- *                  The user can supply an output buffer by setting
  -- *                  avpkt->data and avpkt->size prior to calling the
  -- *                  function, but if the size of the user-provided data is not
  -- *                  large enough, encoding will fail. If avpkt->data and
  -- *                  avpkt->size are set, avpkt->destruct must also be set. All
  -- *                  other AVPacket fields will be reset by the encoder using
  -- *                  init_packet(). If avpkt->data is NULL, the encoder will
  -- *                  allocate it. The encoder will set avpkt->size to the size
  -- *                  of the output packet.
  -- *
  -- *                  If this function fails or produces no output, avpkt will be
  -- *                  freed using packet_unref().
  -- * @param[in] frame AVFrame containing the raw audio data to be encoded.
  -- *                  May be NULL when flushing an encoder that has the
  -- *                  AV_CODEC_CAP_DELAY capability set.
  -- *                  If AV_CODEC_CAP_VARIABLE_FRAME_SIZE is set, then each frame
  -- *                  can have any number of samples.
  -- *                  If it is not set, frame->nb_samples must be equal to
  -- *                  avctx->frame_size for all frames except the last.
  -- *                  The final frame may be smaller than avctx->frame_size.
  -- * @param[out] got_packet_ptr This field is set to 1 by libavcodec if the
  -- *                            output packet is non-empty, and to 0 if it is
  -- *                            empty. If the function returns an error, the
  -- *                            packet can be assumed to be invalid, and the
  -- *                            value of got_packet_ptr is undefined and should
  -- *                            not be used.
  -- * @return          0 on success, negative error code on failure
  -- *
  -- * @deprecated use send_frame()/avcodec_receive_packet() instead
  --

   function encode_audio2
     (avctx : access AVCodecContext;
      avpkt : access AVPacket;
      frame : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_packet_ptr : access int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5377


  --*
  -- * Encode a frame of video.
  -- *
  -- * Takes input raw video data from frame and writes the next output packet, if
  -- * available, to avpkt. The output packet does not necessarily contain data for
  -- * the most recent frame, as encoders can delay and reorder input frames
  -- * internally as needed.
  -- *
  -- * @param avctx     codec context
  -- * @param avpkt     output AVPacket.
  -- *                  The user can supply an output buffer by setting
  -- *                  avpkt->data and avpkt->size prior to calling the
  -- *                  function, but if the size of the user-provided data is not
  -- *                  large enough, encoding will fail. All other AVPacket fields
  -- *                  will be reset by the encoder using init_packet(). If
  -- *                  avpkt->data is NULL, the encoder will allocate it.
  -- *                  The encoder will set avpkt->size to the size of the
  -- *                  output packet. The returned data (if any) belongs to the
  -- *                  caller, he is responsible for freeing it.
  -- *
  -- *                  If this function fails or produces no output, avpkt will be
  -- *                  freed using packet_unref().
  -- * @param[in] frame AVFrame containing the raw video data to be encoded.
  -- *                  May be NULL when flushing an encoder that has the
  -- *                  AV_CODEC_CAP_DELAY capability set.
  -- * @param[out] got_packet_ptr This field is set to 1 by libavcodec if the
  -- *                            output packet is non-empty, and to 0 if it is
  -- *                            empty. If the function returns an error, the
  -- *                            packet can be assumed to be invalid, and the
  -- *                            value of got_packet_ptr is undefined and should
  -- *                            not be used.
  -- * @return          0 on success, negative error code on failure
  -- *
  -- * @deprecated use send_frame()/avcodec_receive_packet() instead
  --

   function encode_video2
     (avctx : access AVCodecContext;
      avpkt : access AVPacket;
      frame : access constant FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      got_packet_ptr : access int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5416


   function encode_subtitle
     (avctx : access AVCodecContext;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      sub : access constant AVSubtitle) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5419


  --*
  -- * @}
  --

  --*
  -- * @defgroup lavc_resample Audio resampling
  -- * @ingroup libavc
  -- * @deprecated use libswresample instead
  -- *
  -- * @{
  --

   --  skipped empty struct ReSampleContext

   --  skipped empty struct AVResampleContext

  --*
  -- *  Initialize audio resampling context.
  -- *
  -- * @param output_channels  number of output channels
  -- * @param input_channels   number of input channels
  -- * @param output_rate      output sample rate
  -- * @param input_rate       input sample rate
  -- * @param sample_fmt_out   requested output sample format
  -- * @param sample_fmt_in    input sample format
  -- * @param filter_length    length of each FIR filter in the filterbank relative to the cutoff frequency
  -- * @param log2_phase_count log2 of the number of entries in the polyphase filterbank
  -- * @param linear           if 1 then the used FIR filter will be linearly interpolated
  --                           between the 2 closest, if 0 the closest will be used
  -- * @param cutoff           cutoff frequency, 1.0 corresponds to half the output sampling rate
  -- * @return allocated ReSampleContext, NULL if error occurred
  --

   function audio_resample_init
     (output_channels : int;
      input_channels : int;
      output_rate : int;
      input_rate : int;
      sample_fmt_out : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      sample_fmt_in : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      filter_length : int;
      log2_phase_count : int;
      linear : int;
      cutoff : double) return System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5457


   function audio_resample
     (s : System.Address;
      output : access short;
      input : access short;
      nb_samples : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5465


  --*
  -- * Free resample context.
  -- *
  -- * @param s a non-NULL pointer to a resample context previously
  -- *          created with audio_resample_init()
  --

   procedure audio_resample_close (s : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5474


  --*
  -- * Initialize an audio resampler.
  -- * Note, if either rate is not an integer then simply scale both rates up so they are.
  -- * @param filter_length length of each FIR filter in the filterbank relative to the cutoff freq
  -- * @param log2_phase_count log2 of the number of entries in the polyphase filterbank
  -- * @param linear If 1 then the used FIR filter will be linearly interpolated
  --                 between the 2 closest, if 0 the closest will be used
  -- * @param cutoff cutoff frequency, 1.0 corresponds to half the output sampling rate
  --

   function resample_init
     (out_rate : int;
      in_rate : int;
      filter_length : int;
      log2_phase_count : int;
      linear : int;
      cutoff : double) return System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5487


  --*
  -- * Resample an array of samples using a previously configured context.
  -- * @param src an array of unconsumed samples
  -- * @param consumed the number of samples of src which have been consumed are returned here
  -- * @param src_size the number of unconsumed samples available
  -- * @param dst_size the amount of space in samples available in dst
  -- * @param update_ctx If this is 0 then the context will not be modified, that way several channels can be resampled with the same context.
  -- * @return the number of samples written in dst or -1 if an error occurred
  --

   function resample
     (c : System.Address;
      dst : access short;
      src : access short;
      consumed : access int;
      src_size : int;
      dst_size : int;
      update_ctx : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5499


  --*
  -- * Compensate samplerate/timestamp drift. The compensation is done by changing
  -- * the resampler parameters, so no audible clicks or similar distortions occur
  -- * @param compensation_distance distance in output samples over which the compensation should be performed
  -- * @param sample_delta number of output samples which should be output less
  -- *
  -- * example: resample_compensate(c, 10, 500)
  -- * here instead of 510 samples only 500 samples would be output
  -- *
  -- * note, due to rounding the actual compensation might be slightly different,
  -- * especially if the compensation_distance is large and the in_rate used during init is small
  --

   procedure resample_compensate
     (c : System.Address;
      sample_delta : int;
      compensation_distance : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5515


   procedure resample_close (c : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5517


  --*
  -- * @}
  --

  --*
  -- * @addtogroup lavc_picture
  -- * @{
  --

  --*
  -- * @deprecated unused
  --

   function avpicture_alloc
     (picture : access AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5534


  --*
  -- * @deprecated unused
  --

   procedure avpicture_free (picture : access AVPicture);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5540


  --*
  -- * @deprecated use image_fill_arrays() instead.
  --

   function avpicture_fill
     (picture : access AVPicture;
      ptr : access Interfaces.Unsigned_8;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5546


  --*
  -- * @deprecated use image_copy_to_buffer() instead.
  --

   function avpicture_layout
     (src : access constant AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int;
      dest : access unsigned_char;
      dest_size : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5553


  --*
  -- * @deprecated use image_get_buffer_size() instead.
  --

   function avpicture_get_size
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5561


  --*
  -- * @deprecated image_copy() instead.
  --

   procedure picture_copy
     (dst : access AVPicture;
      src : access constant AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      width : int;
      height : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5567


  --*
  -- * @deprecated unused
  --

   function picture_crop
     (dst : access AVPicture;
      src : access constant AVPicture;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      top_band : int;
      left_band : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5574


  --*
  -- * @deprecated unused
  --

   function picture_pad
     (dst : access AVPicture;
      src : access constant AVPicture;
      height : int;
      width : int;
      pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      padtop : int;
      padbottom : int;
      padleft : int;
      padright : int;
      color : access int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5581


  --*
  -- * @}
  --

  --*
  -- * @defgroup lavc_misc Utility functions
  -- * @ingroup libavc
  -- *
  -- * Miscellaneous utility functions related to both encoding and decoding
  -- * (or neither).
  -- * @{
  --

  --*
  -- * @defgroup lavc_misc_pixfmt Pixel formats
  -- *
  -- * Functions for working with pixel formats.
  -- * @{
  --

  --*
  -- * Utility function to access log2_chroma_w log2_chroma_h from
  -- * the pixel format AVPixFmtDescriptor.
  -- *
  -- * This function asserts that pix_fmt is valid. See pix_fmt_get_chroma_sub_sample
  -- * for one that returns a failure code and continues in case of invalid
  -- * pix_fmts.
  -- *
  -- * @param[in]  pix_fmt the pixel format
  -- * @param[out] h_shift store log2_chroma_w
  -- * @param[out] v_shift store log2_chroma_h
  -- *
  -- * @see pix_fmt_get_chroma_sub_sample
  --

   procedure get_chroma_sub_sample
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      h_shift : access int;
      v_shift : access int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5620


  --*
  -- * Return a value representing the fourCC code associated to the
  -- * pixel format pix_fmt, or 0 if no associated fourCC code can be
  -- * found.
  --

   function pix_fmt_to_codec_tag (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5627


  --*
  -- * @deprecated see get_pix_fmt_loss()
  --

   function get_pix_fmt_loss
     (dst_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5632


  --*
  -- * Find the best pixel format to convert to given a certain source pixel
  -- * format.  When converting from one pixel format to another, information loss
  -- * may occur.  For example, when converting from RGB24 to GRAY, the color
  -- * information will be lost. Similarly, other losses occur when converting from
  -- * some formats to other formats. find_best_pix_fmt_of_2() searches which of
  -- * the given pixel formats should be used to suffer the least amount of loss.
  -- * The pixel formats from which it chooses one, are determined by the
  -- * pix_fmt_list parameter.
  -- *
  -- *
  -- * @param[in] pix_fmt_list AV_PIX_FMT_NONE terminated array of pixel formats to choose from
  -- * @param[in] src_pix_fmt source pixel format
  -- * @param[in] has_alpha Whether the source pixel format alpha channel is used.
  -- * @param[out] loss_ptr Combination of flags informing you what kind of losses will occur.
  -- * @return The best pixel format to convert to or -1 if none was found.
  --

   function find_best_pix_fmt_of_list
     (pix_fmt_list : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int;
      loss_ptr : access int) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5652


  --*
  -- * @deprecated see find_best_pix_fmt_of_2()
  --

   function find_best_pix_fmt_of_2
     (dst_pix_fmt1 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      dst_pix_fmt2 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int;
      loss_ptr : access int) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5659


   function find_best_pix_fmt2
     (dst_pix_fmt1 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      dst_pix_fmt2 : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      src_pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      has_alpha : int;
      loss_ptr : access int) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5663


   function default_get_format (s : access AVCodecContext; fmt : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5666


  --*
  -- * @}
  --

  --*
  -- * @deprecated this function is not supposed to be used from outside of lavc
  --

   procedure set_dimensions
     (s : access AVCodecContext;
      width : int;
      height : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5677


  --*
  -- * Put a string representing the codec tag codec_tag in buf.
  -- *
  -- * @param buf       buffer to place codec tag in
  -- * @param buf_size size in bytes of buf
  -- * @param codec_tag codec tag to assign
  -- * @return the length of the string that would have been generated if
  -- * enough space had been available, excluding the trailing null
  -- *
  -- * @deprecated see fourcc_make_string() and fourcc2str().
  --

   function get_codec_tag_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : size_t;
      codec_tag : unsigned) return size_t;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5693


   procedure av_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      enc : access AVCodecContext;
      encode : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5696


  --*
  -- * Return a name for the specified profile, if available.
  -- *
  -- * @param codec the codec that is searched for the given profile
  -- * @param profile the profile value for which a name is requested
  -- * @return A name for the profile if found, NULL otherwise.
  --

   function get_profile_name (codec : access constant AVCodec; profile : int) return String;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5705


  --*
  -- * Return a name for the specified profile, if available.
  -- *
  -- * @param codec_id the ID of the codec to which the requested profile belongs
  -- * @param profile the profile value for which a name is requested
  -- * @return A name for the profile if found, NULL otherwise.
  -- *
  -- * @note unlike get_profile_name(), which searches a list of profiles
  -- *       supported by a specific decoder or encoder implementation, this
  -- *       function searches the list of profiles from the AVCodecDescriptor
  --

   function profile_name (codec_id : AVCodecID; profile : int) return String;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5718


   function default_execute
     (c : access AVCodecContext;
      func : access function  (arg1 : access AVCodecContext; arg2 : System.Address) return int;
      arg : System.Address;
      ret : access int;
      count : int;
      size : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5720


   function default_execute2
     (c : access AVCodecContext;
      func : access function
        (arg1 : access AVCodecContext;
         arg2 : System.Address;
         arg3 : int;
         arg4 : int) return int;
      arg : System.Address;
      ret : access int;
      count : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5721


  --FIXME func typedef
  --*
  -- * Fill AVFrame audio data and linesize pointers.
  -- *
  -- * The buffer buf must be a preallocated buffer with a size big enough
  -- * to contain the specified samples amount. The filled AVFrame data
  -- * pointers will point to this buffer.
  -- *
  -- * AVFrame extended_data channel pointers are allocated if necessary for
  -- * planar audio.
  -- *
  -- * @param frame       the AVFrame
  -- *                    frame->nb_samples must be set prior to calling the
  -- *                    function. This function fills in frame->data,
  -- *                    frame->extended_data, frame->linesize[0].
  -- * @param nb_channels channel count
  -- * @param sample_fmt  sample format
  -- * @param buf         buffer to use for frame data
  -- * @param buf_size    size of buffer
  -- * @param align       plane size sample alignment (0 = default)
  -- * @return            >=0 on success, negative error code on failure
  -- * @todo return the size in bytes required to store the samples in
  -- * case of success, at the next libavutil bump
  --

   function fill_audio_frame
     (frame : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      nb_channels : int;
      sample_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      align : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5747


  --*
  -- * Reset the internal decoder state / flush internal buffers. Should be called
  -- * e.g. when seeking or when switching to a different stream.
  -- *
  -- * @note when refcounted frames are not used (i.e. avctx->refcounted_frames is 0),
  -- * this invalidates the frames previously returned from the decoder. When
  -- * refcounted frames are used, the decoder just releases any references it might
  -- * keep internally, but the caller's reference remains valid.
  --

   procedure flush_buffers (avctx : access AVCodecContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5760


  --*
  -- * Return codec bits per sample.
  -- *
  -- * @param[in] codec_id the codec
  -- * @return Number of bits per sample or zero if unknown for the given codec.
  --

   function get_bits_per_sample (codec_id : AVCodecID) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5768


  --*
  -- * Return the PCM codec associated with a sample format.
  -- * @param be  endianness, 0 for little, 1 for big,
  -- *            -1 (or anything else) for native
  -- * @return  AV_CODEC_ID_PCM_* or AV_CODEC_ID_NONE
  --

   function get_pcm_codec (fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat; be : int) return AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5776


  --*
  -- * Return codec bits per sample.
  -- * Only return non-zero if the bits per sample is exactly correct, not an
  -- * approximation.
  -- *
  -- * @param[in] codec_id the codec
  -- * @return Number of bits per sample or zero if unknown for the given codec.
  --

   function get_exact_bits_per_sample (codec_id : AVCodecID) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5786


  --*
  -- * Return audio frame duration.
  -- *
  -- * @param avctx        codec context
  -- * @param frame_bytes  size of the frame, or 0 if unknown
  -- * @return             frame duration, in samples, if known. 0 if not able to
  -- *                     determine.
  --

   function get_audio_frame_duration (avctx : access AVCodecContext; frame_bytes : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5796


  --*
  -- * This function is the same as get_audio_frame_duration(), except it works
  -- * with AVCodecParameters instead of an AVCodecContext.
  --

   function get_audio_frame_duration2 (par : access AVCodecParameters; frame_bytes : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5802


   type AVBitStreamFilter;
   type AVBitStreamFilterContext is record
      priv_data : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5806
      filter : access constant AVBitStreamFilter;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5807
      parser : access AVCodecParserContext;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5808
      next : access AVBitStreamFilterContext;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5809
      args : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5814
   end record;
   pragma Convention (C_Pass_By_Copy, AVBitStreamFilterContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5805

  --*
  --     * Internal default arguments, used if NULL is passed to bitstream_filter_filter().
  --     * Not for access by library users.
  --

   --  skipped empty struct AVBSFInternal

  --*
  -- * The bitstream filter state.
  -- *
  -- * This struct must be allocated with bsf_alloc() and freed with
  -- * bsf_free().
  -- *
  -- * The fields in the struct will only be changed (by the caller or by the
  -- * filter) as described in their documentation, and are to be considered
  -- * immutable otherwise.
  --

  --*
  --     * A class for logging and AVOptions
  --

   type AVBSFContext is record
      class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5834
      filter : access constant AVBitStreamFilter;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5839
      internal : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5845
      priv_data : System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5851
      par_in : access AVCodecParameters;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5858
      par_out : access AVCodecParameters;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5864
      time_base_in : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5870
      time_base_out : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5876
   end record;
   pragma Convention (C_Pass_By_Copy, AVBSFContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5830

  --*
  --     * The bitstream filter this context is an instance of.
  --

  --*
  --     * Opaque libavcodec internal data. Must not be touched by the caller in any
  --     * way.
  --

  --*
  --     * Opaque filter-specific private data. If filter->priv_class is non-NULL,
  --     * this is an AVOptions-enabled struct.
  --

  --*
  --     * Parameters of the input stream. This field is allocated in
  --     * bsf_alloc(), it needs to be filled by the caller before
  --     * bsf_init().
  --

  --*
  --     * Parameters of the output stream. This field is allocated in
  --     * bsf_alloc(), it is set by the filter in bsf_init().
  --

  --*
  --     * The timebase used for the timestamps of the input packets. Set by the
  --     * caller before bsf_init().
  --

  --*
  --     * The timebase used for the timestamps of the output packets. Set by the
  --     * filter in bsf_init().
  --

   type AVBitStreamFilter is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5880
      codec_ids : access AVCodecID;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5887
      priv_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5898
      priv_data_size : aliased int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5908
      init : access function  (arg1 : access AVBSFContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5909
      filter : access function  (arg1 : access AVBSFContext; arg2 : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5910
      close : access procedure  (arg1 : access AVBSFContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5911
   end record;
   pragma Convention (C_Pass_By_Copy, AVBitStreamFilter);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5879

  --*
  --     * A list of codec ids supported by the filter, terminated by
  --     * AV_CODEC_ID_NONE.
  --     * May be NULL, in that case the bitstream filter works with any codec id.
  --

  --*
  --     * A class for the private data, used to declare bitstream filter private
  --     * AVOptions. This field is NULL for bitstream filters that do not declare
  --     * any options.
  --     *
  --     * If this field is non-NULL, the first member of the filter private data
  --     * must be a pointer to AVClass, which will be set by libavcodec generic
  --     * code to this class.
  --

  --****************************************************************
  --     * No fields below this line are part of the public API. They
  --     * may not be used outside of libavcodec and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --

  --*
  -- * Register a bitstream filter.
  -- *
  -- * The filter will be accessible to the application code through
  -- * bitstream_filter_next() or can be directly initialized with
  -- * bitstream_filter_init().
  -- *
  -- * @see register_all()
  --

   procedure register_bitstream_filter (bsf : access AVBitStreamFilter);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5925


  --*
  -- * Create and initialize a bitstream filter context given a bitstream
  -- * filter name.
  -- *
  -- * The returned context must be freed with bitstream_filter_close().
  -- *
  -- * @param name    the name of the bitstream filter
  -- * @return a bitstream filter context if a matching filter was found
  -- * and successfully initialized, NULL otherwise
  --

   function bitstream_filter_init (name : Interfaces.C.Strings.chars_ptr) return access AVBitStreamFilterContext;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5938


  --*
  -- * Filter bitstream.
  -- *
  -- * This function filters the buffer buf with size buf_size, and places the
  -- * filtered buffer in the buffer pointed to by poutbuf.
  -- *
  -- * The output buffer must be freed by the caller.
  -- *
  -- * @param bsfc            bitstream filter context created by bitstream_filter_init()
  -- * @param avctx           AVCodecContext accessed by the filter, may be NULL.
  -- *                        If specified, this must point to the encoder context of the
  -- *                        output stream the packet is sent to.
  -- * @param args            arguments which specify the filter configuration, may be NULL
  -- * @param poutbuf         pointer which is updated to point to the filtered buffer
  -- * @param poutbuf_size    pointer which is updated to the filtered buffer size in bytes
  -- * @param buf             buffer containing the data to filter
  -- * @param buf_size        size in bytes of buf
  -- * @param keyframe        set to non-zero if the buffer to filter corresponds to a key-frame packet data
  -- * @return >= 0 in case of success, or a negative error code in case of failure
  -- *
  -- * If the return value is positive, an output buffer is allocated and
  -- * is available in *poutbuf, and is distinct from the input buffer.
  -- *
  -- * If the return value is 0, the output buffer is not allocated and
  -- * should be considered identical to the input buffer, or in case
  -- * *poutbuf was set it points to the input buffer (not necessarily to
  -- * its starting address). A special case is if *poutbuf was set to NULL and
  -- * *poutbuf_size was set to 0, which indicates the packet should be dropped.
  --

   function bitstream_filter_filter
     (bsfc : access AVBitStreamFilterContext;
      avctx : access AVCodecContext;
      args : Interfaces.C.Strings.chars_ptr;
      poutbuf : System.Address;
      poutbuf_size : access int;
      buf : access Interfaces.Unsigned_8;
      buf_size : int;
      keyframe : int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5970


  --*
  -- * Release bitstream filter context.
  -- *
  -- * @param bsf the bitstream filter context created with
  -- * bitstream_filter_init(), can be NULL
  --

   procedure bitstream_filter_close (bsf : access AVBitStreamFilterContext);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5982


  --*
  -- * If f is NULL, return the first registered bitstream filter,
  -- * if f is non-NULL, return the next registered bitstream filter
  -- * after f, or NULL if f is the last one.
  -- *
  -- * This function can be used to iterate over all registered bitstream
  -- * filters.
  --

   function bitstream_filter_next (f : access constant AVBitStreamFilter) return access AVBitStreamFilter;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:5993


  --*
  -- * @return a bitstream filter with the specified name or NULL if no such
  -- *         bitstream filter exists.
  --

   function bsf_get_by_name (name : Interfaces.C.Strings.chars_ptr) return access constant AVBitStreamFilter;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6000


  --*
  -- * Iterate over all registered bitstream filters.
  -- *
  -- * @param opaque a pointer where libavcodec will store the iteration state. Must
  -- *               point to NULL to start the iteration.
  -- *
  -- * @return the next registered bitstream filter or NULL when the iteration is
  -- *         finished
  --

   function bsf_next (opaque : System.Address) return access constant AVBitStreamFilter;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6011


  --*
  -- * Allocate a context for a given bitstream filter. The caller must fill in the
  -- * context parameters as described in the documentation and then call
  -- * bsf_init() before sending any data to the filter.
  -- *
  -- * @param filter the filter for which to allocate an instance.
  -- * @param ctx a pointer into which the pointer to the newly-allocated context
  -- *            will be written. It must be freed with bsf_free() after the
  -- *            filtering is done.
  -- *
  -- * @return 0 on success, a negative AVERROR code on failure
  --

   function bsf_alloc (filter : access constant AVBitStreamFilter; ctx : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6025


  --*
  -- * Prepare the filter for use, after all the parameters and options have been
  -- * set.
  --

   function bsf_init (ctx : access AVBSFContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6031


  --*
  -- * Submit a packet for filtering.
  -- *
  -- * After sending each packet, the filter must be completely drained by calling
  -- * bsf_receive_packet() repeatedly until it returns AVERROR(EAGAIN) or
  -- * AVERROR_EOF.
  -- *
  -- * @param pkt the packet to filter. pkt must contain some payload (i.e data or
  -- * side data must be present in pkt). The bitstream filter will take ownership of
  -- * the packet and reset the contents of pkt. pkt is not touched if an error occurs.
  -- * This parameter may be NULL, which signals the end of the stream (i.e. no more
  -- * packets will be sent). That will cause the filter to output any packets it
  -- * may have buffered internally.
  -- *
  -- * @return 0 on success, a negative AVERROR on error.
  --

   function bsf_send_packet (ctx : access AVBSFContext; pkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6049


  --*
  -- * Retrieve a filtered packet.
  -- *
  -- * @param[out] pkt this struct will be filled with the contents of the filtered
  -- *                 packet. It is owned by the caller and must be freed using
  -- *                 packet_unref() when it is no longer needed.
  -- *                 This parameter should be "clean" (i.e. freshly allocated
  -- *                 with packet_alloc() or unreffed with packet_unref())
  -- *                 when this function is called. If this function returns
  -- *                 successfully, the contents of pkt will be completely
  -- *                 overwritten by the returned data. On failure, pkt is not
  -- *                 touched.
  -- *
  -- * @return 0 on success. AVERROR(EAGAIN) if more packets need to be sent to the
  -- * filter (using bsf_send_packet()) to get more output. AVERROR_EOF if there
  -- * will be no further output from the filter. Another negative AVERROR value if
  -- * an error occurs.
  -- *
  -- * @note one input packet may result in several output packets, so after sending
  -- * a packet with bsf_send_packet(), this function needs to be called
  -- * repeatedly until it stops returning 0. It is also possible for a filter to
  -- * output fewer packets than were sent to it, so this function may return
  -- * AVERROR(EAGAIN) immediately after a successful bsf_send_packet() call.
  --

   function bsf_receive_packet (ctx : access AVBSFContext; pkt : access AVPacket) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6075


  --*
  -- * Free a bitstream filter context and everything associated with it; write NULL
  -- * into the supplied pointer.
  --

   procedure bsf_free (ctx : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6081


  --*
  -- * Get the AVClass for AVBSFContext. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see opt_find().
  --

   function bsf_get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6089


  --*
  -- * Structure for chain/list of bitstream filters.
  -- * Empty list can be allocated by bsf_list_alloc().
  --

   --  skipped empty struct AVBSFList

  --*
  -- * Allocate empty list of bitstream filters.
  -- * The list must be later freed by bsf_list_free()
  -- * or finalized by bsf_list_finalize().
  -- *
  -- * @return Pointer to @ref AVBSFList on success, NULL in case of failure
  --

   function bsf_list_alloc return System.Address;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6104


  --*
  -- * Free list of bitstream filters.
  -- *
  -- * @param lst Pointer to pointer returned by bsf_list_alloc()
  --

   procedure bsf_list_free (lst : System.Address);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6111


  --*
  -- * Append bitstream filter to the list of bitstream filters.
  -- *
  -- * @param lst List to append to
  -- * @param bsf Filter context to be appended
  -- *
  -- * @return >=0 on success, negative AVERROR in case of failure
  --

   function bsf_list_append (lst : System.Address; bsf : access AVBSFContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6121


  --*
  -- * Construct new bitstream filter context given it's name and options
  -- * and append it to the list of bitstream filters.
  -- *
  -- * @param lst      List to append to
  -- * @param bsf_name Name of the bitstream filter
  -- * @param options  Options for the bitstream filter, can be set to NULL
  -- *
  -- * @return >=0 on success, negative AVERROR in case of failure
  --

   function bsf_list_append2
     (lst : System.Address;
      bsf_name : Interfaces.C.Strings.chars_ptr;
      options : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6133


  --*
  -- * Finalize list of bitstream filters.
  -- *
  -- * This function will transform @ref AVBSFList to single @ref AVBSFContext,
  -- * so the whole chain of bitstream filters can be treated as single filter
  -- * freshly allocated by bsf_alloc().
  -- * If the call is successful, @ref AVBSFList structure is freed and lst
  -- * will be set to NULL. In case of failure, caller is responsible for
  -- * freeing the structure by bsf_list_free()
  -- *
  -- * @param      lst Filter list structure to be transformed
  -- * @param[out] bsf Pointer to be set to newly created @ref AVBSFContext structure
  -- *                 representing the chain of bitstream filters
  -- *
  -- * @return >=0 on success, negative AVERROR in case of failure
  --

   function bsf_list_finalize (lst : System.Address; bsf : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6150


  --*
  -- * Parse string describing list of bitstream filters and create single
  -- * @ref AVBSFContext describing the whole chain of bitstream filters.
  -- * Resulting @ref AVBSFContext can be treated as any other @ref AVBSFContext freshly
  -- * allocated by bsf_alloc().
  -- *
  -- * @param      str String describing chain of bitstream filters in format
  -- *                 `bsf1[=opt1=val1:opt2=val2][,bsf2]`
  -- * @param[out] bsf Pointer to be set to newly created @ref AVBSFContext structure
  -- *                 representing the chain of bitstream filters
  -- *
  -- * @return >=0 on success, negative AVERROR in case of failure
  --

   function bsf_list_parse_str (str : Interfaces.C.Strings.chars_ptr; bsf : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6165


  --*
  -- * Get null/pass-through bitstream filter.
  -- *
  -- * @param[out] bsf Pointer to be set to new instance of pass-through bitstream filter
  -- *
  -- * @return
  --

   function bsf_get_null_filter (bsf : System.Address) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6174


  -- memory
  --*
  -- * Same behaviour fast_malloc but the buffer has additional
  -- * AV_INPUT_BUFFER_PADDING_SIZE at the end which will always be 0.
  -- *
  -- * In addition the whole buffer will initially and after resizes
  -- * be 0-initialized so that no uninitialized data will ever appear.
  --

   procedure fast_padded_malloc
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6185


  --*
  -- * Same behaviour fast_padded_malloc except that buffer will always
  -- * be 0-initialized after call.
  --

   procedure fast_padded_mallocz
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6191


  --*
  -- * Encode extradata length to a buffer. Used by xiph codecs.
  -- *
  -- * @param s buffer to write to; must be at least (v/255+1) bytes long
  -- * @param v size of extradata in bytes
  -- * @return number of bytes written to the buffer.
  --

   function xiphlacing (s : access unsigned_char; v : unsigned) return unsigned;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6200


  --*
  -- * Log a generic warning message about a missing feature. This function is
  -- * intended to be used internally by FFmpeg (libavcodec, libavformat, etc.)
  -- * only, and would normally not be used by applications.
  -- * @param[in] avc a pointer to an arbitrary struct of which the first field is
  -- * a pointer to an AVClass struct
  -- * @param[in] feature string containing the name of the missing feature
  -- * @param[in] want_sample indicates if samples are wanted which exhibit this feature.
  -- * If want_sample is non-zero, additional verbiage will be added to the log
  -- * message which tells the user how to report samples to the development
  -- * mailing list.
  -- * @deprecated Use avpriv_report_missing_feature() instead.
  --

   procedure log_missing_feature
     (avc : System.Address;
      feature : Interfaces.C.Strings.chars_ptr;
      want_sample : int);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6217


  --*
  -- * Log a generic warning message asking for a sample. This function is
  -- * intended to be used internally by FFmpeg (libavcodec, libavformat, etc.)
  -- * only, and would normally not be used by applications.
  -- * @param[in] avc a pointer to an arbitrary struct of which the first field is
  -- * a pointer to an AVClass struct
  -- * @param[in] msg string containing an optional message, or NULL if no message
  -- * @deprecated Use avpriv_request_sample() instead.
  --

   procedure log_ask_for_sample (avc : System.Address; msg : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6229


  --*
  -- * Register the hardware accelerator hwaccel.
  --

   procedure register_hwaccel (hwaccel : access AVHWAccel);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6235


  --*
  -- * If hwaccel is NULL, returns the first registered hardware accelerator,
  -- * if hwaccel is non-NULL, returns the next registered hardware accelerator
  -- * after hwaccel, or NULL if hwaccel is the last one.
  --

   function hwaccel_next (hwaccel : access constant AVHWAccel) return access AVHWAccel;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6242


  --*
  -- * Lock operation used by lockmgr
  --

   type AVLockOp is
     (AV_LOCK_CREATE,
      AV_LOCK_OBTAIN,
      AV_LOCK_RELEASE,
      AV_LOCK_DESTROY);
   pragma Convention (C, AVLockOp);  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6248

  --/< Create a mutex
  --/< Lock the mutex
  --/< Unlock the mutex
  --/< Free mutex resources
  --*
  -- * Register a user provided lock manager supporting the operations
  -- * specified by AVLockOp. The "mutex" argument to the function points
  -- * to a (void *) where the lockmgr should store/get a pointer to a user
  -- * allocated mutex. It is NULL upon AV_LOCK_CREATE and equal to the
  -- * value left by the last call for all other ops. If the lock manager is
  -- * unable to perform the op then it should leave the mutex in the same
  -- * state as when it was called and return a non-zero value. However,
  -- * when called with AV_LOCK_DESTROY the mutex will always be assumed to
  -- * have been successfully destroyed. If lockmgr_register succeeds
  -- * it will return a non-negative value, if it fails it will return a
  -- * negative value and destroy all mutex and unregister all callbacks.
  -- * lockmgr_register is not thread-safe, it must be called from a
  -- * single thread before any calls which make use of locking are used.
  -- *
  -- * @param cb User defined callback. lockmgr_register invokes calls
  -- *           to this callback and the previously registered callback.
  -- *           The callback will be used to create more than one mutex
  -- *           each of which must be backed by its own underlying locking
  -- *           mechanism (i.e. do not use a single static object to
  -- *           implement your lock manager). If cb is set to NULL the
  -- *           lockmgr will be unregistered.
  --

   function lockmgr_register (cb : access function  (arg1 : System.Address; arg2 : AVLockOp) return int) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6278


  --*
  -- * Get the type of the given codec.
  --

   function get_type (codec_id : AVCodecID) return FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6283


  --*
  -- * Get the name of a codec.
  -- * @return  a static string identifying the codec; never NULL
  --

   function get_name (id : AVCodecID) return String;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6289


  --*
  -- * @return a positive value if s is open (i.e. open2() was called on it
  -- * with no corresponding close()), 0 otherwise.
  --

   function is_open (s : access AVCodecContext) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6295


  --*
  -- * @return a non-zero number if codec is an encoder, zero otherwise
  --

   function is_encoder (codec : access constant AVCodec) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6300


  --*
  -- * @return a non-zero number if codec is a decoder, zero otherwise
  --

   function is_decoder (codec : access constant AVCodec) return int;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6305


  --*
  -- * @return descriptor for given codec ID or NULL if no descriptor exists.
  --

   function descriptor_get (id : AVCodecID) return access constant AVCodecDescriptor;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6310


  --*
  -- * Iterate over all codec descriptors known to libavcodec.
  -- *
  -- * @param prev previous descriptor. NULL to get the first descriptor.
  -- *
  -- * @return next descriptor or NULL after the last descriptor
  --

   function descriptor_next (prev : access constant AVCodecDescriptor) return access constant AVCodecDescriptor;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6319


  --*
  -- * @return codec descriptor with the given name or NULL if no such descriptor
  -- *         exists.
  --

   function descriptor_get_by_name (name : Interfaces.C.Strings.chars_ptr) return access constant AVCodecDescriptor;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6325


  --*
  -- * Allocate a CPB properties structure and initialize its fields to default
  -- * values.
  -- *
  -- * @param size if non-NULL, the size of the allocated struct will be written
  -- *             here. This is useful for embedding it in side data.
  -- *
  -- * @return the newly allocated struct or NULL on failure
  --

   function cpb_properties_alloc (size : access size_t) return access AVCPBProperties;  -- /usr/include/ffmpeg/libavcodec/avcodec.h:6336


  --*
  -- * @}
  --

end FFMpeg.avcodec;
