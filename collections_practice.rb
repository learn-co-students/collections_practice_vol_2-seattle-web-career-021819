require 'pry'

def begins_with_r(array)
  array.all? { |s| s.start_with? "r"}
end



def contain_a(array)
  array.keep_if { |element| element.include? "a"}
end



def first_wa(array)
  array.each do |element|
    return element if element.to_s.start_with? "wa"
  end
end



def remove_non_strings(array)
  array.keep_if { |element| element.is_a? String}
end


def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    array.each do |new_hash|
      if new_hash[:name] == hash[:name]
        hash[:count] += 1
      end
    end
  end.uniq
end



def merge_data(arr1, arr2)
#arr1 << arr2 values
merged_data = []
  arr2.each do |hash|
    i = 0
    hash.each do|name_string, values|
      if name_string == arr1[i][:first_name]
        arr1[i] = arr1[i].merge(values)
        merged_data << arr1[i]
        i += 1
      end
    end
  end
  merged_data
end



def find_cool(array)
  cool = []
  array.each do |hash|
    hash.each do |k, v|
      if k == :temperature && v == "cool"
        cool << hash
      end
    end
  end
  cool
end



def organize_schools(hash)
  organized_schools = {}
  hash.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
