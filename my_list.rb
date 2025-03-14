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
