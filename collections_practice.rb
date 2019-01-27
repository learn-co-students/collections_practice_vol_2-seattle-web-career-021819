# your code goes here
def begins_with_r(array)
	new_array = []
	array.each { |name| if name[0] == "r" then new_array << true else new_array << false end }
	!new_array.include?(false)
end

def contain_a(array)
	word_list = []
	array.collect { |word| if word.include?("a") then word_list << word end }
	return word_list
end

def first_wa(array)
	array.each { |element| if (element.to_s).include?("wa"); return element end }
end

def remove_non_strings(array)
	array.delete_if { |obj| !(obj.is_a? String) }
end


def count_elements(array)
  array.each do |x|
    x[:count] = 0
    name = x[:name]
    array.each do |x2|
      if x2[:name] == name
        x[:count] += 1
      end
    end
  end
  array.uniq!
end


def merge_data(keys,data)
  data[0].map do |name, attrib|
    new_array = {}
    keys.each do |new_attrib|
      if new_attrib[:first_name] == name
        new_array = attrib.merge(new_attrib)
      end
    end
    new_array
  end
end

def find_cool(array)
	cool_hashes = []
	array.each{ |hash| if hash[:temperature] == "cool" then cool_hashes << hash end}
		return cool_hashes
end


def organize_schools(array)
  new_array = {}
  array.each do |x, y|
    location = y[:location]
    if new_array[location]
       new_array[location] << x
    else
      new_array[location] = [] 
      new_array[location] << x
    end
  end
  new_array
end
