def get_binding
  binding
end

class Monk
  def initialize
    @name = "Monk-name"
  end

  def get_binding
    binding
  end
end

puts eval("self", get_binding)
puts eval("self", Monk.new.get_binding)
puts eval("self.instance_variable_get(\"@name\")", Monk.new.get_binding)

