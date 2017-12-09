a = randi( [ -2, 2 ], 1 );
x = randi( [ -2, 2 ], 4, 1 );
y = randi( [ -2, 2 ], 4, 1 );

disp( 'dot product' )
if ( isequal( Dot_unb( a, x, y ), a + x' * y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end