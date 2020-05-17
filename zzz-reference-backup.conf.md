#ALIAS {iarm}
{
	wield 1293538599;
	second 1293538587
}
{5}

#ALIAS {icombo}
{
	kick;
	kick
}
{5}

#ALIAS {idrink}
{
	ieat
}
{5}

#ALIAS {ieat}
{
	get 1098965549 from 1212331247;
	drink 1098965549;
	drink 1098965549;
	put 1098965549 in 1212331247
}
{5}

#ALIAS {iheal}
{
	get seekers60heal from 1212331247;
	quaff seekers60heal
}
{5}

#ALIAS {ihealu}
{
	cast 26
}
{5}

#ALIAS {ihelp}
{
	#alias
}
{5}

#ALIAS {ihome}
{
	get 1108863715 from 1212331247;
	wear 1108863715;
	enter;
	d;
	remove 1108863715;
	put 1108863715 in 1212331247;
	iarm
}
{5}

#ALIAS {ilottery}
{
	recall;
	d;
	runto lottery;
	buy ticket random
}
{5}

#ALIAS {iopenall}
{
	open north;
	open south;
	open east;
	open west
}
{5}

#ALIAS {iquit}
{
	#write conf-all-backup.tin;
	quit;
	#end
}
{5}

#ALIAS {isay}
{
	gossip
}
{5}

#ALIAS {isayclan}
{
	ct
}
{5}

#ALIAS {istockup}
{
	recall;
	d;
	runto seekers;
	e;
	buy 10 12;
	put all.seekers60heal in 1212331247
}
{5}

#CONFIG           {AUTO TAB}  {5000}
#CONFIG           {BUFFER SIZE}  {20000}
#CONFIG           {CHARSET}  {UTF-8}
#CONFIG           {COLOR MODE}  {256}
#CONFIG           {COLOR PATCH}  {OFF}
#CONFIG           {COMMAND COLOR}  {<078>}
#CONFIG           {COMMAND ECHO}  {ON}
#CONFIG           {CONNECT RETRY}  {0}
#CONFIG           {HISTORY SIZE}  {1000}
#CONFIG           {LOG}  {RAW}
#CONFIG           {MOUSE TRACKING}  {OFF}
#CONFIG           {PACKET PATCH}  {0.00}
#CONFIG           {RANDOM SEED}  {AUTO}
#CONFIG           {REPEAT CHAR}  {!}
#CONFIG           {REPEAT ENTER}  {OFF}
#CONFIG           {SCREEN READER}  {OFF}
#CONFIG           {SCROLL LOCK}  {ON}
#CONFIG           {SPEEDWALK}  {ON}
#CONFIG           {TINTIN CHAR}  {#}
#CONFIG           {VERBATIM}  {OFF}
#CONFIG           {VERBATIM CHAR}  {\}
#CONFIG           {VERBOSE}  {OFF}
#CONFIG           {WORDWRAP}  {ON}
#PATHDIR          {d}  {u}  {32}
#PATHDIR          {e}  {w}  {2}
#PATHDIR          {n}  {s}  {1}
#PATHDIR          {ne}  {sw}  {3}
#PATHDIR          {nw}  {se}  {9}
#PATHDIR          {s}  {n}  {4}
#PATHDIR          {se}  {nw}  {6}
#PATHDIR          {sw}  {ne}  {12}
#PATHDIR          {u}  {d}  {16}
#PATHDIR          {w}  {e}  {8}
#SUBSTITUTE       {\{chan ch=answer\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=auction\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=barter\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=clantalk\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=gclan\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=gossip\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=market\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=question\}}  {♖  }  {30}
#SUBSTITUTE       {\{chan ch=wangrp\}}  {♖  }  {30}
