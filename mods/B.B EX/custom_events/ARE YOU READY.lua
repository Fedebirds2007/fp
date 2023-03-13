function onEvent(name,value1,value2)
	if name == 'ARE YOU READY' then
		if value1 == 'AREtrue' then
			setProperty('ARE.visible', true);
		end
		if value1 == 'AREfalse' then
			setProperty('ARE.visible', false);
		end
	    if value1 == 'YOUtrue' then
			setProperty('YOU.visible', true);
		end
		if value1 == 'YOUfalse' then
			setProperty('YOU.visible', false);
		end
		if value1 == 'READYtrue' then
			setProperty('READY.visible', true);
		end
		if value1 == 'READYfalse' then
			setProperty('READY.visible', false);
		end
	end
end
    