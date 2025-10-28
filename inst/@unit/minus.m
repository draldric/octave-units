function r = minus(a,b)
  if ~isequal(a.dims, b.dims)
    error("Units are not compatible for subtraction.");
  end
  r = unit(a.value - b.value, a.dims, a.name);
end