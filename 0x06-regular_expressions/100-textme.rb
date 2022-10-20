#!/usr/bin/env ruby
$stdout.sync = true
print ARGV[0].scan(/from:(\+?\w*)/).join
print ","
print ARGV[0].scan(/to:(\+?\d*)/).join
print ","
puts ARGV[0].scan(/flags:([:\-0-9]*)/).join
