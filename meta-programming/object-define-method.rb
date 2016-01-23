class Object
  def method_missing(sym, *args, &block)
    s = sym.to_s
    puts "Undefined method #{s} called."
    puts "Creating method..."
    self.class.send(:define_method, s) do
      puts "Method #{s} called"
    end
  end
end

[1, 2, 3].unknown_method
[1, 2, 3].unknown_method
