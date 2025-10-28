function tf = eq(a,b)
  tf = isequal(a.dims,b.dims) && (a.value == b.value);
end