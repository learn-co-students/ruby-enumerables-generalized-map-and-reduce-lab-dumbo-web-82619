def map(source_array)
  new_array = []
  index = 0
  while index < source_array.length
    new_array.push(yield(source_array[index]))
    index += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
    index = 0
  else
    total = source_array[0]
    index = 1
  end
  while index < source_array.length
    total = yield(total, source_array[index])
    index += 1
  end
  total
end