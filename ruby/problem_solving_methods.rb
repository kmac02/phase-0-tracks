arr = [ 34, 86, 35, 2, 98, 22]

def search_array(array, num)
  match = false
  index = 0
  array.each do |x|
    if x == num
      match = true
    return index
    end
    index += 1
  end
  if match == false
    nil
  end
end

p search_array(arr, 34)

puts "*" * 50


def fib (x)
  index = 0
  while x >= index

end

fib(6)