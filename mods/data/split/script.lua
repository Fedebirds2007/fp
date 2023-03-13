local allowCountdown = false
local allowCountdownEnd = false;
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('Cutscene3Subtitlesmp4');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
    if not allowCountdownEnd and isStoryMode and not seenCutscene and not lowQuality then
        startVideo('Cutscene4Subtitlesmp4');   
        allowCountdownEnd = true;
        return Function_Stop;
    end
    return Function_Continue;
end