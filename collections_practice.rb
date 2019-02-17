# your code goes here
def begins_with_r(array)
    array.all? do |string| 
    string[0] == "r"
  end
end

def contain_a(array)
    array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.detect do |string|
    string[0,2]== "wa"
end 
end

def remove_non_strings(array)
    array.delete_if do |string| 
    string.is_a?(String) == false
  end
end

def count_elements(array)
  array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

def merge_data(keys, data)
  keys.each do |x|
    array1 = x[:first_name]
    puts x
    array2 = data[0][array1]
    
    array2.each do |property,value|
      x[property] = value
    
  end
end
  
  
  
  
  
end 

def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

 def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
