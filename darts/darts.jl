function score(x, y)
    if hypot(x, y) > 10
        return 0
    elseif hypot(x, y) > 5
        return 1
    elseif hypot(x, y) > 1
        return 5
    else
        return 10
    end
end
