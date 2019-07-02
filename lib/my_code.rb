def map(source_array)
  array = []
  i = 0 
  while i < source_array.length
    array << yield(source_array[i])
    i += 1 
  end
  array
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
