def contain_a(array)
  new_array = []
  i = 0
  while i < array.count
    if array[i].include?("a")
      new_array << array[i]
    end
    i += 1
  end
  new_array
end

def begins_with_r(array)
  i = 0
  bool = true
  while i < array.count
    if !array[i].start_with?("r")
      bool = false
    end
    i += 1
  end
  bool
end

def first_wa(array)
  array.each do |element|
    if element.to_s.include?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String)}
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |next_element|
      if next_element[:name] == name
        element[:count] +=1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  new_array = []
  keys.each do |x|
    name = x[:first_name]
    new_array << x.merge(data[0][name])
  end
  new_array
end

def find_cool (cool)
  cool_one = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_one << person
    end
  end
  cool_one
end

def organize_schools(schools)
  sorted_schools = {}
  schools.each do |school, location|
    location.each do |city, data|
      if sorted_schools[data]
        sorted_schools[data] << school
      else
        sorted_schools[data] = []
        sorted_schools[data] << school
      end
    end
  end
  sorted_schools
end
