-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'sus' then
			makeLuaSprite('flash', 'black', 0, 0);
			setObjectCamera('flash', 'hud');
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '000000', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 1, 5, 'linear');
		end
    end