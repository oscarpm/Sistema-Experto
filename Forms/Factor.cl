/*****************************************************************************

                        Copyright © 

******************************************************************************/
class factor : factor
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> factor Factor.

constructors
    new : (window Parent).

end class factor