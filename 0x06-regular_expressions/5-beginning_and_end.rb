#!/usr/bin/env ruby
# regular expression must be exactly matching a string that starts with h 
# ends with n and can have any single character in between
reg = /h.n/
match = ARGV[0].scan(reg)
puts match.join
