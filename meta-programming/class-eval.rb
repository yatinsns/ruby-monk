class Monk
  def zen=(magic)
    @zen = magic
  end
end

old = Monk.new

Monk.class_eval("def initialize; @zen = 42; end")
Monk.class_eval("def zen; @zen; end")

less_old = Monk.new

puts "from the old instance: #{old.zen}"
puts "from the new instance: #{less_old.zen}"

old.zen = 43
puts "from the old instance, with @zen set: #{old.zen}"
