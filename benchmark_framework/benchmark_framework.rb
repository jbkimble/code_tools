require 'benchmark'
require 'code_to_benchmark'
require 'pry'
require 'gruff'

TEN = 10
HUNDRED = 100
THOUSAND = 1_000
TEN_THOUSAND = 10_000
HUNDRED_THOUSAND = 100_000
MILLION = 1_000_000
TEN_MILLION = 10_000_000

# For comparing code that performs the same function

# Benchmark.bm(7) do |x|
#   x.report('report_label_1') { MILLION.times { some_code_to_execute } }
#   x.report('report_label_2') { MILLION.times { some_code_to_execute } }
#   x.report('report_label_3') { MILLION.times { some_code_to_execute } }
#   x.report('report_label_4') { MILLION.times { some_code_to_execute } }
# end

# For testing O(n)

graph_points = nil
Benchmark.bm(7) do |x|
  x.report('10') { TEN.times { 1 + 1 } }
  x.report('100') { HUNDRED.times { 1 + 1 } }
  x.report('1,000') { THOUSAND.times { 1 + 1 } }
  x.report('10,000') { TEN_THOUSAND.times { 1 + 1 } }
  x.report('100,000') { HUNDRED_THOUSAND.times { 1 + 1 } }
  x.report('1,000,000') { MILLION.times { 1 + 1 } }
  x.report('10,000,000') { TEN_MILLION.times { 1 + 1 } }
  graph_points = [ 1, x.list[1].real / x.list[0].real,
                  x.list[2].real / x.list[0].real, x.list[3].real / x.list[0].real,
                  x.list[4].real / x.list[0].real, x.list[5].real / x.list[0].real,
                  x.list[6].real / x.list[0].real ]
end


g = Gruff::Line.new
g.title = 'Graph of Big O'
g.labels = { 0 => "TEN", 1 => 'HUNDRED', 2 => 'THOUSAND', 3 => 'TEN THOUSAND',
            4 => 'HUNDRED THOUSAND', 5 => 'MILLION', 6 => 'TEN MILLION' }

g.data('first', graph_points)
g.write('big_o_graph.png')
