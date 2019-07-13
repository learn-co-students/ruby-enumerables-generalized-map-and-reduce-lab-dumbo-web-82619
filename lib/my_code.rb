def my_own_map(source_array)  
  new = []
  source_array.map{|element| element * -1}
end

def map_to_no_change(source_array)
    source_array.map{|element| element}
end 

def map_to_double(source_array)
  source_array.map {|element| element * 2}
end 

def map_to_square(source_array) 
  source_array.map {|element| element ** 2}
end 

def reduce_to_total(source_array, starting_point = 0)
  source_array.reduce(starting_point){|total, number| total + number}
end 

def reduce_to_all_true(source_array)
  source_array.all? {|element| !!element}
end 

def reduce_to_any_true(source_array)
  source_array.any? {|element| !!element}
end 