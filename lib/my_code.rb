# Your Code Here

def map(source_array, &block)
  source_array.map(&block)
end

def reduce(source_array, starting_point=0, &block)
  if starting_point > 0 
    source_array.reduce(starting_point, &block)
  else 
    source_array.reduce(&block)
  end
end




