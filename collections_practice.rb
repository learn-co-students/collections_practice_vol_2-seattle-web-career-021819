require "pry"

def begins_with_r(array)
  answer = true
  array.each do |word|
    if word[0] != "r"
      answer = false
      break
    end
  end
  answer
end

def contain_a(array)
  newarray = []
  array.each do |word|
    if word.include? "a"
      newarray << word
    end
  end
  newarray
end

def first_wa(array)
  returnbasket = ""
  array.each do |wordy|
    if wordy[0..1] == "wa"
      returnbasket = wordy
      break
    end
  end
  returnbasket
end

def remove_non_strings(array)
  newarray = []
  array.each_with_index do |word, index|
    if array[index].is_a? String
      newarray << word
    end
  end
  newarray
end

def count_elements(array)
  results = []
  array.uniq.each do |word|
    counter = array.count(word)
    namekey = word[:name]
    hashbasket = {:count => counter}
    hashbasket[:name] = namekey
    results << hashbasket
  end
  results
end

def merge_data(keys, data)
  keys_array = keys
  data_array = data
  array_output = []
  keys_array.each do |keys_hash|
    name_check = keys_hash[:first_name]
    array_output << keys_hash.merge(data_array[0][name_check])
  end
  array_output
end


def find_cool(cool_array)
  array_output = []
  people_array = cool_array
  people_array.each do |person_hash|
    if person_hash[:temperature] == "cool"
      array_output << person_hash
    end
  end
  array_output
end




def school_list(schools)
  location_array_output = []
  school_hash = schools
  school_hash.each_value do |value_hash|
    location_array_output << value_hash[:location]
  end
  location_array_output.uniq
end


def organize_schools(schools)
  location_array = school_list(schools)
  schools_hash = schools
  hash_output = {}
  location_array.each do |location|
    schools_array_temp = []
    schools_hash.each do |school_key, school_data_hash|
      if school_data_hash[:location] == location
        schools_array_temp << school_key
      end
    end
    hash_output.store(location, schools_array_temp)
  end
  hash_output
end
