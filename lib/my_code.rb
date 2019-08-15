
def map(source_array)
  basket = []
  i = 0
   while i < source_array.length do
   basket.push(yield(source_array[i]))
    i+=1
 end
 basket
end

def reduce(array,sp=nil)

  if sp 
    i=0
    sum_total = sp
  else 
    sum_total = array[0]
    i = 1
  end
  while i<array.length do
    sum_total = yield(sum_total,array[i])
  i+=1
  end
  sum_total
end













