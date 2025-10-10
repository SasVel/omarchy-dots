#!/bin/fish

fastfetch
sleep 3
if checkupdates | wc -l > 0;
	echo "Available Updates:"
	checkupdates
	echo "Install all? y/n: "
	read res
	if test $res = 'y';
		sudo pacman -Syu;
	end;
end
curl terminal-stocks.dev/^SPX,^IXIC,GC=F,SI=F,CL=F,BTC-USD
fish
