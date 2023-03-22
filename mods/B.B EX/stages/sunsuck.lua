function onCreate()
    makeLuaSprite('sky', 'BG/week3/ex/bosip/sky', -1100, -1450)
	addLuaSprite('sky', false)
	setScrollFactor('sky', 0.7, 0.7)
	scaleObject('sky', 0.7, 0.7);
	
	makeLuaSprite('back', 'BG/week3/ex/bosip/mainbgron', -750, -1100)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.75, 0.75)
	scaleObject('back', 0.65, 0.65);
	
	makeLuaSprite('front', 'BG/week3/ex/bosip/pavement_yeah', -1100, -1300)
	addLuaSprite('front', false)
	setScrollFactor('front', 1, 1)
	scaleObject('front', 0.8, 0.8);
	
	makeLuaSprite('diamond', 'BG/video/aaa', 0, 0)
	addLuaSprite('diamond', true)
	setScrollFactor('diamond', 0.9, 0.9)
	scaleObject('diamond', 0.5, 0.5);
	setProperty('diamond.visible', false)
	setObjectCamera('diamond', 'hud')
	
	makeLuaSprite('diammond', 'BG/video/ronsip', 0, 0)
	addLuaSprite('diammond', true)
	setScrollFactor('diammond', 0.9, 0.9)
	scaleObject('diammond', 0.5, 0.5);
	setProperty('diammond.visible', false)
	setObjectCamera('diammond', 'hud')
	
	makeLuaSprite('diamondd', 'BG/video/end', 0, 0)
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
    if curStep == 18 then
	    setProperty('diammond.visible', true)
	end
	if curStep == 46 then
	    setProperty('diammond.visible', false)
	end
	if curStep == 848 then
	    setProperty('diamond.visible', true)
	end
	if curStep == 863 then
	    setProperty('diamond.visible', false)
	end
	if curStep == 1776 then
	    setProperty('diamondd.visible', true)
	end
	if curStep == 1903 then
	    setProperty('diamondd.visible', false)
	end
end
