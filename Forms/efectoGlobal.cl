/*****************************************************************************

                        Copyright © 

******************************************************************************/
class efectoGlobal : efectoGlobal
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> efectoGlobal EfectoGlobal.

constructors
    new : (window Parent).

end class efectoGlobal