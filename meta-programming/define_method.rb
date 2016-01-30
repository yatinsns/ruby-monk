class Monk
  ["instance_method1", "instance_method2"].each do |action|
    define_method(action) do
      "Called #{action}"
    end
  end
end

monk = Monk.new
puts monk.instance_method1
puts monk.instance_method2
