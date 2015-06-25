class Book

attr_reader :title

def initialize
end

def title=(title)
    old_title=title
    arr=old_title.split(" ")
    new_arr=[]
    conjunctions=["and","the","of","a","an","in"]
    arr.each{|word|
        if conjunctions.include?(word)==true
           new_arr.push(word + " ")
        else
            new_arr.push(word.capitalize + " ")
        end}
    new_arr[0]=new_arr[0].capitalize
    new_title=new_arr.join.strip
    @title=new_title
    return @title
end

end