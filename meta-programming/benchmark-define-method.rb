require 'benchmark'

class Monk
  eval "def zen; end"

  define_method(:zen_block) {}
end

monk = Monk.new

Benchmark.bmbm do |x|
  x.report("eval zen: ") {10_000.times { monk.zen }}
  x.report("define_method zen: ") {10_000.times { monk.zen_block }}
end
