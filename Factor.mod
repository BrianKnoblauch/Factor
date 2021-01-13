MODULE Factor;

FROM Terminal2 IMPORT WriteLn, WriteString, ReadCard, WriteCard;

VAR
     val  : CARDINAL;
     test : CARDINAL;

BEGIN
     val := ReadCard;
     WriteString("Factoring: ");
     WriteCard(val);
     WriteLn;

END Factor.
