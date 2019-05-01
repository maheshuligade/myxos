decl 
//integer parition(integer left,right);
integer quicksort(integer left,right);
integer left,right,pivot,i,j,x,c,Ai,Ai1,Aright,Aj,temp,a;
integer FilePtrRnd;
//integer count,count1;
enddecl

// integer parition(integer left,right)
// {   
// 	c=Seek(FilePtrRnd,right);
// 	//print(c);
//   c=Read(FilePtrRnd,x);
//   //print(c);
//   //print(x);
//   i =left - 1;
//   j=left;
//   while(j <=right - 1) do
//     c=Seek(FilePtrRnd,j);
//     //print(c);
//     c=Read(FilePtrRnd,Aj);
//     //print(c);

//     if (Aj<= x) then
         	
//     	i=i+1;
//      	c=Seek(FilePtrRnd,i);
//      	//print(c);
//      	c=Read(FilePtrRnd,Ai);
//      	//print(c);
//      	c=Seek(FilePtrRnd,j);
//      	//print(c);
//       c=Read(FilePtrRnd,Aj);
//       c=Seek(FilePtrRnd,i);
//       //print(c);
//      	c=Write(FilePtrRnd,Aj);
//      	//print(c);
//      	c=Seek(FilePtrRnd,j);
//      	//print(c);
//      	c=Write(FilePtrRnd,Ai);
//      	//print(c);
//     endif;
//     j=j+1;
//   endwhile;
//   c=Seek(FilePtrRnd,Ai1);
//   //print(c);
//   c=Read(FilePtrRnd,Ai1);
//   //print(c);
//   c=Seek(FilePtrRnd,right);
//   //print(c);
//   c=Read(FilePtrRnd,Aright);
//   //print(c);

//   c=Seek(FilePtrRnd,Ai1);
//   //print(c);
//   c=Write(FilePtrRnd,Aright);
//   //print(c);
//   c=Seek(FilePtrRnd,right);
//   //print(c);
//   c=Write(FilePtrRnd,Ai1);
//   //print(a);
//   count=count + 1;
//   //print("***********");
//   //print(count);
//   //print("***********");
// 	return i + 1;
// }

integer quicksort(integer left,right)
{
  if (left < right) then
       	
    //pivot=parition(left,right);
    c=Seek(FilePtrRnd,right);
    //print(c);
    c=Read(FilePtrRnd,x);
    //print(c);
    //print(x);
    i =left - 1;
    j=left;
    while(j <=right - 1) do
      c=Seek(FilePtrRnd,j);
      //print(c);
      c=Read(FilePtrRnd,Aj);
      //print(c);

      if (Aj<= x) then
            
        i=i+1;
        c=Seek(FilePtrRnd,i);
        //print(c);
        c=Read(FilePtrRnd,Ai);
        //print(c);
        c=Seek(FilePtrRnd,j);
        //print(c);
        c=Read(FilePtrRnd,Aj);
        c=Seek(FilePtrRnd,i);
        //print(c);
        c=Write(FilePtrRnd,Aj);
        //print(c);
        c=Seek(FilePtrRnd,j);
        //print(c);
        c=Write(FilePtrRnd,Ai);
        //print(c);
      endif;
      j=j+1;
    endwhile;
    c=Seek(FilePtrRnd,i+1);
    //print(c);
    c=Read(FilePtrRnd,Ai1);
    //print(c);
    c=Seek(FilePtrRnd,right);
    //print(c);
    c=Read(FilePtrRnd,Aright);
    //print(c);

    c=Seek(FilePtrRnd,i+1);
    //print(c);
    c=Write(FilePtrRnd,Aright);
    //print(c);
    c=Seek(FilePtrRnd,right);
    //print(c);
    c=Write(FilePtrRnd,Ai1);
    //print(a);
    //count=count + 1;
    //print("***********");
    //print(count);
    //print("***********");
    pivot=i + 1;
    //pivot=parition(left,right);
    a=quicksort(left,pivot-1);
    a=quicksort(pivot + 1,right);
   	
  endif;
  //print("##########");
  //count1=count1+1;
  //print(count1);
  //print("##########");
 
	return 23;
}

integer main()
{   //count=0;
    //count1=0;
    FilePtrRnd=Open("Random.dat");
    ////print(FilePtrRnd);
    integer size;
    string s;
    s="a";
    size=0;
    a=Read(FilePtrRnd,s); 
   //print (s);
   while(s!="EOF") do
       //  print ("******");
       // print (a);
       //  print (s);
        a=Read(FilePtrRnd,s);
        size =size +1;      
   endwhile;
  c=Close(FilePtrRnd);
   
    //print ("size");
    //print (size);
    FilePtrRnd=Open("Random.dat");
    a=quicksort(0,size);
    //print("Hello");
    //print("Hello");
    // a=Seek(FilePt  rRnd,0);
    // a=Read(FilePtrRnd,c);
    // //print(c);
    c=Close(FilePtrRnd);
    //print("Hello");
    //print(c);
   // print (size);
	return 0;
}