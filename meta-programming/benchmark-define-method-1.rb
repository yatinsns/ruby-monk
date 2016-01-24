require 'benchmark'

class Monk
  def with_eval(unique_label)
    eval "def zen_#{unique_label}; end"
  end

  def self.with_define_method(unique_label)
    define_method("zen_block_#{unique_label}") {}
  end
end

monk = Monk.new

Benchmark.bmbm do |x|
  x.report("eval zen:") do 
    2000.times { |i| monk.with_eval(i) }
  end

  x.report("define_method zen:") do
    2000.times { |i| Monk.with_define_method(i) }
  end
end

