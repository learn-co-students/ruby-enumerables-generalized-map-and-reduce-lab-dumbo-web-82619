
def map(source_array)
  i = 0 
  new_array = []
  while i < source_array.size do 
    new_array.push(yield(source_array[i]))
    i += 1 
  end 
  return new_array
end 

def reduce(source_array, starting_point = nil)
  if starting_point
    i = 0 
  else 
    starting_point = source_array[0]
    i = 1
  end 
  running_total = starting_point
  while i < source_array.size do 
    running_total = yield(running_total, source_array[i])
    i += 1 
  end 
  return running_total
end 
  
  
  
  
  
  
  
  
  
  
  