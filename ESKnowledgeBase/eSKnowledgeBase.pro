/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement eSKnowledgeBase
    open core, stdIO

constants
    className = "ESKnowledgeBase/eSKnowledgeBase".
    classVersion = "".

class facts
patronPID : (string ID_PID, integer EvLC, real CertEvLC, real GastoLC, real CertGastoLC, string LocLC, string TiempoLC,
                   integer EvVV, real CertEvVV, real GastoVV, real CertGastoVV, string LocVV, string TiempoVV,
                   integer EvAC01, real CertAC01, string LocAC01, string TiempoAC01,
                   integer EvAC02, real CertAC02, string LocAC02, string TiempoAC02,
                   integer EvAC03, real CertAC03, string LocAC03, string TiempoAC03,
                   integer EvFO01, real CertFO01, string LocFO01, string TiempoFO01,
                   integer EvFO02, real CertFO02, string LocFO02, string TiempoFO02,
                   integer EvFO03, real CertFO03, string LocFO03, string TiempoFO03).

patronLC : (string ID_PID, integer EvLC, real CertEvLC, real GastoLC, real CertGastoLC, string LocLC, string TiempoLC).
patronVV : (string ID_PID, integer EvVV, real CertEvVV, real GastoVV, real CertGastoVV, string LocVV, string TiempoVV).
patronAC : (string ID_PID, integer EvAC01, real CertAC01, string LocAC01, string TiempoAC01,
                  integer EvAC02, real CertAC02, string LocAC02, string TiempoAC02,
                  integer EvAC03, real CertAC03, string LocAC03, string TiempoAC03).
patronFO : (string ID_PID, integer EvFO01, real CertFO01, string LocFO01, string TiempoFO01,
                   integer EvFO02, real CertFO02, string LocFO02, string TiempoFO02,
                   integer EvFO03, real CertFO03, string LocFO03, string TiempoFO03).

factDeteccionFugaTomaC : (string ID_PID, integer IDRegla, real ContribucionRegla, string FuenteEv).
factRiesgoFugaTomaC : (string ID_PID, integer IDRegla, real ContribucionRegla, string FuenteEv).
factPrevencionFugaTomaC : (string ID_PID,  integer IDRegla, real ContribucionRegla, string FuenteEv).

diagnostico : (string Tipo, real EfectoGlobal).
    
