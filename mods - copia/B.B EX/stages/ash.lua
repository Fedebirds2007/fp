function onCreate() 
	-- background shit 
	makeLuaSprite('stageback3', 'stageback3', -500, -380); 
	setLuaSpriteScrollFactor('stageback3', 0.9, 0.9); 
		 addLuaSprite('stageback3', false); 
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage 
 end 