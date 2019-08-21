# Your Code Here
def map(array)
  newarray = []
  array.each do |index|
    newarray.push(yield(index))
  end
  return newarray
end

def reduce(array, starting_point = 0)
 newvalue = starting_point
  array.each do |index|
    newvalue = yield(index, newvalue)
  end
   if newvalue.is_a? Integer
    return newvalue
  else 
    return !!newvalue
  end
end