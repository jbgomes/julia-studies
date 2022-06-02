function prime_factors(N)
    v = []
    while N > 1
        for i = 2:N
            if N % i == 0
                N /= i
                push!(v,i)
                break
            end
        end
    end
    return v
end

