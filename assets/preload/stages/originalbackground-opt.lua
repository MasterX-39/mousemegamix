function onCreate()
	-- awebo stage optimizado, eso creo xd
	makeLuaSprite('lmao','lmao', -600, -300);
	addLuaSprite('lmao',false)
	setScrollFactor('lmao',0.9,0.9);
	
	makeLuaSprite('warning','warning', 0, 0);
	addLuaSprite('warning',true)
	setProperty('warning.visible',false)
	
	makeLuaSprite('warning2','warning2', 0, 0);
	addLuaSprite('warning2',true)
	setProperty('warning2.visible',false)
	
	makeLuaSprite('warning3','warning3', 0, 0);
	addLuaSprite('warning3',true)
	setProperty('warning3.visible',false)
	
	makeLuaSprite('warning4','warning4', 0, 0);
	addLuaSprite('warning4',true)
	setProperty('warning4.visible',false)
	
	makeLuaSprite('warning5','warning5', 0, 0);
	addLuaSprite('warning5',true)
	setProperty('warning5.visible',false)
	
	makeLuaSprite('warning6','warning6', 0, 0);
	addLuaSprite('warning6',true)
	setProperty('warning6.visible',false)
	
	makeLuaSprite('warning7','warning7', 0, 0);
	addLuaSprite('warning7',true)
	setProperty('warning7.visible',false)
	
	makeLuaSprite('warning8','warning8', 0, 0);
	addLuaSprite('warning8',true)
	setProperty('warning8.visible',false)
	
	makeLuaSprite('warning9','warning9', 0, 0);
	addLuaSprite('warning9',true)
	setProperty('warning9.visible',false)
	
	makeLuaSprite('warning10','warning10', 0, 0);
	addLuaSprite('warning10',true)
	setProperty('warning10.visible',false)
	
	makeLuaSprite('warning11','warning11', 0, 0);
	addLuaSprite('warning11',true)
	setProperty('warning11.visible',false)
	
	makeLuaSprite('warning12','warning12', 0, 0);
	addLuaSprite('warning12',true)
	setProperty('warning12.visible',false)
	
	makeLuaSprite('warning13','warning13', 0, 0);
	addLuaSprite('warning13',true)
	setProperty('warning13.visible',false)
	
	
end

