
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -1100;
local yy = -120;
local xx2 = -330;
local yy2 = -120;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    setProperty('defaultCamZoom',0.45)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

	precacheImage('jojo/Cutscene/spritemap')
	precacheImage('jojo/bg')
	precacheImage('jojo/building')
	precacheImage('jojo/fg')
	precacheImage('jojo/floor')
	precacheImage('jojo/grad')

    makeLuaSprite('bg', 'jojo/bg', -2910, -1965)
    addLuaSprite('bg', false)
    scaleObject('bg', 1.7, 1.6)
	setLuaSpriteScrollFactor('bg', 0.1, 0.1)

    makeLuaSprite('bg2', 'jojo/building', -2910, -1965)
    addLuaSprite('bg2', false)
    scaleObject('bg2', 2.2, 2.2)
	setLuaSpriteScrollFactor('bg2', 0.95, 1)

    makeLuaSprite('bg3', 'jojo/floor', -2910, -1965)
    addLuaSprite('bg3', false)
    scaleObject('bg3', 2.2, 2.2)

    makeLuaSprite('bg4', 'jojo/grad', -2550, -1400)
    addLuaSprite('bg4', true)
    scaleObject('bg4', 1.7, 1.6)

    makeLuaSprite('bg5', 'jojo/fg', -2650, -1300)
    addLuaSprite('bg5', true)
    scaleObject('bg5', 2, 1.6)
	setLuaSpriteScrollFactor('bg5', 1.1, 1.1)
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*75) - 800)
	yy = (math.sin(i/20)*75) - 350

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.45)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.65)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
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
