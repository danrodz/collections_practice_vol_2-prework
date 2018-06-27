# your code goes here
def begins_with_r(array)
  new_array = array.map do |element|
    element.chr == "r" ? true : false
  end
  !new_array.include?(false)
end

def contain_a(array)
  array.map do |element|
    element.include?("a") ? element : nil
  end.compact!
end

def first_wa(array)
  array.detect do |i|
    i[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.map do |x|
    x.class == String ? x : nil
  end.compact!
end

def count_elements(array)
  new_array = []
  names = []
  array.each do |obj|
    obj.each do |k, v|
      if !names.include?(v)
        new_array.push({name: v, count: 1})
        names.push(v)
      else
        new_array.each do |object|
          object.each do |key, value|
            if v == value
              object[:count] += 1
            end
          end
        end
      end
    end
  end
  new_array
end

def merge_data(keys, data)
  array = []
  data.each do |object|
    object.each do |key, value|
      keys.each do |obj|
        obj.each do |k, v|
          if key == obj[:first_name]
            array.push(value.merge(obj))
          end
        end
      end
    end
  end
  array
end

def find_cool(array)
  array.map do |obj|
    obj[:temperature] == "cool" ? obj : nil
  end.compact!
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, value|
    if !organized_schools.has_key?(city)
      organized_schools[city] = [school]
    else
      organized_schools[city] << school
    end
  end
  organized_schools
end

# let(:schools) {
#     {
#       "flatiron school bk" => {
#         :location => "NYC"
#       },
#       "flatiron school" => {
#         :location => "NYC"
#       },
#       "dev boot camp" => {
#         :location => "SF"
#       },
#       "dev boot camp chicago" => {
#         :location => "Chicago"
#       },
#       "general assembly" => {
#         :location => "NYC"
#       },
#       "Hack Reactor" => {
#         :location => "SF"
#       }
#     }
#   }
#   let(:organized_schools) {
#     {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#   }








