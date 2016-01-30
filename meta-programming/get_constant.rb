A_CONSTANT = 42
puts Module.const_get('A_CONSTANT')

zen = 42

class This
end

class That
end

if zen == 42
  puts Module.const_get('This').new
else
  puts Module.const_get('That').new
end


class Monk
  ZEN = 42
end

puts Monk.const_get('ZEN')

class Abc
  def initialize
    @zen = 33
  end
end

puts Abc.new.instance_variable_get("@zen")
