decl
	integer a[10],bubblesort(integer n);
enddecl
integer bubblesort(integer n)
{
	integer j,k,f;
	if n==1 then
		f=0;
	else
		j=0;
		while j<n-1 do
			if a[j]<a[j+1] then
				k=a[j];
				a[j]=a[j+1];
				a[j+1]=k;
			endif;
			j=j+1;
		endwhile;
		f=bubblesort(n-1);
	endif;
	return f;
}
integer main()
{
	integer i;
	i=0;
	while i<10 do
		a[i]=i;
		i=i+1;
	endwhile;
	i=bubblesort(10);
	while i<10 do
		print(a[i]);
		i=i+1;
	endwhile;
	return 0;
}
