def map(source_array)
  array = []
  i = 0 
  while i < source_array.length
    array << yield(source_array[i])
    i += 1 
  end
  array
end 

def reduce(source_array, starting_point = nil)
  if starting_point
    accum = starting_point
    i = 0
  else 
    accum = source_array[0]
    i = 1 
  end 
  while i < source_array.length
    accum = yield(accum, source_array[i])
    i += 1 
  end
  accum
end 

#  i = 0
#  while i < source_array.length do
#    return false if !source_array[i]
#    i += 1
#  end
#  yield(source_array, true)

#  new = 0
#  i = 0
#  while i < source_array.length do
#    new += source_array[i]
#    i += 1
#  end
#  yield(new, starting_value)

#  i = 0
#  while i < source_array.length do
#    return true if source_array[i]
#    i += 1
#  end
#  yield(source_array, false)
