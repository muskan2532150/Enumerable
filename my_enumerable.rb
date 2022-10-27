module MyEnumerable
  def all?
    elts = []
      list.each do |n|
        if block_given? && yield
      elts << n 
      end
      puts elts.length == list.length
  end

  def any?
    elts = []
      list.each do |n|
        if block_given? && yield
      elts << n   
      end
      puts !elts.empty?
  end

  def filter
    elts = []
      list.each do |n|
        if block_given? && yield
        elts << n
      end     
      p elts
  end
end