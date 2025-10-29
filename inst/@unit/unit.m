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
  end

  methods (Static)
      function [name, scale] = simplify_unit_name(d, varargin)
        persistent known;
        if isempty(known)
          known = {};
        end

        % Add new units dynamically
        if nargin > 1 && ischar(d) && strcmp(d, "add")
          if numel(varargin) < 3
            error("Usage: unit.simplify_unit_name('add', name, dims, scale)");
          end
          new_name  = varargin{1};
          new_dims  = varargin{2};
          new_scale = varargin{3};
          for i = 1:rows(known)
            if strcmp(known{i,1}, new_name)
              known(i,:) = {new_name, new_dims, new_scale};
              fprintf("Updated '%s'.\n", new_name);
              return;
            end
          end
          known(end+1,:) = {new_name, new_dims, new_scale};
          fprintf("Added '%s'.\n", new_name);
          return;
        end

        % Lookup mode
        name  = "";
        scale = 1;
        for i = 1:rows(known)
          if isequal(known{i,2}, d)
            name  = known{i,1};
            scale = known{i,3};
            return;
          end
        end
      end
    end
end
