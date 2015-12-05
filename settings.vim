
#nop ----- Aliases, Triggers and Macros -----

#nop ----- aliases

#alias {iquit}
{
  #showme ----- Quitting;
  quit;
  #end
}


#alias {ishout} {gossip}

#alias {iattackmelee} {kick}
#alias {iattackmissle} {kick}
#alias {iattackmagic} {kick}
#alias {iheal} {quaff}
#alias {ihealfriend} {cast heal}
#alias {icombo} {iattack;iattackspell}

#alias {iopenall} {open north;open south;open east;open west}
#alias {ieat} {drink decanter}
#alias {idrink} {ieat}

#nop ----- triggers

#nop ----- macros

#nop --- keyboard for macosx (hold option key and arrows to navigate)
#macro {\e\e[A} {n}
#macro {\e\e[B} {s}
#macro {\e\e[C} {e}
#macro {\e\e[D} {w}
#macro {\e[1;10A} {u}
#macro {\e[1;10B} {d}

#nop --- keyboard for numpad mappings
#nop numpad 8 2 6 4 7 1
#macro {\eOx} {n}
#macro {\eOr} {s}
#macro {\eOv} {e}
#macro {\eOt} {w}
#macro {\eOw} {u}
#macro {\eOq} {d}

#nop numpad '9'
#macro {\eOy} {scan}

#nop numpad '3'
#macro {\eOs} {exit}

#nop numpad '5'
#macro {\eOu} {look}

#nop numpad '0'
#macro {\eOp} {spellup}

#nop numpad '.'
#macro {\eOn} {inventory}

#nop numpad '/'
#macro {\eOo} {iattack}

#nop numpad '*'
#macro {\eOj} {iattackspell}

#nop numpad '-'
#macro {\eOm} {flee}

#nop numpad '+'
#macro {\eOk} {iheal}


