MODULE Factor;

FROM RealMath IMPORT sqrt;
FROM STextIO  IMPORT WriteLn, WriteString;
FROM SWholeIO IMPORT ReadCard, WriteCard;

VAR
     val   : CARDINAL;
     test  : CARDINAL;
     full  : REAL;

BEGIN
     WriteString("Input Cardinal number to factor: ");
     ReadCard(val);
     WriteLn;
     WriteString("Factoring: ");
     WriteCard(val, 0);
     WriteLn;
     WriteLn;
     FOR test := 1 TO TRUNC(sqrt(FLOAT(val))) DO
	  full := FLOAT(val) / FLOAT(test);
	  IF full = FLOAT(TRUNC(full)) THEN
	       WriteCard(test, 10);
	       WriteString(" : ");
	       WriteCard(val DIV test, 10);
	       WriteLn;
	  END (* IF *)
     END (* FOR *)
END Factor.
