function onCreate()
    
    makeLuaSprite('back', 'BG/week1/Amor/BG1', -500, -300)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.9, 0.9)
	scaleObject('back', 0.6, 0.6);
	
    makeLuaSprite('center', 'BG/week1/Amor/BG2', -350, -370)
	addLuaSprite('center', false)
	setScrollFactor('center', 0.9, 0.9)
	scaleObject('center', 0.7, 0.7);

    makeLuaSprite('front', 'BG/week1/Amor/BG3', -500, -300)
	addLuaSprite('front', false)
	setScrollFactor('front', 0.9, 0.9)
	scaleObject('front', 0.9, 0.9);
	
	makeAnimatedLuaSprite('bobsip', 'BG/week1/Amor/bobsip', 1300, 205)
    addAnimationByPrefix('bobsip', 'idle', 'bobsip', 24, true)
	setScrollFactor('bobsip', 0.9, 0.9)
	addLuaSprite('bobsip', false)
	scaleObject('bobsip', 0.5, 0.5);
	
	makeLuaSprite('bgg', 'BG/week1/Amor/BG4', -550, -260)
	addLuaSprite('bgg', false)
	setScrollFactor('bgg', 1, 1)
	scaleObject('bgg', 0.58, 0.58);
	
	makeAnimatedLuaSprite('pixelthing', 'BG/week1/amor/pixelthing', -650, -300)
    addAnimationByPrefix('pixelthing', 'idle', 'pixelthing', 24, true)
	setScrollFactor('pixelthing', 1, 1)
	addLuaSprite('pixelthing', false)
	scaleObject('pixelthing', 2, 2);
	
	makeAnimatedLuaSprite('pc', 'BG/week1/amor/pc', 170, 220)
    addAnimationByPrefix('pc', 'idle', 'PC idle', 24, true)
    addAnimationByPrefix('pc', 'left', 'PC Note LEFT', 24, true)
    addAnimationByPrefix('pc', 'down', 'PC Note DOWN', 24, true)
    addAnimationByPrefix('pc', 'up', 'PC Note UP', 24, true)
    addAnimationByPrefix('pc', 'right', 'PC Note RIGHT', 24, true)
	setScrollFactor('pc', 1, 1)
	addLuaSprite('pc', false)
	scaleObject('pc', 0.8, 0.8);
	
	makeLuaSprite('ARE', 'BG/week1/Amor/ARE', -250, -100)
	addLuaSprite('ARE', true)
	setScrollFactor('ARE', 0, 0)
	scaleObject('ARE', 1.4, 1.4);
	setProperty('ARE.visible', false)
	
	makeLuaSprite('YOU', 'BG/week1/Amor/YOU', -250, -100)
	addLuaSprite('YOU', true)
	setScrollFactor('YOU', 0, 0)
	scaleObject('YOU', 1.4, 1.4);
	setProperty('YOU.visible', false)
	
	makeLuaSprite('READY', 'BG/week1/Amor/READY', -250, -100)
	addLuaSprite('READY', true)
	setScrollFactor('READY', 0, 0)
	scaleObject('READY', 1.4, 1.4);
	setProperty('READY.visible', false)
end

function onUpdate()
    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
        objectPlayAnimation('pc','left',false)
    end
    if getProperty('dad.animation.curAnim.name') == 'singUP' then
        objectPlayAnimation('pc','up',false)
    end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
        objectPlayAnimation('pc','right',false)
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
        objectPlayAnimation('pc','down',false)
    end
    if getProperty('dad.animation.curAnim.name') == 'idle' then
        objectPlayAnimation('pc','idle',false)
    end
end

