integer main()
{
	string Command;
	integer a,ChildPID;
	a=5;
	//Command="xos";
	// ChildPID=Fork();
	// ChildPID=Fork();
	// ChildPID=Fork();
	// ChildPID=Fork();
	// print ("After Fork");
	// while(a<10) do
	    	
	//   	print(a);
	// 	a=a+1;
	// endwhile;

	while(Command!="exit") do
		print("Mahesh@xos$");
		read(Command);
		if (Command=="exit") then
			Exit();	
		endif;	
		ChildPID=Fork();
		//a=Wait(ChildPID);

		if (ChildPID==-2) then
		    a=Exec(Command);

			if (a==-1) then
			    print("Command not found");	
			    Exit();		
			endif;
			//continue;	
		endif;
		if (ChildPID!=-2) then
			a=Wait(ChildPID);

		endif;
		// a=Exec(Command);
		// if (a==-1) then
		//     print("Command not found");			
		// endif;
		// a=Wait(ChildPID);
		// a=Signal();																																																	

	endwhile;
	return 0;
}