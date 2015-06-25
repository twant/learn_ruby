def add (num1,num2)
    sum=num1+num2
    return sum
end

def subtract(num1,num2)
    dif=num1-num2
    return dif
end

def sum(arr)
    if arr.length>0
        sum=arr.reduce(:+)
        return sum
    else
        return 0
    end
end

def multiply(num1,num2)
    product=num1*num2
    return product
end