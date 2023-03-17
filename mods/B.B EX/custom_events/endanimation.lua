function onEvent(name,value1,value2)
    if name == 'endanimation' then
        doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
            if value1 == 'bob' then
                triggerEvent('Change Character', 'dad', 'bob-ea');
            end
            if value1 == 'bosip' then
                triggerEvent('Change Character', 'dad', 'bosip-ea');
                playSound('voiceline/bosip_good_job', 0.8)
            end
            if value1 == 'amor' then
                triggerEvent('Change Character', 'dad', 'amor-ea');
            end
            if value1 == 'bluskys' then
                triggerEvent('Change Character', 'dad', 'bluskys-ea');
            end
            if value1 == 'mini' then
                triggerEvent('Change Character', 'dad', 'mini-ea');
            end
            if value1 == 'jghost' then
                triggerEvent('Change Character', 'dad', 'jghost-ea');
                setProperty('gf.visible', false)
                playSound('voiceline/Youdidfine', 0.8)
            end
            if value1 == 'ash' then
                triggerEvent('Change Character', 'dad', 'ash-ea');
                setProperty('gf.visible', false)
                playSound('voiceline/ash_cerb', 0.8)
            end
        end
    end
   

function onCreatePost()
    if value1 == 'bob' then
        precacheImage('bob-ea');
    end
    if value1 == 'bosip' then
        precacheImage('bosip-ea');
    end
    if value1 == 'amor' then
        precacheImage('amor-ea');
    end
    if value1 == 'bluskys' then
        precacheImage('bluskys-ea');
    end
    if value1 == 'mini' then
        precacheImage('mini-ea');
    end
    if value1 == 'jghost' then
        precacheImage('jghost-ea');
    end
    if value1 == 'ash' then
        precacheImage('ash-ea');
    end
end