/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement eSEngineeringMachine
    open core, vpiDomains

constants
    className = "ESEngineeringMachine/eSEngineeringMachine".
    classVersion = "".

clauses
    classInfo(className, classVersion).
    
       
    goalDiagnosticoFugaTomaC() :-
        eSKnowledgeBase::eliminaEventosFugaTomaC(),
        eSKnowledgeBase::eliminaEventoDeteccionFugasTomaC(),
        eSKnowledgeBase::eliminaEventoPrevencionFugasTomaC(),
        eSKnowledgeBase::eliminaEventoRiesgoFugasTomaC(),
        eSKnowledgeBase::registraEventosFugaTomaC(),
        eSKnowledgeBase::deteccionFugaTomaC(_,_,_),
        eSKnowledgeBase::visualizaEventosDeteccionFugaTomaC(),
        recolectaHechosContribucionDeteccion(),        
        eSKnowledgeBase::prevencionFugaTomaC(_,_,_),
        eSKnowledgeBase::visualizaEventosPrevencionFugaTomaC(),
        recolectaHechosContribucionPrevencion(),     
        eSKnowledgeBase::notificacionRiesgoFugaTomaC(_,_,_),
        eSKnowledgeBase::visualizaEventosRiesgoFugaTomaC(),
        recolectaHechosContribucionRiesgo().
    
  
    recolectaHechosContribucionDeteccion():-
        eSKnowledgeBase::creaListaContribucionDeteccion(ListCont),
        ListCont <> [],
        certainFactor::calculaEfectoGlobalVR(ListCont, 0, EG),
        eSKnowledgeBase::generaDiagnosticoPartiular("Deteccion de Fuga", EG).        
 
    recolectaHechosContribucionDeteccion():-
        eSKnowledgeBase::creaListaContribucionDeteccion(ListCont),
        ListCont == [].
 
    recolectaHechosContribucionPrevencion():-
        eSKnowledgeBase::creaListaContribucionPrevencion(ListCont),
        ListCont <> [],
        certainFactor::calculaEfectoGlobalVR(ListCont, 0, EG),
        eSKnowledgeBase::generaDiagnosticoPartiular("Prevencion de Fuga", EG).        
 
    recolectaHechosContribucionPrevencion():-
        eSKnowledgeBase::creaListaContribucionPrevencion(ListCont),
        ListCont == [].
        
    recolectaHechosContribucionRiesgo():-
        eSKnowledgeBase::creaListaContribucionRiesgo(ListCont),
        ListCont <> [],
        certainFactor::calculaEfectoGlobalVR(ListCont, 0, EG),
        eSKnowledgeBase::generaDiagnosticoPartiular("Riesgo de Fuga", EG).        
 
    recolectaHechosContribucionRiesgo():-
        eSKnowledgeBase::creaListaContribucionRiesgo(ListCont),
        ListCont == []. 
    
end implement eSEngineeringMachine
