function onEvent(name,value1,value2)
    if value1 == 'true' then
        setProperty('bg1nc.visible', false)
	    setProperty('bg2nc.visible', false)
	    setProperty('bg3nc.visible', false)
        setProperty('bg4nc.visible', false)
	    setProperty('bg5nc.visible', false)
	    setProperty('bg6nc.visible', false)
	    
	    makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'000000')
	    addLuaSprite('flash', true);
	    setLuaSpriteScrollFactor('flash',0,0)
	    setProperty('flash.scale.x',3)
	    setProperty('flash.scale.y',3)
	    setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
	end
    if value1 == 'false' then
        setProperty('bg1nc.visible', true)
	    setProperty('bg2nc.visible', true)
	    setProperty('bg3nc.visible', true)
	    setProperty('bg4nc.visible', true)
  	    setProperty('bg5nc.visible', true)
        setProperty('bg6nc.visible', true)
        
        makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'ffffff')
	    addLuaSprite('flash', true);
	    setLuaSpriteScrollFactor('flash',0,0)
	    setProperty('flash.scale.x',3)
	    setProperty('flash.scale.y',3)
	    setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
    end
end
	     
    