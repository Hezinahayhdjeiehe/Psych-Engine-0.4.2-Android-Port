function onEvent(name, value1, value2) 
	drainValue = tonumber(value1);
	curHealth = getProperty('health');
		if drainValue == null then
		drainValue = 0.01;
		else 
		damageValue = 0.09 + drainValue;
		end
		if name == 'Drain' then
			if curHealth > damageValue then
			setProperty('health', curHealth - damageValue);
		
			end
		end
	end
