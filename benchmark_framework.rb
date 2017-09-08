 # A simple plug and play framework for testing speed of different bits of ruby code

require 'benchmark'
require 'pry'

# Below is what the output in the terminal will look like

#             user     system      total        real
# [0]       0.230000   0.000000   0.230000 (  0.237836)
# sub       0.580000   0.010000   0.590000 (  0.593332)
# gsub      2.260000   0.050000   2.310000 (  2.331633)

# first_column: the label for the method/code you are testing
# user: user CPU time
# system: system CPU time
# total: system CPU time + user CPU time
# real: Elapsed real time in seconds


# HUNDRED_THOUSAND = 100_000
MILLION = 1_000_000
# TEN_MILLION = 10_000_000

Benchmark.bm(7) do |x|
  # x.report('report_label') { MILLION.times { some_code_to_execute } }
  x.report('[0]') { MILLION.times { "[12,23,987,43"[0] = '' } }
  x.report('sub') { MILLION.times { "[12,23,987,43".sub(/^\[+/, "") } }
  x.report('gsub') { MILLION.times { "[12,23,987,43".gsub(/^\[/, "") } }
end

# testing O(n)
# Benchmark.bm(7) do |x|
#   x.report('[0]') { ten_million.times { "[12,23,987,43"[0] = '' } }
#   x.report('sub') { ten_million.times { "[12,23,987,43".sub(/^\[+/, "") } }
#   x.report('gsub') { ten_million.times { "[12,23,987,43".gsub(/^\[/, "") } }
#   x.report('[1..-1]') { ten_million.times { "[12,23,987,43"[1..-1] } }
#   x.report('slice') { ten_million.times { "[12,23,987,43".slice!(0) } }
#   x.report('length') { ten_million.times { "[12,23,987,43"[1..STR.length] } }
#   x.report('reverse') { ten_million.times { "[12,23,987,43".reverse.chop.reverse } }
# end

#
# class Something
#   def method_to_test_1
#   end
#
#   def method_to_test_2
#   end
# end
