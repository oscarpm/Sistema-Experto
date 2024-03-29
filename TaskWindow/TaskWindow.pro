/*****************************************************************************

                        Copyright © 

******************************************************************************/

implement taskWindow
    inherits applicationWindow
    open core, vpiDomains

constants
    className = "TaskWindow/taskWindow".
    classVersion = "".

clauses
    classInfo(className, classVersion).

constants
    mdiProperty : boolean = true.
clauses
    new():-
        applicationWindow::new(),
        generatedInitialize().

predicates
    onShow : window::showListener.
clauses
    onShow(_, _CreationData):-
        _MessageForm = messageForm::display(This).

predicates
    onDestroy : window::destroyListener.
clauses
    onDestroy(_).

predicates
    onHelpAbout : window::menuItemListener.
clauses
    onHelpAbout(TaskWin, _MenuTag):-
        _AboutDialog = aboutDialog::display(TaskWin).

predicates
    onFileExit : window::menuItemListener.
clauses
    onFileExit(_, _MenuTag):-
        close().

predicates
    onSizeChanged : window::sizeListener.
clauses
    onSizeChanged(_):-
        vpiToolbar::resize(getVPIWindow()).

predicates
    onDatabaseExpertsystemFilldatabase : window::menuItemListener.
clauses
    onDatabaseExpertsystemFilldatabase(_Source, _MenuTag) :-
       eSKnowledgeBase::recoverPatternPIDataBase().
       
predicates
    onDatabaseExpertsystemListdatabase : window::menuItemListener.
clauses
    onDatabaseExpertsystemListdatabase(_Source, _MenuTag) :-
      eSKnowledgeBase::listDatabase().
      
predicates
    onRunExpertsystemRun : window::menuItemListener.
clauses
    %onRunExpertsystemRun(Source, _MenuTag) :-
        %NewForm = visualizeResults::new(Source),
        %NewForm:show().
    onRunExpertsystemRun(_Source, _MenuTag) :-
      eSEngineeringMachine::goalDiagnosticoFugaTomaC(),!.
    onRunExpertsystemRun(_Source, _MenuTag).
    
predicates
    onDatabaseFillDatabaseAddPipattern : window::menuItemListener.
clauses
    onDatabaseFillDatabaseAddPipattern(Source, _MenuTag) :-
      NewDialog = addPIPattern::new(Source),
      NewDialog:show().


predicates
    onCertainfactorNegacion : window::menuItemListener.
clauses
    onCertainfactorNegacion(Source, _MenuTag):-
        NewForm = factor::new(Source),
        NewForm:show().


predicates
    onCertainfactorConjuncionDeVariosHechos : window::menuItemListener.
clauses
    onCertainfactorConjuncionDeVariosHechos(Source, _MenuTag):-
        NewForm = conjuncionHechos::new(Source),
        NewForm:show().

predicates
    onCertainfactorDisyuncion : window::menuItemListener.
clauses
    onCertainfactorDisyuncion(Source, _MenuTag):-
        NewForm = disyuncionHechos::new(Source),
        NewForm:show().

predicates
    onCertainfactorConsecuanteDeLaRegla : window::menuItemListener.
clauses
    onCertainfactorConsecuanteDeLaRegla(Source, _MenuTag):-
        NewForm = contribucionProporcional::new(Source),
        NewForm:show().

predicates
    onCertainfactorEfectoGlobalDeVariasReglas : window::menuItemListener.
clauses
    onCertainfactorEfectoGlobalDeVariasReglas(Source, _MenuTag):-
        NewForm = efectoGlobal::new(Source),
        NewForm:show().

% This code is maintained automatically, do not update it manually. 10:37:23-18.11.2011
predicates
    generatedInitialize : ().
clauses
    generatedInitialize():-
        setText("componenteSE"),
        setDecoration(titlebar([closebutton(),maximizebutton(),minimizebutton()])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings]),
        setMdiProperty(mdiProperty),
        menuSet(resMenu(resourceIdentifiers::id_TaskMenu)),
        addShowListener(generatedOnShow),
        addShowListener(onShow),
        addSizeListener(onSizeChanged),
        addDestroyListener(onDestroy),
        addMenuItemListener(resourceIdentifiers::id_help_about, onHelpAbout),
        addMenuItemListener(resourceIdentifiers::id_file_exit, onFileExit),
        addMenuItemListener(resourceIdentifiers::id_database_expertsystem_filldatabase, onDatabaseExpertsystemFilldatabase),
        addMenuItemListener(resourceIdentifiers::id_database_expertsystem_listdatabase, onDatabaseExpertsystemListdatabase),
        addMenuItemListener(resourceIdentifiers::id_run_expertsystem_run, onRunExpertsystemRun),
        addMenuItemListener(resourceIdentifiers::id_database_fill_database_add_pipattern, onDatabaseFillDatabaseAddPipattern),
        addMenuItemListener(resourceIdentifiers::id_certainfactor_negacion, onCertainfactorNegacion),
        addMenuItemListener(resourceIdentifiers::id_certainfactor_conjuncion_de_varios_hechos, onCertainfactorConjuncionDeVariosHechos),
        addMenuItemListener(resourceIdentifiers::id_certainfactor_disyuncion, onCertainfactorDisyuncion),
        addMenuItemListener(resourceIdentifiers::id_certainfactor_consecuante_de_la_regla, onCertainfactorConsecuanteDeLaRegla),
        addMenuItemListener(resourceIdentifiers::id_certainfactor_efecto_global_de_varias_reglas, onCertainfactorEfectoGlobalDeVariasReglas).

predicates
    generatedOnShow: window::showListener.
clauses
    generatedOnShow(_,_):-
        projectToolbar::create(getVPIWindow()),
        statusLine::create(getVPIWindow()),
        succeed.
% end of automatic code
end implement taskWindow
