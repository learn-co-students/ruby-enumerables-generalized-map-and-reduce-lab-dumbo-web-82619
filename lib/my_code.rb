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

def reduce(array, starting = nil)
    if starting
    total = starting
    index = 0 
  else
    total = array[0]
    index = 1 
  end
  while index < array.length do
  total = yield(total, array[index])
  index += 1 
  end
end