local Strums_Texture = ''
local Notes_Texture = ''
local Splashes_Texture = ''
function onUpdatePost()
    if dadName == 'bob' or dadName == 'bobex' then   --dad notes
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/bob');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/bob');
            end
        end
    end
    if dadName == 'bosip' or dadName == 'bosipex' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/bosip');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/bosip');
            end
        end
    end
    if dadName == 'amor' or dadName == 'amorex' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/amor');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/amor');
            end
        end
    end
    if dadName == 'gf' or dadName == 'gfex' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/gf');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/gf');
            end
        end
    end
    if dadName == 'bluskys' or dadName == 'bluskysex' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/bluskys');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/bluskys');
            end
        end
    end
    if dadName == 'minishoey' or dadName == 'minishoeyex' or dadName == 'minishoeyex-bw' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/minishoey');
             if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/minishoey');
            end
        end
    end
    if dadName == 'jghost' or dadName == 'jghostex' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/jghost');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/jghost');
            end
        end
    end
    if dadName == 'ash' or dadName == 'ashex' or dadName == 'fakecerbex' then
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/ash');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/ash');
            end
        end
    end
    if dadName == 'cerb' or dadName == 'cerbex' or dadName == 'fakecerb' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/cerbera');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/cerbera');
            end
        end
    end
    if dadName == 'cerbex-both' or dadName == 'ash-both' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/AandC');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/AandC');
            end
        end
    end
    if dadName == 'truebob' or dadName == 'truebobex' or dadName == 'bob-assets' or dadName == 'dreamex' or dadName == 'ex-bob' or dadName == 'nodreamex' then   
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/gloopy');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/gloopy');
            end
        end
    end
    if dadName == 'ron' or dadName == 'ronex' or dadName == 'npesta' or dadName == 'heman' then
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/ronsip');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/ronsip');
            end
        end
    end
    if dadName == 'bone' then
        for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'notes/normal');
            if not getPropertyFromGroup('notes', i, 'mustPress') then
                setPropertyFromGroup('notes', i, 'texture', 'notes/normal');
            end
        end
    end
end