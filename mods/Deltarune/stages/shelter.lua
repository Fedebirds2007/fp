
-- invisible character (so basically if you wanna use the change character event, you need to make the second character invisible first)
invisible = false

-- if it's set to true the character appears behind the default characters, including gf, watch out for that
foreground = true
playablecharacter = false -- change to 'true' if you want to flipX

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

doIdle = true

function onCreate()
	-- background shit

	makeAnimatedLuaSprite('ocean','ocean', -200, -200);
	addAnimationByPrefix('ocean','wobble','ocean wobble',15);
	setScrollFactor('ocean', 0.5, 0.3);
	addLuaSprite('ocean', false);
	
	makeLuaSprite('IMAGE_SKY', 'IMAGE_SKY', -1000, -650);
	setScrollFactor('IMAGE_SKY', 0, 0);
	scaleObject('IMAGE_SKY', 1, 1);
	addLuaSprite('IMAGE_SKY');

	makeLuaSprite('IMAGE_TREES', 'IMAGE_TREES', -500, -400);
	setScrollFactor('IMAGE_TREES', 0.4, 0.4);
	scaleObject('IMAGE_TREES', 0.8, 0.8);
	addLuaSprite('IMAGE_TREES');

	makeLuaSprite('IMAGE_SHELTER', 'IMAGE_SHELTER', -666, -480);
	setScrollFactor('IMAGE_SHELTER', 1, 1);
	scaleObject('IMAGE_SHELTER', 0.8, 0.8);
	addLuaSprite('IMAGE_SHELTER');

	makeAnimatedLuaSprite('rain', 'rain', 0, 0);
	addAnimationByPrefix('rain', 'rain', 'rain rain', 30, true);
	setProperty('rain.alpha', 0);
	setScrollFactor('rain', 0.0, 0.0);
	addLuaSprite('rain', false);
	setObjectCamera('rain', 'camOther', false);

	makeAnimatedLuaSprite('rain2', 'rain', 0, 0);
	addAnimationByPrefix('rain2', 'rain', 'rain rain', 35, true);
	scaleObject('rain2', 1.3, 1.3);
	setProperty('rain2.alpha', 0);
	setScrollFactor('rain2', 0.0, 0.0);
	addLuaSprite('rain2', false);
	setObjectCamera('rain2', 'camOther', false);

	--starts with just BF, rest fades in later.
	setProperty('IMAGE_SKY.alpha', 0);
	setProperty('IMAGE_TREES.alpha', 0);
	setProperty('IMAGE_SHELTER.alpha', 0);
	setProperty('ocean.alpha', 0);

	makeAnimatedLuaSprite('gkris', 'characters/gkris', 1000, 156);

	setProperty('gkris.alpha', 0);
	setProperty('dad.alpha', 0);

	addAnimationByPrefix('gkris', 'idle', 'gkris idle', 12, false);
	addAnimationByPrefix('gkris', 'singLEFT', 'gkris left', 12, false);
	addAnimationByPrefix('gkris', 'singDOWN', 'gkris down', 12, false);
	addAnimationByPrefix('gkris', 'singUP', 'gkris up', 12, false);
	addAnimationByPrefix('gkris', 'singRIGHT', 'gkris right', 12, false);
	addAnimationByPrefix('gkris', 'die', 'gkris die', 16, false);

	if playablecharacter == true then
		setPropertyLuaSprite('gkris', 'flipX', true);
	else
		setPropertyLuaSprite('gkris', 'flipX', false);
	end

	scaleObject('gkris', 0.7, 0.7);


	objectPlayAnimation('gkris', 'idle');
	addLuaSprite('gkris', foreground);

	if invisible == true then
		setPropertyLuaSprite('gkris', 'alpha', 0)
	end
end


function onBeatHit()

	objectPlayAnim('ocean', 'wobble', false);

	if doIdle == true and curBeat < 364 then
		objectPlayAnimation('gkris', 'idle', false);
	end
	doIdle = true



	if curBeat > 15 and curBeat < 238 then
		doTweenAlpha('skyTweenIn', 'IMAGE_SKY', 1, 1, 'linear');
		doTweenAlpha('treesTweenIn', 'IMAGE_TREES', 1, 0.8, 'linear');
		doTweenAlpha('shelterTweenIn', 'IMAGE_SHELTER', 1, 0.5, 'linear');
		doTweenAlpha('dadTweenIn', 'dad', 1, 0.1, 'linear');
	end

	if curBeat > 239 and curBeat < 270 then --bf dies and lights go out
		doTweenAlpha('skyTweenIn2', 'IMAGE_SKY', 0, 0.3, 'linear');
		doTweenAlpha('treesTweenIn2', 'IMAGE_TREES', 0, 0.2, 'linear');
		doTweenAlpha('shelterTweenIn2', 'IMAGE_SHELTER', 0, 0.1, 'linear');
		doTweenAlpha('dadTweenIn2', 'dad', 0, 0.00005, 'linear');
	end


	if curBeat > 271 and curBeat < 365 then

		doTweenAlpha('ocean appear for the good part', 'ocean', 1, 1, linear);

		doTweenAlpha('skyTweenIn3', 'IMAGE_SKY', 1, 1, 'linear');
		doTweenAlpha('treesTweenIn3', 'IMAGE_TREES', 1, 0.8, 'linear');
		doTweenAlpha('shelterTweenIn3', 'IMAGE_SHELTER', 1, 0.5, 'linear');
		doTweenAlpha('dadTweenIn3', 'dad', 1, 0.1, 'linear');


		setProperty('gkris.alpha', 1); --kris and susie appear
		setProperty('rain.alpha', 0.4);
		setProperty('rain2.alpha', 0.2);
	end

	if curBeat == 366 then
		doTweenAlpha('go dark', 'IMAGE_TREES', 0, 2, linear);
		doTweenAlpha('go dark2', 'IMAGE_SKY', 0, 1, linear);
	end

end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Lancer Sing' or noteType == 'dgasdgfdgfdg' then
		doIdle = false
		objectPlayAnimation('gkris', singAnims[direction + 1], false);

		if direction == 0 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);

			if isSustainNote then
				objectPlayAnimation('gkris', singAnims[direction + 1], true);
			end
		elseif direction == 1 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);

			if isSustainNote then
				objectPlayAnimation('gkris', singAnims[direction + 1], true);
			end
		elseif direction == 2 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);

			if isSustainNote then
				objectPlayAnimation('gkris', singAnims[direction + 1], true);
			end
		elseif direction == 3 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);

			if isSustainNote then
				objectPlayAnimation('gkris', singAnims[direction + 1], true);
			end
		end
	end
end

-- I know this is messy, but it's the only way I know to make it work on both sides.
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Lancer Sing' or noteType == 'dgasdgfdgfdg' then
		doIdle = false
		objectPlayAnimation('gkris', singAnims[direction + 1], false);

		if direction == 0 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);
		elseif direction == 1 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);
		elseif direction == 2 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);
		elseif direction == 3 then
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);
		end
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 4 == 0 then
		if doIdle == true then
			objectPlayAnimation('gkris', 'idle');
			setProperty('gkris' .. '.offset.x', {'0', '0'}[1]);
			setProperty('gkris' .. '.offset.y', {'0', '0'}[2]);
		end
	end
end

function onStepHit()
	if curStep == 1455 then
		objectPlayAnimation('gkris', 'die', false);
	end
end