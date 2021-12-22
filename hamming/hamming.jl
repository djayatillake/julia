;;"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("strands are not the same length"))
    else
        hamming = 0
        for i in 1:length(a)
            if a[i] != b[i]
                hamming += 1
            end
        end
        return hamming
    end
end
