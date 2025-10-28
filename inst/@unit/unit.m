classdef unit
  properties
    value
    dims
    name
  end
  methods
    function u = unit(value, dims, name)
      if nargin < 3, name = ""; end
      u.value = value;
      u.dims  = dims;
      u.name  = name;
    end
  end
  methods (Static)
    function name = simplify_unit_name(d)
      persistent known;
      if isempty(known)
        known = {
          "N",  struct('length', 1,'mass',1,'time',-2,'current',0,'temperature',0,'amount',0,'illumination',0);
          "Pa", struct('length',-1,'mass',1,'time',-2,'current',0,'temperature',0,'amount',0,'illumination',0);
          "J",  struct('length', 2,'mass',1,'time',-2,'current',0,'temperature',0,'amount',0,'illumination',0);
          "W",  struct('length', 2,'mass',1,'time',-3,'current',0,'temperature',0,'amount',0,'illumination',0);
          "Hz", struct('length', 0,'mass',0,'time',-1,'current',0,'temperature',0,'amount',0,'illumination',0);
        };
      end
      name = "";
      for i = 1:rows(known)
        if isequal(known{i,2}, d)
          name = known{i,1};
          return
        end
      end
    end
  end
end
