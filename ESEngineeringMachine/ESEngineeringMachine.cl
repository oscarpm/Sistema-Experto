/*****************************************************************************

                        Copyright © 

******************************************************************************/
class eSEngineeringMachine : eSEngineeringMachine
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end
        
    goalDiagnosticoFugaTomaC : () multi.
    recolectaHechosContribucionDeteccion : () multi.
    recolectaHechosContribucionPrevencion : () multi.
    recolectaHechosContribucionRiesgo : () multi.

end class eSEngineeringMachine