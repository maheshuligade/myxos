decl 

integer i;
enddecl

integer main()
{
    i=0;
    print("p1 started");
    while(i<=20) do
      if (i%2!=0) then
       
        print(i);	
      endif;
    	i=i+1;
    endwhile;
    print("p1 Ended");
	return 0;
}