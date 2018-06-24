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

x = make_value_array(a)

def find_smallest_index
lowest_value = x[0]
lowest_index = 0
counter=0
while counter<x.length
  if lowest_value>x[counter]
    lowest_value=x[counter]
    lowest_index=counter
  end
  counter+=1
end
return lowest_index



