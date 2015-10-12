# add a given number to an array and return the new number by adding the last two elements of the array
# @param array [Array] of fibonacci numbers
# @param number [Fixnum] to add to array
# @return [Fixnum]
def add_to_fibonacci_array(array, number)
  array.push(number)
  array[-1] + array[-2]
end

# raise an exception if the value passed in is not a Fixnum
# @param x [Fixnum]
def check_is_fixnum(x)
  unless x.is_a?(Fixnum)
    raise TypeError, "'#{x}' is not a Fixnum; try again"
  end
end

# give the range of fibonacci numbers up to and including a final value x
# @param x [Integer]
# @return [Array]
def fibonacci(x)
  check_is_fixnum(x)

  a = [1]
  new_number = 1
  while new_number <= x
    new_number = add_to_fibonacci_array(a, new_number)
  end
  a
end

# return an array of fibonacci numbers that is a given size 'y'
# @param y [Integer]
# @return [Array]
def fibonacci_size(y)
  check_is_fixnum(y)

  a = [1]
  new_number = 1
  #since we're seeding the array to start out with one element, remove that from the number of times to loop:
  (y-1).times do
    new_number = add_to_fibonacci_array(a, new_number)
  end
  a
end

# return the closest number (equal to or lesser than) a given cap of z
# @param z [Fixnum]
# @return [Fixnum]
def closest_fibonacci_to(z)
  check_is_fixnum(z)

  a = [1]
  new_number = 1
  while new_number <= z
    new_number = add_to_fibonacci_array(a, new_number)
  end
  a.last
end
