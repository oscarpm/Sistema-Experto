/*****************************************************************************

                        Copyright © 

******************************************************************************/
class visualizeResults : visualizeResults
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> visualizeResults VisualizeResults.

constructors
    new : (window Parent).

end class visualizeResults