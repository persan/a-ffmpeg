GENFLAFS=-I/usr/include/ffmpeg/

all:compile test

compile:
	gprbuild -p -P ffmpeg
# INSTALFLAGS=--prefix=${CURDIR}/_
install:
	gprinstall -p -P ffmpeg ${INSTALFLAGS}

uninstall:
	gprinstall -p -P ffmpeg ${INSTALFLAGS} --uninstall

gen:
	rm -rf .gen; mkdir -p .gen
	echo "extern \"C\" {" >.gen/gen.cc
	echo "#include <libavcodec/avcodec.h>" >>.gen/gen.cc
	echo "#include <libavdevice/avdevice.h>" >>.gen/gen.cc
	echo "#include <libavfilter/avfilter.h>" >>.gen/gen.cc
	echo "#include <libavformat/avformat.h>" >>.gen/gen.cc
	echo "#include <libavresample/avresample.h>" >>.gen/gen.cc
	echo "#include <libavutil/avutil.h>" >>.gen/gen.cc
	echo "#include <libpostproc/postprocess.h>" >>.gen/gen.cc
	echo "#include <libswresample/swresample.h>" >>.gen/gen.cc
	echo "#include <libswscale/swscale.h>" >>.gen/gen.cc
	echo "}"  >>.gen/gen.cc
	
	cd .gen; gcc -c gen.cc ${GENFLAFS} -fdump-ada-spec -fada-spec-parent=FFMpeg.Low_Level -C
	rm -rf src/gen;mkdir -p src/gen
	cp .gen/*low_level-ffmpeg_*.ads src/gen/
	sed -f sed/all.sed src/gen/*.ads -i
	gprbuild -p -k -P ffmpeg

test:
	${MAKE} -C tests
