function onCreate()
    math.randomseed(os.time())
end

function onStartCountdown() --enter selector mode
	if not allowCountdown and not seenCutscene then
	    setProperty('inCutscene', true);
	    allowCountdown = true;
	    runTimer('loadingend', 2, 1)
	    runTimer('imageend', 1, 1)
	    makeLuaSprite('loading', 'loading/'..math.random(21), -45, -30)
	    addLuaSprite('loading', true)
	    setScrollFactor('loading', 0.9, 0.9)
	    scaleObject('loading', 0.52, 0.52);
	    doTweenAlpha('hud', 'camHUD', 0, 0.01, 'linear')
	    setObjectCamera('loading', 'other')
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'loadingend' then
        startCountdown()
    end
    if tag == 'imageend' then
        doTweenAlpha('imageend', 'loading', 0, 1, 'linear')
        doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
    end
end