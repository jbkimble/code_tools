require 'benchmark'
require 'pry'

TEN = 10
HUNDRED = 100
THOUSAND = 1_000
TEN_THOUSAND = 10_000
HUNDRED_THOUSAND = 100_000
MILLION = 1_000_000
TEN_MILLION = 10_000_000

Benchmark.bm(7) do |x|
  x.report('report_label_1') { MILLION.times { some_code_to_execute } }
  x.report('report_label_2') { MILLION.times { some_code_to_execute } }
  x.report('report_label_3') { MILLION.times { some_code_to_execute } }
  x.report('report_label_4') { MILLION.times { some_code_to_execute } }
end

# For testing O(n)

# Benchmark.bm(7) do |x|
#   x.report('10') { TEN.times { 1 + 1 } }
#   x.report('100') { HUNDRED.times { 1 + 1 } }
#   x.report('1,000') { THOUSAND.times { 1 + 1 } }
#   x.report('10,000') { TEN_THOUSAND.times { 1 + 1 } }
#   x.report('100,000') { HUNDRED_THOUSAND.times { 1 + 1 } }
#   x.report('1,000,000') { MILLION.times { 1 + 1 } }
#   x.report('10,000,000') { TEN_MILLION.times { 1 + 1 } }
#   binding.pry
# end

#
# class Something
#   def method_to_test_1
#   end
#
#   def method_to_test_2
#   end
# end
