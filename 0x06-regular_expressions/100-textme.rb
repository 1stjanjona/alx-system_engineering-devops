#!/usr/bin/env ruby
# script should output: [SENDER],[RECEIVER],[FLAGS]
reg = /\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/
match = ARGV[0].scan(reg)
puts match.join(',')
