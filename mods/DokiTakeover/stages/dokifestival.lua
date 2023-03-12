local dokiCharacters = {'Yuri','Sayori','protag','Natsuki','monika'}
local dokiPositions = {{-120,120},{100,200},{400,100},{1050,250},{1250,120}}
local dokiLower = ''
local dokiSpeed = {24,24,28,24,24}

local enabledGirls = false
function onCreate()
    if songName == 'Obsession' then
        enabledGirls = false
    end
	addCharacterToList('monika','dad')
	makeLuaSprite('schoolSky','schoolStage/weebSky',-200,0)
    setScrollFactor('schoolSky',0.6,0.90)
    setProperty('schoolSky.antialiasing',false)
    scaleObject('schoolSky',6,6)
	
	makeLuaSprite('schoolSchool','schoolStage/weebSchool',-200,0)
    setScrollFactor('schoolSchool',0.6,0.90)
    setProperty('schoolSchool.antialiasing',false)
    scaleObject('schoolSchool',6,6)
	
	makeAnimatedLuaSprite('schoolTrees','schoolStage/weebTrees',-800,-1000)
    addAnimationByPrefix('schoolTrees','idle','tress_',12,true)
    setScrollFactor('schoolTrees',0.85,0.85)
    setProperty('schoolTrees.antialiasing',false)
    scaleObject('schoolTrees',6,6)
	
	makeLuaSprite('schoolGround','schoolStage/weebStreet',-200,0)
    setScrollFactor('schoolGround',0.95,0.95)
    setProperty('schoolGround.antialiasing',false)
    scaleObject('schoolGround',6,6)
	
        makeLuaSprite('dokiFarBack','doki/festival/FarBack',-780,-600)
        scaleObject('dokiFarBack',1.7,1.7)
        addLuaSprite('dokiFarBack',false)
		
		makeLuaSprite('dokiMainBG','doki/festival/MainBG',-780,-600)
        scaleObject('dokiMainBG',1.7,1.7)
        addLuaSprite('dokiMainBG',false)
		
		makeLuaSprite('dokiDesksFestival','doki/festival/DesksFestival',-780,-600)
        scaleObject('dokiDesksFestival',1.7,1.7)
        addLuaSprite('dokiDesksFestival',true)
		
		makeLuaSprite('dokiFestivalBanner','doki/festival/FestivalBanner',-780,-550)
        scaleObject('dokiFestivalBanner',1.7,1.7)
        addLuaSprite('dokiFestivalBanner',true)
		
    setScrollFactor('dokiFarBack',0.9,0.9)
    setScrollFactor('dokiDesksFestival',1.1,1.1)
    setScrollFactor('dokiFestivalBanner',1.1,1.1)
    if enabledGirls == true then
        for dokiCreate = 1,#dokiCharacters do
            dokiLower = string.lower(dokiCharacters[dokiCreate])
            makeAnimatedLuaSprite('doki'..dokiLower,'doki/bgdoki/'..dokiLower,dokiPositions[dokiCreate][1],dokiPositions[dokiCreate][2])
            addAnimationByPrefix('doki'..dokiLower,'idle',dokiCharacters[dokiCreate]..' BG',dokiSpeed[dokiCreate],false)
            scaleObject('doki'..dokiLower,0.75,0.75)
            setProperty('doki'..dokiLower..'.color',getColorFromHex('7A7A7A'))
            addLuaSprite('doki'..dokiLower,false)
        end
    end
    if not lowQuality then
        makeAnimatedLuaSprite('dokiLightBack','doki/festival/lights_back',195,50)
        addAnimationByPrefix('dokiLightBack','idle','lights back',24,true)
        scaleObject('dokiLightBack',1.7,1.7)
        setBlendMode('dokiLightBack','add')
        addLuaSprite('dokiLightBack',false)

        makeAnimatedLuaSprite('dokiLightFront','doki/festival/lights_front',-1500,350)
        setBlendMode('dokiLightFront','add')
        scaleObject('dokiLightFront',1.7,1.7)
        addAnimationByPrefix('dokiLightFront','idle','Lights front',24,true)
        addLuaSprite('dokiLightFront',true)
    end
end
function onCreatePost()
    reloadBGCharacters()
    setProperty('dad.color',getColorFromHex('7A7A7A'))
    setProperty('boyfriend.color',getColorFromHex('7A7A7A'))
    setProperty('gf.color',getColorFromHex('7A7A7A'))
end
function onStepHit()
    if curBeat % 2 == 0 and enabledGirls == true then
        for dokiCreate = 1,#dokiCharacters do
            dokiLower = string.lower(dokiCharacters[dokiCreate])
            objectPlayAnimation('doki'..dokiLower,'idle',false)
        end
    end
end
function onEvent(name)
    if name == 'Change Character' then
        runTimer('reloadCharacters',0.05)
        reloadBGCharacters(false)
    end
end
function onTimerCompleted()
    if tag == 'reloadCharacters' then
        reloadBGCharacters(false)
    end
end
function reloadBGCharacters(changePosition)
    if enabledGirls == true then
        for dokiCreate = 1,#dokiCharacters do
            dokiLower = string.lower(dokiCharacters[dokiCreate])
            if string.find(string.lower(getProperty('dad.curCharacter')),dokiLower,0,true) ~= nil or string.find(string.lower(getProperty('boyfriend.curCharacter')),dokiLower,0,true) ~= nil  then
                setProperty('doki'..dokiLower..'.visible',false)
            else
                setProperty('doki'..dokiLower..'.visible',true)
            end
        end
    end
end