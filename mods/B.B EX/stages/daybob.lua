function onCreate()
    
    makeLuaSprite('back', 'BG/week1/BG1', -500, -300)
	addLuaSprite('back', false)
	setScrollFactor('back', 0.8, 0.8)
	scaleObject('back', 0.6, 0.6);
	
    makeLuaSprite('center', 'BG/week1/BG2', -350, -370)
	addLuaSprite('center', false)
	setScrollFactor('center', 0.8, 0.8)
	scaleObject('center', 0.7, 0.7);
	
    makeAnimatedLuaSprite('bluskys', 'BG/week1/bluskystv', 20, 200)
    addAnimationByPrefix('bluskys', 'idle', 'bluskystv', 24, true)
	setScrollFactor('bluskys', 0.8, 0.8)
	addLuaSprite('bluskys', false)
	scaleObject('bluskys', 0.5, 0.5);
	
	makeAnimatedLuaSprite('mini', 'BG/week1/mini', 1300, 205)
    addAnimationByPrefix('mini', 'idle', 'mini', 24, true)
	setScrollFactor('mini', 0.8, 0.8)
	addLuaSprite('mini', false)
	scaleObject('mini', 0.5, 0.5);

    makeLuaSprite('front', 'BG/week1/BG3', -500, -300)
	addLuaSprite('front', false)
	setScrollFactor('front', 1, 1)
	scaleObject('front', 0.9, 0.9);
end


function onStartCountdown()
    runTimer('blugo',crochet / 1000,25)
    runTimer('blugotoback',crochet / 1000 * 25,1)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'blugo' then
        setProperty('bluskys.x', getProperty('bluskys.x') + 5)
    end
    if tag == 'blugotoback' then
        runTimer('bluback',crochet / 1000,25)
        runTimer('blubacktogo',crochet / 1000 * 25,1)
        setProperty('bluskys.flipX',true)
    end
    if tag == 'bluback' then
        setProperty('bluskys.x', getProperty('bluskys.x') - 5)
    end
    if tag == 'blubacktogo' then
        runTimer('blugo',crochet / 1000,25)
        setProperty('bluskys.flipX',false)
    end
end