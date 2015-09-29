decl 
integer a;
enddecl

integer main()
{
    a=Open("myfile.dat");
    print(a);
   // a=Open("myfile.dat");
    //print(a);
    a=Close(0);
    print(a);
	return 0;
}		