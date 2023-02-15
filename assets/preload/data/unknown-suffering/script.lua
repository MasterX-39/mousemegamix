
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.025);
    end
end

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Speed Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MOUSENOTE_assets'); --Change texture

		end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
      if noteType == 'Speed Note' then
	  characterPlayAnim('boyfriend','at', true);
	  end
	 end