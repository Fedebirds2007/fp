function onCreate()
    makeLuaSprite('baack', 'BG/extrasongs/sans/1', -700, -370)
	addLuaSprite('baack', false)
	setScrollFactor('baack', 0.9, 0.9)
	scaleObject('baack', 0.6, 0.6);
	
    makeLuaSprite('center', 'BG/extrasongs/sans/2', -550, -370)
	addLuaSprite('center', false)
	setScrollFactor('center', 0.9, 0.9)
	scaleObject('center', 0.7, 0.7);

    makeLuaSprite('frront', 'BG/extrasongs/sans/3', -450, -250)
	addLuaSprite('frront', false)
	setScrollFactor('frront', 1, 1)
	scaleObject('frront', 0.6, 0.6);
	
	makeLuaSprite('front', 'BG/extrasongs/sans/Amors room', -500, -300)
	addLuaSprite('front', false)
	setScrollFactor('front', 1, 1)
	scaleObject('front', 0.6, 0.6);
	
	makeAnimatedLuaSprite('pixelthing', 'BG/week1/amor/pixelthing', -520, -300)
    addAnimationByPrefix('pixelthing', 'idle', 'pixelthing', 24, true)
	setScrollFactor('pixelthing', 1, 1)
	addLuaSprite('pixelthing', false)
	scaleObject('pixelthing', 2, 2);
	
	makeAnimatedLuaSprite('pc', 'BG/week1/amor/pc', 255, 240)
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
	
	makeAnimatedLuaSprite('frisk', 'BG/extrasongs/sans/expaps', 1100, 180)
	addAnimationByPrefix('frisk', 'idle', 'frisky', 24, true)
	setScrollFactor('frisk', 0.9, 0.9)
	addLuaSprite('frisk', false)
	scaleObject('frisk', 0.5, 0.5);
	
	makeAnimatedLuaSprite('Papyrus', 'BG/extrasongs/sans/expaps', 1200, 110)
	addAnimationByPrefix('Papyrus', 'idle', 'papy', 24, true)
	setScrollFactor('Papyrus', 0.9, 0.9)
	addLuaSprite('Papyrus', false)
	scaleObject('Papyrus', 0.5, 0.5);

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