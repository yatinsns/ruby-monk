#!/usr/bin env ruby

class String
  def words
    self.split
  end
end

text = "Hello World! Welcome to meta programming"
print text.split

