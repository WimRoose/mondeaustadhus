#!/bin/bash

# eerst renamen
# !!! zet framerateoptie in het begin, anders geen effect 

avconv -r 8 -f image2 -i %04d.png -vcodec h264 -crf 1 out_8.mov
