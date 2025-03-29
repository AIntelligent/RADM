program RADM_0;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.Math,
  System.Generics.Defaults,
  System.Generics.Collections,
  System.SysUtils,
  RADMTools in 'RADMTools.pas';

var
  N_A, N_B : Int64;
  tA, tB : TArray<Char>;

begin
  try
    A := ['A', 'E', 'H', 'K', 'N', 'R' ];
    I := [ 1,   2,   3,   4,   5,   6 ];

    tA := [ 'H', 'A', 'K', 'A', 'N' ];
    tB := [ 'E', 'R', 'K', 'A', 'N' ];

    N_A := f_conv( tA );
    N_B := f_conv( tB );

    WriteLn( 'A:            ', CharArrayToString( A ) );
    WriteLn( 'I:            ', IntArrayToString( I, 0 ) );
    WriteLn;
    WriteLn( 'tA:           ', CharArrayToString( tA ) );
    WriteLn( 'tB:           ', CharArrayToString( tB ) );
    WriteLn;
    WriteLn( 'f_conv(tA):   ', N_A );
    WriteLn( 'f_rev(tA):    ', CharArrayToString( f_rev( N_A ) ) );
    WriteLn;
    WriteLn( 'f_conv(tB):   ', N_B );
    WriteLn( 'f_rev(tB):    ', CharArrayToString( f_rev( N_B ) ) );
    WriteLn;
    WriteLn( 'd_s(tA, tB):  ', CharArrayToString( tA ), ' - ', CharArrayToString( tB ), ' = ', d_s( tA, tB ) );

  except
    on l_objException : Exception do
      WriteLn( l_objException.ClassName(), ': ', l_objException.Message );
  end;

  ReadLn;
end.
