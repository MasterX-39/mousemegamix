function onCreate()
if getProperty('boyfriend.curCharacter') == 'bf-suicide' then --change bf-saturn to the char that is being played as
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-retro'); --change bf-saturn-dead to the death json of the char you're playing
		end
		
if getProperty('boyfriend.curCharacter') == 'bf-retro' then --change bf-saturn to the char that is being played as
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-retro'); --change bf-saturn-dead to the death json of the char you're playing
		end
end