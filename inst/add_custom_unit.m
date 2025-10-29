function u = add_custom_unit(name)
    % Create canonical base dims
    base_dims = struct('length',0,'mass',0,'time',0,'current',0,...
                       'temperature',0,'amount',0,'illumination',0,'custom','');

		% Create new canonical base unit (e.g., bit)
		base_dims.custom = name;   % mark its own family
		u = unit(1, base_dims, name);
		%u.base_unit = u;           % points to itself

    assignin('base', ['_' name], u);
end
