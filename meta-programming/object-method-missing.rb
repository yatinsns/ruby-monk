class Object
  def method_missing(symbol, *args, &block)
    puts "Unknown method called"
  end
end

[1, 2, 3].unknown_method
[1, 2, 3].unknown_method("hello")
[1, 2, 3].unknown_method("hello") {puts "hello"}
