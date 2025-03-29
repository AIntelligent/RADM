program RADM_4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  RADMTools in 'RADMTools.pas';

var
  N_1, N_2 : Int64;
  d_ : Int64;

const
  _A = 'apple';
  _B = 'aple';

var
  A_, B_ : TArray<Char>;

begin
  try
    A := ['a', 'e', 'l', 'p' ];
    I := [ 1,   2,   3,   4  ];

    A_ := _A.ToCharArray();
    B_ := _B.ToCharArray();

    WriteLn;

    N_1 := f_conv( A_ );
    N_2 := f_conv( B_ );

    WriteLn( 'f_conv(A_):', CharArrayToString( A_ ), ': ', N_to_s( N_1 ),
             #9, IntArrayToString( A_to_ivect( A_ ) ),
             #9'N_min: ', N_to_s( f_min( Length(A), Length(A_) ) ),
             #9'N_max: ', N_to_s( f_max( Length(A), Length(_A) ) ) );

    WriteLn( 'f_conv(B_):', CharArrayToString( B_ ), ': ', N_to_s( N_2 ),
             #9, IntArrayToString( A_to_ivect( B_ ) ),
             #9'N_min: ', N_to_s( f_min( Length(A), Length(B_) ) ),
             #9'N_max: ', N_to_s( f_max( Length(A), Length(_B) ) ) );

    WriteLn;

    d_ := d_s( A_, B_ );

    WriteLn( CharArrayToString( A_ ), ' - ', CharArrayToString( B_ ), ': ', d_ );

    WriteLn;

  except
    on l_objException : Exception do
      WriteLn( l_objException.ClassName(), ': ', l_objException.Message );
  end;

  ReadLn;
end.
