/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement disyuncionHechos
    inherits formWindow
    open core, vpiDomains

constants
    className = "Forms/disyuncionHechos".
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
    onPushButtonClick : button::clickResponder.
clauses
    onPushButtonClick(_Source) = button::defaultAction:-
        CertH1 = toTerm(hecho1_ctl:getText()),
        CertH2 = toTerm(hecho2_ctl:getText()),
        certainFactor::calculaFactorCertDisyuncionH([CertH1, CertH2],0, FactorCert),
        hecho1_ctl:setText(toString(CertH1/100)),
        hecho2_ctl:setText(toString(CertH2/100)),
        resultado_ctl:setText(tostring(FactorCert)),!.
        
    onPushButtonClick(_Source) = button::defaultAction.

% This code is maintained automatically, do not update it manually. 17:10:03-17.11.2011
facts
    hecho1_ctl : editControl.
    hecho2_ctl : editControl.
    resultado_ctl : editControl.
    pushButton_ctl : button.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("disyuncionHechos"),
        setRect(rct(50,40,290,160)),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText2_ctl = textControl::new(This),
        StaticText2_ctl:setText("Resultado:"),
        StaticText2_ctl:setPosition(140, 72),
        StaticText2_ctl:setSize(36, 10),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Hecho 1:"),
        StaticText_ctl:setPosition(24, 22),
        StaticText_ctl:setSize(32, 10),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("Hecho 2:"),
        StaticText1_ctl:setPosition(152, 22),
        StaticText1_ctl:setSize(32, 10),
        hecho1_ctl := editControl::new(This),
        hecho1_ctl:setText("0"),
        hecho1_ctl:setPosition(60, 22),
        hecho1_ctl:setAlignment(alignRight),
        hecho2_ctl := editControl::new(This),
        hecho2_ctl:setText("0"),
        hecho2_ctl:setPosition(188, 22),
        hecho2_ctl:setAlignment(alignRight),
        resultado_ctl := editControl::new(This),
        resultado_ctl:setText("0"),
        resultado_ctl:setPosition(180, 72),
        resultado_ctl:setAlignment(alignRight),
        resultado_ctl:setReadOnly(),
        pushButton_ctl := button::new(This),
        pushButton_ctl:setText("Calcular"),
        pushButton_ctl:setPosition(140, 98),
        pushButton_ctl:setSize(56, 16),
        pushButton_ctl:defaultHeight := true(),
        pushButton_ctl:setClickResponder(onPushButtonClick).
% end of automatic code
end implement disyuncionHechos
