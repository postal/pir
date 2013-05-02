#!/usr/bin/perl
use warnings;
use strict;

use RRDs;

my $DB    = "motion.rrd";
my $value = `sudo /home/pi/motion/motion.py`;
my $update = `/usr/bin/rrdtool update /home/pi/motion/motion.rrd N:$value`;
if ( $? == -1 )
{
  print "command failed: $!\n";
}
else
{
  print "command exited with value $value";
}

#RRDs::update('/home/pi/motion/motion.rrd', "N:$value") or die "Cannot update rrd ($!)";
#print $test;
#RRDs::graph("load.png",
#     "--vertical-label=Motion detection",
#     "--start=-1h" ,
#     "--end=" . time(),
#     "DEF:motion=$DB:motion:MAX",
#     "LINE2:motion#FF0000") or
#         die "graph failed ($RRDs::error)";
#my $rrd_out = `/usr/bin/rrdtool update  /home/pi/temperature/rPItemp.rrd N:$motion`;

