function onCreate()
    makeLuaSprite('sky', 'BG/week3/bosip_sky', -500, -300)
	addLuaSprite('sky', false)
	setScrollFactor('sky', 0.7, 0.7)
	scaleObject('sky', 0.6, 0.6);
	
	makeLuaSprite('back', 'BG/week3/bosip_back', -500, -300)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.75, 0.75)
	scaleObject('back', 0.6, 0.6);
	
	makeLuaSprite('front', 'BG/week3/bosip_front', -500, -300)
	addLuaSprite('front', false)
	setScrollFactor('front', 0.95, 0.95)
	scaleObject('front', 0.6, 0.6);
	
	makeLuaSprite('s1', 'BG/video/space-1', -200, -100)
	addLuaSprite('s1', true)
	setScrollFactor('s1', 0, 0)
	scaleObject('s1', 0.8, 0.8);
	setProperty('s1.visible', false)
	--setObjectCamera('s1', 'hud')
	
	makeLuaSprite('s2', 'BG/video/space-2', -200, -100)
	addLuaSprite('s2', true)
	setScrollFactor('s2', 0, 0)
	scaleObject('s2', 0.8, 0.8);
	setProperty('s2.visible', false)
	--setObjectCamera('s2', 'hud')
	
	makeLuaSprite('s3', 'BG/video/space-3', -200, -100)
	addLuaSprite('s3', true)
	setScrollFactor('s3', 0, 0)
	scaleObject('s3', 0.8, 0.8);
	setProperty('s3.visible', false)
	--setObjectCamera('s3', 'hud')
	
	makeLuaSprite('s4', 'BG/video/space-4', -200, -100)
	addLuaSprite('s4', true)
	setScrollFactor('s4', 0, 0)
	scaleObject('s4', 0.8, 0.8);
	setProperty('s4.visible', false)
	--setObjectCamera('s4', 'hud')
	
	makeLuaSprite('au', 'BG/video/amongus', 0, 0)
	addLuaSprite('au', true)
	setScrollFactor('au', 0.9, 0.9)
	scaleObject('au', 0.5, 0.5);
	setProperty('au.visible', false)
	setObjectCamera('au', 'hud')
	
	makeLuaSprite('gd', 'BG/video/gd', 0, 0)
	addLuaSprite('gd', true)
	setScrollFactor('gd', 0.9, 0.9)
	scaleObject('gd', 0.5, 0.5);
	setProperty('gd.visible', false)
	setObjectCamera('gd', 'hud')
	
	makeLuaSprite('pixel', 'BG/week3/pixel', -45, -30)
	addLuaSprite('pixel', true)
	setProperty('pixel.visible', false)
	setScrollFactor('pixel', 0.9, 0.9)
    scaleObject('pixel', 0.52, 0.52);
    setObjectCamera('pixel', 'hud')
end
