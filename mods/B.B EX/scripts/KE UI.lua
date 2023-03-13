--made by TieGuo
local hitInARow = 0
function onCreatePost()
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('botplayTxt.visible', false)    
    
    if downscroll then
        makeLuaSprite('black', 'timebar/black', 297.5, 680)
        makeLuaSprite('gray', 'timebar/gray', 304, 684.25)
        makeLuaSprite('yellow', 'timebar/yellow', 304, 684.25)

        addLuaSprite('black', true)
        addLuaSprite('gray', true)
        addLuaSprite('yellow', true)

        setObjectCamera('black', 'hud')
        setObjectCamera('gray', 'hud')
        setObjectCamera('yellow', 'hud')

        scaleObject('black', 2, .065)
        scaleObject('gray', 1.965, .035)
        scaleObject('yellow', 1.965, .035)
        
        makeLuaText("dsnametext", songName, 0, 600, 677.5)
        setTextSize('dsnametext', 20)
        addLuaText("dsnametext")
        setTextAlignment('dsnametext', 'left')
    else
        makeLuaSprite('black', 'timebar/black', 297.5, 20)
        makeLuaSprite('gray', 'timebar/gray', 304, 24.25)
        makeLuaSprite('yellow', 'timebar/yellow', 304, 24.25)

        addLuaSprite('black', true)
        addLuaSprite('gray', true)
        addLuaSprite('yellow', true)

        setObjectCamera('black', 'hud')
        setObjectCamera('gray', 'hud')
        setObjectCamera('yellow', 'hud')

        scaleObject('black', 2, .065)
        scaleObject('gray', 1.965, .035)
        scaleObject('yellow', 1.965, .035)
        
        makeLuaText("usnametext", songName, 0, 600, 17.5)
        setTextSize('usnametext', 20)
        addLuaText("usnametext")
        setTextAlignment('usnametext', 'left')
    end
    
    makeLuaText('newAcc','hey vsauce here',1000, 140, getProperty('scoreTxt.y'));
    setTextSize('newAcc',18);
    addLuaText('newAcc');
    
    makeLuaText('songText', songName .. ' - ' .. difficultyName .. " | BOB AND BOSIP | Port by TieGuo | PE" ..version.."", 0, 2, 701);
    addLuaText('songText', true)
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    addLuaText('songText');
end
    
function onUpdate()
    scaleObject('yellow', 1.965 * getProperty("songPercent"), .035)
    
    theduckingRatingAlt = "N/A"
    if ratingName == 'You Suck!' then
        theduckingRatingAlt = 'wtf dude?'
    elseif ratingName == 'Shit' then
        theduckingRatingAlt = 'F'
    elseif ratingName == 'Bad' then
        theduckingRatingAlt = 'E'
    elseif ratingName == 'Bruh' then
        theduckingRatingAlt = 'D'
    elseif ratingName == 'Meh' then
        theduckingRatingAlt = 'B'
    elseif ratingName == 'Nice' then
        theduckingRatingAlt = 'B'
    elseif ratingName == 'Good' then
        theduckingRatingAlt = 'A'
    elseif ratingName == 'Great' then
        theduckingRatingAlt = 'A'
    elseif ratingName == 'Sick!' then
        theduckingRatingAlt = 'AA'
    elseif ratingName == 'Perfect!!' then
        theduckingRatingAlt = 'AAA'
    elseif botPlay == true then
        theduckingRatingAlt = 'N/A'
    end
    
    setTextString('newAcc','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: '..round((getProperty('ratingPercent') * 100), 2) ..' % (' .. ratingFC .. ') '..        theduckingRatingAlt)
    
    
    if botPlay then
        makeLuaText('newbot', 'BOTPLAY', 0, getProperty('botplayTxt.x') + 120, getProperty('botplayTxt.y'));
        setTextSize('newbot', 50);
        addLuaText('newbot');
    end
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then 
        x = math.floor(x + 0.5) 
    else 
        x = math.ceil(x - 0.5) 
    end
    return x / n
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        hitInARow = getProperty(hitInARow)+ 1
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
    if hitInARow >= 10 then
        triggerEvent('Play Animation', 'sad', 'gf')
        hitInARow = 0
    end
end