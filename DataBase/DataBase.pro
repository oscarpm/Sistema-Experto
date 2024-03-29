/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement dataBase
    open core, stdIO, list
constants
    className = "DataBase/dataBase".
    classVersion = "".

class facts 

  patronPID : (string ID, integer EvLC, real CertEvLC, real GastoLC, real CertGastoLC, string LocLC, string TiempoLC,
                   integer EvVV, real CertEvVV, real GastoVV, real CertGastoVV, string LocVV, string TiempoVV,
                   integer EvAC01, real CertAC01, string LocAC01, string TiempoAC01,
                   integer EvAC02, real CertAC02, string LocAC02, string TiempoAC02,
                   integer EvAC03, real CertAC03, string LocAC03, string TiempoAC03,
                   integer EvFO01, real CertFO01, string LocFO01, string TiempoFO01,
                   integer EvFO02, real CertFO02, string LocFO02, string TiempoFO02,
                   integer EvFO03, real CertFO03, string LocFO03, string TiempoFO03).

clauses
    classInfo(className, classVersion).
    
    addPatronPID(EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                         EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                         EvAC01, CertAC01, LocAC01, TiempoAC01,
                         EvAC02, CertAC02, LocAC02, TiempoAC02,
                         EvAC03, CertAC03, LocAC03, TiempoAC03,
                         EvFO01, CertFO01, LocFO01, TiempoFO01,
                         EvFO02, CertFO02, LocFO02, TiempoFO02,
                         EvFO03, CertFO03, LocFO03, TiempoFO03) :-                    
      findAll(ID, patronPID(ID, _, _, _, _,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_), IDList),
      IDList <> [],!,
      NewID = toString(toTerm(maximum(IDList)) + 1),
      assertz(patronPID(NewID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                  EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                  EvAC01, CertAC01, LocAC01, TiempoAC01,
                  EvAC02, CertAC02, LocAC02, TiempoAC02,
                  EvAC03, CertAC03, LocAC03, TiempoAC03,
                  EvFO01, CertFO01, LocFO01, TiempoFO01,
                  EvFO02, CertFO02, LocFO02, TiempoFO02,
                  EvFO03, CertFO03, LocFO03, TiempoFO03)),
      stdIO::write("Un nuevo patternPID ha sido registrado con el ID: ", NewID), stdIO::nl,
      stdIO::write(""),
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
      stdIO::nl.
    
    addPatronPID(EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                         EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                         EvAC01, CertAC01, LocAC01, TiempoAC01,
                         EvAC02, CertAC02, LocAC02, TiempoAC02,
                         EvAC03, CertAC03, LocAC03, TiempoAC03,
                         EvFO01, CertFO01, LocFO01, TiempoFO01,
                         EvFO02, CertFO02, LocFO02, TiempoFO02,
                         EvFO03, CertFO03, LocFO03, TiempoFO03) :-                    
      assertz(patronPID("1", EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                  EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                  EvAC01, CertAC01, LocAC01, TiempoAC01,
                  EvAC02, CertAC02, LocAC02, TiempoAC02,
                  EvAC03, CertAC03, LocAC03, TiempoAC03,
                  EvFO01, CertFO01, LocFO01, TiempoFO01,
                  EvFO02, CertFO02, LocFO02, TiempoFO02,
                  EvFO03, CertFO03, LocFO03, TiempoFO03)),
      stdIO::write("Un nuevo patternPID ha sido registrado con el ID: ", 1), stdIO::nl,
      stdIO::write(""),
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
      stdIO::nl.

    recoverPatronPID() :-                    
      patronPID(NewID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                  EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                  EvAC01, CertAC01, LocAC01, TiempoAC01,
                  EvAC02, CertAC02, LocAC02, TiempoAC02,
                  EvAC03, CertAC03, LocAC03, TiempoAC03,
                  EvFO01, CertFO01, LocFO01, TiempoFO01,
                  EvFO02, CertFO02, LocFO02, TiempoFO02,
                  EvFO03, CertFO03, LocFO03, TiempoFO03),
      eSKnowledgeBase::fillDatabase(NewID, EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                                                     EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                                                     EvAC01, CertAC01, LocAC01, TiempoAC01,
                                                     EvAC02, CertAC02, LocAC02, TiempoAC02,
                                                     EvAC03, CertAC03, LocAC03, TiempoAC03,
                                                     EvFO01, CertFO01, LocFO01, TiempoFO01,
                                                     EvFO02, CertFO02, LocFO02, TiempoFO02,
                                                     EvFO03, CertFO03, LocFO03, TiempoFO03),fail.


    recoverPatronPID().      
           
      
     
end implement dataBase
