def begins_with_r(array)
  for string in array
    if (!string.start_with?("r"))
      return false
    end
  end
  return true
end

def contain_a(array)
  newArray = []
  for string in array
    if (string.include?("a"))
      newArray.push(string)
    end
  end
  newArray
end

def first_wa(array)
  for string in array
    if (string.to_s.start_with?("wa"))
      return string
    end
  end
end

def remove_non_strings(array)
  array.delete_if{|element| !element.is_a?(String)}
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(keys, data)
  keys.merge(data) {|k, x, y| x + y}
end

def find_cool(cool)
  cool.each {|key, value|
    if value == "cool"
      return key
    end
  }  
end
