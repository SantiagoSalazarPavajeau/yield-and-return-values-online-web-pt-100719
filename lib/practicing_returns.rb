require 'pry'
# we are making our own each and collect/map methods
# each returns nil because it was only putsing a String
# collect/map puts every element/iteration into a new array without putsing so returns the array and its elements
def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
