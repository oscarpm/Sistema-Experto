/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement certainFactor
    open core

class facts
%facts
    certidumbre : real := 0.0.

constants
    className = "ESKnowledgeBase/certainFactor".
    classVersion = "".

clauses
    new(Cert) :-
        certidumbre := Cert.
clauses
    classInfo(className, classVersion).
    
    getCert() = certidumbre.
    
    setCert(Cert):-
        certidumbre := Cert.
    
    % Negación
    calculaFactorCertNegacionH(Cert):-
        C = Cert / 100,
        certidumbre := -C.
        
    % Conjunción        
    calculaFactorCertConjuncionH([H|T], Min,FactorCert):-
        C = H/100,
        C <= Min,        
        calculaFactorCertConjuncionH(T, C, FactorCert).
        
    calculaFactorCertConjuncionH([H|T], Min,FactorCert):-
        C = H/100,
        C > Min,        
        calculaFactorCertConjuncionH(T, Min, FactorCert).
        
    calculaFactorCertConjuncionH([],FactorCert, FactorCert).
          
    % Disyunción
    calculaFactorCertDisyuncionH([H|T], Max, FactorCert):-
        D = H / 100,
        D >= Max,
        calculaFactorCertDisyuncionH(T, D, FactorCert).
        
    calculaFactorCertDisyuncionH([H|T], Max, FactorCert):-
        D = H / 100,
        D < Max,
        calculaFactorCertDisyuncionH(T, Max, FactorCert).
        
    calculaFactorCertDisyuncionH([], FactorCert, FactorCert).
    
    % Contribución de la Regla
    calculaContribucionRegla(CertezaRegla, Antecedente, ContribucionRegla):-
        ContribucionRegla = CertezaRegla * Antecedente.
    
    % Consecuente - (Ejemplo)
    calculaFactorCertConsecuenteR(CertH1, CertH2, CertH3, CertH4, Cert):-
        calculaFactorCertDisyuncionH([CertH1, CertH2], 0, Max1),
        calculaFactorCertDisyuncionH([CertH3, CertH4], 0, Max2),
        calculaFactorCertConjuncionH([Max1, Max2],1, A),
        C = Cert,
        certidumbre := A * C.
    
    % Efecto Global   
    calculaEfectoGlobalVR([H|T], EG, EfectoG):-        
        Temp = H + (EG * (1 - H)),
        calculaEfectoGlobalVR(T, Temp, EfectoG).
        
    calculaEfectoGlobalVR([], EfectoG, EfectoG).

   

end implement certainFactor
