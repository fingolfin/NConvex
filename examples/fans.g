#! @Chunk fan1
#!
#! Below we define the same fan in two different ways:
#! @Example
F1 := Fan( [ [ [ 2, 1 ], [ 1, 2 ] ], [ [ 2, 1 ], [ 1, -1 ] ],
             [ [ -3, 1 ], [ -1, -3 ] ] ] );
#! <A fan in |R^2>             
F2 := Fan( [ [ 2, 1 ], [ 1, 2 ], [ -3, 1 ], [ -1, -3 ], [ 1, -1 ] ], 
        [ [ 1, 2 ], [ 1, 5 ], [ 3, 4 ] ] );
#! <A fan in |R^2>
rays1 := RayGenerators( F1 );
#! [ [ 1, 2 ], [ 2, 1 ], [ 1, -1 ], [ -3, 1 ], [ -1, -3 ] ]
rays2 := RayGenerators( F2 );
#! [ [ 1, 2 ], [ 2, 1 ], [ 1, -1 ], [ -3, 1 ], [ -1, -3 ] ]
RaysInMaximalCones( F1 );
#! [ [ 1, 1, 0, 0, 0 ], [ 0, 1, 1, 0, 0 ], [ 0, 0, 0, 1, 1 ] ]
RaysInMaximalCones( F2 );
#! [ [ 1, 1, 0, 0, 0 ], [ 0, 1, 1, 0, 0 ], [ 0, 0, 0, 1, 1 ] ]
RaysInAllCones( F1 );
#! [ [ 0, 0, 0, 0, 0 ], [ 1, 1, 0, 0, 0 ], [ 0, 1, 0, 0, 0 ], 
#!   [ 1, 0, 0, 0, 0 ], [ 0, 1, 1, 0, 0 ], [ 0, 0, 1, 0, 0 ], 
#!   [ 0, 0, 0, 1, 1 ], [ 0, 0, 0, 0, 1 ], [ 0, 0, 0, 1, 0 ] ]
FVector( F1 );
#! [ 5, 3 ]
IsComplete( F1 );
#! false
IsSimplicial( F1 );
#! true
IsNormalFan( F1 );
#! false
IsRegularFan( F1 );
#! false
P1 := Polytope( [ [ 1 ], [ -1 ] ] );
#! <A polytope in |R^1>
P1 := NormalFan( P1 );
#! <A complete fan in |R^1>
RayGenerators( P1 );
#! [ [ 1 ], [ -1 ] ]
P3 := P1 * P1 * P1;
#! <A fan in |R^3>
RayGenerators( P3 );
#! [ [ 0, 0, 1 ], [ 0, 1, 0 ], [ 1, 0, 0 ], [ 0, 0, -1 ], [ 0, -1, 0 ], 
#!   [ -1, 0, 0 ] ]
RaysInMaximalCones( P3 );
#! [ [ 1, 1, 1, 0, 0, 0 ], [ 0, 1, 1, 1, 0, 0 ], [ 1, 0, 1, 0, 1, 0 ], 
#!   [ 0, 0, 1, 1, 1, 0 ], [ 1, 1, 0, 0, 0, 1 ], [ 0, 1, 0, 1, 0, 1 ], 
#!   [ 1, 0, 0, 0, 1, 1 ], [ 0, 0, 0, 1, 1, 1 ] ]
RaysInAllCones( P3 );
#! [ [ 0, 0, 0, 0, 0, 0 ], [ 1, 1, 1, 0, 0, 0 ], [ 1, 1, 0, 0, 0, 0 ], 
#!   [ 1, 0, 0, 0, 0, 0 ], [ 0, 1, 0, 0, 0, 0 ], [ 1, 0, 1, 0, 0, 0 ],  
#!   [ 0, 0, 1, 0, 0, 0 ], [ 0, 1, 1, 0, 0, 0 ],  [ 0, 1, 1, 1, 0, 0 ], 
#!   [ 0, 1, 0, 1, 0, 0 ], [ 0, 0, 0, 1, 0, 0 ], [ 0, 0, 1, 1, 0, 0 ],  
#!   [ 1, 0, 1, 0, 1, 0 ], [ 1, 0, 0, 0, 1, 0 ], [ 0, 0, 0, 0, 1, 0 ], 
#!   [ 0, 0, 1, 0, 1, 0 ], [ 0, 0, 1, 1, 1, 0 ], [ 0, 0, 0, 1, 1, 0 ], 
#!   [ 1, 1, 0, 0, 0, 1 ], [ 1, 0, 0, 0, 0, 1 ],  [ 0, 0, 0, 0, 0, 1 ], 
#!   [ 0, 1, 0, 0, 0, 1 ], [ 0, 1, 0, 1, 0, 1 ], [ 0, 0, 0, 1, 0, 1 ],  
#!   [ 1, 0, 0, 0, 1, 1 ], [ 0, 0, 0, 0, 1, 1 ], [ 0, 0, 0, 1, 1, 1 ] ]
IsNormalFan( P3 );
#! true
Dimension( P3 );
#! 3

#! @EndExample
#! @EndChunk

#! @Chunk fan2
#! The following is an example for a fan that is complete but not normal.
#! @Example
rays := [ [ 1, 0, 0 ], [ -1, 0, 0 ], [ 0, 1, 0 ], [ 0, -1, 0 ], 
[ 0, 0, 1 ], [ 0, 0, -1 ], [ 2, 1, 1 ], [ 1, 2, 1 ], [ 1, 1, 2 ], 
[ 1, 1, 1 ] ];;
cones := [ [ 1, 3, 6 ], [ 1, 4, 6 ], [ 1, 4, 5 ], [ 2, 3, 6 ], 
[ 2, 4, 6 ], [ 2, 3, 5 ], [ 2, 4, 5 ], [ 1, 5, 9 ], [ 3, 5, 8 ], 
[ 1, 3, 7 ], [ 1, 7, 9 ], [ 5, 8, 9 ], [ 3, 7, 8 ], [ 7, 9, 10 ], 
[ 8, 9, 10 ], [ 7, 8, 10 ] ];;
F := Fan( rays, cones );
#! <A fan in |R^3>
IsComplete( F );
#! true
IsNormalFan( F );
#! false

#! @EndExample
#! @EndChunk


