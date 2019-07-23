# Your Code Here
def map (array)
  new = []
  index = 0 
  while index < array.length do
    new.push(yield(array[index]))
    index += 1 
  end
  new
end

def reduce(array, starting = 0)
  total = starting
  index = 0
  while array[index] do
  total = yield(total, array[index])
  if !array[index]
    return false 
  end
  index += 1
  end
total
end