function onCreate() 
	-- background shit 
	makeLuaSprite('stageback2', 'stageback2', -600, -350); 
	setLuaSpriteScrollFactor('stageback2', 0.9, 0.9); 
		 addLuaSprite('stageback2', false); 
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage 
 end 
 