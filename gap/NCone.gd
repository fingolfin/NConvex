#############################################################################
##
##  NCone.gd         NConvex package                Sebastian Gutsche
##                                                  Kamal Saleh
##
##  Copyright 2019 Mathematics Faculty, Siegen University, Germany
##
##  Fans for NConvex package.
##
#############################################################################


DeclareCategory( "IsCone",
                 IsFan );
                 
                 
##############################
##
##  Constructors
##
##############################

#! @Chapter Cones
#! @Section Creating cones

#! @Arguments arg 
#! @Returns a **Cone** Object
#! @Description
#! The function takes a list of lists $[L_1, L_2, ...]$ where each $L_j$ represents 
#! an inequality and returns the cone defined by them. 
#! For example the $j$'th entry $L_j = [a_{j1},a_{j2},...,a_{jn}]$ corresponds to the inequality
#! $\sum_{i=1}^n a_{ji}x_i \geq 0$.
DeclareOperation( "ConeByInequalities",
                  [ IsList ] );

#! @Arguments arg 
#! @Returns a **Cone** Object
#! @Description  
#! The function takes two lists. The first list is the equalities and the second is 
#! the inequalities and returns the cone defined by them.
DeclareOperation( "ConeByEqualitiesAndInequalities",
                  [ IsList, IsList ] );

DeclareOperation( "ConeByGenerators",
                  [ IsList ] );
#! @Arguments arg 
#! @Returns a **Cone** Object
#! @Description  
#! The function takes a list in which every entry represents a ray in the ambient vector space 
#! and returns the cone defined by them.              
DeclareOperation( "Cone",
                  [ IsList ] );

#! @Arguments cdd_cone 
#! @Returns a **Cone** Object
#! @Description  
#! This function takes a cone defined in **CddInterface** and converts it to a cone in **NConvex**
DeclareOperation( "Cone",
                  [ IsCddPolyhedron ] );

##############################
##
##  Attributes 
##
##############################

#! @Section Attributes of Cones

# DeclareAttribute( "RayGenerators", 
#                    IsCone );

#! @Arguments cone 
#! @Returns a **List**
#! @Description  
#! Returns the list of the defining inequalities of the cone <A>cone</A>.
DeclareAttribute( "DefiningInequalities", 
                   IsCone );
#! @Arguments cone 
#! @Returns a **List**
#! @Description  
#! Returns the list of the equalities in the defining inequalities of the cone <A>cone</A>.
DeclareAttribute( "EqualitiesOfCone", 
                   IsCone );

                    
DeclareAttribute( "FactorConeEmbedding",
                   IsCone );
                  

#! @Arguments cone 
#! @Returns a cone
#! @Description  
#! Returns the dual cone of the cone <A>cone</A>.
DeclareAttribute( "DualCone",
                  IsCone );


DeclareAttribute( "RaysInFacets",
                  IsCone );
                  
DeclareAttribute( "RaysInFaces",
                  IsCone );

# @Arguments cone 
# @Returns a point in the cone
# @Description  
# Returns an interior point of the cone.
#DeclareAttribute( "InteriorPoint", IsCone );

#! @Arguments cone 
#! @Returns a list of cones
#! @Description  
#! Returns the list of all faces of the cone <A>cone</A>.                  
DeclareAttribute( "Faces",
                  IsCone );

#! @Arguments cone 
#! @Returns a list of cones
#! @Description  
#! Returns the list of all faces of the cone <A>cone</A>.
DeclareAttribute( "Facets",
                  IsCone );
                    
# DeclareAttribute( "FVector",
#                   IsCone );

#! @Arguments cone 
#! @Returns a point
#! @Description  
#! Returns an interior point in the cone <A>cone</A>.                  
DeclareAttribute( "RelativeInteriorRayGenerator", 
                   IsCone );

#! @Arguments cone 
#! @Returns a list
#! @Description  
#! Returns the Hilbert basis of the cone <A>cone</A>
DeclareAttribute( "HilbertBasis", IsCone );

#! @Arguments cone 
#! @Returns a list
#! @Description  
#! Returns the Hilbert basis of the dual cone of the cone <A>cone</A>
DeclareAttribute( "HilbertBasisOfDualCone",
                  IsCone );
                  
DeclareAttribute( "LinearSubspaceGenerators", IsCone );

#! @Arguments cone 
#! @Returns a list
#! @Description  
#! Returns a basis of the lineality space of the cone <A>cone</A>.
DeclareAttribute( "LinealitySpaceGenerators", IsCone );

