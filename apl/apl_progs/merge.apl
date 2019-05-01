decl 
integer FilePtrOdd,FilePtrEven,FilePtrMerge;
integer a,b,c;
integer i,j,k;
string file1,file2,filenamemerge;
enddecl

integer main()
{   //Write odd numbers in oddnum.dat file

	FilePtrOdd=Create("oddnum.dat");
	print(FilePtrOdd);
	FilePtrOdd=Open("oddnum.dat");
	print(FilePtrOdd);
	i=1;
	while(i < 512) do
	    	
	 b=Write(FilePtrOdd,i);
	 i=i+2;	
	endwhile;
	a=Close(FilePtrOdd);
	print(a);

	//Write even numbers in evennum.dat file
	FilePtrEven=Create("evennum.dat");
	print(FilePtrEven);
	FilePtrEven=Open("evennum.dat");
	print(FilePtrEven);
	i=0;
	while(i < 512) do
	  b=Write(FilePtrEven,i);  	
	  i=i+2;		
	endwhile;
	a=Close(FilePtrEven);
	print(a);


	//Merge Files oddnum and evennum in merge file
	read (filenamemerge);
	FilePtrMerge=Create(filenamemerge);
	print(FilePtrMerge);
	FilePtrMerge=Open(filenamemerge);
	FilePtrOdd=Open("oddnum.dat");
	print(FilePtrOdd);
	FilePtrEven=Open("evennum.dat");
	print(FilePtrEven);
    
    i=0;
    j=0;
    k=0;
    while(k < (512)) do
        	
     c=Read(FilePtrOdd,a);
     print(c);
     c=Read(FilePtrEven,b);
     print(c);
    
     if (a <= b) then
         	
       c=Write(FilePtrMerge,a);
       print(c);
       i=i+1;
      
     else  
     	c=Write(FilePtrMerge,b);
     	print(c);
     	j=j+1;
     endif;
     c=Seek(FilePtrEven,j);
     print(c);
     c=Seek(FilePtrOdd,i);
     print(c);
   	 k=k+1;
    endwhile;
    c=Close(FilePtrOdd);
    print(c);
    c=Close(FilePtrEven);
    print(c);
    c=Close(FilePtrMerge);
    print(c);




	
	return 0;
}