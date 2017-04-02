#
# NConvex: new version of the Package Convex
#
# This file is a script which compiles the package manual.
#

if fail = LoadPackage("AutoDoc", "2016.02.16") then
    Error("AutoDoc version 2016.02.16 or newer is required.");
fi;

AutoDoc( 
        rec(
            scaffold := rec( entities := [ "GAP4", "homalg", "TroicVarieties" ],
                             ),

            autodoc := rec( files := [ "doc/intro.autodoc" ] ),

            maketest := rec( folder := ".",
                             commands :=
                             [ "LoadPackage( \"NConvex\" );",
                             ],
                           ),
            )
);

QUIT;