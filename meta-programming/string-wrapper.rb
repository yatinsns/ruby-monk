class StringWrapper
  def initialize(str)
    @str = str
  end

  def perform(action)
    @str.send(action)
  end
end

str_wrapper = StringWrapper.new("Hello World")
puts str_wrapper.perform("length")
puts str_wrapper.perform("split")
