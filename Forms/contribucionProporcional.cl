/*****************************************************************************

                        Copyright © 

******************************************************************************/
class contribucionProporcional : contribucionProporcional
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> contribucionProporcional ContribucionProporcional.

constructors
    new : (window Parent).

end class contribucionProporcional