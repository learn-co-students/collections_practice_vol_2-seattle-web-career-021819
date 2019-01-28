require 'pry'

def begins_with_r(array)
array.all? {|x| x[0] == "r"}
end


def contain_a(array)
  array.select {|x| x.include?("a")}
end


def first_wa(array)
  array.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|x| !(x.is_a? String)}
end

def count_elements(array)
  hash = array.group_by(&:itself)
  hash.collect{|k, v| k.merge(count: v.length)}
end

def find_cool(array)
  answer = []
  array.each do |x|
    if x[:temperature] == "cool"
      answer << x
end
end
answer
end

def organize_schools(array)
sorted_schools = {}
  array.each do |school, location|
    location.each do |k, v|
      if sorted_schools[v]
        sorted_schools[v] << school
      else
        sorted_schools[v] = []
        sorted_schools[v] << school
end
end
end
sorted_schools
end


def merge_data(keys, data)
answer = []
keys.each do |x|
  name = x[:first_name]
    answer << x.merge(data[0][name])
end
answer
end
