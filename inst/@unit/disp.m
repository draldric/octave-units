function disp(u)
  [~, scale] = unit.simplify_unit_name(u.dims);
  fprintf("%g %s\n", u.value/scale, char(u));
end