-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Flash Black' then
			makeLuaSprite('flash', 'black', 0, 0);
			setObjectCamera('flash', 'hud');
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', '000000', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 0, 1, 'linear');
		end
    end