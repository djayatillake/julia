# Pkg.add("IterTools")
using IterTools

function group_length(a::Array)
       (length(a) > 1 && return string(length(a))) || return ""
end

function encode(s)
    if s == ""
        return ""
    else
        return mapreduce(x -> group_length(x) * x[1], *, groupby(x -> x, collect(s)))
    end
end



function decode(s)
    num = ""
    decoded = ""
    for l in s
        if isnumeric(l)
            num = num * l
        else
            decoded = decoded * l ^ parse(Int, if num == "" "1" else num end)
            num = ""
        end
    end
    return decoded
end
