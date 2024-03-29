/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement conjuncionHechos
    inherits formWindow
    open core, vpiDomains

constants
    className = "Forms/conjuncionHechos".
    classVersion = "".

clauses
    classInfo(className, classVersion).

clauses
    display(Parent) = Form :-
        Form = new(Parent),
        Form:show().

clauses
    new(Parent):-
        formWindow::new(Parent),
        generatedInitialize().

predicates
    onCalcularButtonClick : button::clickResponder.
clauses
    onCalcularButtonClick(_Source) = button::defaultAction:-
        CertH1 = toTerm(hecho1_ctl:getText()),
        CertH2 = toTerm(hecho2_ctl:getText()),
        certainFactor::calculaFactorCertConjuncionH([CertH1, CertH2],1, FactorCert),
        hecho1_ctl:setText(toString(CertH1/100)),
        hecho2_ctl:setText(toString(CertH2/100)),
        resultado_ctl:setText(tostring(FactorCert)),!.
        
    onCalcularButtonClick(_Source) = button::defaultAction.

% This code is maintained automatically, do not update it manually. 17:09:43-17.11.2011
facts
    calcularButton_ctl : button.
    hecho2_ctl : editControl.
    hecho1_ctl : editControl.
    resultado_ctl : editControl.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("conjuncionHechos"),
        setRect(rct(50,40,290,160)),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText2_ctl = textControl::new(This),
        StaticText2_ctl:setText("Resultado:"),
        StaticText2_ctl:setPosition(140, 76),
        StaticText2_ctl:setSize(36, 10),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Hecho 1:"),
        StaticText_ctl:setPosition(20, 18),
        StaticText_ctl:setSize(32, 10),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("Hecho 2:"),
        StaticText1_ctl:setPosition(148, 18),
        StaticText1_ctl:setSize(32, 10),
        calcularButton_ctl := button::new(This),
        calcularButton_ctl:setText("Calcular"),
        calcularButton_ctl:setPosition(164, 98),
        calcularButton_ctl:setSize(56, 16),
        calcularButton_ctl:defaultHeight := true(),
        calcularButton_ctl:setClickResponder(onCalcularButtonClick),
        hecho2_ctl := editControl::new(This),
        hecho2_ctl:setText("0"),
        hecho2_ctl:setPosition(184, 16),
        hecho2_ctl:setAlignment(alignRight),
        hecho1_ctl := editControl::new(This),
        hecho1_ctl:setText("0"),
        hecho1_ctl:setPosition(56, 16),
        hecho1_ctl:setAlignment(alignRight),
        resultado_ctl := editControl::new(This),
        resultado_ctl:setText("0"),
        resultado_ctl:setPosition(180, 74),
        resultado_ctl:setAlignment(alignRight),
        resultado_ctl:setReadOnly().
% end of automatic code
end implement conjuncionHechos
