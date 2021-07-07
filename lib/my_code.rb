# Your Code Here

def map(array)
  new_array = []
  array.length.times do |i|
    new_array.push(yield(array[i]))
  end
  new_array
end

def reduce(array, value = nil)
  if value 
    i = 0
  else
    i = 1
    value = array[0]
  end
  while i < array.length do
     value = yield(value, array[i])
    i += 1
  end
  value
end

