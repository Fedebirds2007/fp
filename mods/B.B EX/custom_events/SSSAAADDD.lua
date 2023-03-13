function onEvent(name, value1, value2)
	if name == "SSSAAADDD" then
		makeLuaSprite('baby', 'BG/week3/sad/'..value1, -500, -300);
		addLuaSprite('baby', true);
		doTweenColor('hello', 'baby', 'FFFFFFFF', 0.5, 'quartIn');
		scaleObject('baby', 2.5, 2.5)
		setObjectCamera('baby', 'other');
		runTimer('wait', 0.5);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'baby', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('baby', true);
	end
end