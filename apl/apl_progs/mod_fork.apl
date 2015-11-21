integer main()
{
	integer pid,stoppid;
	stoppid=0;
	pid=Fork();
	if (pid==stoppid) then
		Exit();
	endif;
	pid=Fork();
	if (pid==stoppid) then
		Exit();
	endif;
	pid=Fork();
	if (pid==stoppid) then
		Exit();
	endif;
	pid=Fork();
	if (pid==stoppid) then
		Exit();
	endif;
	pid=Fork();
	if (pid==stoppid) then
		Exit();
	endif;


	return 0;
}