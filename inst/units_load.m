function units_load()
  % Define base dimensions
  dL = struct('length',1,'mass',0,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0);
  dM = struct('length',0,'mass',1,'time',0,'current',0,'temperature',0,'amount',0,'illumination',0);
  dT = struct('length',0,'mass',0,'time',1,'current',0,'temperature',0,'amount',0,'illumination',0);

  % Define some base units
  global _m _kg _s _N _Pa _J _W _Hz _in
  _m  = unit(1, dL,  "m");
  _kg = unit(1, dM,  "kg");
  _s  = unit(1, dT,  "s");

  % Derived units
  _N  = _kg * _m / _s^2;  _N.name  = "N";
  _Pa = _N / _m^2;        _Pa.name = "Pa";
  _J  = _N * _m;          _J.name  = "J";
  _W  = _J / _s;          _W.name  = "W";
  _Hz = 1 / _s;           _Hz.name = "HZ" %unit(1, struct('length',0,'mass',0,'time',-1,'current',0,'temperature',0,'amount',0,'illumination',0), "Hz");

  assignin("base","_m",_m);
  assignin("base","_kg",_kg);
  assignin("base","_s",_s);
  assignin("base","_N",_N);
  assignin("base","_Pa",_Pa);
  assignin("base","_J",_J);
  assignin("base","_W",_W);
  assignin("base","_Hz",_Hz);

  _in = 0.0254 * _m;   % 1 inch = 0.0254 meters
  _in.name = "in";
  assignin("base","_in",_in);
end
