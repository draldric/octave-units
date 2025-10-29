function u = add_custom_unit(name, value, base_unit)
    % Create canonical base dims
    base_dims = struct('length',0,'mass',0,'time',0,'current',0,...
                       'temperature',0,'amount',0,'illumination',0,'custom','');

    if nargin < 3 || isempty(base_unit)
        % Create new canonical base unit (e.g., bit)
        base_dims.custom = name;   % mark its own family
        u = unit(1, base_dims, name);
        u.base_unit = u;           % points to itself
    else
        % Derive from an existing custom unit (e.g., byte from bit)
        canonical = base_unit.base_unit;
        dims = canonical.dims;
        u = unit(value * canonical.value, dims, name);
        u.base_unit = canonical;
    end

    assignin('base', ['_' name], u);
end
