classdef unit
%UNIT Physical unit object.
%   The UNIT class represents a physical quantity defined by a numeric
%   value and a set of dimensional exponents.
%
%   Example:
%       u = unit(5, [1 0 0 0 0 0 0]);
%       % Creates a unit representing 5 meters (length dimension only)
%
%   Properties:
%       value       - numeric magnitude
%       exponents   - array defining dimensional exponents
%
%   Methods:
%       unit        - class constructor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                 PROPERTIES                                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	properties (Access = protected) 
		value
		exponents
	end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                 CONSTRUCTOR                                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	methods
		function this = unit(value, exponents)
			% FUNCTION DESCRIPTION
			this.value = value;
			this.exponents  = exponents;
		end
	end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                   METHODS                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	methods
		
	end
end