#! @Arguments cone 
#! @Returns a CddPolyhedron
#! @Description  
#! Converts the cone to a CddPolyhedron. The functions of CddInterface can then be applied
#! on this polyhedron.
DeclareAttribute( "ExternalCddCone",  IsCone  );

## If i make this attribute i get error segmentation error ...
DeclareOperation( "ExternalNmzCone",  [ IsCone ]  );

# AmbientSpace is somewhere declared !!
# DeclareAttribute( "AmbientSpaceDimension", IsCone );

DeclareAttribute( "LatticePointsGenerators",  IsCone  );

DeclareAttribute( "GridGeneratedByCone",
                  IsCone );

DeclareAttribute( "FactorGrid",
                  IsCone );
                  
DeclareAttribute( "GridGeneratedByOrthogonalCone",
                  IsCone );   
                  
DeclareAttribute( "FactorGridMorphism",
                  IsCone );
##############################
##
##  Properties
##
##############################
#! @Section Properties of Cones

#! @Arguments cone 
#! @Returns true or false
#! @Description  
#! Returns if the cone <A>cone</A> is regular or not.
DeclareProperty( "IsRegularCone", IsCone );

#! @Arguments cone 
#! @Returns true or false
#! @Description  
#! Returns if the cone <A>cone</A> is empty or not.
DeclareProperty( "IsEmptyCone", IsCone );

DeclareProperty( "HasConvexSupport", IsCone );

#! @Arguments cone 
#! @Returns true or false
#! @Description  
#! Returns if the cone <A>cone</A> is ray or not.
DeclareProperty( "IsRay", IsCone );

#! @Arguments cone 
#! @Returns true or false
#! @Description  
#! Returns if the cone <A>cone</A> is contained in fan or not.
DeclareAttribute( "IsContainedInFan",
                  IsCone );
                  
DeclareProperty( "IsZero",
                  IsCone  );
                  
##############################
##
##  Methods
##
##############################
#! @Section Operations on cones

#! @Arguments cone, m 
#! @Returns a cone
#! @Description  
#! Returns the projectiopn of the cone on the space (O, $x_1,...,x_{m-1}, x_{m+1},...,x_n$ ).
DeclareOperation( "FourierProjection",
                  [ IsCone, IsInt ] );

#! @Arguments cone1, cone2 
#! @Returns a cone
#! @Description  
#! Returns the intersection of the cones <A>cone1</A> and <A>cone2</A>.
DeclareOperation( "IntersectionOfCones",
                  [ IsCone, IsCone ] );
#! @Arguments [ cone1, cone2, ... ] 
#! @Returns a cone
#! @Description  
#! Returns the intersection of all cones in the list  <A>[cone1</A>, <A>cone2,...]</A>.
DeclareOperation( "IntersectionOfConelist",
                  [ IsList ] );
                  
DeclareOperation( "Intersect2",
                  [ IsCone, IsCone ] );
#! @Arguments cone1, cone2 
#! @Returns a true or false
#! @Description  
#! Returns if the cone <A>cone1</A> contains the cone <A>cone2</A>.                  
DeclareOperation( "Contains",
                  [ IsCone, IsCone ] );

#! @Arguments ray, cone 
#! @Returns true or false
#! @Description  
#! Returns if the cone <A>cone</A> contains the ray <A>ray</A>.
DeclareOperation( "RayGeneratorContainedInCone",
                  [ IsList, IsCone ] );

DeclareOperation( "RayGeneratorContainedInRelativeInterior",
                  [ IsList, IsCone ] );
                  
DeclareOperation( "\*",
                [ IsInt, IsCone ] );

#! @InsertChunk example1
                   
DeclareOperation( "\*",
                  [ IsHomalgMatrix, IsCone ] );

DeclareOperation( "NonReducedInequalities",
                  [ IsCone ] );

DeclareOperation( "StarSubdivisionOfIthMaximalCone",
                      [ IsFan, IsInt ] );

DeclareOperation( "StarFan", 
                      [ IsCone ] );

DeclareOperation( "StarFan", 
                      [ IsCone, IsFan ] );

DeclareGlobalFunction( "testttt" );                
DeclareGlobalFunction( "testttt2" ); 
DeclareGlobalFunction( "SolutionPostIntMat" ); 
DeclareGlobalFunction( "AddIfPossible" ); 
DeclareGlobalFunction( "IfNotReducedReduceOnce" );
DeclareGlobalFunction( "ReduceTheBase" );

