program RADM_1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.Math,
  System.Generics.Defaults,
  System.Generics.Collections,
  System.SysUtils,
  RADMTools in 'RADMTools.pas';

var
  N : Int64;
  S, T : TArray<Char>;

begin
  try
    A := ['A', 'H', 'K', 'N'];
    I := [ 1,   2,   3,   4 ];

    S := [ 'H', 'A', 'K', 'A', 'N' ];
    T := [ 'H', 'A', 'N' ];

    N := f_conv( S );

    WriteLn( 'A:         ', CharArrayToString( A ) );
    WriteLn( 'I:         ', IntArrayToString( I, 0 ) );
    WriteLn;
    WriteLn( 'S:         ', CharArrayToString( S ) );
    WriteLn( 'T:         ', CharArrayToString( T ) );
    WriteLn;
    WriteLn( 'f_conv(·): ', N );
    WriteLn( 'f_rev(·):  ', CharArrayToString( f_rev( N ) ) );
    WriteLn;
    WriteLn( 'd_s(·):    ', CharArrayToString( S ), ' - ', CharArrayToString( T ), ' = ', d_s( S, T ) );

  except
    on l_objException : Exception do
      WriteLn( l_objException.ClassName(), ': ', l_objException.Message );
  end;

  ReadLn;
end.
