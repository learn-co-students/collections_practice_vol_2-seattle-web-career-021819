require 'pry'
def begins_with_r (arr) #arr Im pie-rate
  test_arr = arr.collect {|element| element.start_with?("r")}
  if test_arr.include?(false)
    return false
  else
    return true
  end
end


def contain_a (arr)
  arr_out = [] # .include? outputs boolean but we need to collect the elements themselves so instead of using the collect output I made another array to shovel to and use as output.
  arr.collect {|element| if element.include?("a"); arr_out << element; end}
  arr_out
end

def first_wa (arr) #used an if statment to return strings that start with "wa" and an elseif statment to convert other elements to strings and return those that start with "wa".
  arr.each {|element| if element.class == String; if element.start_with?("wa"); return element; end; elsif element.to_s.start_with?("wa"); return element; end}
  #so mcuh more room for activities. Question: is it good practice to make everything one line or to leave it as multiple lines?
end

def remove_non_strings (arr)
  output_arr = []
  arr.each {|element| #.class the elements and then I used an if statment to push the string class elements into an output array then output the array.
    if element.class == String
      output_arr << element
    end}
output_arr
end

def count_elements (ting)
  ting.each_with_index do |hash, i| #might also be able to use a .delete_if followed by an .include? after first getting counter and adding it.
    count = ting.count(hash)
    key_saved = hash
    ting.delete(hash)
    key_saved[:count] = count
    ting.insert(i, key_saved)
  end
  return ting
end

def merge_data (data_nest, data_nest1)
  data_nest1.each do |hash|
    hash.each do |name, info|
      data_nest.each do |other_info|
        if other_info.has_value?(name)
          info.each do |key, value|
          other_info[key] = value
          end
        end
      end
    end
  return data_nest
  end
end

def find_cool (ting)
  output_arr = []
  ting.each_with_index do |hash, i|
    if hash.has_value?("cool")
      output_arr << ting[i]
    end
  end
  return output_arr
end

def organize_schools (schools)
  output_hash = {}
  schools.each do |school, loc_hash|
    loc_hash.each do |loc, city|
      if output_hash.has_key?(city)
        output_hash[city].push school
      else
      output_hash[city] = [school]

end
end
end
output_hash
end
