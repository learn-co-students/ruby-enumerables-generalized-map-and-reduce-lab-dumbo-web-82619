# Your Code Here
def map (source_array)
  new = []
  i = 0
  n = source_array.length 
  while i < n do 
    new.push(yield(source_array[i]))
    i+=1 
  end
  new 
end

def reduce(source_array, starting_point = nil)
  n = source_array.length
  if starting_point
    i = 0 
    value = starting_point
  else
    i= 1 
    value = source_array[0]
  end
  while i < n do
  value = yield(value, source_array[i])
  i+= 1
  end
  value 
end