function onEvent(name, value1, value2)
	          
	        if name == 'PopUp1' then
                      setProperty('warning.visible',true)
                      doTweenColor('hello', 'warning', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning', 'other');
                      runTimer('wait1', value2);
                      end
			if name == 'PopUp2' then
                      setProperty('warning2.visible',true)
                      doTweenColor('hello', 'warning2', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning2', 'other');
                      runTimer('wait2', value2);
                      end
		    if name == 'PopUp3' then
                      setProperty('warning3.visible',true)
                      doTweenColor('hello', 'warning3', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning3', 'other');
                      runTimer('wait3', value2);
                      end
			if name == 'PopUp4' then
                      setProperty('warning4.visible',true)
                      doTweenColor('hello', 'warning4', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning4', 'other');
                      runTimer('wait4', value2);
					   end
		    if name == 'PopUp5' then
                      setProperty('warning5.visible',true)
                      doTweenColor('hello', 'warning5', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning5', 'other');
                      runTimer('wait5', value2);
					   end
		    if name == 'PopUp6' then
                      setProperty('warning6.visible',true)
                      doTweenColor('hello', 'warning6', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning6', 'other');
                      runTimer('wait6', value2);
					   end
			if name == 'PopUp7' then
                      setProperty('warning7.visible',true)
                      doTweenColor('hello', 'warning7', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning7', 'other');
                      runTimer('wait7', value2);
					   end
			if name == 'PopUp8' then
                      setProperty('warning8.visible',true)
                      doTweenColor('hello', 'warning8', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning8', 'other');
                      runTimer('wait8', value2);
					   end
		    if name == 'PopUp9' then
                      setProperty('warning9.visible',true)
                      doTweenColor('hello', 'warning9', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning9', 'other');
                      runTimer('wait9', value2);
					   end
		    if name == 'PopUp10' then
                      setProperty('warning10.visible',true)
                      doTweenColor('hello', 'warning10', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning10', 'other');
                      runTimer('wait10', value2);
					   end		   
			if name == 'PopUp11' then
                      setProperty('warning11.visible',true)
                      doTweenColor('hello', 'warning11', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning11', 'other');
                      runTimer('wait11', value2);
					   end
			if name == 'PopUp12' then
                      setProperty('warning12.visible',true)
                      doTweenColor('hello', 'warning12', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning12', 'other');
                      runTimer('wait12', value2);
					   end
			if name == 'PopUp13' then
                      setProperty('warning13.visible',true)
                      doTweenColor('hello', 'warning13', 'FFFFFFFF', 0.1, 'quartIn');
                      playSound('popup', 1)
                      setObjectCamera('warning13', 'other');
                      runTimer('wait13', value2);
					   end
			end
    function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait1' then
    doTweenAlpha('byebye1', 'warning', 0, 0.1, 'linear');
	end
	if tag == 'wait2' then
	doTweenAlpha('byebye2', 'warning2', 0, 0.1, 'linear');
	end
	if tag == 'wait3' then
	doTweenAlpha('byebye3', 'warning3', 0, 0.1, 'linear');
	end
	if tag == 'wait4' then
	doTweenAlpha('byebye4', 'warning4', 0, 0.1, 'linear');
	end
	if tag == 'wait5' then
	doTweenAlpha('byebye5', 'warning5', 0, 0.1, 'linear');
	end
	if tag == 'wait6' then
	doTweenAlpha('byebye6', 'warning6', 0, 0.1, 'linear');
	end
	if tag == 'wait7' then
	doTweenAlpha('byebye7', 'warning7', 0, 0.1, 'linear');
	end
	if tag == 'wait8' then
	doTweenAlpha('byebye8', 'warning8', 0, 0.1, 'linear');
	end
	if tag == 'wait9' then
	doTweenAlpha('byebye9', 'warning9', 0, 0.1, 'linear');
	end
	if tag == 'wait10' then
	doTweenAlpha('byebye10', 'warning10', 0, 0.1, 'linear');
	end
	if tag == 'wait11' then
	doTweenAlpha('byebye11', 'warning11', 0, 0.1, 'linear');
	end
	if tag == 'wait12' then
	doTweenAlpha('byebye12', 'warning12', 0, 0.1, 'linear');
	end
	if tag == 'wait13' then
	doTweenAlpha('byebye13', 'warning13', 0, 0.1, 'linear');
	end
	
    end
    
    function onTweenCompleted(tag)
    if tag == 'byebye1' then
    setProperty('warning.visible', false);
	end
end
	function onTweenCompleted(tag)
	 if tag == 'byebye2' then
	 setProperty('warning2.visible', false);
	 end
end
    function onTweenCompleted(tag)
	  if tag == 'byebye3' then
	  setProperty('warning3.visible', false);
	  end
end
    function onTweenCompleted(tag)
	   if tag == 'byebye4' then
	   setProperty('warning4.visible', false);
	   end
end
    function onTweenCompleted(tag)
	    if tag == 'byebye5' then
	    setProperty('warning5.visible', false);
		end
end
    function onTweenCompleted(tag)
		 if tag == 'byebye6' then
		 setProperty('warning6.visible', false);
		 end
end
    function onTweenCompleted(tag)
		  if tag == 'byebye7' then
		  setProperty('warning7.visible', false);
		  end
end
    function onTweenCompleted(tag)
		   if tag == 'byebye8' then
		   setProperty('warning8.visible', false);
		   end
end
    function onTweenCompleted(tag)
		    if tag == 'byebye9' then
		    setProperty('warning9.visible', false);
			end
end
    function onTweenCompleted(tag)
			 if tag == 'byebye10' then
			 setProperty('warning10.visible', false);
			 end
end
    function onTweenCompleted(tag)
			  if tag == 'byebye11' then
			  setProperty('warning11.visible', false);
			  end
end
    function onTweenCompleted(tag)
			   if tag == 'byebye12' then
			   setProperty('warning12.visible', false);
			   end
end
    function onTweenCompleted(tag)
			    if tag == 'byebye13' then
			     setProperty('warning13.visible', false);
				 end
  end