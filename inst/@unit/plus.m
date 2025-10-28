function r = plus(a,b)
  if ~isequal(a.dims, b.dims)
    error("Units are not compatible for addition.");
  end
  r = unit(a.value + b.value, a.dims, a.name);
end