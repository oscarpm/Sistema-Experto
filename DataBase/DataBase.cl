/*****************************************************************************

                        Copyright © 

******************************************************************************/
class dataBase : dataBase
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end

    addPatronPID : (integer EvLC, real CertEvLC, real GastoLC, real CertGastoLC, string LocLC, string TiempoLC,
                   integer EvVV, real CertEvVV, real GastoVV, real CertGastoVV, string LocVV, string TiempoVV,
                   integer EvAC01, real CertAC01, string LocAC01, string TiempoAC01,
                   integer EvAC02, real CertAC02, string LocAC02, string TiempoAC02,
                   integer EvAC03, real CertAC03, string LocAC03, string TiempoAC03,
                   integer EvFO01, real CertFO01, string LocFO01, string TiempoFO01,
                   integer EvFO02, real CertFO02, string LocFO02, string TiempoFO02,
                   integer EvFO03, real CertFO03, string LocFO03, string TiempoFO03).
    
    recoverPatronPID : ().
    
    
end class dataBase