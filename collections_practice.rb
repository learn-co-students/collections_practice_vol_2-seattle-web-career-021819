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
  newArray = []
  key1 = {}
  kVal = ""
  key2 = {}
  dVal = ""
  keys.each {|kValues|
    key1 = kValues
    h = Hash.new
    kValues.each {|k,v|
      kVal = v
      data.each {|dValues|
        dValues.each {|k,v|
          dVal = k
          key2 = v
          if (kVal == dVal)
            h = key1.merge(key2)
          end
        }
      }
    }
    newArray << h
  }
  newArray
end

def find_cool(cool)
  newArray = []
  index = 0;
  cool.each {|values|
    if values.has_value?("cool")
      newArray << cool[index]
    end
    index += 1
  }
  newArray
end

def organize_schools(schools)
  h = Hash.new() 
  schools.each {|school|
    loc = school[1].flatten.pop
    if !h.has_key?(loc)
      h[loc] = [school[0]]
    else
      h[loc] << school[0]
    end
  }
  h
end
