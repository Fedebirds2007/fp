function onCreatePost()
precacheImage('3');
precacheImage('2');
precacheImage('1');
end 

function onCountdownTick(swagCounter)
if swagCounter == 1 then
	playSound('amor/3', 2)
	makeLuaSprite('ready', '3', -25, 0);
	setObjectCamera('ready','other');
	doTweenAlpha('elpepe', 'ready', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('ready', true);	
end	
if swagCounter == 2 then
	playSound('amor/2', 2)
	makeLuaSprite('set', '2', -25, 0);
	setObjectCamera('set','other');
	doTweenAlpha('elpepe', 'set', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('set', true);
end	
if swagCounter == 3 then
	playSound('amor/1', 2)
	makeLuaSprite('GO', '1', -25, 0);
	setObjectCamera('GO','other');
	doTweenAlpha('elpepe', 'GO', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('GO', true);
	end
if swagCounter == 4 then
	playSound('amor/Go', 2)
	makeLuaSprite('GO', 'bob-go', -25, 0);
	setObjectCamera('GO','other');
	doTweenAlpha('elpepe', 'GO', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('GO', true);
	end
end