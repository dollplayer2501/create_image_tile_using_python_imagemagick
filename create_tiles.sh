#!/bin/bash

option_gap_size=20
option_gap_color='#72170faa'

option_resize_1='300x'
option_resize_2='x100'
option_resize_3='150x'


#
# 6 image files
#
#  +-----+--+
#  |    6| 1|
#  |     |  |
#  |     +--+
#  |     | 2|
#  |     |  |
#  +--+--+--+
#  | 5| 4| 3|
#  |  |  |  |
#  +--+--+--+

python3 ./create_tiles.py \
  ./images/IMG_1709.png \
  ./images/IMG_1794.png \
  ./images/IMG_2300.png \
  ./images/IMG_2443.png \
  ./images/IMG_2811.png \
  ./images/IMG_3038.png \
  ./IMG_6tiles..large.png \
  --tyling_type 6tiles \
  --gap_size $option_gap_size \
  --gap_color $option_gap_color

magick ./IMG_6tiles..large.png -resize $option_resize_1 ./IMG_6tiles..thumb.png


#
# 5 image files
#
#  +-----+---+
#  |    5|  1|
#  |     |   |
#  |     |   |
#  |     +---+
#  +--+--+  2|
#  | 4| 3|   |
#  |  |  |   |
#  +--+--+---+

python3 ./create_tiles.py \
  ./images/IMG_1709.png \
  ./images/IMG_1794.png \
  ./images/IMG_2300.png \
  ./images/IMG_2443.png \
  ./images/IMG_2811.png \
  ./IMG_5tiles..large.png \
  --tyling_type 5tiles \
  --gap_size $option_gap_size \
  --gap_color $option_gap_color

magick ./IMG_5tiles..large.png -resize $option_resize_1 ./IMG_5tiles..thumb.png


#
# 4 image files
#
#  +---+---+
#  |  4|  1|
#  +---+---+
#  |  3|  2|
#  +---+---+

python3 ./create_tiles.py \
  ./images/IMG_1709.png \
  ./images/IMG_1794.png \
  ./images/IMG_2300.png \
  ./images/IMG_2443.png \
  ./IMG_4tiles..large.png \
  --tyling_type 4tiles \
  --gap_size $option_gap_size \
  --gap_color $option_gap_color

magick ./IMG_4tiles..large.png -resize $option_resize_1 ./IMG_4tiles..thumb.png


#
# landscape
#
#  +---+---+...+---+
#  |  1|  2|   |  n|
#  +---+---+...+---+

python3 ./create_tiles.py \
  ./images/IMG_1709.png \
  ./images/IMG_1794.png \
  ./images/IMG_2300.png \
  ./IMG_landscape..large.png \
  --tyling_type landscape \
  --gap_size $option_gap_size \
  --gap_color $option_gap_color

magick ./IMG_landscape..large.png -resize $option_resize_2 ./IMG_landscape..thumb.png


#
# portrait
#
#  +---+
#  |  1|
#  +---+
#  |  2|
#  +---+
#  .   .
#  +---+
#  |  n|
#  +---+

python3 ./create_tiles.py \
  ./images/IMG_1709.png \
  ./images/IMG_1794.png \
  ./images/IMG_2300.png \
  ./IMG_portrait..large.png \
  --tyling_type portrait \
  --gap_size $option_gap_size \
  --gap_color $option_gap_color

magick ./IMG_portrait..large.png -resize $option_resize_3 ./IMG_portrait..thumb.png
