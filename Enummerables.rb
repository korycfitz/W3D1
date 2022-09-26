def primes?(num)
    (2...num).each do |i|
        if num%i==0
            return false
        end
    end
    true
end

def factors(num)
    primes=[]
    if primes?(num)
        (1...num).each do |i|
            if num%i==0
                primes<<i
                return primes if primes.length==2
            end
        end
    end
    (1..num).select {|factor| num%factor==0}
end

p factors(11)
p factors(10)

def subwords(str, arr)
    arr.select { |word| str.include? word }
end

dictionary = ["bears", "ear", "a", "army"]
p subwords("erbearsweatmyajs", dictionary)

def doubler(array)
    array.map {|ele| ele * 2 }
end

p doubler([1, 2, 3])

def bubble_sort!(array)
    # array_1=array.dup
    sorted=false


    while !sorted
    sorted=true

        i = 0
        while i < array.length - 1
            next_num = array[i + 1]
            if array[i] < next_num
                array[i], array[i+1] = next_num, array[i]
                sorted=false
            end
            i+=1
        end
    end
    array
end

def bubble_sort(array)
    array_1=array.dup
    p "____________________"
    p array_1.object_id
    p "____________________"
    p array.object_id
    sorted=false


    while !sorted
    sorted=true

        i = 0
        while i < array_1.length - 1
            next_num = array_1[i + 1]
            if array_1[i] < next_num
                array_1[i], next_num = next_num, array_1[i]
                sorted=false
            end
            i+=1
        end
    end
    array_1
    p "____________________"
    p array_1.object_id
    p "____________________"
    p array.object_id
   
end

p bubble_sort([4, 4, 3, 2, 1, 3, 4, 7, 6])
