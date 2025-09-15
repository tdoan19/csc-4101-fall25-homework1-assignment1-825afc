def fib(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    fibArray = [0, 1]
    while fibArray.length < n
        nextFib = fibArray[-1] + fibArray[-2]
        fibArray << nextFib
    end
    return fibArray
end

def isPalindrome(n)
    str_N = n.to_s
    return str_N == str_N.reverse
end

def nthmax(n, a)
    descending = a.sort.reverse
    return descending[n]
end

def freq(s)
    s.empty? ? "" : s.chars.max_by { |c| s.count(c) }
end

def zipHash(arr1, arr2)
    return nil unless arr1.length == arr2.length
    Hash[arr1.zip(arr2)]
end

def hashToArray(hash)
    hash.to_a
end
