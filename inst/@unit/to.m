function out = to(u, target)
  % Convert unit u to the same dimension as 'target'
  if ~isa(target, "unit")
    error("Argument must be a unit object");
  end

  % Check dimensions
  if ~isequal(u.dims, target.dims)
    % If using custom field, allow matching within same custom family
    if isfield(u.dims, "custom") && isfield(target.dims, "custom") && ...
       strcmp(u.dims.custom, target.dims.custom)
      % ok, they belong to same custom dimension (like bit/byte)
    else
      error("Incompatible units: %s ≠ %s", char(u), char(target));
    end
  end

  % Convert by ratio of base values
  scale = target.value;
  out = unit(u.value / scale, target.dims, target.name);
end