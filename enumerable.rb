# Create a module MyEnumerable that implements the following methods (they should have the same funcionality as methods in Enumerable):
# -#all?
# -#any?
# -#fitler
module MyEnumerable
  def all?
    @list.all? { |i| yeild i }
  end

  def any?
    @list.any? { |i| yeild i }
  end

  def filter
    @list.select { |i| yeild i }
  end
end

# OPTIONALLy
module MyEnumerable
  # Implement a method #all? that returns true if the block never returns false or nil
  def all1?
    check_arr = true
    each do |n|
      check_arr = false unless yield n
    end
    check_arr
  end

  def any1?
    # Implement a method #any? that returns true if the block ever returns a value other than false or nil
    if_any = false
    each do |n|
      if_any = true if yield n
    end
    if_any
  end

  def filter1
    # Implement a method #filter that returns an array of elements for which the block returns true
    filtered_arr = []
    each { |n| filtered_arr << n if yield n }
    filtered_arr
  end
end
