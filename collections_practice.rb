# your code goes here
def begins_with_r(arr)
  #Return true if every element of the tools array starts with an "r" and false otherwise
  new_arr = []
  arr.each do |w|
    w.downcase
    new_arr << w if w.index("r") == 0
  end
  if new_arr.length == arr.length
    true
  else
    false
  end
end

def contain_a(arr)
  arr.select {|w| w.include?("a") }
end

def first_wa(arr)
  arr.find {|w| w.to_s.start_with?("wa") }
end

def remove_non_strings(arr)
  arr.reject {|w| w.class != String }
end

def count_elements(arr)
  arr.each do |item|
    item[:count] = arr.count(item)
  end
  arr.uniq { |h| h[:name] }
end



def merge_data(dt1, dt2)
  merged_arr = []
  final_merged_arr = []

   dt2.each do |x|
     merged_arr << x
   end

   dt1.each do |x|
     dt2.each do |x2|
       x2.each do |name, attributes|
         if name == x[:first_name] # matches up the two keys
           merged_arr[0][name.to_s][:first_name] = name.to_s
           merged_arr[0][name.to_s][:motto] = x[:motto]
         end
       end
     end
   end
   merged_arr.each do |x|
     x.each do |name, att|
       final_merged_arr << att
     end
   end
   final_merged_arr
 end

def find_cool(arr)
  cool_hashes = []

  arr.each do |x|
    if x[:temperature] == "cool"
      cool_hashes << x
    end
  end
  cool_hashes
end


def organize_schools(hash)
  new_hash = {}

  hash.each do |key, value|
    new_hash[value[:location]] = []
  end
  hash.each do |key, value|
    if new_hash.has_key?(value[:location])
      new_hash[value[:location]] << key
    end
  end
  new_hash
end
