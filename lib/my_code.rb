def map(source_array)
  array = []
  i = 0
    while i < source_array.length 
      array << yield(source_array[i])
      i += 1     
    end 
  array 
end 
