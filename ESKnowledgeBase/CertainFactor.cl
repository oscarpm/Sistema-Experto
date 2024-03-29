/*****************************************************************************

                        Copyright © 

******************************************************************************/
class certainFactor : certainFactor
    open core

predicates
    classInfo : core::classInfo.
    % @short Class information  predicate. 
    % @detail This predicate represents information predicate of this class.
    % @end
    
    
    
          
    constructors
        new : (real Cert).
        
    predicates
        getCert : () -> real Cert.
        setCert : (real Cert).
        calculaFactorCertNegacionH : (real Cert).
        calculaFactorCertConjuncionH : (real*List, real Min, real FactorCert) nondeterm (i,i,o).        
        calculaFactorCertDisyuncionH : (real* List, real Max, real FactorCert) nondeterm (i,i,o).
        calculaContribucionRegla : (real CertezaRegla, real Antecedente, real ContribucionRegla) procedure (i,i,o).
        calculaFactorCertConsecuenteR : (real CertH1, real CertH2, real CertH3, real CertH4, real CertRegla) nondeterm.
        calculaEfectoGlobalVR : (real* List, real Contribucion, real EfectoGlobal) procedure (i,i,o).
    
end class certainFactor