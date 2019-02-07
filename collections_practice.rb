require "pry"

def begins_with_r(array)
  return array.all?{|element| element[0] == "r"}
end

def contain_a(array)
  array.select{|element| element.include?("a")}
end

def first_wa(array)
  array.find{|element| element[0] == "w" && element[1] == "a"}
end

def remove_non_strings(array)
  array.delete_if{|element| !(element.is_a? String)}
end

def count_elements(array)
  output = []
  new_hash = {}

  array.each do |element|
    element[:count] = 0
    name = element[:name]
      array.each do |index|
        if name == index[:name]
          element[:count] += 1
        end
      end
    end
  return array.uniq
end

def merge_data(keys, data)  ##put data into keys
  data.each do |data_elements|
    data_elements.each  do |name, hash|
      keys.each do |keys_elements|
        if keys_elements.has_value?(name)
          hash.each do |key, value|
          keys_elements[key] = value
        end
      end
    end
  end
return keys
end
end

def find_cool(array)
  output_array = []
  array.each do |element|
    element.each do |key, value|
      if element[:temperature] == "cool"
        if !output_array.include?(element)
            output_array << element
        end
      end
    end
  end
  return output_array
end

def organize_schools(array)
  return_hash = {}
  array.each do |school_name,hash|
    hash.each do |location_key, location_value|
      if !return_hash.has_key?(location_value)
        return_hash[location_value] = [] << school_name
      else
        return_hash[location_value] << school_name
      end
    end
  end
  return return_hash
end
