def fizzbuzz(i)
    if ((i % 3) == 0) and ((i % 5) == 0)
        return "fizzbuzz"
    elsif ((i % 5) == 0)
        return "buzz"
    elsif ((i % 3) == 0)
        return "fizz"
    end
    return i
end