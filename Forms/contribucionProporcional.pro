/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement contribucionProporcional
    inherits formWindow
    open core, vpiDomains

constants
    className = "Forms/contribucionProporcional".
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
        CertH3 = toTerm(hecho3_ctl:getText()),
        CertH4 = toTerm(hecho4_ctl:getText()),
        C = toTerm(cAsociada_ctl:getText()),
        certainFactor::calculaFactorCertConsecuenteR(CertH1, CertH2, CertH3, CertH4, C),
        hecho1_ctl:setText(toString(CertH1/100)),
        hecho2_ctl:setText(toString(CertH2/100)),
        hecho3_ctl:setText(toString(CertH3/100)),
        hecho4_ctl:setText(toString(CertH4/100)),
        cAsociada_ctl:setText(toString(C/100)),
        resultado_ctl:setText(tostring(certainFactor::getCert())),!.
        
    onPushButtonClick(_Source) = button::defaultAction.

% This code is maintained automatically, do not update it manually. 10:10:39-18.11.2011
facts
    hecho1_ctl : editControl.
    hecho2_ctl : editControl.
    hecho4_ctl : editControl.
    resultado_ctl : editControl.
    pushButton_ctl : button.
    cAsociada_ctl : editControl.
    hecho3_ctl : editControl.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("contribucionProporcional"),
        setRect(rct(50,40,290,160)),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText3_ctl = textControl::new(This),
        StaticText3_ctl:setText("AND"),
        StaticText3_ctl:setPosition(108, 28),
        StaticText3_ctl:setSize(16, 10),
        StaticText4_ctl = textControl::new(This),
        StaticText4_ctl:setText("OR"),
        StaticText4_ctl:setPosition(112, 12),
        StaticText4_ctl:setSize(12, 10),
        StaticText5_ctl = textControl::new(This),
        StaticText5_ctl:setText("Hecho 4:"),
        StaticText5_ctl:setPosition(144, 50),
        StaticText5_ctl:setSize(32, 10),
        StaticText7_ctl = textControl::new(This),
        StaticText7_ctl:setText("Certidumbre:"),
        StaticText7_ctl:setPosition(132, 80),
        StaticText8_ctl = textControl::new(This),
        StaticText8_ctl:setText("Certidumbre Asociada a la Regla:"),
        StaticText8_ctl:setPosition(4, 68),
        StaticText8_ctl:setSize(48, 24),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Hecho 1:"),
        StaticText_ctl:setPosition(12, 12),
        StaticText_ctl:setSize(32, 10),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("Hecho 2:"),
        StaticText1_ctl:setPosition(148, 12),
        StaticText1_ctl:setSize(32, 10),
        hecho1_ctl := editControl::new(This),
        hecho1_ctl:setText("0"),
        hecho1_ctl:setPosition(48, 10),
        hecho1_ctl:setAlignment(alignRight),
        hecho2_ctl := editControl::new(This),
        hecho2_ctl:setText("0"),
        hecho2_ctl:setPosition(184, 10),
        hecho2_ctl:setAlignment(alignRight),
        hecho4_ctl := editControl::new(This),
        hecho4_ctl:setText("0"),
        hecho4_ctl:setPosition(184, 48),
        hecho4_ctl:setAlignment(alignRight),
        resultado_ctl := editControl::new(This),
        resultado_ctl:setText("0"),
        resultado_ctl:setPosition(184, 78),
        resultado_ctl:setAlignment(alignRight),
        resultado_ctl:setReadOnly(),
        pushButton_ctl := button::new(This),
        pushButton_ctl:setText("Calcular"),
        pushButton_ctl:setPosition(176, 100),
        pushButton_ctl:setSize(56, 16),
        pushButton_ctl:defaultHeight := true(),
        pushButton_ctl:setClickResponder(onPushButtonClick),
        cAsociada_ctl := editControl::new(This),
        cAsociada_ctl:setText("0"),
        cAsociada_ctl:setPosition(56, 80),
        cAsociada_ctl:setAlignment(alignRight),
        GroupBox_ctl = groupBox::new(This),
        GroupBox_ctl:setText(""),
        GroupBox_ctl:setPosition(4, 2),
        GroupBox_ctl:setSize(232, 24),
        GroupBox1_ctl = groupBox::new(This),
        GroupBox1_ctl:setText(""),
        GroupBox1_ctl:setPosition(4, 38),
        GroupBox1_ctl:setSize(232, 26),
        StaticText2_ctl = textControl::new(GroupBox1_ctl),
        StaticText2_ctl:setText("Hecho 3:"),
        StaticText2_ctl:setPosition(7, 4),
        StaticText2_ctl:setSize(32, 10),
        StaticText6_ctl = textControl::new(GroupBox1_ctl),
        StaticText6_ctl:setText("OR"),
        StaticText6_ctl:setPosition(103, 6),
        StaticText6_ctl:setSize(12, 10),
        hecho3_ctl := editControl::new(GroupBox1_ctl),
        hecho3_ctl:setText("0"),
        hecho3_ctl:setPosition(43, 2),
        hecho3_ctl:setAlignment(alignRight).
% end of automatic code
end implement contribucionProporcional