clauses
    classInfo(className, classVersion).
    
    recoverPatternPIDataBase() :-
      dataBase::recoverPatronPID().
    
    
    fillDatabase(NewID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                                                     EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                                                     EvAC01, CertAC01, LocAC01, TiempoAC01,
                                                     EvAC02, CertAC02, LocAC02, TiempoAC02,
                                                     EvAC03, CertAC03, LocAC03, TiempoAC03,
                                                     EvFO01, CertFO01, LocFO01, TiempoFO01,
                                                     EvFO02, CertFO02, LocFO02, TiempoFO02,
                                                     EvFO03, CertFO03, LocFO03, TiempoFO03):-
      assertz(patronPID(NewID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                                 EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                                 EvAC01, CertAC01, LocAC01, TiempoAC01,
                                 EvAC02, CertAC02, LocAC02, TiempoAC02,
                                 EvAC03, CertAC03, LocAC03, TiempoAC03,
                                 EvFO01, CertFO01, LocFO01, TiempoFO01,
                                 EvFO02, CertFO02, LocFO02, TiempoFO02,
                                 EvFO03, CertFO03, LocFO03, TiempoFO03)).
    
    
    
    listPatronPID() :-
        patronPID(ID_PID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                           EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                           EvAC01, CertAC01, LocAC01, TiempoAC01,
                           EvAC02, CertAC02, LocAC02, TiempoAC02,
                           EvAC03, CertAC03, LocAC03, TiempoAC03,
                           EvFO01, CertFO01, LocFO01, TiempoFO01,
                           EvFO02, CertFO02, LocFO02, TiempoFO02,
                           EvFO03, CertFO03, LocFO03, TiempoFO03),
        stdIO::nl,
        stdIO::write("PATRÓN PID: ", ID_PID),
        stdIO::nl,
        stdIO::write("PATRON LC: ","EvLC: ", EvLC, ", CertEvLC: ", CertEvLC, ", GastoLC: ", GastoLC, ", CertGastoLC: ", CertGastoLC, ", LocLC: ", LocLC, ", TiempoLC: ",TiempoLC),
        stdIO::nl,
        stdIO::write("PATRON VV: ","EvVV: ", EvVV, ", CertEvLVV: ", CertEvVV, ", GastoVV: ", GastoVV, ", CertGastoVV: ", CertGastoVV, ", LocVV: ", LocVV, ", TiempoVV: ",TiempoVV),
        stdIO::nl,
        stdIO::write("PATRON AC: ","EvAC01: ", EvAC01, ", CertAC01: ", CertAC01, ", LocAC01: ", LocAC01, ", TiempoAC01: ", TiempoAC01),
        stdIO::nl,
        stdIO::write("PATRON AC: ","EvAC02: ", EvAC02, ", CertAC02: ", CertAC02, ", LocAC02: ", LocAC02, ", TiempoAC02: ", TiempoAC02),
        stdIO::nl,
        stdIO::write("PATRON AC: ","EvAC03: ", EvAC03, ", CertAC03: ", CertAC03, ", LocAC03: ", LocAC03, ", TiempoAC03: ", TiempoAC03),
        stdIO::nl,
        stdIO::write("PATRON FO: ","EvFO01: ", EvFO01, ", CertFO01: ", CertFO01, ", LocFO01: ", LocFO01, ", TiempoFO01: ", TiempoFO01),
        stdIO::nl,
        stdIO::write("PATRON FO: ","EvFO02: ", EvFO02, ", CertFO02: ", CertFO02, ", LocFO02: ", LocFO02, ", TiempoFO02: ", TiempoFO02),
        stdIO::nl,
        stdIO::write("PATRON FO: ","EvFO03: ", EvFO03, ", CertFO03: ", CertFO03, ", LocFO03: ", LocFO03, ", TiempoFO03: ", TiempoFO03),
        stdIO::nl,
        fail. 
   
    listPatronPID().
   
  listFactDeteccionFugaTomaC() :-
        factDeteccionFugaTomaC(ID_PID, IDRegla, ContribucionR, FuenteEv),
        stdIO::nl,
        stdIO::write("KNOWLEDGE BASE FACT: factDeteccionFugaTomaC"),
        stdIO::nl,
        stdIO::write("ID PID: ", ID_PID, ", ID Regla: ",IDRegla, ", Contribución de la Regla: ", ContribucionR, "       Fuente: ", FuenteEv),
        stdIO::nl,
        fail.
  
  listFactDeteccionFugaTomaC(). 
  
   listDatabase() :- 
        listPatronPID(),
        listFactDeteccionFugaTomaC().
   
   registraEventosFugaTomaC() :-
        patronPID(ID_PID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                           EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                           EvAC01, CertAC01, LocAC01, TiempoAC01,
                           EvAC02, CertAC02, LocAC02, TiempoAC02,
                           EvAC03, CertAC03, LocAC03, TiempoAC03,
                           EvFO01, CertFO01, LocFO01, TiempoFO01,
                           EvFO02, CertFO02, LocFO02, TiempoFO02,
                           EvFO03, CertFO03, LocFO03, TiempoFO03),
        assertz(patronLC(ID_PID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC)),
        assertz(patronVV(ID_PID, EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV)),
        assertz(patronAC(ID_PID, EvAC01, CertAC01, LocAC01, TiempoAC01, EvAC02, CertAC02, LocAC02, TiempoAC02, EvAC03, CertAC03, LocAC03, TiempoAC03)),
        assertz(patronFO(ID_PID, EvFO01, CertFO01, LocFO01, TiempoFO01, EvFO02, CertFO02, LocFO02, TiempoFO02, EvFO03, CertFO03, LocFO03, TiempoFO03)),
        fail.
                           
   registraEventosFugaTomaC().
    
   
   deteccionFugaTomaC(1, 0.9, ContribucionR):-
      patronLC(ID_PID, _, CertEvLC, GastoLC, CertGastoLC, _, _),
      CertEvLC>50,
      GastoLC>50,
      CertGastoLC>50,
      FuenteEv="Sistema LC",
      certainFactor::calculaFactorCertConjuncionH([CertEvLC, CertGastoLC], 1, A),
      certainFactor::calculaContribucionRegla(0.9, A, ContribucionR),
      assertz(factDeteccionFugaTomaC(ID_PID, 1, ContribucionR, FuenteEv)),      
      fail.
           
   deteccionFugaTomaC(2, 0.85, ContribucionR):-
      patronVV(ID_PID, _, CertEvVV, GastoVV, CertGastoVV, _, _),
      CertEvVV>50,
      GastoVV>50,
      CertGastoVV>50,
      FuenteEv="Sistema VV",
      certainFactor::calculaFactorCertConjuncionH([CertEvVV, CertGastoVV],1, A),
      certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
      assertz(factDeteccionFugaTomaC(ID_PID,  2, ContribucionR, FuenteEv)),      
      fail.
   
   deteccionFugaTomaC(3, 0.8, ContribucionR):-
      patronAC(ID_PID, _, CertAC01, _, _, _, CertAC02, _, _, _, CertAC03, _, _),
      CertAC01>80,CertAC02>80,CertAC03>80,
      FuenteEv="Sistema AC",
      certainFactor::calculaFactorCertConjuncionH([CertAC01, CertAC02, CertAC03],1, A),
      certainFactor::calculaContribucionRegla(0.8, A, ContribucionR),
      assertz(factDeteccionFugaTomaC(ID_PID, 3, ContribucionR, FuenteEv)),      
      fail.
      
   deteccionFugaTomaC(4, 0.85, ContribucionR):-
      patronFO(ID_PID, _, CertFO01, _, _, _, CertFO02, _, _, _, CertFO03, _, _),
      CertFO01>80,CertFO02>80,CertFO03>80,
      FuenteEv="Sistema FO",
      certainFactor::calculaFactorCertConjuncionH([CertFO01, CertFO02, CertFO03], 1, A),
      certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
      assertz(factDeteccionFugaTomaC(ID_PID, 4, ContribucionR, FuenteEv)),      
      fail.
   
   deteccionFugaTomaC(0,0,0).  
           
   prevencionFugaTomaC(5, 0.8, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_), 
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronAC(ID_PID, _, CertAC01, _, _, _, CertAC02,_,_,_, CertAC03,_,_),
        CertAC01>80,CertAC02==0,CertAC03==0,
        FuenteEv="Sistema AC",
        certainFactor::calculaFactorCertConjuncionH([CertAC01],1, A),
        certainFactor::calculaContribucionRegla(0.8, A, ContribucionR),
        assertz(factPrevencionFugaTomaC(ID_PID, 5, ContribucionR, FuenteEv)),        
        fail.
   
   prevencionFugaTomaC(6, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_), 
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronAC(ID_PID, _, CertAC01,_,_, _, CertAC02, _, _,_, CertAC03,_,_),
        CertAC02>8,CertAC01==0,CertAC03==0,
        FuenteEv="Sistema AC",
        certainFactor::calculaFactorCertConjuncionH([CertAC02],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factPrevencionFugaTomaC(ID_PID, 6, ContribucionR, FuenteEv)),        
        fail.
   
    prevencionFugaTomaC(7, 0.8, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_), 
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronAC(ID_PID, _, CertAC01,_,_,_, CertAC02,_,_,_, CertAC03, _, _),
        CertAC03>80,CertAC01==0,CertAC02==0,
        FuenteEv="Sistema AC",
        certainFactor::calculaFactorCertConjuncionH([CertAC03],1, A),
        certainFactor::calculaContribucionRegla(0.8, A, ContribucionR),
        assertz(factPrevencionFugaTomaC(ID_PID, 7, ContribucionR, FuenteEv)),        
        fail.
   
   prevencionFugaTomaC(8, 0.8, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_), 
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronFO(ID_PID, _, CertFO01, _, _,_, CertFO02,_,_,_, CertFO03,_,_),
        CertFO01>80,CertFO02==0,CertFO03==0,
        FuenteEv="Sistema FO",
        certainFactor::calculaFactorCertConjuncionH([CertFO01],1, A),
        certainFactor::calculaContribucionRegla(0.8, A, ContribucionR),
        assertz(factPrevencionFugaTomaC(ID_PID, 8, ContribucionR, FuenteEv)),        
        fail.
   
   prevencionFugaTomaC(9, 0.8, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_), 
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronFO(ID_PID, _, CertFO01,_,_, _, CertFO02,_, _,_, CertFO03,_,_),
        CertFO02>80,CertFO01==0,CertFO03==0,
        FuenteEv="Sistema FO",
        certainFactor::calculaFactorCertConjuncionH([CertFO02],1, A),
        certainFactor::calculaContribucionRegla(0.8, A, ContribucionR),
        assertz(factPrevencionFugaTomaC(ID_PID, 9, ContribucionR, FuenteEv)),        
        fail.
   
 prevencionFugaTomaC(10, 0.8, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_), 
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronFO(ID_PID, _, CertFO01,_,_,_, CertFO02,_,_,_, CertFO03,_,_),
        CertFO03>80,CertFO01==0,CertFO02==0,
        FuenteEv="Sistema FO",
        certainFactor::calculaFactorCertConjuncionH([CertFO03],1, A),
        certainFactor::calculaContribucionRegla(0.8, A, ContribucionR),
        assertz(factPrevencionFugaTomaC(ID_PID, 10, ContribucionR, FuenteEv)),
        fail.  
   
  prevencionFugaTomaC(0,0,0).     
   
  notificacionRiesgoFugaTomaC(11, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        not(factPrevencionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_),
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronAC(ID_PID, _, CertAC01, _, _, 2,0.0,_,_,3,0.0,_,_),
        CertAC01>40,
        CertAC01<80,
        FuenteEv="Sistema AC",
        certainFactor::calculaFactorCertConjuncionH([CertAC01],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factRiesgoFugaTomaC(ID_PID, 11, ContribucionR, FuenteEv)),
        fail.
        
 notificacionRiesgoFugaTomaC(12, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        not(factPrevencionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_),
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronAC(ID_PID, 1,0.0,_,_, _, CertAC02, _, _, 3,0.0,_,_),
        CertAC02>40,
        CertAC02<80,
        FuenteEv="Sistema AC",
        certainFactor::calculaFactorCertConjuncionH([CertAC02],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factRiesgoFugaTomaC(ID_PID, 12, ContribucionR, FuenteEv)),
        fail.
 
 notificacionRiesgoFugaTomaC(13, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        not(factPrevencionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_),
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronAC(ID_PID, 1,0.0,_,_, 2,0.0,_,_, _, CertAC03, _, _),
        CertAC03>40,
        CertAC03<80,
        FuenteEv="Sistema AC",
        certainFactor::calculaFactorCertConjuncionH([CertAC03],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factRiesgoFugaTomaC(ID_PID, 13, ContribucionR, FuenteEv)),
        fail.
 
 notificacionRiesgoFugaTomaC(14, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        not(factPrevencionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_),
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronFO(ID_PID, _, CertFO01, _, _, 2,0.0,_,_,3,0.0,_,_),
        CertFO01>40,
        CertFO01<80,
        FuenteEv="Sistema FO",
        certainFactor::calculaFactorCertConjuncionH([CertFO01],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factRiesgoFugaTomaC(ID_PID, 14, ContribucionR, FuenteEv)),
        fail.
        
  notificacionRiesgoFugaTomaC(15, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        not(factPrevencionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_),
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronFO(ID_PID,1,0.0,_,_, _, CertFO02, _, _, 3,0.0 ,_,_),
        CertFO02>40,
        CertFO02<80,
        FuenteEv="Sistema FO",
        certainFactor::calculaFactorCertConjuncionH([CertFO02],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factRiesgoFugaTomaC(ID_PID, 15, ContribucionR, FuenteEv)),
        fail.      
        
 notificacionRiesgoFugaTomaC(16, 0.85, ContribucionR) :-
        not(factDeteccionFugaTomaC(_,_,_,_)),
        not(factPrevencionFugaTomaC(_,_,_,_)),
        patronLC(_,1,0.0,0.0,0.0,_,_),
        patronVV(_,1,0.0,0.0,0.0,_,_),
        patronFO(ID_PID,1,0.0,_,_, 2,0.0,_,_, _, CertFO03, _, _),
        CertFO03>40,
        CertFO03<80,
        FuenteEv="Sistema FO",
        certainFactor::calculaFactorCertConjuncionH([CertFO03],1, A),
        certainFactor::calculaContribucionRegla(0.85, A, ContribucionR),
        assertz(factRiesgoFugaTomaC(ID_PID, 16, ContribucionR, FuenteEv)),
        fail. 
  
 notificacionRiesgoFugaTomaC(0, 0, 0).  
  
 creaListaContribucionDeteccion(ListCont):-
    findAll(ContribucionR, factDeteccionFugaTomaC(_,_,ContribucionR,_), ListCont).
    
 creaListaContribucionDeteccion([]).
 
 creaListaContribucionPrevencion(ListCont):-
    findAll(ContribucionR, factPrevencionFugaTomaC(_,_,ContribucionR,_), ListCont).
    
 creaListaContribucionPrevencion([]).
 
 creaListaContribucionRiesgo(ListCont):-
    findAll(ContribucionR, factRiesgoFugaTomaC(_,_,ContribucionR,_), ListCont).
    
 creaListaContribucionRiesgo([]).
 
 
 visualizaEventosDeteccionFugaTomaC() :- 
    factDeteccionFugaTomaC(ID_PID, IDRegla, ContribucionRegla, FuenteEv),
    stdIO::write("Datos de Detección de Fuga o Toma Clandestina:"),
    stdIO::nl,
    stdIO::write("ID PID: ",ID_PID,"     Núm. Regla: ",IDRegla, "     Contribucion Regla: ",ContribucionRegla, "           Fuente: ", FuenteEv),
    stdIO::nl,
    fail.
  
 visualizaEventosDeteccionFugaTomaC().       
        
 visualizaEventosPrevencionFugaTomaC() :- 
    factPrevencionFugaTomaC(ID_PID, IDRegla, ContribucionRegla, FuenteEv),
    stdIO::write("Datos de Prevencion de Fuga o Toma Clandestina:"),
    stdIO::nl,
    stdIO::write("ID PID: ",ID_PID,"     Núm. Regla: ",IDRegla, "     Contribucion Regla: ",ContribucionRegla, "           Fuente: ", FuenteEv),
    stdIO::nl,
    fail.
  
 visualizaEventosPrevencionFugaTomaC().     

visualizaEventosRiesgoFugaTomaC() :- 
    factRiesgoFugaTomaC(ID_PID, IDRegla, ContribucionRegla, FuenteEv),
    stdIO::write("Datos de Riesgo de Fuga o Toma Clandestina:"),
    stdIO::nl,
    stdIO::write("ID PID: ",ID_PID,"     Núm. Regla: ",IDRegla, "     Contribucion Regla: ",ContribucionRegla, "           Fuente: ", FuenteEv),
    stdIO::nl,
    fail.
  
 visualizaEventosRiesgoFugaTomaC().    
 
 eliminaEventosFugaTomaC() :-
        retract(patronLC(_,_,_,_,_,_,_)),
        retract(patronVV(_,_,_,_,_,_,_)),
        retract(patronAC(_,_,_,_,_,_,_,_,_,_,_,_,_)),
        retract(patronFO(_,_,_,_,_,_,_,_,_,_,_,_,_)),
        fail.
 
 eliminaEventosFugaTomaC(). 
 
 eliminaEventoDeteccionFugasTomaC() :- 
        retract(factDeteccionFugaTomaC(_,_,_,_)),
        fail. 
 
 eliminaEventoDeteccionFugasTomaC(). 
 
 eliminaEventoPrevencionFugasTomaC() :- 
        retract(factPrevencionFugaTomaC(_,_,_,_)),
        fail. 
 
 eliminaEventoPrevencionFugasTomaC(). 
 
eliminaEventoRiesgoFugasTomaC() :- 
        retract(factRiesgoFugaTomaC(_,_,_,_)),
        fail. 
 
eliminaEventoRiesgoFugasTomaC(). 


generaDiagnosticoPartiular(Tipo, EG):-
    assertz(diagnostico(Tipo, EG)),
    stdIO::nl,
    stdIO::write("Diagnostico:"),
    stdIO::nl,
    stdIO::write("Tipo de diagnostico: ", Tipo, ",    Certeza (Efecto Global): ", EG ),
    stdIO::nl.
    

end implement eSKnowledgeBase
