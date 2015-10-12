# sort an array of words in alphabetical order

a = ["q", "l", "n", "a", "z", "b", "c", "v", "m", "f", "v"]

#wrapper method for recursive sort:
def sort(array)
  recursive_sort(array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  # take the array of words, find the smallest one (ascii-wise) and put that into sorted array
  # put the rest of the array into a still-unsorted array.
  # maybe compare element w/ element + 1 and push the bigger into the still-unsorted array?
  still_to_sort = []

  unsorted_array.each do |word|
    @smaller = unsorted_array.last
    if @smaller <= word   # but: sort.rb:18: stack level too deep (SystemStackError)
      still_to_sort.push(word)
    else
      still_to_sort.push(@smaller)
      @smaller = word
    end
  end
  sorted_array.push(@smaller)
  while still_to_sort.size > 0
  recursive_sort(still_to_sort, sorted_array)
  end
  sorted_array
end

begin
  sort(a)
end
