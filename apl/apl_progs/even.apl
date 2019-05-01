decl 
 integer i;
enddecl


integer main()
{   
   i=0;
    print("p2 Started");
    while(i<=20) do
      
    	if (i%2==0) then   	 
    	 print(i);
    	endif;
    	i=i+1;
    endwhile;
    print("p2 Ended");
    
	return 0;  
}

