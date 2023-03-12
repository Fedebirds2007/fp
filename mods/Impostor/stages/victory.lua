
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 650;
local yy = 500;
local xx2 = 1000;
local yy2 = 550;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreatePost()
    makeLuaSprite('fogB', 'victory/fog_back', 520, 645)
    addLuaSprite('fogB', false)
    setScrollFactor('fogB', 1, 1)
    scaleObject('fogB', 1, 1)
    setProperty('fogB.alpha', 0.6)
    
    makeAnimatedLuaSprite('VICTORY', 'victory/victorytext', 465, 125)
    addLuaSprite('VICTORY', false)
    setScrollFactor('VICTORY', 1, 1)
    scaleObject('VICTORY', 1, 1)
    addAnimationByPrefix('VICTORY', 'idle', 'VICTORY instance 1', 24, true)
    
    makeAnimatedLuaSprite('bgchar', 'victory/vic_bgchars', -100, 220)
    addLuaSprite('bgchar', false)
    setScrollFactor('bgchar', 1, 1)
    scaleObject('bgchar', 1, 1)
    addAnimationByPrefix('bgchar', 'idle', 'lol thing ', 24, true)
    
    makeAnimatedLuaSprite('war', 'victory/vic_war', -250, 450)
    addLuaSprite('war', false)
    setScrollFactor('war', 1, 1)
    scaleObject('war', 1, 1)
    addAnimationByPrefix('war', 'idle', 'warchiefbganim ', 24, true)
    
    makeAnimatedLuaSprite('jelq', 'victory/vic_jelq', -250, 450)
    addLuaSprite('jelq', false)
    setScrollFactor('jelq', 1, 1)
    scaleObject('jelq', 1, 1)
    addAnimationByPrefix('jelq', 'idle', 'jelqeranim ', 24, true)
    
    makeAnimatedLuaSprite('jor', 'victory/vic_jor', -250, 450)
    addLuaSprite('jor', false)
    setScrollFactor('jor', 1, 1)
    scaleObject('jor', 1, 1)
    addAnimationByPrefix('jor', 'idle', 'jorsawseebganim ', 24, true)
    
    makeLuaSprite('fogM', 'victory/fog_mid', -222, 600)
    addLuaSprite('fogM', false)
    setScrollFactor('fogM', 1, 1)
    scaleObject('fogM', 1, 1)
    setProperty('fogM.alpha', 0.6)
    
    makeLuaSprite('spotlights', 'victory/victory_spotlights', 114, 6)
    addLuaSprite('spotlights', true)
    setScrollFactor('spotlights', 1, 1)
    scaleObject('spotlights', 1, 1)
    setProperty('spotlights.alpha', 0.5)
    
    makeAnimatedLuaSprite('pulse', 'victory/victory_pulse', -337, 264)
    addLuaSprite('pulse', true)
    setScrollFactor('pulse', 1, 1)
    scaleObject('pulse', 1, 1)
    addAnimationByPrefix('pulse', 'idle', 'animatedlight instance 1', 24, true)
    setProperty('pulse.alpha', 0.6)
    
    makeLuaSprite('fogF', 'victory/fog_front', -1022, 750)
    addLuaSprite('fogF', true)
    setScrollFactor('fogF', 1, 1)
    scaleObject('fogF', 1, 1)
    setProperty('fogF.alpha', 0.6)
    
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
    
    makeLuaSprite('black', nil, 0, 0)
    makeGraphic('black', 1280, 720, '000000')
	addLuaSprite('black', true)
	setObjectCamera('black', 'other')
	setProperty('black.alpha', 0)
	
	makeLuaSprite('blackH', nil, 0, 0)
    makeGraphic('blackH', 1280, 720, '000000')
	addLuaSprite('blackH', false)
	setObjectCamera('blackH', 'hud')
	setProperty('blackH.alpha', 0)
end

function onStepHit()
    if curStep == 1 then
        doTweenAlpha('hud', 'camHUD', 0, 0.5)
    end
    if curStep == 125 then
        setBGChar('jelq', 'nobody')
    end
    if curStep == 123 then
        setProperty('black.alpha', 1)
    end
    if curStep == 128 then
        doTweenAlpha('hud', 'camHUD', 1, 0.5)
        setProperty('black.alpha', 0)
    end
    if curStep == 452 then
        setBGChar('war', 'nobody')
    end
    if curStep == 717 then
        setBGChar('war', 'jelq')
    end
    if curStep == 980 then
        setBGChar('jelq', 'jor')
    end
    if curStep == 1053 then
        setBGChar('war', 'jor')
    end
    if curStep == 1117 then
        setBGChar('war', 'jelq')
    end
end
        
function setBGChar(left, right)
    if right == 'nobody' then
        setProperty('jelq.x', -250)
        setProperty('war.x', -250)
        setProperty('jor.x', -250)
        setProperty(left..'.x', 815)
    else
        setProperty('jelq.x', -250)
        setProperty('war.x', -250)
        setProperty('jor.x', -250)
        setProperty(left..'.x', 665)
        setProperty(right..'.x', 965)
    end
end

function onBeatHit()
	if not lowQuality then
		objectPlayAnimation('pulse', 'idle', true)
		objectPlayAnimation('jelq', 'idle', true)

		if (curBeat % 1000 == 0) then
			setProperty("upperBoppersLEFT.animation.curAnim.curFrame", 15);
		end
	end
end
        
function onUpdate()
	setProperty('gf.alpha', 0);
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.7)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs-30,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs+30,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs-20)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs+30)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        else

            setProperty('defaultCamZoom',0.7)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs-30,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs+30,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs-20)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs+30)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

