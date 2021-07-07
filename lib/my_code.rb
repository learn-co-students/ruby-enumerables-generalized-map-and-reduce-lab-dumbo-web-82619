# Your Code Here
 def map(array)
  new = []
  i = 0
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  return new
end

 
 def reduce(array, sv=nil)
   
   if sv
     sum = sv
     i = 0
    else 
      sum = array[0]
      i = 1 
    end
    
  while i < array.length
    sum =  yield(sum, array[i])
    i += 1
  end
  
  return sum
 end
 

# def reduce_to_any_true(source_array)
#   for i in (source_array)
  
#     if i == true
#       return true
#     end
#   end
# return false
# end