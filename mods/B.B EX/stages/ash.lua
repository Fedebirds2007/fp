function onCreate()
    makeLuaSprite('bg1', 'EX-ash1', -500, -300)
	addLuaSprite('bg1', false)
	setScrollFactor('bg1', 0.85, 0.85)
	scaleObject('bg1', 0.9, 0.9);
	
	makeLuaSprite('bg2', 'EX-ash2', -500, -300)
	addLuaSprite('bg2', false)
	setScrollFactor('bg2', 0.85, 0.85)
	scaleObject('bg2', 0.9, 0.9);
	
	makeLuaSprite('bg3', 'EX-ash3', -500, -300)
	addLuaSprite('bg3', false)
	setScrollFactor('bg3', 0.85, 0.85)
	scaleObject('bg3', 0.9, 0.9);
	
	makeLuaSprite('bg4', 'EX-ash4', -500, -300)
	addLuaSprite('bg4', false)
	setScrollFactor('bg4', 1, 1)
	scaleObject('bg4', 0.9, 0.9);
	
	makeAnimatedLuaSprite('bggf', 'gf', 300, 40)
    addAnimationByPrefix('bggf', 'idle', 'GF Dancing Beat', 24, true)
    setScrollFactor('bggf', 1, 1)
	addLuaSprite('bggf', false)
	scaleObject('bggf', 1, 1);
	
	if mustHitSection == true then
		setProperty('defaultCamZoom',0.9)
    end
end