function isarmstrong(num)
    out = 0
    num_str = string(num)
    for i=1:length(num_str)
       out = out + parse(Int,num_str[i]).^length(num_str)
    end
    return num == out
end