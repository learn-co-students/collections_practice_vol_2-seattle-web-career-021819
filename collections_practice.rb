# your code goes here
def begins_with_r(array)
  result = []
  array.each do |name|
    if name[0] == "r"
      result << TRUE
    else
      result << FALSE
    end
  end
  not result.include?(FALSE)
end


def contain_a(array)
  result = []
  array.each do |element|
    if element.include?("a")
      result << element
    end
  end
  result
end


def first_wa(array)
  array.each do |element|
    if (element.to_s).include?("wa")
      return element
    end
  end
end


def remove_non_strings(array)
  result = []
  array.each do |element|
    if element.kind_of?(String)
      result << element
    end
  end
  result
end
      
      
def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |element2|
      if element2[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end
    
    
def merge_data(keys,data)
  data[0].map do |name, prop|
    new_prop = {}
    keys.each do |new_attr|
      if new_attr[:first_name] == name
        new_prop = prop.merge(new_attr)
      end
    end
    new_prop
  end
end


def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  cool_hashes
end


def organize_schools(hash)
  sorted_locations = {}
  hash.each do |name, location_hash|
    location = location_hash[:location]
    if sorted_locations[location]
      sorted_locations[location] << name
    else
      sorted_locations[location] = []
      sorted_locations[location] << name
    end
  end
  sorted_locations
end
      