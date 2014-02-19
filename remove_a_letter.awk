#! /usr/bin/awk -f

BEGIN {
    ORS=" ";
}

{
    a=$0;
    b = length(a);
    
    for (i=1; i<=b; i++) {
	c = substr(a,1,i-1);
	d = substr(a,i+1);
	e = c d;
	print "'" e "'";
    }
}
