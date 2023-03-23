function onCreate()
    
    makeLuaSprite('back', 'BG/week1/BG1', -500, -300)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.9, 0.9)
	scaleObject('back', 0.6, 0.6);
	
    makeLuaSprite('center', 'BG/week1/BG2', -350, -370)
	addLuaSprite('center', false)
	setScrollFactor('center', 0.9, 0.9)
	scaleObject('center', 0.7, 0.7);
	
	if not lowQuality then
	    makeAnimatedLuaSprite('bgpeo', 'ex_crowd', -300, -100)
        addAnimationByPrefix('bgpeo', 'idle', 'bobidlebig instance 1', 24, true)
	    setScrollFactor('bgpeo', 0.9, 0.9)
	    addLuaSprite('bgpeo', false)
	    scaleObject('bgpeo', 1, 1);
	end

    if lowQuality then
	end
    
    makeLuaSprite('front', 'BG/week1/BG3', -500, -300)
	addLuaSprite('front', false)
	setScrollFactor('front', 0.9, 0.9)
	scaleObject('front', 0.9, 0.9);
end

function onBeatHit()
	if not lowQuality then
		objectPlayAnimation('bgpeo', 'idle', true);

		if (curBeat % 1000 == 0) then
			setProperty("upperBoppersLEFT.animation.curAnim.curFrame", 15);
		end
	end
end

