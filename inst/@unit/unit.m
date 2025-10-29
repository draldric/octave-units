classdef unit
  properties
    value
    dims
    name
    base_unit = []  % optional: used for custom unit conversions
  end

  methods
    function u = unit(value, dims, name)
      if nargin < 3, name = ""; end
      u.value = value;
      u.dims  = dims;
      u.name  = name;
    end

    function str = char(u)
      if ~isempty(u.name)
        str = u.name;
      elseif ~isempty(u.dims.custom)
        str = u.dims.custom;
      else
        str = dim_to_string(u.dims);
      end
    end

    function disp(u)
      fprintf("%g %s\n", u.value, char(u));
    end
  end

  methods (Static)
    function name = simplify_unit_name(d)
      % Known physical units
      persistent known;
      if isempty(known)
        known = {
          "N",  struct('length',1,'mass',1,'time',-2,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          "Pa", struct('length',-1,'mass',1,'time',-2,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          "J",  struct('length',2,'mass',1,'time',-2,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          "W",  struct('length',2,'mass',1,'time',-3,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          "Hz", struct('length',0,'mass',0,'time',-1,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          % Dimensionless-but-named
          "rad", struct('length',0,'mass',0,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          "deg", struct('length',0,'mass',0,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
          "rev", struct('length',0,'mass',0,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0,'custom','');
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