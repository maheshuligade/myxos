decl
	integer fact(integer n),a;
enddecl
integer fact(integer n)
{
	integer f;
	if(n==1) then
		f=1;
	else
		f=n*fact(n-1);
	endif;
	return f;
}
integer main()
{
	integer b;
	read(a);
	b=fact(a);
	print(b);
	return 0;
}
