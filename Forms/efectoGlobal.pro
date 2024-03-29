/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement efectoGlobal
    inherits formWindow
    open core, vpiDomains

constants
    className = "Forms/efectoGlobal".
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
        C1 = (toTerm(c1_ctl:getText()))/100,
        C2 = (toTerm(c2_ctl:getText()))/100,
        certainFactor::calculaEfectoGlobalVR([C1, C2], 0,EG),
        c1_ctl:setText(toString(C1)),
        c2_ctl:setText(toString(C2)),
        resultado_ctl:setText(tostring(EG)).

% This code is maintained automatically, do not update it manually. 10:33:34-18.11.2011
facts
    c1_ctl : editControl.
    c2_ctl : editControl.
    resultado_ctl : editControl.
    pushButton_ctl : button.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("efectoGlobal"),
        setRect(rct(50,40,290,160)),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Grado de certidumbre Regla 1:"),
        StaticText_ctl:setPosition(12, 10),
        StaticText_ctl:setSize(104, 10),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("Grado de certicumbre Regla 2:"),
        StaticText1_ctl:setPosition(12, 34),
        StaticText1_ctl:setSize(104, 10),
        StaticText2_ctl = textControl::new(This),
        StaticText2_ctl:setText("Efecto Global:"),
        StaticText2_ctl:setPosition(24, 74),
        c1_ctl := editControl::new(This),
        c1_ctl:setText("0"),
        c1_ctl:setPosition(124, 10),
        c1_ctl:setAlignment(alignRight),
        c2_ctl := editControl::new(This),
        c2_ctl:setText("0"),
        c2_ctl:setPosition(124, 32),
        c2_ctl:setAlignment(alignRight),
        resultado_ctl := editControl::new(This),
        resultado_ctl:setText("0"),
        resultado_ctl:setPosition(76, 72),
        resultado_ctl:setAlignment(alignRight),
        resultado_ctl:setReadOnly(),
        pushButton_ctl := button::new(This),
        pushButton_ctl:setText("Calcular"),
        pushButton_ctl:setPosition(168, 98),
        pushButton_ctl:setSize(56, 16),
        pushButton_ctl:defaultHeight := true(),
        pushButton_ctl:setClickResponder(onPushButtonClick).
% end of automatic code
end implement efectoGlobal
