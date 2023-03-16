function onCreate()
    makeLuaSprite('1background', 'Week2_bg1', -500, -280)
	addLuaSprite('1background', false)
	setScrollFactor('1background', 0.6, 0.95)
	scaleObject('1background', 1.05, 1.05);
	
	makeLuaSprite('2background', 'Week2_bg2', -500, -280)
	addLuaSprite('2background', false)
	setScrollFactor('background', 0.7, 0.95)
	scaleObject('2background', 1.05, 1.05);
	
	makeLuaSprite('3background', 'Week2_bg3', -500, -280)
	addLuaSprite('3background', false)
	setScrollFactor('3background', 0.8, 0.95)
	scaleObject('3background', 1.05, 1.05);
	
	makeLuaSprite('4background', 'Week2_bg4', -500, -280)
	addLuaSprite('4background', false)
	setScrollFactor('4background', 0.9, 0.95)
	scaleObject('4background', 1.05, 1.05);
	
	makeLuaSprite('5background', 'Week2_bg5', -500, -280)
	addLuaSprite('5background', false)
	setScrollFactor('5background', 0.9, 0.95)
	scaleObject('5background', 1.05, 1.05);
	
	makeLuaSprite('6background', 'Week2_bg6', -500, -280)
	addLuaSprite('6background', false)
	setScrollFactor('6background', 1, 1)
	scaleObject('6background', 1.05, 1.05);
	
	if not lowQuality then 
	    makeAnimatedLuaSprite('peoomiddle', 'itb_crowd_back', 50, 100)
        addAnimationByPrefix('peoomiddle', 'idle', 'itb_crowd_back instance 1', 24, true)
	    setScrollFactor('peoomiddle', 1, 1)
	    addLuaSprite('peoomiddle', false)
	    scaleObject('peoomiddle', 0.7, 0.7);
	    
	    makeAnimatedLuaSprite('peomiddle', 'itb_crowd_middle', -630, 50)
        addAnimationByPrefix('peomiddle', 'idle', 'itb_crowd_middle instance 1', 24, true)
	    setScrollFactor('peomiddle', 1, 1)
	    addLuaSprite('peomiddle', false)
	    scaleObject('peomiddle', 0.7, 0.7);
	end
	
	if lowQuality then    
	    makeLuaSprite('peoomiddle', 'week2-2', -100, 50)
	    addLuaSprite('peoomiddle', false)
	    setScrollFactor('peoomiddle', 1, 1)
	    scaleObject('peoomiddle', 0.7, 0.7);
	    
	    makeLuaSprite('peomiddle', 'week2-1', -760, 50)
	    addLuaSprite('peomiddle', false)
	    setScrollFactor('peomiddle', 1, 1)
	    scaleObject('peomiddle', 0.7, 0.7);
    end
    
        makeAnimatedLuaSprite('gf', 'GF_assets', 400, 220)
        addAnimationByPrefix('gf', 'idle', 'GF Dancing Beat', 24, true)
	    setScrollFactor('gf', 1, 1)
	    addLuaSprite('gf', false)
	    scaleObject('gf', 1, 1);
end
