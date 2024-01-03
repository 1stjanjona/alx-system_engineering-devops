#!/usr/bin/env ruby
# regular expression must match a 10 digit phone number
reg = /^[0-9]{10}$/
match = ARGV[0].scan(reg)
puts match.join
