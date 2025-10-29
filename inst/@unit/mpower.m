function r = mpower(a,n)
    f = fieldnames(a.dims);
    new_dims = a.dims;
    for i = 1:numel(f)
        if ~strcmp(f{i},'custom')
            new_dims.(f{i}) = new_dims.(f{i}) * n;
        end
    end
    r = unit(a.value^n, new_dims, unit.simplify_unit_name(new_dims));
end
