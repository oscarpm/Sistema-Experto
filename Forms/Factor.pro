/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement factor
    inherits formWindow
    open core, vpiDomains

constants
    className = "Forms/factor".
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
        Cert = toTerm(edit_ctl:getText()),        
        certainFactor::calculaFactorCertNegacionH(Cert),
        edit_ctl:setText(toString(Cert/100)),
        resultado_ctl:setText(tostring(certainFactor::getCert())).

% This code is maintained automatically, do not update it manually. 13:14:58-24.1.2012
facts
    edit_ctl : editControl.
    resultado_ctl : editControl.
    negacionButton_ctl : button.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("Factor"),
        setRect(rct(50,40,290,154)),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Certidumbre:"),
        StaticText_ctl:setPosition(40, 26),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("Resultado:"),
        StaticText1_ctl:setPosition(48, 60),
        StaticText1_ctl:setSize(36, 10),
        edit_ctl := editControl::new(This),
        edit_ctl:setText("0"),
        edit_ctl:setPosition(92, 24),
        edit_ctl:setAlignment(alignRight),
        resultado_ctl := editControl::new(This),
        resultado_ctl:setText("0"),
        resultado_ctl:setPosition(92, 58),
        resultado_ctl:setAlignment(alignRight),
        resultado_ctl:setReadOnly(),
        negacionButton_ctl := button::new(This),
        negacionButton_ctl:setText("Negacion"),
        negacionButton_ctl:setPosition(148, 86),
        negacionButton_ctl:setSize(56, 16),
        negacionButton_ctl:defaultHeight := true(),
        negacionButton_ctl:setClickResponder(onPushButtonClick).
% end of automatic code
end implement factor
