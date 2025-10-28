function units_init(force)
  if nargin < 1, force = false; end
  units_load();

  % define convenient aliases
  defs = {
    "m",  "_m";
    "kg", "_kg";
    "s",  "_s";
    "N",  "_N";
    "Pa", "_Pa";
    "J",  "_J";
    "W",  "_W";
    "Hz", "_Hz";
  };

  for i = 1:rows(defs)
    name = defs{i,1};
    ref  = defs{i,2};
    if force || evalin("base", sprintf("exist('%s','var')", name)) == 0
      assignin("base", name, evalin("base", ref));
    else
      warning("units:skipped", "Variable '%s' exists — skipped defining unit.", name);
    end
  end
end