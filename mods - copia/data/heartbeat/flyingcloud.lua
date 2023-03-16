function onSongStart()
    doTweenX('cloud 1','cloud 1',getProperty('cloud 1.x')-3000, 450)
	doTweenX('cloud 2','cloud 2',getProperty('cloud 2.x')-2200, 350)
	doTweenX('cloud 3','cloud 3',getProperty('cloud 3.x')-2000, 400)
	doTweenX('cloud 4','cloud 4',getProperty('cloud 4.x')-2400, 380)
end

function onCreatePost()

   setProperty('scoreTxt.visible', true)

end