gammaWarned = false;

kog_handler_restrictGamma = 
{

	private _maxGamma = 1;
	private _gamma = getVideoOptions getOrDefault ["gamma", _maxGamma];
	private _brightness = getVideoOptions getOrDefault ["brightness", _maxGamma];
	private _ppBrightness = getVideoOptions getOrDefault ["ppBrightness", _maxGamma];

	if ((_gamma > _maxGamma || _brightness > _maxGamma || _ppBrightness > _maxGamma) && !gammaWarned) then {
		_msg = format ["Gamma/Brightness/AA PP Brightness cannot exceed 1.0 for this mission, please go into settings and lower the value", _maxGamma];
		cutText ["<t font ='RobotoCondensedLight' align = 'center' size='2.3' color='#d6d6d6'>" + _msg + "</t>", "BLACK", -1, true, true];
		
		gammaWarned = true;
	} else 
	{
		if ((_gamma <= _maxGamma && _brightness <= _maxGamma && _ppBrightness <= _maxGamma) && gammaWarned) then {
			cutText ["", "BLACK IN"];
			gammaWarned = false;
		};
	};

};

[kog_handler_restrictGamma, 5] call CBA_fnc_addPerFrameHandler;