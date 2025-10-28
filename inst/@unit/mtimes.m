function r = mtimes(a,b)
  if isa(a,"unit") && isa(b,"unit")
    d = add_dims(a.dims, b.dims);
    r = unit(a.value*b.value, d, unit.simplify_unit_name(d));
  elseif isa(a,"unit")
    r = unit(a.value*b, a.dims, a.name);
  elseif isa(b,"unit")
    r = unit(a*b.value, b.dims, b.name);
  end
end

function d = add_dims(d1,d2)
  f = fieldnames(d1);
  for i = 1:numel(f)
    d.(f{i}) = d1.(f{i}) + d2.(f{i});
  end
end
