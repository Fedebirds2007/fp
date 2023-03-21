function onCreate()
	makeLuaSprite('1background', 'week2/fondodia', -850, -300)
	addLuaSprite('1background', false)
	setScrollFactor('1background', 0.8, 0.95)
	scaleObject('1background', 1.8, 1.8);

	makeLuaSprite('2background', 'week2/arbolfondo', -850, -300)
   addLuaSprite('2background', false)
   setScrollFactor('2background', 0.9, 0.95)
   scaleObject('2background', 1.8, 1.8);
   
   makeLuaSprite('3background', 'week2/bg1', -700, -150)
   addLuaSprite('3background', false)
   setScrollFactor('3background', 1, 1)
   scaleObject('3background', 1.8, 1.8);

   
	if not lowQuality then 
		makeAnimatedLuaSprite('peoomiddlee', 'week2/Personajes_Fondo', -100, 250)
		addAnimationByPrefix('peoomiddlee', 'idle', 'Chars Idle', 24, true)
  	 setScrollFactor('peoomiddlee', 1, 1)
   		addLuaSprite('peoomiddlee', false)
   		scaleObject('peoomiddlee', 1.4, 1.4);
   
  	 makeAnimatedLuaSprite('peomiddle', 'week2/wachbopper', 1500, 400)
		addAnimationByPrefix('peomiddle', 'idle', 'Symbol 1 instance 1', 24, true)
  	 setScrollFactor('peomiddle', 1, 1)
  	 addLuaSprite('peomiddle', false)
   	 scaleObject('peomiddle', 2, 2);
		
	 makeAnimatedLuaSprite('peoomiddle', 'week2/cone', -200, 500)
		addAnimationByPrefix('peoomiddle', 'idle', 'CONE', 24, true)
	   setScrollFactor('peoomiddle', 1, 1)
	   addLuaSprite('peoomiddle', false)
	   scaleObject('peoomiddle', 1, 1);  
	 
 	end
   
   if lowQuality then    

	end

end
 