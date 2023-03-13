function onCreatePost()
    if dadName == 'jghost' then
        makeAnimatedLuaSprite('jcicon', 'winningicons/JandC', getProperty('iconP2.x'), getProperty('iconP2.y'))
        addAnimationByPrefix('jcicon', 'left', 'dogleft', 24, true)
        addAnimationByPrefix('jcicon', 'right', 'dogright', 24, true)
        addAnimationByPrefix('jcicon', 'middle', 'dogmiddle', 24, true)
        addAnimationByPrefix('jcicon', 'all', 'dogall', 24, true)
        addAnimationByPrefix('jcicon', 'icon1', 'icon1', 24, true)
        addAnimationByPrefix('jcicon', 'icon3', 'icon2', 24, true)
        addAnimationByPrefix('jcicon', 'icon2', 'icon3', 24, true)
	    addLuaSprite('jcicon', false)
	    
	    setProperty('iconP2.visible', false);
	    setObjectCamera('jcicon', 'hud')
	    setObjectOrder('jcicon', getObjectOrder('iconP2') + 1)
	    objectPlayAnimation('jcicon', 'icon1', true);
	elseif dadName == 'jghostex' then
	    makeAnimatedLuaSprite('jcicon', 'winningicons/JandCex', getProperty('iconP2.x'), getProperty('iconP2.y'))
        addAnimationByPrefix('jcicon', 'left', 'dogleft', 24, true)
        addAnimationByPrefix('jcicon', 'right', 'dogright', 24, true)
        addAnimationByPrefix('jcicon', 'middle', 'dogmiddle', 24, true)
        addAnimationByPrefix('jcicon', 'all', 'dogall', 24, true)
        addAnimationByPrefix('jcicon', 'icon1', 'icon1', 24, true)
        addAnimationByPrefix('jcicon', 'icon2', 'icon2', 24, true)
        addAnimationByPrefix('jcicon', 'icon3', 'icon3', 24, true)
	    addLuaSprite('jcicon', false)
	    
	    setProperty('iconP2.visible', false);
	    setObjectCamera('jcicon', 'hud')
	    setObjectOrder('jcicon', getObjectOrder('iconP2') + 1)
	    objectPlayAnimation('jcicon', 'icon1', true);
	end
end

function onUpdate()
    setProperty('jcicon.x',getProperty('iconP2.x'))
    setProperty('jcicon.y',getProperty('iconP2.y'))
    setProperty('jcicon.angle',getProperty('iconP2.angle'))
end

function onBeatHit()
    if getProperty('health') >= 1.625 then
        objectPlayAnimation('jcicon', 'icon2', true);
    elseif getProperty('health') <= 0.375 then
        objectPlayAnimation('jcicon', 'icon3', true);
    else
        objectPlayAnimation('jcicon', 'icon1', true);
    end
end