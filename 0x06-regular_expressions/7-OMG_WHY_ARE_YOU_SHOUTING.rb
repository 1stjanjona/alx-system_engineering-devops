#!/usr/bin/env ruby
# regular expression must be only matching: capital letters
reg = /[A-Z]/
capital = ARGV[0].scan(reg)
puts capital.join
