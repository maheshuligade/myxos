integer main()
{	
	integer PID,a;	
	// PID=Getpid();
	// print(PID);
	// PID=Getppid();
	// print(PID);
	a=Wait(3);
	print(a);
	a=Signal();
	print(a);
	return 0;
}