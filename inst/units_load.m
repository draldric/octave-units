function units_load()
  % Additional Units Structure
      addunit.name={};addunit.value=[];
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

  % SI Prefixes
      SIprefix.name  = {"Q", "R", "Y", "Z", "E", "P", "T", "G", "M", "k", "h","da",  "", "d", "c", "m", "u", "n", "p", "f", "a", "z", "y", "r", "q"};
      SIprefix.value = [ 30,  27,  24,  21,  18,  15,  12,  09,  06,  03,  02,  01,  00, -01, -02, -03, -06, -09, -12, -15, -18, -21, -24, -27, -30];

%%%%% Length Units %%%%%
      baseUnit = _m;

  % SI Prefix Lengths
      factor   =  0;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

  % US Customary Lengths
      addunit = addu(addunit,"twip",127/7200000);
      addunit = addu(addunit,"mil",0.0000254);
      addunit = addu(addunit,"p",127/360000);
      addunit = addu(addunit,"point",127/360000);
      addunit = addu(addunit,"P",127/30000);
      addunit = addu(addunit,"pica",127/30000);
      addunit = addu(addunit,"in",0.0254);
      addunit = addu(addunit,"inch",0.0254);
      addunit = addu(addunit,"ft",0.3048);
      addunit = addu(addunit,"foot",0.3048);
      addunit = addu(addunit,"yd",0.9144);
      addunit = addu(addunit,"yard",0.9144);
      addunit = addu(addunit,"mi",1609.344);
      addunit = addu(addunit,"mile",1609.344);
      addunit = addu(addunit,"le",4828.032);
      addunit = addu(addunit,"league",4828.032);
      for idx = 1:length(addunit.name)
        assignin("base", ["_" addunit.name{idx}], addunit.value(idx)*baseUnit);
      end
      addunit = clearu(addunit);
			
%%%%% Mass Units %%%%%
      baseUnit = _kg;

  % SI Prefix Masses
      factor   =  3;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

  % US Customary Masses
      addunit = addu(addunit,"gr",64.79891e-6);
      addunit = addu(addunit,"dr",1.771845195e-3);
      addunit = addu(addunit,"oz",28.349523125e-3);
      addunit = addu(addunit,"lb",453.59237e-3);
      addunit = addu(addunit,"lbm",453.59237e-3);
      addunit = addu(addunit,"cwt",45.359237);
      addunit = addu(addunit,"cwt_US",)45.359237;
      addunit = addu(addunit,"cwt_UK",50.80234544);
      addunit = addu(addunit,"ton",907.18474);
      addunit = addu(addunit,"ton_US",907.18474);
      addunit = addu(addunit,"ton_UK",1,016.0469088);
      addunit = addu(addunit,"dwt",1.55517384e-3);
      addunit = addu(addunit,"ozt",31.1034768e-3);
      addunit = addu(addunit,"lbt",373.2417216e-3);
      for idx = 1:length(addunit.name)
        assignin("base", ["_" addunit.name{idx}], addunit.value(idx)*baseUnit);
      end
      addunit = clearu(addunit);

%%%%% Time Units %%%%%
      baseUnit = _s;

  % SI Prefix Lengths
      factor   =  0;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

%%%%% Current Units %%%%%
      baseUnit = _A;

  % SI Prefix Lengths
      factor   =  0;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

%%%%% Temperature Units %%%%%
      baseUnit = _K;

  % SI Prefix Lengths
      factor   =  0;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

%%%%% Amount Units %%%%%
      baseUnit = _s;

  % SI Prefix Lengths
      factor   =  0;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

%%%%% Illumination Units %%%%%
      baseUnit = _cd;

  % SI Prefix Lengths
      factor   =  0;
      for idx = 1:length(SIprefix.name)
          %if (SIprefix.value(idx)~=factor)
            assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
          %end
      end

%%%%% Derived Units %%%%%
%%%%% Volume Units %%%%%
      baseUnit = unit(1e-3, setfield(base_dims,'length',3), 'L');;
      
			% Make L default Unit for Volume
        % unit.simplify_unit_name('add', 'L', setfield(base_dims,'length',3),1e-3);

  % SI Prefix Volumes
      factor   =  0;
      for idx = 1:length(SIprefix.name)
        assignin("base", ["_" SIprefix.name{idx} baseUnit.name], 10^(SIprefix.value(idx)-factor)*baseUnit);
      end
  % US Customary Volumes
      baseUnit = _m^3;
      addunit = addu(addunit,"fl_dr",3.6966911953125e-6);
      addunit = addu(addunit,"fl_dr_US",3.6966911953125e-6);
      addunit = addu(addunit,"tsp",4.92892159375e-6);
      addunit = addu(addunit,"tbsp",14.78676478125e-6);
      addunit = addu(addunit,"fl_oz_US",29.5735295625e-6);
      addunit = addu(addunit,"fl_oz",29.5735295625e-6);
      addunit = addu(addunit,"jig",44.36029434375e-6);
      addunit = addu(addunit,"cup",236.5882365e-6);
      addunit = addu(addunit,"pint",0.473176473e-3);
      addunit = addu(addunit,"pt_US",0.473176473e-3);
      addunit = addu(addunit,"qt",0.946352946e-3);
      addunit = addu(addunit,"qt_US",0.946352946e-3);
      addunit = addu(addunit,"gal",3.785411784e-3);
      addunit = addu(addunit,"gal_US",3.785411784e-3);
      addunit = addu(addunit,"bbl",119.240471196e-3);
      addunit = addu(addunit,"oil_bbl",158.987294928e-3);
      for idx = 1:length(addunit.name)
        assignin("base", ["_" addunit.name{idx}], addunit.value(idx)*baseUnit);
      end
      addunit = clearu(addunit);
      

%%%%% TO CLEAN UP %%%%%
      _N  = _kg * _m / _s^2;  _N.name  = "N";
      _Pa = _N / _m^2;        _Pa.name = "Pa";
      _J  = _N * _m;          _J.name  = "J";
      _W  = _J / _s;          _W.name  = "W";
      _Hz = 1 / _s;           _Hz.name = "Hz";

      assignin("base","_N",_N);
      assignin("base","_Pa",_Pa);
      assignin("base","_J",_J);
      assignin("base","_W",_W);
      assignin("base","_Hz",_Hz);

  _in = 0.0254 * _m;   % 1 inch = 0.0254 meters
  _in.name = "in";
  assignin("base","_in",_in);

function u = addu(u, name, value)
  u.name{end+1}  =  name;
  u.value(end+1) = value;
end

function u = clearu(addunit)
  u.name  = {};
  u.value = [];
end
end
