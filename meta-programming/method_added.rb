class Dojo
  @@methods_added = []
  @@singleton_methods_added = []

  def self.methods_added
    @@methods_added
  end

  def self.method_added(method_name)
    puts "#{method_name} added to #{self}"
    @@methods_added << method_name
  end

  def self.singleton_methods_added
    @@singleton_methods_added
  end

  def self.singleton_method_added(method_name)
    puts "Singleton method #{method_name} added"
    @@singleton_methods_added << method_name
  end

  def a_kata
  end

  def another_kata
  end
end

class Dojo
  def self.abc
  end
end

d = Dojo.new
def d.new_singleton_method
  puts "Hello World"
end


