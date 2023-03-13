function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'duet' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/AandC');
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
  if noteType == 'duet' then
  	if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
        characterPlayAnim('girlfriend', 'singLEFT', false);
    end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
        characterPlayAnim('girlfriend', 'singRIGHT', false);
    end
    if getProperty('dad.animation.curAnim.name') == 'singUP' then
        characterPlayAnim('girlfriend', 'singUP', false);
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
        characterPlayAnim('girlfriend', 'singDOWN', false);
    end
end
end