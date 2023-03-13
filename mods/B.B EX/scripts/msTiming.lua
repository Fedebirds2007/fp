-- PsychEngine�p�^�C�~���O�\���X�N���v�g 2022.05.07
-- https://www.youtube.com/user/DsGnoll

--�J�X�^���t�H���g�ݒ� ��PsychEngine/mods/fonts�t�H���_�ɔz�u
local customfont = 'vcr.ttf'
-- "Press Start 2P" licensed under the SIL Open Font License, Version 1.1.
-- https://fonts.google.com/specimen/Press+Start+2P

--����ݒ�(ms)
local Perfect = 16.5
local Sick = 45

--�\���ʒu�ݒ�
local mstime_X = 840
local mstime_Y = 340

--�����x�ݒ�
local transparency = 0.8
local ms = 0

--�J���[�ݒ�
local red = '0xFFFF0000'
local orange = '0xFFFF6000'
local yellow = '0xFFFFFF00'
local green = '0xFF00FF00'
local cyan = '0xFF00FFFF'
local white = 'FFFFFF'

--�J�E���g��������
local LATE = 0
local LATE_SICK = 0
local FAST = 0
local FAST_SICK = 0
local msTiming = string.format('%0.2f', 0.00)

--�\���ؑ֐ݒ�
local showTiming = true
local hideKey = 'F1'

function onCreate()
	-- �Ō��^�C�~���O����e�L�X�g�ݒ�
	makeLuaText('msTiming', msTiming .. 'ms', 0, mstime_X, mstime_Y)
	setTextSize('msTiming', 30)
	setTextColor('msTiming', cyan)
	setTextFont('msTiming', customfont)
	addLuaText('msTiming')
	setObjectCamera('msTiming', 'hud')
	setProperty('msTiming.alpha', ms)
	
	-- +ms�J�E���g��Ō��^�C�~���O����̏�ɔz�u
end

function onCreatePost()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') then
		--�����̏ꍇ�ʒu����
		setProperty('msTiming.x', mstime_X - 320)
		setProperty('LATE.x', mstime_X - 350)
		setProperty('FAST.x', mstime_X - 350)
	else
		--nothing
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote then --�������ςȂ��̃m�[�g�łȂ���Δ��菈��������
		songPosition = getPropertyFromClass('Conductor','songPosition') --�Ȃ̍Đ��ʒu�擾
		strumTime = getPropertyFromGroup('notes', id, 'strumTime') --�q�b�g���̈ʒu�擾
		msTiming = string.format('%0.2f', songPosition - strumTime) --�^�C�~���O�v�Z
		
		--�Ō��^�C�~���O���菈��
		if songPosition - strumTime > Sick then --Good
			setTextColor('msTiming', red)
			LATE_SICK = LATE_SICK + 1
		elseif songPosition - strumTime <= Sick and songPosition - strumTime > Perfect then --Sick
			setTextColor('msTiming', orange)
			LATE = LATE + 1
		elseif songPosition - strumTime <= Perfect and songPosition - strumTime > 0 then --Perfect
			setTextColor('msTiming', cyan)
		elseif songPosition - strumTime == 0 then --Perfect
			setTextColor('msTiming', green)
		elseif songPosition - strumTime < 0 and songPosition - strumTime >= -Perfect then --Perfect
			setTextColor('msTiming', cyan)
		elseif songPosition - strumTime >= -Sick and songPosition - strumTime < -Perfect then --Sick
			setTextColor('msTiming', yellow)
			FAST = FAST + 1
		elseif songPosition - strumTime < -Sick then --Good
			setTextColor('msTiming', red)
			FAST_SICK = FAST_SICK + 1
		end
		
		--�e�L�X�g�X�V
		setTextString('LATE', 'LATE:' .. LATE_SICK .. '(' .. LATE + LATE_SICK ..')')
		setTextString('msTiming', msTiming .. 'ms')
		setTextString('FAST', 'FAST:' .. FAST_SICK .. '(' .. FAST + FAST_SICK ..')')
		setProperty('msTiming.alpha', 1)
		runTimer('changeto0', 1, 1)
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	--�~�X���e�L�X�g�X�V
	setTextColor('msTiming', red)
	setTextString('msTiming', 'miss')
end

function onUpdate(elapsed)
	--�\������
	setProperty('msTiming.visible', showTiming)
	setProperty('LATE.visible', showTiming)
	setProperty('FAST.visible', showTiming)
	
	--F1�L�[�������ƕ\���E��\���؂�ւ�
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.' .. hideKey) then
		showTiming = not showTiming
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'changeto0' then
        setProperty('msTiming.alpha', ms)
    end
end