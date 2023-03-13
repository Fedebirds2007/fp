-- PsychEngine用タイミング表示スクリプト 2022.05.07
-- https://www.youtube.com/user/DsGnoll

--カスタムフォント設定 ※PsychEngine/mods/fontsフォルダに配置
local customfont = 'vcr.ttf'
-- "Press Start 2P" licensed under the SIL Open Font License, Version 1.1.
-- https://fonts.google.com/specimen/Press+Start+2P

--判定設定(ms)
local Perfect = 16.5
local Sick = 45

--表示位置設定
local mstime_X = 840
local mstime_Y = 340

--透明度設定
local transparency = 0.8
local ms = 0

--カラー設定
local red = '0xFFFF0000'
local orange = '0xFFFF6000'
local yellow = '0xFFFFFF00'
local green = '0xFF00FF00'
local cyan = '0xFF00FFFF'
local white = 'FFFFFF'

--カウント数初期化
local LATE = 0
local LATE_SICK = 0
local FAST = 0
local FAST_SICK = 0
local msTiming = string.format('%0.2f', 0.00)

--表示切替設定
local showTiming = true
local hideKey = 'F1'

function onCreate()
	-- 打鍵タイミング判定テキスト設定
	makeLuaText('msTiming', msTiming .. 'ms', 0, mstime_X, mstime_Y)
	setTextSize('msTiming', 30)
	setTextColor('msTiming', cyan)
	setTextFont('msTiming', customfont)
	addLuaText('msTiming')
	setObjectCamera('msTiming', 'hud')
	setProperty('msTiming.alpha', ms)
	
	-- +msカウントを打鍵タイミング判定の上に配置
end

function onCreatePost()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') then
		--中央の場合位置調整
		setProperty('msTiming.x', mstime_X - 320)
		setProperty('LATE.x', mstime_X - 350)
		setProperty('FAST.x', mstime_X - 350)
	else
		--nothing
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote then --押しっぱなしのノートでなければ判定処理をする
		songPosition = getPropertyFromClass('Conductor','songPosition') --曲の再生位置取得
		strumTime = getPropertyFromGroup('notes', id, 'strumTime') --ヒット時の位置取得
		msTiming = string.format('%0.2f', songPosition - strumTime) --タイミング計算
		
		--打鍵タイミング判定処理
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
		
		--テキスト更新
		setTextString('LATE', 'LATE:' .. LATE_SICK .. '(' .. LATE + LATE_SICK ..')')
		setTextString('msTiming', msTiming .. 'ms')
		setTextString('FAST', 'FAST:' .. FAST_SICK .. '(' .. FAST + FAST_SICK ..')')
		setProperty('msTiming.alpha', 1)
		runTimer('changeto0', 1, 1)
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	--ミス時テキスト更新
	setTextColor('msTiming', red)
	setTextString('msTiming', 'miss')
end

function onUpdate(elapsed)
	--表示処理
	setProperty('msTiming.visible', showTiming)
	setProperty('LATE.visible', showTiming)
	setProperty('FAST.visible', showTiming)
	
	--F1キーを押すと表示・非表示切り替え
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.' .. hideKey) then
		showTiming = not showTiming
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'changeto0' then
        setProperty('msTiming.alpha', ms)
    end
end