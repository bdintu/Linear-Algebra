a = randi( [ -2, 2 ], 1 );
x = randi( [ -2, 2 ], 4, 1 );
y = randi( [ -2, 2 ], 4, 1 );

z = randi( [ -2, 2 ], 3, 1 );

% test column - column axpy
disp( 'column - column axpy' )
if ( isequal( laff_axpy( a, x, y ), a * x + y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test column - row axpy
disp( 'column - row axpy' )
if ( isequal( laff_axpy( a, x, y' ), a * x' + y' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test row - column axpy
disp( 'row - column axpy' )
if ( isequal( laff_axpy( a, x', y ), a * x + y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test row -> row axpy
disp( 'row -> row axpy' )
if ( isequal( laff_axpy( a, x', y' ), a * x' + y' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test column - column axpy (wrong size)
disp( 'column - column axpy (wrong size)' )
if ( isequal( laff_axpy( a, x, z ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test column - row axpy (wrong size)
disp( 'column - row axpy (wrong size)' )
if ( isequal( laff_axpy( a, x, z' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test row -> column (wrong size)
disp( 'row -> column (wrong size)' )
if ( isequal( laff_axpy( a, x', z ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

% test row -> row axpy (wrong size)
disp( 'row -> row axpy (wrong size)' )
if ( isequal( laff_axpy( a, x', z' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end