#!/usr/bin/env ruby
# regular expression that will match the cases
reg = /hbt{1,4}n/
match = ARGV[0].scan(reg)
puts match.join
