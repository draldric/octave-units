function r = plus(a,b)
    if isequal(a.dims,b.dims)
        r = unit(a.value - b.value, a.dims, a.name);
        return
    end

    % If both are custom units with the same base unit, convert
    if ~isempty(a.base_unit) && ~isempty(b.base_unit) && isequal(a.base_unit.dims, b.base_unit.dims)
        % convert both to base unit
        va = a.value * a.base_unit.value;
        vb = b.value * b.base_unit.value;
        dims = a.base_unit.dims;
        r = unit(va - vb, dims, char(a.base_unit));
        return
    end

    error('Cannot add incompatible units: %s + %s', char(a), char(b));
end