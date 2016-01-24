class Calculate
end


class Symbol
  def for(&block)
    if self == :meditate
      Calculate.new.instance_eval(&block)
    end
  end
end

:meditate.for do
  puts "5 seconds"
end

class Monks
  class << self
    def should(&block)
      self.new.instance_eval(&block)
    end
  end
end

Monks.should do
  :meditate.for do
    puts "10 seconds"
  end
end
