# give the range of fibonacci numbers up to and including a final value x
# @params x [Integer]
def fibonacci(x)
  unless x.is_a?(Fixnum)
    raise TypeError, "'#{x}' is not a Fixnum; try again"
  end

  a = [1]
  new_number = 1
  while new_number <= x
    a.push(new_number)
    new_number = a[-1] + a[-2]
  end
  a
end
