#!/usr/bin/env ruby
# regular expression that will match the cases
reg = /hbt*n/
match = ARGV[0].scan(reg)
puts match.join
