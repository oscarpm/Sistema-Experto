/*****************************************************************************

                        Copyright © 

******************************************************************************/
class conjuncionHechos : conjuncionHechos
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

predicates
    display : (window Parent) -> conjuncionHechos ConjuncionHechos.

constructors
    new : (window Parent).

end class conjuncionHechos