# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

a = {:john => 4, :jack =>5, :jim =>6}

def make_value_array(your_hash)
  values = []
  i=0
  your_hash.each do |key,value|
  values[i]=value
  i+=1
  end
  return values
end

def make_key_array(your_hash)
  keys=[]
  i=0
  your_hash.each do|key,value|
  keys[i]=key
  i+=1
  end
  return keys
end

def sort_values(array)
  lowest_value = array[0]
  lowest_value_index=0
  counter=0
    while counter<array.size
      if lowest_value > array[counter]
        lowest_value = array[counter]
        lowest_value_index=counter
        counter+=1
      end
  end
  return lowest_value_index
end

z = sort_values(x)

puts z




