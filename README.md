# GNU Octave Units

A lightweight package that provides physical units in Octave.

```octave
>> pkg install https://github.com/draldric/octave-units/archive/refs/heads/main.zip
>> pkg load units
>> units_init()

>> 5*_m + 250*_in
ans = 11.35 m

>> (10*_N) / (2*_m^2)
ans = 5 Pa
