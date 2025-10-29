function s = char(u)
  if isempty(u.name)
    s = dim_to_string(u.dims);
  else
    s = u.name;
  end
end
