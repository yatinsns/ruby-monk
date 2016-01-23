class Array
  def foldl(method)
    inject {|result, i| result ? result.send(method, i) : i}
  end

  def foldr(method)
    reverse.inject {|result, i| result ? result.send(method, i) : i}
  end
end

puts ["hello", "world", "!"].foldl("+")
puts ["hello", "world", "!"].foldr("+")
