function r = mpower(a,n)
  d = structfun(@(x) x*n, a.dims, "UniformOutput", false);
  r = unit(a.value^n, d, unit.simplify_unit_name(d));
end
