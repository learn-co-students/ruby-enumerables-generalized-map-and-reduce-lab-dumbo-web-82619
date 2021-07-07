# Your Code Here

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
   new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array, starting_point=0)
  new = starting_point
  i = 0
  while i < source_array.length do
    new = yield(source_array[i],new)
    i += 1
  end
     if new == nil 
       return false
      end
      new
  #yield(source_array[i], starting_point)
end