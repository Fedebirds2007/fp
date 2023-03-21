function onCreate()
	makeLuaSprite('1background', 'week3/arbolfondo', -850, -300)
   addLuaSprite('1background', false)
   setScrollFactor('1background', 0.9, 0.95)
   scaleObject('1background', 1.8, 1.8);
   
   makeLuaSprite('2background', 'week3/bg1', -700, -150)
   addLuaSprite('2background', false)
   setScrollFactor('background', 1, 1)
   scaleObject('2background', 1.8, 1.8);

   
   if not lowQuality then 
	   makeAnimatedLuaSprite('peoomiddle', 'week3/papus3', 1100, 300)
		addAnimationByPrefix('peoomiddle', 'idle', 'izquierda instance 1', 24, true)
	   setScrollFactor('peoomiddle', 1, 1)
	   addLuaSprite('peoomiddle', false)
	   scaleObject('peoomiddle', 1.8, 1.8);
	   
	   makeAnimatedLuaSprite('peomiddle', 'week3/papus1', -550, 250)
		addAnimationByPrefix('peomiddle', 'idle', 'derecha', 24, true)
	   setScrollFactor('peomiddle', 1, 1)
	   addLuaSprite('peomiddle', false)
	   scaleObject('peomiddle', 1.8, 1.8);
 
   end
   
   if lowQuality then    
 
	end

	makeLuaSprite('3background', 'week3/relleno', -600, 0)
	addLuaSprite('3background', false)
	setScrollFactor('background', 1, 1)
	scaleObject('3background', 0.8, 0.8);

 end
 