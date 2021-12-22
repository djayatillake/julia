function to_rna(dna)

    D = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')

    rna = ""

    for p in dna
        if get(D, p, 0) == 0
            throw(ErrorException("not valid dna"))
        else
            rna = rna * D[p]
        end
    end

    return rna

end
