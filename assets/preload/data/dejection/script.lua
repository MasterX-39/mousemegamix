function onCreate()
if getProperty('boyfriend.curCharacter') == 'bf-retro' then --change bf-saturn to the char that is being played as
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-retro'); --change bf-saturn-dead to the death json of the char you're playing
		end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.01);
    end
end