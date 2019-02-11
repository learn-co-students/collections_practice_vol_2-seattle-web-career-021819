require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
end
end
true
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include?("a")
    a_array << word
end
end
a_array
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.class == String
end
end

#count how many times something appears in the array
def count_elements(array)
  count = []
  array.uniq.each do |word|
    counter = array.count(word)
    name = word[:name]
    count_results = {}
    count_results[:count] = counter
    count_results[:name] = name
    count << count_results
  end
  count
end
#combine two nested data structures into one
def merge_data(keys, data)
  new_array = []
  keys.each do |item|
    name = item[:first_name]
    new_array << item.merge(data[0][name])
  end
  new_array
end


#find cool hashes
def find_cool(cool)
  new_array = []
  cool.each do |key, value|
    if key[:temperature] == "cool"
      new_array << key
    end
  end
  new_array
end

#hash of schools whose values are hashes w/key of :location and value of city, need to organize
#the schools by city
def organize_schools(schools)
  schools_sorted_hash = {}
  schools.each do |school_name, location_hash|
    location_hash.each do |location, city_name|
      if schools_sorted_hash[city_name]
         schools_sorted_hash[city_name] << school_name
       else
         schools_sorted_hash[city_name] = []
         schools_sorted_hash[city_name] << school_name
end
end
end
schools_sorted_hash
end
