"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    D = Dict('A'=>0, 'C'=>0, 'G'=>0, 'T'=>0)
    for i in strand
        if haskey(D, i)
            D[i] += 1
        else
            throw(DomainError(strand))
        end
    end

    return D
end
