decl 
integer a;
string b;
enddecl

integer main()
{   
    // a=Create("myfile.dat");
    // print(a);
    a=Open("myfile.dat");
    print(a);
    // a=Open("myfile.dat");
    // print(a);
    // a=Close(0);
    // print(a);
    // a=Close(0);
    // print(a);
    // a=Delete("myfile.dat");
    // print(a);
    // a=Seek(0,512);
    // print(a);
    // b="Mahesh";
    // a=Write(0,b);
    // print(a);
    // a=Seek(0,10);
    // print(a);
    // a=Close(0);
    a=Read(0,b);
    print(a);
    print(b);
    // print(a);
	return 0;
}		