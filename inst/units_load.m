function units_load()
  % Define base dimensions
      base_dims = struct( ...
        'length',0, 'mass',0, 'time',0, 'current',0, ...
        'temperature',0, 'amount',0, 'illumination',0, ...
        'custom', '' ...
        );

  % SI Base Units
      _m   = unit(1, setfield(base_dims,'length',1), 'm');
      _kg  = unit(1, setfield(base_dims,'mass',1), 'kg');
      _s   = unit(1, setfield(base_dims,'time',1), 's');
      _A   = unit(1, setfield(base_dims,'current',1), 'A');
      _K   = unit(1, setfield(base_dims,'temperature',1), 'K');
      _mol = unit(1, setfield(base_dims,'amount',1), 'mol');
      _cd  = unit(1, setfield(base_dims,'illumination',1), 'cd');
      
      %assignin("base","_m",_m);
      assignin("base","_kg",_kg);
      assignin("base","_s",_s);
      assignin("base","_A",_A);
      assignin("base","_K",_K);
      assignin("base","_mol",_mol);
      assignin("base","_cd",_cd);
  
  % Length Units
      assignin("base","_Qm",  1e30*_m);
      assignin("base","_Rm",  1e27*_m);
      assignin("base","_Ym",  1e24*_m);
      assignin("base","_Zm",  1e21*_m);
      assignin("base","_Em",  1e18*_m);
      assignin("base","_Pm",  1e15*_m);
      assignin("base","_Tm",  1e12*_m);
      assignin("base","_Gm",  1e09*_m);
      assignin("base","_Mm",  1e06*_m);
      assignin("base","_km",  1e03*_m);
      assignin("base","_hm",  1e02*_m);
      assignin("base","_dam", 1e01*_m);
      assignin("base","_m",   1e00*_m);
      assignin("base","_dm", 1e-01*_m);
      assignin("base","_cm", 1e-02*_m);
      assignin("base","_mm", 1e-03*_m);
      assignin("base","_um", 1e-06*_m);
      assignin("base","_nm", 1e-09*_m);
      assignin("base","_pm", 1e-12*_m);
      assignin("base","_fm", 1e-15*_m);
      assignin("base","_am", 1e-18*_m);
      assignin("base","_zm", 1e-21*_m);
      assignin("base","_ym", 1e-24*_m);
      assignin("base","_rm", 1e-27*_m);
      assignin("base","_qm", 1e-30*_m);
      
      assignin("base","_twip", 127/7200000*_m);
      assignin("base","_mil", 0.0000254*_m);
      assignin("base","_p", 127/360000*_m);
      assignin("base","_P", 127/30000*_m);
      assignin("base","_in", 0.0254*_m);
      assignin("base","_ft", 0.3048*_m);
      assignin("base","_yd", 0.9144*_m);
      assignin("base","_mi", 1609.344*_m);
      assignin("base","_le", 4828.032*_m);
      
  % Derived Units
      _N  = _kg * _m / _s^2;  _N.name  = "N";
      _Pa = _N / _m^2;        _Pa.name = "Pa";
      _J  = _N * _m;          _J.name  = "J";
      _W  = _J / _s;          _W.name  = "W";
      _Hz = 1 / _s;           _Hz.name = "HZ";

      assignin("base","_N",_N);
      assignin("base","_Pa",_Pa);
      assignin("base","_J",_J);
      assignin("base","_W",_W);
      assignin("base","_Hz",_Hz);

  _in = 0.0254 * _m;   % 1 inch = 0.0254 meters
  _in.name = "in";
  assignin("base","_in",_in);
end
