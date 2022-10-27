module MyEnumerable
  def all?
    elts = []
    list.each { |n| elts << n if yield n }
    puts elts.length == list.length
  end

  def any?
    elts = []
    list.each { |n| elts << n if yield n }
    puts !elts.empty?
  end

  def filter
    elts = []
    list.each { |n| elts << n if yield n }
    p elts
  end
end
