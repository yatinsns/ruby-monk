class Array
  def foldl(method)
    inject {|result, i| result ? result.send(method, i) : i}
  end
end

puts [1000.0, 200.0, 50.0].foldl("/")

class SetInStone
end

class SetInStone
  def everything_changes
    "Wait, what? You just added a methd to me!"
  end
end

puts SetInStone.new.everything_changes

class String
  def words
    self.split
  end
end

puts "one two three".words
