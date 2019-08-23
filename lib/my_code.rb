# Your Code Here
def map(array)
  newarray = Array.new
  array.each do |n|
    newarray << yield(n)
  end
  newarray
end

def reduce(array, start = NIL)
  if start
    final = start
  else 
    final = array[0]
    array.shift
  end
  array.each do |n|
    final = yield(final, n)
  end
  final
end
