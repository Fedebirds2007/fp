function onCreate()
	makeLuaSprite('1background', 'week1/Back', -1800, -900)
	addLuaSprite('1background', false)
	setScrollFactor('1background', 1, 1)
	scaleObject('1background', 1.6, 1.6);

   
   if not lowQuality then 
	   makeAnimatedLuaSprite('peoomiddle', 'week1/MaavoIvette', -500, 60)
		addAnimationByPrefix('peoomiddle', 'idle', 'MAAVETTE', 24, true)
	   setScrollFactor('peoomiddle', 1, 1)
	   addLuaSprite('peoomiddle', false)
	   scaleObject('peoomiddle', 0.5, 0.5);
	   
	   makeAnimatedLuaSprite('peomiddle', 'week1/holasoygerman', -600, 200)
		addAnimationByPrefix('peomiddle', 'idle', 'darkuro instance 1', 24, true)
	   setScrollFactor('peomiddle', 1, 1)
	   addLuaSprite('peomiddle', false)
	   scaleObject('peomiddle', 1, 1);

	   makeAnimatedLuaSprite('peooomiddle', 'week1/Shy__Pico_HUASOS_assets', 1100, 350)
	   addAnimationByPrefix('peooomiddle', 'idle', 'Both_idles', 24, true)
	  setScrollFactor('peooomiddle', 1, 1)
	  addLuaSprite('peooomiddle', false)
	  scaleObject('peooomiddle', 0.8, 0.8);
	  
	  makeAnimatedLuaSprite('peoooomiddle', 'week1/mgrchilenita', -400, 600)
	  addAnimationByPrefix('peoooomiddle', 'idle', 'mgrchilenita instance 1', 24, true)
	 setScrollFactor('peoooomiddle', 1, 1)
	 addLuaSprite('peoooomiddle', false)
	 scaleObject('peoooomiddle', 0.8, 0.8);

	 makeAnimatedLuaSprite('peooooomiddle', 'week1/sulayrecameo', -200, 300)
	 addAnimationByPrefix('peooooomiddle', 'idle', 'sulayrebopper', 24, true)
	 setScrollFactor('peooooomiddle', 1, 1)
	 addLuaSprite('peooooomiddle', false)
	 scaleObject('peooooomiddle', 1, 1);

   end
   
   if lowQuality then    

	end

	makeLuaSprite('2background', 'week1/carro_qliao', -1100, 550)
   addLuaSprite('2background', false)
   setScrollFactor('2background', 1, 1)
   scaleObject('2background', 1, 1);
	

   makeAnimatedLuaSprite('peomiddlee', 'week1/genteFront', -700, -100)
   addAnimationByPrefix('peomiddlee', 'idle', 'BopCrowdFront', 24, true)
   setScrollFactor('peomiddlee', 1, 1)
   addLuaSprite('peomiddlee', false)
   scaleObject('peomiddlee', 1, 1);

end