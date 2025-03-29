program RADM_2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  RADMTools in 'RADMTools.pas';

const
  _A = 'ABC';
  _B = 'BCD';
  _C = 'ACD';

var
  A_, B_, C_ : TArray<Char>;
  N_1, N_2, N_3,
  d_A, d_B, d_C : Int64;
  R : Boolean;

begin
  try
    A := ['A', 'B', 'C', 'D' ];
    I := [ 1,   2,   3,   4  ];

    A_ := _A.ToCharArray();
    B_ := _B.ToCharArray();
    C_ := _C.ToCharArray();

    WriteLn;

    N_1 := f_conv( A_ );
    N_2 := f_conv( B_ );
    N_3 := f_conv( C_ );

    WriteLn( 'f_conv(A_):', CharArrayToString( A_ ), ': ', N_to_s( N_1 ),
             #9, IntArrayToString( A_to_ivect( A_ ) ),
             #9'N_min: ', N_to_s( f_min( Length(A), Length(A_) ) ),
             #9'N_max: ', N_to_s( f_max( Length(A), Length(_A) ) ) );

    WriteLn( 'f_conv(B_):', CharArrayToString( B_ ), ': ', N_to_s( N_2 ),
             #9, IntArrayToString( A_to_ivect( B_ ) ),
             #9'N_min: ', N_to_s( f_min( Length(A), Length(B_) ) ),
             #9'N_max: ', N_to_s( f_max( Length(A), Length(_B) ) ) );

    WriteLn( 'f_conv(C_):', CharArrayToString( C_ ), ': ', N_to_s( N_3 ),
             #9, IntArrayToString( A_to_ivect( C_ ) ),
             #9'N_min: ', N_to_s( f_min( Length(A), Length(C_) ) ),
             #9'N_max: ', N_to_s( f_max( Length(A), Length(_C) ) ) );

    WriteLn;

    d_A := d( A_, C_ );
    d_B := d( A_, B_ );
    d_C := d( B_, C_ );

    WriteLn( CharArrayToString( A_ ), ' -> ', CharArrayToString( C_ ), ': ', N_to_s( d_A ) );
    WriteLn( CharArrayToString( A_ ), ' -> ', CharArrayToString( C_ ), ': ', N_to_s( d_B ) );
    WriteLn( CharArrayToString( B_ ), ' -> ', CharArrayToString( C_ ), ': ', N_to_s( d_C ) );

    WriteLn;

    WriteLn( d_A, ' <= ', d_B + d_C );

    WriteLn;

    R := d_A <= d_B + d_C;

    WriteLn( 'd(', _A, ',', _C, ') <= d(', _A, ',', _B, ') + d(', _B, ',', _C, '): ', R );

  except
    on l_objException : Exception do
      WriteLn( l_objException.ClassName(), ': ', l_objException.Message );
  end;

  ReadLn;
end.
