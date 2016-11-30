require_relative './bucket_sort'
require_relative './heap_sort'
require_relative './quick_sort'
require 'benchmark'

a = []
50.times do
  a << rand(500)
end

Benchmark.bm(7) do |x|
  x.report("bucket_sort:")   { bucket_sort(a) }
  x.report("heap_sort:") { heap_sort(a) }
  x.report("quick_sort:")  { quick_sort(a, 0, a.length - 1) }
end