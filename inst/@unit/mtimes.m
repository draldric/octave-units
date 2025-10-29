function r = mtimes(a,b)
    if ~isa(a,'unit'), a = unit(a, struct('length',0,'mass',0,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0,'custom',''), ''); end
    if ~isa(b,'unit'), b = unit(b, struct('length',0,'mass',0,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0,'custom',''), ''); end

    f = fieldnames(a.dims);
    new_dims = a.dims;
    for i = 1:numel(f)
        if strcmp(f{i},'custom')
            if isempty(a.dims.custom)
                new_dims.custom = b.dims.custom;
            elseif isempty(b.dims.custom)
                new_dims.custom = a.dims.custom;
            else
                new_dims.custom = [a.dims.custom '*' b.dims.custom];
            end
        else
            new_dims.(f{i}) = a.dims.(f{i}) + b.dims.(f{i});
        end
    end
    r = unit(a.value * b.value, new_dims, unit.simplify_unit_name(new_dims));
end
