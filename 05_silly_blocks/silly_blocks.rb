def reverse (str="Hello")
    arr=str.split(" ")
    new_string=[]
    arr.each{|word| new_string.push(word.downcase.reverse+" ")}
    return new_string.join.strip
end

def reverser
    reverse(yield)
end

def add(num,add=1)
    num+add
end

def adder(adding=1)
    add(yield,adding)
end

def repeat (str="hello")
    puts str
end

def repeater(num=1)
    num.times do
        repeat(yield)
    end
end