/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement addPIPattern
    inherits dialog
    open core, vpiDomains

constants
    className = "Forms/addPIPattern".
    classVersion = "".

clauses
    classInfo(className, classVersion).

clauses
    display(Parent) = Dialog :-
        Dialog = new(Parent),
        Dialog:show().

clauses
    new(Parent) :-
        dialog::new(Parent),
        generatedInitialize().

predicates
    onOkClick : button::clickResponder.
clauses
    onOkClick(_Source) = button::defaultAction() :-
        EvLC = toTerm(evLC_ctl:gettext()),
        CertEvLC = toTerm(certEvLC_ctl:gettext()),
        GastoLC = toTerm(gastoLC_ctl:gettext()),
        CertGastoLC = toTerm(certGastoLC_ctl:gettext()),
        LocLC = locLC_ctl:gettext(),
        TiempoLC = tiempoLC_ctl:gettext(),
        EvVV = toTerm(evVV_ctl:gettext()),
        CertEvVV = toTerm(certEvVV_ctl:gettext()),
        GastoVV = toTerm(gastoVV_ctl:gettext()),
        CertGastoVV = toTerm(certGastoVV_ctl:gettext()),
        LocVV = locLC_ctl:gettext(),
        TiempoVV = tiempoLC_ctl:gettext(),
        EvAC01 = toTerm(evAC01_ctl:gettext()),
        CertAC01 = toTerm(certAC01_ctl:gettext()),
        LocAC01 = locAC01_ctl:gettext(),
        TiempoAC01 = tiempoAC01_ctl:gettext(),
        EvAC02 = toTerm(evAC02_ctl:gettext()),
        CertAC02 = toTerm(certAC02_ctl:gettext()),
        LocAC02 = locAC02_ctl:gettext(),
        TiempoAC02 = tiempoAC02_ctl:gettext(),
        EvAC03 = toTerm(evAC03_ctl:gettext()),
        CertAC03 = toTerm(certAC03_ctl:gettext()),
        LocAC03 = locAC03_ctl:gettext(),
        TiempoAC03 = tiempoAC03_ctl:gettext(),
        EvFO01 = toTerm(evFO01_ctl:gettext()),
        CertFO01 = toTerm(certFO01_ctl:gettext()),
        LocFO01 = locFO01_ctl:gettext(),
        TiempoFO01 = tiempoFO01_ctl:gettext(),
        EvFO02 = toTerm(evFO02_ctl:gettext()),
        CertFO02 = toTerm(certFO02_ctl:gettext()),
        LocFO02 = locFO02_ctl:gettext(),
        TiempoFO02 = tiempoFO01_ctl:gettext(),
        EvFO03 = toTerm(evFO03_ctl:gettext()),
        CertFO03 = toTerm(certFO03_ctl:gettext()),
        LocFO03 = locFO02_ctl:gettext(),
        TiempoFO03 = tiempoFO01_ctl:gettext(),
        dataBase::addPatronPID(EvLC, CertEvLC, GastoLC, CertGastoLC, LocLC, TiempoLC,
                         EvVV, CertEvVV, GastoVV, CertGastoVV, LocVV, TiempoVV,
                         EvAC01, CertAC01, LocAC01, TiempoAC01,
                         EvAC02, CertAC02, LocAC02, TiempoAC02,
                         EvAC03, CertAC03, LocAC03, TiempoAC03,
                         EvFO01, CertFO01, LocFO01, TiempoFO01,
                         EvFO02, CertFO02, LocFO02, TiempoFO02,
                         EvFO03, CertFO03, LocFO03, TiempoFO03).


