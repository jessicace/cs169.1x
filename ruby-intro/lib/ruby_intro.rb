# Part 1

def sum(array)
  array.reduce(:+) || 0
end

def max_2_sum(array)
  array.sort.reverse.take(2).reduce(:+) || 0
end

def sum_to_n?(array, integer)
  array.combination(2).any? { |elements| elements.reduce(:+) == integer }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  string.length != 0 ? string[0] !~ /[\d\Waeiou]/i : false
end

def binary_multiple_of_4?(string)
  string =~ /^[\d]+$/ ? string.to_i(2) % 4 == 0 : false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError, "ISBN must be a valid string." if isbn.length == 0
    raise ArgumentError, "Price must be greater than zero." if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%.02f", @price)
  end
  
end
