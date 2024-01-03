#!/usr/bin/env ruby
# regular expression must match School
reg = /School/
match = ARGV[0].scan(reg)
puts match.join
