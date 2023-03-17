function onEvent(name,value1,value2)
	if name == 'woof!' then
	    triggerEvent('Screen Shake', '0.2,0.03', '0.2,0.06');
	    objectPlayAnimation('jcicon', 'all', true);
	    runTimer('woofend', 0.6, 1)
	    if value1 == 'left' then
	        triggerEvent('Play Animation', 'woofleft', 'gf');
	        triggerEvent('Play Animation', 'singLEFTmiss', 'bf');
	    elseif value1 == 'middle' then
	        triggerEvent('Play Animation', 'woofmiddle', 'gf');
	        triggerEvent('Play Animation', 'singDOWNmiss', 'bf')
	    elseif value1 == 'right' then
	        triggerEvent('Play Animation', 'woofright', 'gf');
	        triggerEvent('Play Animation', 'singRIGHTmiss', 'bf');
	    elseif value1 == 'all' then
	        triggerEvent('Play Animation', 'woofall', 'gf');
	        triggerEvent('Play Animation', 'singUPmiss', 'bf');
	    end
	    if value2 == 'UntilDeath' then
	        setProperty('health', 0.001);
	    else
	        health = getProperty('health')
	        setProperty('health', health - value2)
        end
    end
end