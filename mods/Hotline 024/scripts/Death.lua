function onCreate()
addCharacterToList('death', 'boyfriend');
precacheImage('characters/MATZURETRY')
setPropertyFromClass('GameOverSubstate', 'characterName', 'death'); --Character json file for the death animation
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end