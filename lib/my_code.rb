# Your Code Here
def map(array)
  i = 0
  arr = []
  
  while i < array.length do
    arr.push(yield(array[i]))
    i += 1
  end
    return arr
end


def reduce(elements, starting_point = nil, &block)
  if starting_point.nil?
    elements.reduce(&block)
  else
    elements.reduce(starting_point, &block)
  end
end