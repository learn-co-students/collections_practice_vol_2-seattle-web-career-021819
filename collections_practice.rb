# your code goes here
def begins_with_r (a)
  a.each do |word|
    if(word.downcase[0]!="r")
      return false
    end
  end
  true
end

def contain_a(arr)
  arr.select { |word| word.downcase.include?("a") }
end

def remove_non_strings(arr)
  arr.select { |a| a.class==String }
end

def first_wa (a)
  a.each do |word|
    if(word.downcase[0,2]=="wa")
      return word
    end
  end
end

def count_elements (a)
  counts=[]
  name=[]
  a.each do |ele|
    #puts ele[:name]
    if !name.include?(ele[:name])
      name.push(ele[:name])
      ele[:count]=1
      counts.push(ele)
    else
      counts.each do |map|
        if(map[:name]==ele[:name])
          puts map[:count]+=1
        end
      end
    end
  end
  counts
end

def merge_data (d1, d2)
  newarr=[]
  m1=d1[0]
  m2=d1[1]
  infomap=d2[0]
  
  infomap.each  do |k,v|
    if(k==m1[:first_name])
      v.each { |k2,v2| m1[k2]=v2 }
      newarr.push(m1)
    elsif (k==m2[:first_name])
      v.each { |k2,v2| m2[k2]=v2 }
      newarr.push(m2)
    end
  end
  newarr
end

def find_cool(arr)
  arr2=[]
  arr.each do |m|
    if m.value?("cool")
      arr2.push (m)
    end
  end
  arr2
end

def organize_schools (schools)
  org={}
  schools.each do |k,v|
    puts k
    puts v
    x= v[:location]
    puts x
    if !org.keys.include?(x)
      org[x]=[k]
    else
      org.each do |k2,v2|
        if(x==k2)
          v2.push(k)
        end
      end
    end
  end
  org
end

 