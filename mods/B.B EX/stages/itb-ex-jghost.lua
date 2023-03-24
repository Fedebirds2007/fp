function onCreate()
    makeLuaSprite('bg1', 'JGHOST 1', -500, -300)
	addLuaSprite('bg1', false)
	setScrollFactor('bg1', 0.5, 0.5)
	scaleObject('bg1', 0.9, 0.9);
	
	makeLuaSprite('bg2', 'JGHOST 1_2', -500, -300)
	addLuaSprite('bg2', false)
	setScrollFactor('bg2', 0.6, 0.6)
	scaleObject('bg2', 0.9, 0.9);
	
	makeLuaSprite('bg3', 'JGHOST 2', -500, -300)
	addLuaSprite('bg3', false)
	setScrollFactor('bg3', 0.7, 0.7)
	scaleObject('bg3', 0.9, 0.9);
	
	makeLuaSprite('bg4', 'JGHOST 3', -500, -300)
	addLuaSprite('bg4', false)
	setScrollFactor('bg4', 0.8, 0.8)
	scaleObject('bg4', 0.9, 0.9);
	
	makeLuaSprite('bg5', 'JGHOST 4', -500, -300)
	addLuaSprite('bg5', false)
	setScrollFactor('bg5', 1, 1)
	scaleObject('bg5', 0.9, 0.9);
	
	makeAnimatedLuaSprite('bggf', 'BG/gf', 300, 20)
    addAnimationByPrefix('bggf', 'idle', 'GF Dancing Beat', 24, true)
	setScrollFactor('bggf', 1, 1)
	addLuaSprite('bggf', false)
	scaleObject('bggf', 1, 1);
	
	setObjectOrder('dadGroup', getObjectOrder('bggf') + 1)
end


