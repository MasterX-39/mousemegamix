-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Flash White' then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'hud');
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', 'FFFFFF', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 0, 1, 'linear');
		end
end