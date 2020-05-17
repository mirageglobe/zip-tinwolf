#nop ----- information
#nop reference http://tintinplusplus-unoffical-documentation.readthedocs.org/en/latest/index.html

#nop ----- connection
#session aardwolf aardwolf.org 4000

#nop ----- some test scripts
#nop http://tintin.sourceforge.net/mccp/

#event {SESSION CONNECTED}
{
  #map create 1000000;
  #map read map.txt
  #map flag vtmap on;
  #map flag static off;
  #map flag nofollow;
  #map AsciiGraphics on;
  #map goto 1;
  #showme loaded map from map.txt
}

#event {SESSION DISCONNECTED}
{
  #map write map.txt
}

#nop ----- graphical substitutions
#substitute {chan ch=} {}
#substitute {affoff} {}

#nop ----- graphics
#showme split graphics
#split 16 1


#nop ----- aliases (default)
#alias {iquit} {quit; #end}

#alias {ishout} {gossip}
#alias {ispell} {spellup}

#alias {iattackmelee} {kick}
#alias {iattackmissle} {kick}
#alias {iattackmagic} {kick}
#alias {iheal} {quaff}
#alias {ihealfriend} {cast heal}
#alias {icombo} {iattack;iattackspell}

#alias {iopenall} {open north;open south;open east;open west}
#alias {ieat} {drink decanter}
#alias {idrink} {ieat}


#nop ----- macros (default) for mac
#macro {\e\e[A} {n}
#macro {\e\e[B} {s}
#macro {\e\e[C} {e}
#macro {\e\e[D} {w}
#macro {≤} {d}
#macro {≥} {u}

