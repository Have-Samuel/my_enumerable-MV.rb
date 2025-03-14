require_relative 'my_enumerable'
# Create a class MyList that has an instance variable @list.
class MyList
  def initialize(*list)
    @list = list
  end
  include MyEnumerable

  # In MyList implement a method #each that yields successive members of @list

  def each
    i = 0
    while i < @list.length
      puts 'success'
      yield @list[i]
      i += 1
    end
  end
end

# Test Cases
list = MyList.new(1, 2, 3, 4, 5)
puts(list.all? { |e| e < 5 })
# => false
puts(list.all? { |e| e > 5 })
# => false
puts(list.all? { |e| e < 6 })
# => true
puts(list.any? { |e| e == 6 })
# => false
puts(list.any? { |e| e == 5 })
# => true
