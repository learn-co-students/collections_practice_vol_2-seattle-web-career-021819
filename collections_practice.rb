def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  a_array = []
  array.collect do |word|
    if word.include?("a")
     a_array << word
    end
  end
  a_array
end

def first_wa(array)
  array.find do |word|
    if word[0] == "w" && word[1] == "a"
      word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
  array
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value| 
    key.merge(count: value.length)
  end
end

def merge_data(array, data)
  i = 0
  while i < array.length
    data.each do |element|
      element.each do |key, v|
        if array[i].has_value?(key)
          array[i].merge!(v)
        end
      end
    end
  i+=1
  end
  return keys
end

def find_cool(array)
  i = 0
  array_2 = [];
  while i < array.length do
    array[i].collect do | key, values |
      if values == "cool"
        array_2 << cool[i]
      return array_2
      end
    end
    i+=1
  end
end

def organize_schools(array)
  organized = {}
  array.each do |key, city|
    city.each do |start, location|
      if !organized.has_key?(location)
        organized[location] = [key]
      elsif organized.has_key?(location)
        organized[location] << key
      end
    end
  end
  organized
end