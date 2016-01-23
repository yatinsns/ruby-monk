class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end

  def sym
    @sym
  end

  def args
    @args
  end

  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize(enemy_agent)
    @method_calls = []
    @enemy_agent = enemy_agent
  end

  def method_missing(sym, *args, &block)
    @method_calls << MethodCall.new(sym, args)
    @enemy_agent.send(sym.to_s, *args)
  end

  def method_called?(sym, *args)
    @method_calls.include?(MethodCall.new(sym, args))
  end
end

Spy.new.hello

