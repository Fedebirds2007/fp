function onEvent(n)
    if n == 'black' then
        setProperty('blackH.alpha', 1)
        runTimer('bbblllaaaccckkk', 1)
    end
end

function onTimerCompleted(tag)
    if tag == 'bbblllaaaccckkk' then
        setProperty('blackH.alpha', 0)
    end
end