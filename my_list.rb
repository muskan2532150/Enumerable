require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*args)
    @list = []
    args.each { |arg| @list << arg }
  end

  attr_reader :list

  def each
    yield "<MyList: @list=#{@list}>"
  end
end

list = MyList.new(1, 2, 3, 4)
# puts list.list

list.each { |n| puts n }

# Test #all?
list.all? { |e| e < 5 }
# => true
list.all? { |e| e > 5 }
# => false

# Test #any?
list.any? { |e| e == 2 }
# => true
list.any? { |e| e == 5 }
# => false

# Test #filter
list.filter(&:even?)
# => [2, 4]
