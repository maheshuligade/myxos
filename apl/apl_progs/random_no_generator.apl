decl 
integer a,i,c,FilePtrRnd,b;

enddecl

integer main()
{
  FilePtrRnd=Create("Random.dat");
  print(FilePtrRnd);
  FilePtrRnd=Open("Random.dat");
  print(FilePtrRnd);
  i=0;
  a=264;

  //c=Seek(FilePtrRnd,-1);
  // while(i<10) do
  //   c=Seek(FilePtrRnd,i);
  //   b=a%10;
  //   //b=0;
  //   c=Write(FilePtrRnd,b);  	
  //   print(a%10);
  //   a=(a*a)/10;
  // 	i=i+1;	
  // endwhile;
  a=512;
  while(i<512) do    
    c=Write(FilePtrRnd,a);   
    a=a-1;
   i=i+1;  
  endwhile;
  c=Write(FilePtrRnd,"EOF");
  c=Close(FilePtrRnd);
  print(c);
  
	return 0;
}