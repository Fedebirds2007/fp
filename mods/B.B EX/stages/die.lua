function onCreate()
    makeLuaSprite('sky', 'BG/week3/happy_sky', -500, -300)
	addLuaSprite('sky', false)
	setScrollFactor('sky', 0.7, 0.7)
	scaleObject('sky', 0.6, 0.6);
	
	makeLuaSprite('back', 'BG/week3/happy_back', -500, -300)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.75, 0.75)
	scaleObject('back', 0.6, 0.6);
	
	makeLuaSprite('front', 'BG/week3/happy_front', -500, -300)
	addLuaSprite('front', false)
	setScrollFactor('front', 0.95, 0.95)
	scaleObject('front', 0.6, 0.6);
	
	makeLuaSprite('ssky', 'BG/week3/bobthings/scary_sky', -500, -300)
	addLuaSprite('ssky', false)
	setScrollFactor('ssky', 0.95, 0.95)
	scaleObject('ssky', 0.6, 0.6);
	setProperty('ssky.visible', false)
	
	makeLuaSprite('gg', 'BG/week3/bobthings/GlitchedGround', -500, -300)
	addLuaSprite('gg', false)
	setScrollFactor('gg', 0.95, 0.95)
	scaleObject('gg', 0.6, 0.6);
	setProperty('gg.visible', false)
	
	makeLuaSprite('pt', 'BG/week3/bobthings/pixelthings', -500, -300)
	addLuaSprite('pt', true)
	setScrollFactor('pt', 0.95, 0.95)
	scaleObject('pt', 0.6, 0.6);
	setProperty('pt.visible', false)
	
	makeLuaSprite('diamond', 'BG/video/diamond', 0, 0)
	addLuaSprite('diamond', true)
	setScrollFactor('diamond', 0.9, 0.9)
	scaleObject('diamond', 0.5, 0.5);
	setProperty('diamond.visible', false)
	setObjectCamera('diamond', 'hud')
end