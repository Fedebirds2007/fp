local Strums_Texture = ''
local Notes_Texture = ''
local Splashes_Texture = ''
function onUpdatePost()
if boyfriendName == 'bf' or boyfriendName == 'bfex' or boyfriendName == 'bfex-bw' or boyfriendName == 'bf-night' or boyfriendName == 'bfex-night' or boyfriendName == 'sans' or boyfriendName == 'sansex' then
    for i = 0, getProperty('playerStrums.length')-1 do
    setPropertyFromGroup('playerStrums', i, 'texture', 'notes/bf');
        if getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing' or 'normal') then
            setPropertyFromGroup('notes', i, 'texture', 'notes/bf');
            setPropertyFromGroup('notes', i, 'noteSplashTexture', 'splashes/bfSplashes');
        end
    end
end

if boyfriendName == 'bob-playable' then
    for i = 0, getProperty('playerStrums.length')-1 do
    setPropertyFromGroup('playerStrums', i, 'texture', 'notes/bob');
        if getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing' or 'normal') then
            setPropertyFromGroup('notes', i, 'texture', 'notes/bob');
            setPropertyFromGroup('notes', i, 'noteSplashTexture', 'splashes/bobSplashes');
        end
    end
end
end