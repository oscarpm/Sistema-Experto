/*****************************************************************************

                        Copyright © 

******************************************************************************/
class disyuncionHechos : disyuncionHechos
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> disyuncionHechos DisyuncionHechos.

constructors
    new : (window Parent).

end class disyuncionHechos