% This code is maintained automatically, do not update it manually. 16:59:36-6.12.2011
facts
    ok_ctl : button.
    cancel_ctl : button.
    help_ctl : button.
    evLC_ctl : editControl.
    certEvLC_ctl : editControl.
    gastoLC_ctl : editControl.
    certGastoLC_ctl : editControl.
    locLC_ctl : editControl.
    tiempoLC_ctl : editControl.
    evVV_ctl : editControl.
    certEvVV_ctl : editControl.
    gastoVV_ctl : editControl.
    certGastoVV_ctl : editControl.
    locVV_ctl : editControl.
    tiempoVV_ctl : editControl.
    evAC01_ctl : editControl.
    certAC01_ctl : editControl.
    locAC01_ctl : editControl.
    tiempoAC01_ctl : editControl.
    evFO01_ctl : editControl.
    certFO01_ctl : editControl.
    locFO01_ctl : editControl.
    tiempoFO01_ctl : editControl.
    evAC02_ctl : editControl.
    certAC02_ctl : editControl.
    locAC02_ctl : editControl.
    tiempoAC02_ctl : editControl.
    evAC03_ctl : editControl.
    certAC03_ctl : editControl.
    locAC03_ctl : editControl.
    tiempoAC03_ctl : editControl.
    evFO02_ctl : editControl.
    certFO02_ctl : editControl.
    locFO02_ctl : editControl.
    tiempoFO02_ctl : editControl.
    evFO03_ctl : editControl.
    certFO03_ctl : editControl.
    locFO03_ctl : editControl.
    tiempoFO03_ctl : editControl.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setFont(vpi::fontCreateByName("Tahoma", 8)),
        setText("addPIPattern"),
        setRect(rct(50,40,453,344)),
        setModal(true),
        setDecoration(titlebar([closebutton()])),
        setState([wsf_NoClipSiblings]),
        StaticText5_ctl = textControl::new(This),
        StaticText5_ctl:setText("TiempoLC"),
        StaticText5_ctl:setPosition(64, 94),
        StaticText6_ctl = textControl::new(This),
        StaticText6_ctl:setText("EvVV"),
        StaticText6_ctl:setPosition(208, 24),
        StaticText7_ctl = textControl::new(This),
        StaticText7_ctl:setText("CertEvVV"),
        StaticText7_ctl:setPosition(208, 38),
        StaticText8_ctl = textControl::new(This),
        StaticText8_ctl:setText("GastoVV"),
        StaticText8_ctl:setPosition(208, 52),
        StaticText9_ctl = textControl::new(This),
        StaticText9_ctl:setText("CertGastoVV"),
        StaticText9_ctl:setPosition(208, 66),
        StaticText10_ctl = textControl::new(This),
        StaticText10_ctl:setText("LocVV"),
        StaticText10_ctl:setPosition(208, 80),
        StaticText11_ctl = textControl::new(This),
        StaticText11_ctl:setText("TiempoVV"),
        StaticText11_ctl:setPosition(208, 94),
        StaticText12_ctl = textControl::new(This),
        StaticText12_ctl:setText("EvAC01"),
        StaticText12_ctl:setPosition(12, 136),
        StaticText13_ctl = textControl::new(This),
        StaticText13_ctl:setText("CertAC01"),
        StaticText13_ctl:setPosition(12, 150),
        StaticText14_ctl = textControl::new(This),
        StaticText14_ctl:setText("LocAC01"),
        StaticText14_ctl:setPosition(12, 164),
        StaticText15_ctl = textControl::new(This),
        StaticText15_ctl:setText("TiempoAC01"),
        StaticText15_ctl:setPosition(12, 178),
        StaticText16_ctl = textControl::new(This),
        StaticText16_ctl:setText("EvFO01"),
        StaticText16_ctl:setPosition(12, 212),
        StaticText17_ctl = textControl::new(This),
        StaticText17_ctl:setText("CertFO01"),
        StaticText17_ctl:setPosition(12, 226),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("EvLC"),
        StaticText_ctl:setPosition(64, 24),
        StaticText18_ctl = textControl::new(This),
        StaticText18_ctl:setText("LocFO01"),
        StaticText18_ctl:setPosition(12, 240),
        StaticText19_ctl = textControl::new(This),
        StaticText19_ctl:setText("TiempoFO01"),
        StaticText19_ctl:setPosition(12, 254),
        StaticText110_ctl = textControl::new(This),
        StaticText110_ctl:setText("EvAC02"),
        StaticText110_ctl:setPosition(140, 136),
        StaticText111_ctl = textControl::new(This),
        StaticText111_ctl:setText("CertAC02"),
        StaticText111_ctl:setPosition(140, 150),
        StaticText112_ctl = textControl::new(This),
        StaticText112_ctl:setText("LocAC02"),
        StaticText112_ctl:setPosition(140, 164),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("CertEvLC"),
        StaticText1_ctl:setPosition(64, 38),
        StaticText113_ctl = textControl::new(This),
        StaticText113_ctl:setText("TiempoAC02"),
        StaticText113_ctl:setPosition(140, 178),
        StaticText114_ctl = textControl::new(This),
        StaticText114_ctl:setText("EvAC03"),
        StaticText114_ctl:setPosition(268, 136),
        StaticText115_ctl = textControl::new(This),
        StaticText115_ctl:setText("CertAC03"),
        StaticText115_ctl:setPosition(268, 150),
        StaticText116_ctl = textControl::new(This),
        StaticText116_ctl:setText("LocAC03"),
        StaticText116_ctl:setPosition(268, 164),
        StaticText117_ctl = textControl::new(This),
        StaticText117_ctl:setText("TiempoAC03"),
        StaticText117_ctl:setPosition(268, 178),
        StaticText2_ctl = textControl::new(This),
        StaticText2_ctl:setText("GastoLC"),
        StaticText2_ctl:setPosition(64, 52),
        StaticText118_ctl = textControl::new(This),
        StaticText118_ctl:setText("EvFO02"),
        StaticText118_ctl:setPosition(140, 212),
        StaticText119_ctl = textControl::new(This),
        StaticText119_ctl:setText("CertFO02"),
        StaticText119_ctl:setPosition(140, 226),
        StaticText1110_ctl = textControl::new(This),
        StaticText1110_ctl:setText("LocFO02"),
        StaticText1110_ctl:setPosition(140, 240),
        StaticText1111_ctl = textControl::new(This),
        StaticText1111_ctl:setText("TiempoFO02"),
        StaticText1111_ctl:setPosition(140, 254),
        StaticText1112_ctl = textControl::new(This),
        StaticText1112_ctl:setText("EvFO03"),
        StaticText1112_ctl:setPosition(268, 212),
        StaticText3_ctl = textControl::new(This),
        StaticText3_ctl:setText("CertGastoLC"),
        StaticText3_ctl:setPosition(64, 66),
        StaticText1113_ctl = textControl::new(This),
        StaticText1113_ctl:setText("CertFO03"),
        StaticText1113_ctl:setPosition(268, 226),
        StaticText1114_ctl = textControl::new(This),
        StaticText1114_ctl:setText("LocFO03"),
        StaticText1114_ctl:setPosition(268, 240),
        StaticText1115_ctl = textControl::new(This),
        StaticText1115_ctl:setText("TiempoFO03"),
        StaticText1115_ctl:setPosition(268, 254),
        StaticText1116_ctl = textControl::new(This),
        StaticText1116_ctl:setText("Datos Subsistema LC"),
        StaticText1116_ctl:setPosition(80, 6),
        StaticText1116_ctl:setSize(72, 12),
        StaticText1117_ctl = textControl::new(This),
        StaticText1117_ctl:setText("Datos Subsistema VV"),
        StaticText1117_ctl:setPosition(224, 8),
        StaticText1117_ctl:setSize(72, 10),
        StaticText1118_ctl = textControl::new(This),
        StaticText1118_ctl:setText("Datos Subsistema AC"),
        StaticText1118_ctl:setPosition(148, 120),
        StaticText1118_ctl:setSize(76, 10),
        StaticText1118_ctl:setAlignment(alignCenter),
        StaticText4_ctl = textControl::new(This),
        StaticText4_ctl:setText("LocLC"),
        StaticText4_ctl:setPosition(64, 80),
        StaticText1119_ctl = textControl::new(This),
        StaticText1119_ctl:setText("Datos Subsistema FO"),
        StaticText1119_ctl:setPosition(152, 194),
        StaticText1119_ctl:setSize(76, 10),
        ok_ctl := button::newOk(This),
        ok_ctl:setText("&OK"),
        ok_ctl:setPosition(104, 280),
        ok_ctl:setSize(56, 16),
        ok_ctl:defaultHeight := false(),
        ok_ctl:setAnchors([control::right,control::bottom]),
        ok_ctl:setClickResponder(onOkClick),
        cancel_ctl := button::newCancel(This),
        cancel_ctl:setText("Cancel"),
        cancel_ctl:setPosition(164, 280),
        cancel_ctl:setSize(56, 16),
        cancel_ctl:defaultHeight := false(),
        cancel_ctl:setAnchors([control::right,control::bottom]),
        help_ctl := button::new(This),
        help_ctl:setText("&Help"),
        help_ctl:setPosition(224, 280),
        help_ctl:setSize(56, 16),
        help_ctl:defaultHeight := false(),
        help_ctl:setAnchors([control::right,control::bottom]),
        evLC_ctl := editControl::new(This),
        evLC_ctl:setText("1"),
        evLC_ctl:setPosition(120, 22),
        evLC_ctl:setAlignment(alignRight),
        certEvLC_ctl := editControl::new(This),
        certEvLC_ctl:setText("80"),
        certEvLC_ctl:setPosition(120, 36),
        certEvLC_ctl:setAlignment(alignRight),
        gastoLC_ctl := editControl::new(This),
        gastoLC_ctl:setText("60"),
        gastoLC_ctl:setPosition(120, 50),
        gastoLC_ctl:setAlignment(alignRight),
        certGastoLC_ctl := editControl::new(This),
        certGastoLC_ctl:setText("75"),
        certGastoLC_ctl:setPosition(120, 64),
        certGastoLC_ctl:setAlignment(alignRight),
        locLC_ctl := editControl::new(This),
        locLC_ctl:setText("Veracruz"),
        locLC_ctl:setPosition(120, 78),
        locLC_ctl:setAlignment(alignCenter),
        tiempoLC_ctl := editControl::new(This),
        tiempoLC_ctl:setText("07:00"),
        tiempoLC_ctl:setPosition(120, 92),
        tiempoLC_ctl:setAlignment(alignCenter),
        evVV_ctl := editControl::new(This),
        evVV_ctl:setText("2"),
        evVV_ctl:setPosition(264, 22),
        evVV_ctl:setAlignment(alignRight),
        %evVV_ctl:addModifiedListener(onEvVVModified),
        certEvVV_ctl := editControl::new(This),
        certEvVV_ctl:setText("90"),
        certEvVV_ctl:setPosition(264, 36),
        certEvVV_ctl:setAlignment(alignRight),
        gastoVV_ctl := editControl::new(This),
        gastoVV_ctl:setText("70"),
        gastoVV_ctl:setPosition(264, 50),
        gastoVV_ctl:setAlignment(alignRight),
        certGastoVV_ctl := editControl::new(This),
        certGastoVV_ctl:setText("85"),
        certGastoVV_ctl:setPosition(264, 64),
        certGastoVV_ctl:setAlignment(alignRight),
        locVV_ctl := editControl::new(This),
        locVV_ctl:setText("Veracruz"),
        locVV_ctl:setPosition(264, 78),
        locVV_ctl:setAlignment(alignCenter),
        tiempoVV_ctl := editControl::new(This),
        tiempoVV_ctl:setText("07:01"),
        tiempoVV_ctl:setPosition(264, 92),
        tiempoVV_ctl:setAlignment(alignCenter),
        evAC01_ctl := editControl::new(This),
        evAC01_ctl:setText("3"),
        evAC01_ctl:setPosition(68, 134),
        evAC01_ctl:setAlignment(alignRight),
        certAC01_ctl := editControl::new(This),
        certAC01_ctl:setText("85"),
        certAC01_ctl:setPosition(68, 148),
        certAC01_ctl:setAlignment(alignRight),
        locAC01_ctl := editControl::new(This),
        locAC01_ctl:setText("Veracruz"),
        locAC01_ctl:setPosition(68, 162),
        locAC01_ctl:setAlignment(alignCenter),
        tiempoAC01_ctl := editControl::new(This),
        tiempoAC01_ctl:setText("07:02"),
        tiempoAC01_ctl:setPosition(68, 176),
        tiempoAC01_ctl:setAlignment(alignCenter),
        evFO01_ctl := editControl::new(This),
        evFO01_ctl:setText("6"),
        evFO01_ctl:setPosition(68, 210),
        evFO01_ctl:setAlignment(alignRight),
        certFO01_ctl := editControl::new(This),
        certFO01_ctl:setText("85"),
        certFO01_ctl:setPosition(68, 224),
        certFO01_ctl:setAlignment(alignRight),
        locFO01_ctl := editControl::new(This),
        locFO01_ctl:setText("Veracruz"),
        locFO01_ctl:setPosition(68, 238),
        locFO01_ctl:setAlignment(alignCenter),
        tiempoFO01_ctl := editControl::new(This),
        tiempoFO01_ctl:setText("07:05"),
        tiempoFO01_ctl:setPosition(68, 252),
        tiempoFO01_ctl:setAlignment(alignCenter),
        evAC02_ctl := editControl::new(This),
        evAC02_ctl:setText("4"),
        evAC02_ctl:setPosition(196, 134),
        evAC02_ctl:setAlignment(alignRight),
        certAC02_ctl := editControl::new(This),
        certAC02_ctl:setText("95"),
        certAC02_ctl:setPosition(196, 148),
        certAC02_ctl:setAlignment(alignRight),
        locAC02_ctl := editControl::new(This),
        locAC02_ctl:setText("Veracruz"),
        locAC02_ctl:setPosition(196, 162),
        locAC02_ctl:setAlignment(alignCenter),
        tiempoAC02_ctl := editControl::new(This),
        tiempoAC02_ctl:setText("07:03"),
        tiempoAC02_ctl:setPosition(196, 176),
        tiempoAC02_ctl:setAlignment(alignCenter),
        evAC03_ctl := editControl::new(This),
        evAC03_ctl:setText("5"),
        evAC03_ctl:setPosition(324, 134),
        evAC03_ctl:setAlignment(alignRight),
        certAC03_ctl := editControl::new(This),
        certAC03_ctl:setText("90"),
        certAC03_ctl:setPosition(324, 148),
        certAC03_ctl:setAlignment(alignRight),
        locAC03_ctl := editControl::new(This),
        locAC03_ctl:setText("Veracruz"),
        locAC03_ctl:setPosition(324, 162),
        locAC03_ctl:setAlignment(alignCenter),
        tiempoAC03_ctl := editControl::new(This),
        tiempoAC03_ctl:setText("07:04"),
        tiempoAC03_ctl:setPosition(324, 176),
        tiempoAC03_ctl:setAlignment(alignCenter),
        evFO02_ctl := editControl::new(This),
        evFO02_ctl:setText("7"),
        evFO02_ctl:setPosition(196, 210),
        evFO02_ctl:setAlignment(alignRight),
        certFO02_ctl := editControl::new(This),
        certFO02_ctl:setText("90"),
        certFO02_ctl:setPosition(196, 224),
        certFO02_ctl:setAlignment(alignRight),
        locFO02_ctl := editControl::new(This),
        locFO02_ctl:setText("Veracruz"),
        locFO02_ctl:setPosition(196, 238),
        locFO02_ctl:setAlignment(alignCenter),
        tiempoFO02_ctl := editControl::new(This),
        tiempoFO02_ctl:setText("07:06"),
        tiempoFO02_ctl:setPosition(196, 252),
        tiempoFO02_ctl:setAlignment(alignCenter),
        evFO03_ctl := editControl::new(This),
        evFO03_ctl:setText("8"),
        evFO03_ctl:setPosition(324, 210),
        evFO03_ctl:setAlignment(alignRight),
        certFO03_ctl := editControl::new(This),
        certFO03_ctl:setText("85"),
        certFO03_ctl:setPosition(324, 224),
        certFO03_ctl:setAlignment(alignRight),
        locFO03_ctl := editControl::new(This),
        locFO03_ctl:setText("Veracruz"),
        locFO03_ctl:setPosition(324, 238),
        locFO03_ctl:setAlignment(alignCenter),
        tiempoFO03_ctl := editControl::new(This),
        tiempoFO03_ctl:setText("07:07"),
        tiempoFO03_ctl:setPosition(324, 252),
        tiempoFO03_ctl:setAlignment(alignCenter),
        setDefaultButton(ok_ctl).
% end of automatic code
end implement addPIPattern
