# Create a class MyList that has an instance variable @list.
class MyList
  @list = []

  # In MyList implement a method #each that yields successive members of @list

  def each
    @list.each { |i| yield i }
  end

  # and uses the MyEnumerable module.
  include MyEnumerable

end

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
 