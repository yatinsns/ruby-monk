class String
  def method_missing(sym, *args, &blk)
    puts "#{sym} not found"
  end
end

"cat".unknown_method
