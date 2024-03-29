/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement visualizeResults
    inherits formWindow
    open core, vpiDomains

constants
    className = "Forms/visualizeResults".
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
    onOkClick : button::clickResponder.
clauses
    onOkClick(_Source) = button::defaultAction.

predicates
    onPushButtonClick : button::clickResponder.
clauses
    onPushButtonClick(_Source) = button::defaultAction.

% This code is maintained automatically, do not update it manually. 15:46:24-8.12.2011
facts
    ok_ctl : button.
    cancel_ctl : button.
    help_ctl : button.
    visualizeResults_ctl : listBox.
    pushButton_ctl : button.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("VisualizeResults"),
        setRect(rct(50,40,334,222)),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings,wsf_ClipChildren]),
        menuSet(noMenu),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Sistema de Procesamiento Integral de Datos (PI): Componente de Diagnóstico SE"),
        StaticText_ctl:setPosition(4, 4),
        StaticText_ctl:setSize(276, 10),
        ok_ctl := button::newOk(This),
        ok_ctl:setText("&OK"),
        ok_ctl:setPosition(16, 162),
        ok_ctl:setSize(56, 16),
        ok_ctl:defaultHeight := false(),
        ok_ctl:setAnchors([control::right,control::bottom]),
        ok_ctl:setClickResponder(onOkClick),
        cancel_ctl := button::newCancel(This),
        cancel_ctl:setText("Cancel"),
        cancel_ctl:setPosition(80, 162),
        cancel_ctl:setSize(56, 16),
        cancel_ctl:defaultHeight := false(),
        cancel_ctl:setAnchors([control::right,control::bottom]),
        help_ctl := button::new(This),
        help_ctl:setText("&Help"),
        help_ctl:setPosition(148, 162),
        help_ctl:setSize(56, 16),
        help_ctl:defaultHeight := false(),
        help_ctl:setAnchors([control::right,control::bottom]),
        visualizeResults_ctl := listBox::new(This),
        visualizeResults_ctl:setPosition(4, 24),
        visualizeResults_ctl:setSize(276, 128),
        pushButton_ctl := button::new(This),
        pushButton_ctl:setText("Push Button"),
        pushButton_ctl:setPosition(220, 162),
        pushButton_ctl:setSize(56, 16),
        pushButton_ctl:defaultHeight := true(),
        pushButton_ctl:setClickResponder(onPushButtonClick),
        setDefaultButton(ok_ctl).
% end of automatic code
end implement visualizeResults
