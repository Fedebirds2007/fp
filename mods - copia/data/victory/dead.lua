function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover_v4_LOOP');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover_v4_End');
end


function onCreatePost()

   setProperty('scoreTxt.visible', true)

end