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




# p factors(11)