function s = dim_to_string(d)
  known = unit.simplify_unit_name(d);
  if ~isempty(known)
    s = known;
    return
  end

  base = {'length','mass','time','current','temerature','amount','illumination'};
  names = {'m','kg','s','A','K','mol','cd'};
  parts = {};
  for i = 1:numel(base)
    p = d.(base{i});
    if p ~= 0
      if p == 1
        parts{end+1} = names{i};
      else
        parts{end+1} = sprintf('%s^%g', names{i}, p);
      end
    end
  end
  s = strjoin(parts, '*');
end
