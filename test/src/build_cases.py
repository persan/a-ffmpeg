import os
import glob
from os.path import *
import re

TEST_CASE_SPEC = """with aunit;
package %(testunit)s is
    type AUnit.Test_Cases.Test_Case with
       null;
    end record;

end %(testunit)s;
"""

TEST_CASE_BODY = """with aunit;
package body %(testunit)s is

end %(testunit)s;
"""


def generate(unitundertest, testunit):
    pass


def getpackagename(path):
    with open(path) as inf:
        for line in inf:
            line = line.strip()
            matches = re.match(r"^package\s+(\S+)\s+is.*", line)
            if matches:
                return matches.group(1)


# for i in glob.glob("../src/gen/ffmpeg-low_level-ffmpeg_*_h.ads"):
for i in glob.glob("../src/gen/ffmpeg-low_level-ffmpeg_*avformat_h.ads"):
    testname = splitext(basename(i))[0].split("_")[-2]
    testunit = "Ffmpeg.Tests.%s" % testname
    unitundertest = getpackagename(i)
    generate(unitundertest, testunit)
