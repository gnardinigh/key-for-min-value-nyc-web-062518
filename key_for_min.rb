# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

a = {:john => 4, :jack =>5, :jim =>6, :jimm => 2}

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

def find_lowest_value_index(value_array)
  lowest_value = value_array[0]
  lowest_index = 0
  counter=0
  while counter<value_array.length
    if lowest_value>value_array[counter]
      lowest_value=value_array[counter]
      lowest_index=counter
    end
    counter+=1
  end
  return lowest_index
end 

def get_lowest_key(key_array,index)
  return key_array[index]
end

def key_for_min_value(your_hash)
  a = make_value_array(your_hash)
  b = make_key_array(your_hash)
  c = find_lowest_value_index(a)
  d = get_lowest_key(b,c)
  return d
end

