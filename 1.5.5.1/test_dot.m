x = randi( [ -2, 2 ], 4, 1 );
y = randi( [ -2, 2 ], 4, 1 );

a = randi( [ -2, 2 ], 1 );
z = randi( [ -2, 2 ], 3, 1 );

disp( 'dot product of column vector with column vector' )
if ( isequal( laff_dot( x, y ), x' * y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of column vector with row vector' )
if ( isequal( laff_dot( x, y' ), x' * y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of row vector with column vector' )
if ( isequal( laff_dot( x', y ), x' * y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of row vector with row vector' )
if ( isequal( laff_dot( x', y' ), x' * y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of column vector with column vector (wrong size)' )
if ( isequal( laff_dot( x, z ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of column vector with row vector (wrong size)' )
if ( isequal( laff_dot( x, z' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of row vector with column vector (wrong size)' )
if ( isequal( laff_dot( x', z ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of row vector with row vector (wrong size)' )
if ( isequal( laff_dot( x', z' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of column vector with alpha (wrong size)' )
if ( isequal( laff_dot( x, a ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of alpha with column vector (wrong size)' )
if ( isequal( laff_dot( a, x ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of row vector with alpha (wrong size)' )
if ( isequal( laff_dot( x', a ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'dot product of alpha with row vector (wrong size)' )
if ( isequal( laff_dot( a, x' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end