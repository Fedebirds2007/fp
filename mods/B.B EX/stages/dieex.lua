function onCreate()
    makeLuaSprite('sky', 'BG/week3/ex/bob/sky', -1100, -1450)
	addLuaSprite('sky', false)
	setScrollFactor('sky', 0.7, 0.7)
	scaleObject('sky', 0.7, 0.7);
	
	makeLuaSprite('back', 'BG/week3/ex/bob/mainbg', -750, -1100)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.75, 0.75)
	scaleObject('back', 0.65, 0.65);
	
	makeLuaSprite('front', 'BG/week3/ex/bob/pavement_poop', -1100, -1300)
	addLuaSprite('front', false)
	setScrollFactor('front', 1, 1)
	scaleObject('front', 0.8, 0.8);
	
	makeLuaSprite('hell', 'BG/week3/ex/bob/hell', -300, -300)
	addLuaSprite('hell', false)
	setScrollFactor('hell', 0.95, 0.95)
	scaleObject('hell', 2, 2);
	setProperty('hell.visible', false)
	
	makeLuaSprite('crab', 'BG/week3/ex/bob/crab', -400, -300)
	addLuaSprite('crab', false)
	setScrollFactor('crab', 0.95, 0.95)
	scaleObject('crab', 2, 2);
	setProperty('crab.visible', false)
	
	makeAnimatedLuaSprite('eiei', 'BG/week3/ex/bob/ElPepe', -210, 600)
    addAnimationByPrefix('eiei', 'idle', 'Mr Krab', 24, true)
	setScrollFactor('eiei', 0.9, 0.9)
	addLuaSprite('eiei', true)
	scaleObject('eiei', 0.5, 0.5);
	setProperty('eiei.visible', false)
	
	makeLuaSprite('diamond', 'BG/video/pizza', 0, 0)
	addLuaSprite('diamond', true)
	setScrollFactor('diamond', 0.9, 0.9)
	scaleObject('diamond', 0.5, 0.5);
	setProperty('diamond.visible', false)
	setObjectCamera('diamond', 'hud')
	
	makeLuaSprite('diammond', 'BG/video/fuck', 0, 0)
	addLuaSprite('diammond', true)
	setScrollFactor('diammond', 0.9, 0.9)
	scaleObject('diammond', 0.5, 0.5);
	setProperty('diammond.visible', false)
	setObjectCamera('diammond', 'hud')
	
	makeLuaSprite('diamondd', 'BG/video/what', 0, 0)
	addLuaSprite('diamondd', true)
	setScrollFactor('diamondd', 0.9, 0.9)
	scaleObject('diamondd', 0.5, 0.5);
	setProperty('diamondd.visible', false)
	setObjectCamera('diamondd', 'hud')
	
	makeLuaSprite('pt', 'BG/week3/bobthings/pixelthings', -500, -300)
	addLuaSprite('pt', true)
	setScrollFactor('pt', 0.95, 0.95)
	scaleObject('pt', 0.6, 0.6);
	setProperty('pt.visible', false)
end

function onStepHit()
    if curStep == 185 then
	    setProperty('diammond.visible', true)
    end
    if curStep == 207 then
	    setProperty('diammond.visible', false)
    end
    if curStep == 327 then
	    setProperty('diamond.visible', true)
    end
    if curStep == 343 then
	    setProperty('diamond.visible', false)
    end 
    if curStep == 684 then
	    setProperty('pt.visible', true)
    end
	if curStep == 688 then
	    setProperty('hell.visible', true)
	    setProperty('pt.visible', false)
    end
    if curStep == 816 then
	    setProperty('hell.visible', false)
    end
    if curStep == 944 then
	    setProperty('eiei.visible', true)
	    setProperty('crab.visible', true)
    end
    if curStep == 1072 then
	    setProperty('diamondd.visible', true)
    end
    if curStep == 1088 then
	    setProperty('diamondd.visible', false)
	    setProperty('crab.visible', false)
	    setProperty('eiei.visible', false)
	end
    if curStep == 1317 then
	    setProperty('boyfriend.alpha', 0)
    end
    if curStep == 1375 then
	    doTweenAlpha('boyfriend', 'boyfriend', 1, 0.15, 'linear')
    end
end