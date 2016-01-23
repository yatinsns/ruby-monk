A_CONSTANT = 42
p Module.const_get('A_CONSTANT')

zen = 42

class This
end

class That
end

if zen == 42
  p Module.const_get('This').new
else
  p Module.const_get('That').new
end

monk = Class.new
monk.class_eval do
  def zen
    42
  end
end

#p Module.const_get('monk').new.zen

class Monk
  ZEN = 42
end
p Monk.const_get('ZEN')

class Monk1
  def initialize
    @zen = 42
  end
end


p Monk.new.instance_variable_get("@zen")

def inspect_instance_variable(class_name, variable)
  Module.const_get(class_name).new.instance_variable_get("@#{variable}")
end

puts inspect_instance_variable("Monk1", "@zen")



