import os
import glob
from os.path import *
import re

MAIN="""with Ffmpeg.Tests.Main_Generic;
with %(suit_name)s;
procedure %(name)s is new Ffmpeg.Tests.Main_Generic (Suits.Suit);"""
MAIN_NAME="Ffmpeg.%(name)s.Tests.Main"

SUIT="""with Ffmpeg.Tests.Suits_Generic;
package %(name)s is new Ffmpeg.Tests.Suits_Generic (Test_Case);"""
SUIT_NAME="""FFMpeg.%(name)s.Tests.Suits"""


def ada2file(name):
    return name.lower().replace(".", "-") + ".ads"


def write(path, data):
    if not exists(path):
        with open(path, "w") as outf:
            outf.write(data)

for i in glob.glob("src/tests/*.ads"):
    i = splitext(basename(i))[0].split("-")[1]
    if i != "tests":
        suit_name = SUIT_NAME % {"name": i}
        main_name = MAIN_NAME % {"name": i}
        suit = SUIT % {"name": suit_name}
        main = MAIN % {"name": main_name, "suit_name": suit_name}
        write(join("src", ada2file(main_name)), main)
        write(join("src", ada2file(suit_name)), suit)
