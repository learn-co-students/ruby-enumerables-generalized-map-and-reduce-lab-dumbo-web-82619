# Your Code Here

def map2(source_array)
  new = []
  for x in 0..source_array.length-1 do 
      new.push(yield source_array[x])
  end
  p new
end

def map(source_array)
  new = []
  source_array.each do |x|
    new << yield(x)
  end
  new
end

def reduce(source_array, start=0)
  source_array.each do |x|
    start = yield(start, x)
  end
  if start == 0 
    return true 
  end 
  start 
end 

map([1, 2, 3, -9]) { |n| n*n}

def map_to_no_change(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] ) # <== Unique work
    i += 1
  end
  return new
end
 
def map_to_double(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * 2 ) # <== Unique work
    i += 1
  end
  return new
end
 
def map_to_square(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * source_array[i] ) # <== Unique work
    i += 1
  end
  return new
end