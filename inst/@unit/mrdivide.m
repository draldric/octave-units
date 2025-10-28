function r = mrdivide(a,b)
  if isa(a,"unit") && isa(b,"unit")
    d = sub_dims(a.dims, b.dims);
    r = unit(a.value/b.value, d, unit.simplify_unit_name(d));
  elseif isa(a,"unit")
    r = unit(a.value/b, a.dims, a.name);
  elseif isa(b,"unit")
    d = structfun(@(x)-x, b.dims, "UniformOutput", false);
    r = unit(a/b.value, d, unit.simplify_unit_name(d));
  end
end

function d = sub_dims(d1,d2)
  f = fieldnames(d1);
  for i = 1:numel(f)
    d.(f{i}) = d1.(f{i}) - d2.(f{i});
  end
end
