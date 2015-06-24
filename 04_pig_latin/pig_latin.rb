def translate(str)
    word_arr=str.split(" ")
    pig_word=[]
    word_arr.each{|word|
        arr=word.split(//)
        if arr.first=="a"||arr.first=="e"||arr.first=="i"||arr.first=="o"||arr.first=="u"
            pig_word.push(word+"ay" + " ")
            elsif (["a","e","i","o","u"].include?(arr.first)==false && ["a","e","i","o","u"].include?(arr[1])==false && ["a","e","i","o","u"].include?(arr[2])==false) ||(arr[1]=="q"&&arr[2]=="u")
            arr.push(arr[0])
            arr.delete_at(0)
            arr.push(arr.first)
            arr.delete_at(0)
            arr.push(arr.first)
            arr.delete_at(0)
            pig_word.push(arr.join+"ay"+" ")
        elsif (["a","e","i","o","u"].include?(arr.first)==false && ["a","e","i","o","u"].include?(arr[1])==false)||(arr.first=="q"&&arr[1]=="u")
            arr.push(arr.first)
            arr.delete_at(0)
            arr.push(arr.first)
            arr.delete_at(0)
            pig_word.push(arr.join+"ay"+ " ")
        else
            arr.push(arr.first)
            arr.delete_at(0)
            pig_word.push(arr.join+"ay"+" ")
        end}
    return pig_word.join.rstrip
end