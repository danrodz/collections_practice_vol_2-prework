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

# let(:keys) {
#     [
#           {
#             :first_name => "blake"
#         },
#           {
#             :first_name => "ashley"
#         }
#     ]
#   }

#   let(:data) {
#     [
#           {
#             "blake" => {
#                 :awesomeness => 10,
#                     :height => "74",
#                   :last_name => "johnson"
#             },
#             "ashley" => {
#                 :awesomeness => 9,
#                     :height => 60,
#                   :last_name => "dubs"
#             }
#         }
#     ]
#   }

#   let(:merged_data) {
#     [
#           {
#             :first_name => "blake",
#             :awesomeness => 10,
#                 :height => "74",
#               :last_name => "johnson"
#         },
#           {
#             :first_name => "ashley",
#             :awesomeness => 9,
#                 :height => 60,
#               :last_name => "dubs"
#         }
#     ]
#   }

def merge_data(keys, data)
  array = []
  data.each do |object|
    object.each do |key, value|
      array.push(value)  
    end
  end
  array
end











