def same_first_last(list)
    if list.size>1 && list.first == list.last
        return true 
    end 
    return false
end 

# puts same_first_last([1,2,1])
# puts same_first_last([1,2,3])
# puts same_first_last([1])


def middle(list)
    if list.size%2 == 1 # odd length sorted
        return list[list.size/2]
    else # even length sorted
        return (list[list.size/2] + list [list.size / 2 -1]) / 2.0
    end 

end 

def middle_way (list_1, list_2)
    mid = [middle(list_1)]
    second = [middle(list_2)]
    return mid + second
end 

#print middle_way([3,4,5],[5,3,4,6])

def count_code(string)
    words = string.split(" ")
    counter = 0
    words.each do |word|
        if word[0]== "c" && word[1] == "o" && word[3] == "e"
            counter += 1
        end 
    end 
        return counter
end 

# puts count_code("code cope hi great")  #-> 2 
# puts count_code("four")

def threed(list)
    count3 = 0 
    next_to = 0
    list.each do |n|
        if n == 3
            count3 += 1
        end 
    end 
    (list.size-1).times do |n|
        if list[n] == list[n+1]
            return false
       end 
    end
    if count3 == 3
        return true
    elsif count3 > 3 || count3 < 3 
        return false
    end 
end 

# puts threed([3,3,3]) #false
# puts threed([3,4,5,3,9,3]) #true
# puts threed([3]) # false

def either_2_4(list)
    count_2 = 0
    count_4 = 0
    list.size.times do |n|
        if list[n] == 2 && list[n+1] == 2
            count_2 += 1
        end 
        if list[n] == 4 && list[n+1] == 4
            count_4 += 1
        end
    end 
    if (count_2 > 0) ^ (count_4 > 0)
        return true
    else
        return false
    end 

end 

# puts either_2_4([2,2,4,4]) # false
# puts either_2_4([2,2,3,4,5]) # true
# puts either_2_4([4,4,2,3]) # true
# puts either_2_4([2,3,4]) # false

def g_happy(string)
    count_g = 0 
    next_to = 0 
    string.size.times do |n|
        if string[n] == "g"
            count_g += 1
        end
        if string[n] == "g" && string[n+1] == "g"
            next_to += 1
        end 
    end 
    if next_to == (count_g-1) 
        return true
    else 
        return false
    end 
end 
# puts g_happy("ggg")#true
# puts g_happy("ggh")#true
# puts g_happy("h")#false
# puts g_happy("gghg")#false
# puts g_happy("fff")#false

def shift_left(string)
    new_string = string[1..string.size]
    last_number = string[0]
    print new_string.insert(-1,last_number)
end 

# print shift_left([6,2,5,3])#->{2,5,3,6]
# print shift_left([3,4,5,6])

def get_sandwich(string)
   
    
end 
puts get_sandwich("hibreadjamhibread")

def can_balance(string)
    i = 0 
    equal = 0
    string.size.times do
        newarray = string.first..string[i]
        newarray2 = string[i]..string.last
        if newarray.sum == newarray2.sum
            equal += 1
        end 
    end 
    i += 1
    if equal > 0
        return true
    else 
        return false
    end 
end 

print can_balance ([3,4,6,7])