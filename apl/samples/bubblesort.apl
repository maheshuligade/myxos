decl
	integer a[10],bubblesort();
enddecl
integer bubblesort()
{
	integer i,j,k;
	i=0;
	while i<10 do
		j=0;
		while j<10-i-1 do
			if a[j]<a[j+1] then
				k=a[j];
				a[j]=a[j+1];
				a[j+1]=k;
			endif;
			j=j+1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}
integer main()
{
	integer i;
	i=0;
	while i<10 do
		a[i]=i;
		i=i+1;
	endwhile;
	i=bubblesort();
	while i<10 do
		print(a[i]);
		i=i+1;
	endwhile;
	return 0;
}
