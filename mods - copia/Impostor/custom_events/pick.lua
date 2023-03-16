function onEvent(name, value1, value2)

	if name == 'pick' then
	end
	if value1 == 'small pick' then 
setProperty('vignette2.alpha', 1)
		doTweenAlpha('vignette2','vignette2', 0, value2,'linear')
	end
		if value1 == 'big pick' then 
	setProperty('vignette.alpha', 1)
		doTweenAlpha('vignette','vignette', 0, value2,'linear')
	end
	if value1 == 'hearts' then 
	setProperty('hearts.alpha', 1)
    end
	if value1 == 'Nohearts' then 
	setProperty('hearts.alpha', 0)
    end
    if value1 == 'true' then 
    setProperty('part.alpha', 1)
    setProperty('part2.alpha', 1)
    setProperty('part3.alpha', 1)
    setProperty('part4.alpha', 1)
    setProperty('part5.alpha', 1)
    setProperty('part6.alpha', 1)
    end
    if value1 == 'false' then 
    setProperty('part.alpha', 0)
    setProperty('part2.alpha', 0)
    setProperty('part3.alpha', 0)
    setProperty('part4.alpha', 0)
    setProperty('part5.alpha', 0)
    setProperty('part6.alpha', 0)
    end
    end