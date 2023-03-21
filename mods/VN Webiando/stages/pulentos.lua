function onCreate()
	makeLuaSprite('1background', 'weekpul/pulentos', -700, -300)
   addLuaSprite('1background', false)
   setScrollFactor('1background', 1, 1)
   scaleObject('1background', 1.1, 1.1);
   
   if not lowQuality then 
	   makeAnimatedLuaSprite('peoomiddle', 'weekpul/Benzo', -300, 0)
		addAnimationByPrefix('peoomiddle', 'idle', 'benso', 24, true)
	   setScrollFactor('peoomiddle', 1, 1)
	   addLuaSprite('peoomiddle', false)
	   scaleObject('peoomiddle', 1, 1);
	   
	   makeAnimatedLuaSprite('peomiddlee', 'weekpul/TomYork', 500, 400)
	   addAnimationByPrefix('peomiddlee', 'idle', 'cat', 24, true)
	  setScrollFactor('peomiddlee', 1, 1)
	  addLuaSprite('peomiddlee', false)
	  scaleObject('peomiddlee', 1, 1);

	  makeAnimatedLuaSprite('peomiddle', 'weekpul/GfPulenta_normal', 700, 0)
	  addAnimationByPrefix('peomiddle', 'idle', 'gf2', 24, true)
	 setScrollFactor('peomiddle', 1, 1)
	 addLuaSprite('peomiddle', false)
	 scaleObject('peomiddle', 1, 1);

   end
   
   if lowQuality then    
 
	end
 end
 