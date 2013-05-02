#!/bin/bash
RRDPATH="/home/pi/motion/"
RAWCOLOUR="#FF0000"
TRENDCOLOUR="#0000FF"

#hour
rrdtool graph --disable-rrdtool-tag --imgformat SVG $RRDPATH/hour.svg --start -6h \
DEF:motion=$RRDPATH/motion.rrd:motion:MAX \
LINE1:motion$RAWCOLOUR:"Bewegungsmelder im HWR - letzte Stunde" \

#day
rrdtool graph --disable-rrdtool-tag --imgformat SVG $RRDPATH/day.svg --start -1d \
DEF:motion=$RRDPATH/motion.rrd:motion:MAX \
LINE1:motion$RAWCOLOUR:"Bewegungsmelder im HWR - letzter Tag" \

#week
rrdtool graph --disable-rrdtool-tag --imgformat SVG $RRDPATH/week.svg --start -1w \
DEF:motion=$RRDPATH/motion.rrd:motion:MAX \
LINE1:motion$RAWCOLOUR:"Bewegungsmelder im HWR - letzte Woche" \

#month
rrdtool graph --disable-rrdtool-tag --imgformat SVG $RRDPATH/month.svg --start -1m \
DEF:motion=$RRDPATH/motion.rrd:motion:MAX \
LINE1:motion$RAWCOLOUR:"Bewegungsmelder im HWR - letzten Monat" \


