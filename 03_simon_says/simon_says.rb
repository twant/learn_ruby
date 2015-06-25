def echo(str)
    str
end

def shout (str)
    str.upcase
end

def repeat(str, n=2)
    ([str+" "]*n).join.strip
end

def start_of_word (str,num)
    arr=str.split(//)
    i=0
    new_letters=[]
    for i in 0..(num-1) do
        new_letters.push(arr[i])
        i+=1
    end
    return new_letters.join
end

def first_word(str)
    arr=str.split(" ")
    return arr[0]
end

def titleize (str)
    arr=str.split(" ")
    new_arr=[arr.first.capitalize+" "]
    arr.delete_at(0)
    arr.each{|word|
        if word=="and"||word=="over"||word=="the"
            new_arr.push(word+" ")
        else
            new_arr.push(word.capitalize+" ")
        end}
    return new_arr.join.strip
end

