/*****************************************************************************

                        Copyright © 

******************************************************************************/
class addPIPattern : addPIPattern
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> addPIPattern AddPIPattern.

constructors
    new : (window Parent).

end class addPIPattern