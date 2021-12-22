function bob(stimulus)
    stimulus=strip(stimulus)
    if stimulus == ""
        return "Fine. Be that way!"
    elseif ! mapreduce(islowercase, |, collect(stimulus)) &&
                mapreduce(isletter, |, collect(stimulus)) &&
                last(stimulus) != '?'
        return "Whoa, chill out!"
    elseif ! mapreduce(islowercase, |, collect(stimulus)) &&
                mapreduce(isletter, |, collect(stimulus)) &&
                last(stimulus) == '?'
        return "Calm down, I know what I'm doing!"
    elseif last(stimulus) == '?'
        return "Sure."
    else
        return "Whatever."
    end
end
