function onCreate() 
   -- background shit 
   makeLuaSprite('week2/bg3', 'week2/bg3', -600, -100); 
   setLuaSpriteScrollFactor('week2/bg3', 1, 1); 
   scaleObject('week2/bg3', 1.3, 1.3);
        addLuaSprite('week2/bg3', false); 
   close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage 
end 
