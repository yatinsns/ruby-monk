def monk(arg1, arg2)
  "Monks"
end

mo = self.method(:monk)
puts mo

def monk1(arg1, *args2)
  "Monks" + arg1 + args2.first
end

mo1 = self.method(:monk1)

puts "Arity"
p mo1.arity

puts "Parameters"
p mo1.parameters

class Monastery
  def monks(arg1, arg2)
    "Monks" + arg1 + arg2
  end
end

mo2 = Monastery.new.method(:monks)

puts "Receiver --"
p mo2.receiver

puts

puts "Owner --"
p mo2.owner


