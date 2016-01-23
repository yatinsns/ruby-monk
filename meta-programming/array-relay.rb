class Array
  def relay(data_type)
    map {|element| element.send("to_" + data_type[0])}
  end
end

print [1, 2, 3].relay("string")
print "\n"
print ["1", "2", "3"].relay("int")

