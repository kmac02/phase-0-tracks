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

#Each number in the array is the sum of the previous two numbers,
#except for the 0 and the 1,


def fib(num)
  index = 0
  if num == 0
    fib_array = []
  elsif num == 1
    fib_array = [0]
  elsif num == 2
    fib_array = [0,1]
  end
  num = num -2
  fib_array = [0,1]
  while num > index
    x = fib_array[-1] + fib_array[-2]
    fib_array << x
    index += 1
  end
fib_array
end
p fib(100).last

fib(100)

#############

#Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.
#Implement the sorting method in Ruby.


# define a bubble sort method with parameter (array)

def bubble_sort(array)
  # establish sorted as false to send information through the program until true
  sorted = false
#define a variable that takes the length of the parameter(array.length)
  length = array.length

#begin loop method to establish the current state a variable (t/f) each time it passes
  until sorted
    sorted = true

# take array and for array.length -1 times, begin method to sort
    for index in 0..(length -2)
# perform swap if the index of the array is greater than the array index + 1
      if array[index] > array[index + 1]
        sorted = false
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end
  # state of the swap is now true
  return array
end

p bubble_sort(arr)



















