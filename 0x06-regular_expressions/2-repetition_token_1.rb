#!/usr/bin/env ruby
# regular expression that will match the cases
reg = /hb?tn/
match = ARGV[0].scan(reg)
puts match.join
