program RADM_maxs;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  RADMTools in 'RADMTools.pas';

var
  n, r, i : Integer;

begin
  try

    n := 26;

    SetLength( RADMTools.I, n );

    for i := 1 to n do
      RADMTools.I[ i - 1 ] := i;

    for r in [3, 5, 8, 10, 12, 13, 14 ] do
      WriteLn( 'f_max(', n, ',', r, ') = ', f_max( n, r ) );


  except
    on l_objException : Exception do
      WriteLn( l_objException.ClassName(), ': ', l_objException.Message );
  end;

  ReadLn;
end.
