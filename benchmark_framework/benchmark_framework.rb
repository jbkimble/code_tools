require 'benchmark'
require './code_to_benchmark'

TEN = 10
HUNDRED = 100
THOUSAND = 1_000
TEN_THOUSAND = 10_000
HUNDRED_THOUSAND = 100_000
MILLION = 1_000_000
TEN_MILLION = 10_000_000

################## For comparing code that performs the same function ##########

Benchmark.bm(7) do |x|
  x.report('report_label_1') { MILLION.times { some_code_to_execute } }
  x.report('report_label_2') { MILLION.times { some_code_to_execute } }
  x.report('report_label_3') { MILLION.times { some_code_to_execute } }
  x.report('report_label_4') { MILLION.times { some_code_to_execute } }
end

################## For testing O(n) ############################################

# execution_time_increase_rates = Array.new
# Benchmark.bm(7) do |x|
#   x.report('10') { TEN.times { 1 + 1 } }
#   x.report('100') { HUNDRED.times { 1 + 1 } }
#   x.report('1,000') { THOUSAND.times { 1 + 1 } }
#   x.report('10,000') { TEN_THOUSAND.times { 1 + 1 } }
#   x.report('100,000') { HUNDRED_THOUSAND.times { 1 + 1 } }
#   x.report('1,000,000') { MILLION.times { 1 + 1 } }
#   x.report('10,000,000') { TEN_MILLION.times { 1 + 1 } }
#   baseline = x.list[0].real
#   previous_rate_of_increase = 1
#   x.list.each do |real_time|
#     execution_time_increase_rates << 'x' + ((real_time.real / baseline) / previous_rate_of_increase).to_s[0..3]
#     previous_rate_of_increase = (real_time.real / baseline)
#   end
#   nil
# end
#
# puts 'Rate of increase in execution time: '+ execution_time_increase_rates.to_s
