function onCreate()
	makeLuaSprite('bg sky', 'miragarden/bg sky', -30, 30);
	scaleObject('bg sky', 1, 1);
	setScrollFactor('bg sky', 1, 1);
	setProperty('bg sky.antialiasing', true);
	setObjectOrder('bg sky', 0);

	makeLuaSprite('cloud fathest', 'miragarden/cloud fathest', 180, 630);
	scaleObject('cloud fathest', 1, 1);
	setScrollFactor('cloud fathest', 1, 1);
	setProperty('cloud fathest.antialiasing', true);
	setObjectOrder('cloud fathest', 1);

	makeLuaSprite('cloud front', 'miragarden/cloud front', 140, 759.999999999999);
	scaleObject('cloud front', 1, 1);
	setScrollFactor('cloud front', 1, 1);
	setProperty('cloud front.antialiasing', true);
	setObjectOrder('cloud front', 2);

	makeLuaSprite('bigcloud', 'miragarden/bigcloud', 340, -649.999999999999);
	scaleObject('bigcloud', 1, 1);
	setScrollFactor('bigcloud', 1, 1);
	setProperty('bigcloud.antialiasing', false);
	setObjectOrder('bigcloud', 3);

	makeLuaSprite('cloud 1', 'miragarden/cloud 1', 689.999999999999, -289.999999999998);
	scaleObject('cloud 1', 1, 1);
	setScrollFactor('cloud 1', 1, 1);
	setProperty('cloud 1.antialiasing', true);
	setObjectOrder('cloud 1', 4);

	makeLuaSprite('cloud 2', 'miragarden/cloud 2', 79.9999999999993, -540);
	scaleObject('cloud 2', 1, 1);
	setScrollFactor('cloud 2', 1, 1);
	setProperty('cloud 2.antialiasing', true);
	setObjectOrder('cloud 2', 5);

	makeLuaSprite('cloud 3', 'miragarden/cloud 3', -620, -550);
	scaleObject('cloud 3', 1, 1);
	setScrollFactor('cloud 3', 1, 1);
	setProperty('cloud 3.antialiasing', true);
	setObjectOrder('cloud 3', 6);

	makeLuaSprite('cloud 4', 'miragarden/cloud 4', -780, -500);
	scaleObject('cloud 4', 1, 1);
	setScrollFactor('cloud 4', 1, 1);
	setProperty('cloud 4.antialiasing', true);
	setObjectOrder('cloud 4', 7);

	makeLuaSprite('glasses', 'miragarden/glasses', 139.999999999999, 190.000000000003);
	scaleObject('glasses', 1, 1);
	setScrollFactor('glasses', 1, 1);
	setProperty('glasses.antialiasing', true);
	setObjectOrder('glasses', 8);

	makeLuaSprite('lmao', 'miragarden/lmao', 502.499999999998, 874.999999999999);
	scaleObject('lmao', 1, 1);
	setScrollFactor('lmao', 1, 1);
	setProperty('lmao.antialiasing', true);
	setObjectOrder('lmao', 9);

	makeLuaSprite('what is this', 'miragarden/what is this', 1265, 190.000000000001);
	scaleObject('what is this', 1, 1);
	setScrollFactor('what is this', 1, 1);
	setProperty('what is this.antialiasing', true);
	setObjectOrder('what is this', 10);

	makeAnimatedLuaSprite('blackrobot', 'miragarden/blackrobot', 2375, 1020);
	scaleObject('blackrobot', 1, 1);
	addAnimationByPrefix('blackrobot', '', '', 24, true);
	setScrollFactor('blackrobot', 1, 1);
	setProperty('blackrobot.antialiasing', true);
	setObjectOrder('blackrobot', 18);

	makeAnimatedLuaSprite('grey', 'miragarden/grey', 997.499999999998, 832.499999999997);
	scaleObject('grey', 1, 1);
	addAnimationByPrefix('grey', '', '', 24, true);
	setScrollFactor('grey', 1, 1);
	setProperty('grey.antialiasing', true);
	setObjectOrder('grey', 12);

	makeAnimatedLuaSprite('tomatomongus', 'miragarden/tomatomongus', 2095, 924.999999999998);
	scaleObject('tomatomongus', 1, 1);
	addAnimationByPrefix('tomatomongus', '', '', 24, true);
	setScrollFactor('tomatomongus', 1, 1);
	setProperty('tomatomongus.antialiasing', true);
	setObjectOrder('tomatomongus', 13);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 15);

	setScrollFactor('gfGroup', 0.95, 0.95);
	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 14);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 16);

	makeAnimatedLuaSprite('blue', 'miragarden/blue', 170, 1002.499999999997);
	scaleObject('blue', 1, 1);
	addAnimationByPrefix('blue', '', '', 24, true);
	setScrollFactor('blue', 1, 1);
	setProperty('blue.antialiasing', true);
	setObjectOrder('blue', 17);

	makeLuaSprite('front pot', 'miragarden/front pot', 34.9999999999975, 1600);
	scaleObject('front pot', 1, 1);
	setScrollFactor('front pot', 1, 1);
	setProperty('front pot.antialiasing', true);
	setObjectOrder('front pot', 19);

	makeAnimatedLuaSprite('vines', 'miragarden/vines', 334.999999999995, -305);
	scaleObject('vines', 1, 1);
	addAnimationByPrefix('vines', '', '', 24, true);
	setScrollFactor('vines', 1, 1);
	setProperty('vines.antialiasing', true);
	setObjectOrder('vines', 20);
	
	makeAnimatedLuaSprite('ufo', 'pets/ufo', 2400, 1500.8);
	scaleObject('ufo', 1, 1);
	addAnimationByPrefix('ufo', '', '', 24, true);
	setScrollFactor('ufo', 1, 1);
	setProperty('ufo.antialiasing', true);
	setObjectOrder('ufo', 11);

	makeLuaSprite('vignette', 'miragarden/vignette', 0, 0);
	scaleObject('vignette', 1, 1);
	setScrollFactor('vignette', 1, 1);
	setObjectCamera('vignette', 'hud')
		
	makeLuaSprite('vignette2', 'miragarden/vignette2', 0, 0);
	scaleObject('vignette2', 1, 1);
	setScrollFactor('vignette2', 1, 1);
	setObjectCamera('vignette2', 'hud')
	
	makeAnimatedLuaSprite('hearts', 'miragarden/hearts', 0, 0);
	addAnimationByPrefix('hearts', '', '', 24, true);
	setScrollFactor('hearts', 1, 1);   
	setObjectCamera('hearts', 'hud')
	
	addLuaSprite('hearts', true)
	addLuaSprite('vignette2', false)
	addLuaSprite('vignette', false)
	
	      makeAnimatedLuaSprite('part', 'miragarden/littleheart', 800, 1800)
	addAnimationByPrefix('part', '', '', 24, true);
      scaleObject('part', 2, 2); 
      addLuaSprite('part', true)
      
      makeAnimatedLuaSprite('part2', 'miragarden/littleheart', 700, 1600)
	addAnimationByPrefix('part2', '', '', 24, true);
      scaleObject('part2', 2, 2); 
      addLuaSprite('part2', true) 
      
     makeAnimatedLuaSprite('part3', 'miragarden/littleheart', 1600, 1600)
	addAnimationByPrefix('part3', '', '', 24, true);
      scaleObject('part3', 2, 2); 
      addLuaSprite('part3', true)
      
           makeAnimatedLuaSprite('part5', 'miragarden/littleheart', 2100, 1600)
	addAnimationByPrefix('part5', '', '', 24, true);
      scaleObject('part5', 2, 2); 
      addLuaSprite('part5', true)
      
           makeAnimatedLuaSprite('part4', 'miragarden/littleheart', 2400, 1600)
	addAnimationByPrefix('part4', '', '', 24, true);
      scaleObject('part4', 2, 2); 
      addLuaSprite('part4', true)           makeAnimatedLuaSprite('part6', 'miragarden/littleheart', 900, 1600)
	addAnimationByPrefix('par6', '', '', 24, true);
      scaleObject('part6', 2, 2); 
      addLuaSprite('part6', true)
        
setObjectOrder('part', 70);

setProperty('vignette2.alpha', 0)
setProperty('vignette.alpha', 0)
setProperty('hearts.alpha', 0)
    setProperty('part.alpha', 0)
    setProperty('part2.alpha', 0)
    setProperty('part3.alpha', 0)
    setProperty('part4.alpha', 0)
    setProperty('part5.alpha', 0)
    setProperty('part6.alpha', 0)
end

local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  1485;
local yy =  1200;
local xx2 = 1730;
local yy2 = 1200;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
  if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
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

            setProperty('defaultCamZoom',0.5)
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

function onEndSong()
    followchars = false;
    triggerEvent('Camera Follow Pos','400','150')
end