/************************************************************************
      This file is handled by the Visual Development Environment       
************************************************************************/

interface resourceIdentifiers
constants
    id_taskmenu = 10000.
    id_file = 10001.
    id_file_new = 10002.
    id_file_open = 10003.
    id_file_save = 10004.
    id_file_save_as = 10005.
    id_file_exit = 10006.
    id_edit = 10007.
    id_edit_undo = 10008.
    id_edit_redo = 10009.
    id_edit_cut = 10010.
    id_edit_copy = 10011.
    id_edit_paste = 10012.
    id_edit_delete = 10013.
    id_run_expertsystem = 10014.
    id_run_expertsystem_run = 10015.
    id_run_expertsystem_stop = 10016.
    id_database = 10017.
    id_database_fill_database = 10018.
    id_database_fill_database_add_pipattern = 10019.
    id_database_save_database = 10020.
    id_database_load_database_from_file = 10021.
    id_database_expertsystem = 10022.
    id_database_expertsystem_filldatabase = 10023.
    id_database_expertsystem_listdatabase = 10024.
    id_database_expertsystem_query_knowledgebase = 10025.
    id_database_expertsystem_update_knowledgebase = 10026.
    id_certainfactor = 10027.
    id_certainfactor_negacion = 10028.
    id_certainfactor_conjuncion_de_varios_hechos = 10029.
    id_certainfactor_disyuncion = 10030.
    id_certainfactor_consecuante_de_la_regla = 10031.
    id_certainfactor_efecto_global_de_varias_reglas = 10032.
    id_help = 10033.
    id_help_contents = 10034.
    id_help_local = 10035.
    id_help_about = 10036.
    idi_errorpresentation_info = 10037.
    idi_errorpresentation_warning = 10038.
    idi_errorpresentation_error = 10039.
    idb_pastebitmap = 10040.
    idb_copybitmap = 10041.
    idb_cutbitmap = 10042.
    idb_redobitmap = 10043.
    idb_undobitmap = 10044.
    idb_helpbitmap = 10045.
    idb_savefilebitmap = 10046.
    idb_openfilebitmap = 10047.
    idb_newfilebitmap = 10048.
    idt_help_line = 10049.

    acceleratorList : vpiDomains::accel_List =
        [
        vpiDomains::a(vpiDomains::k_f1, vpiDomains::c_Nothing, id_help_local), 
        vpiDomains::a(vpiDomains::k_f1, vpiDomains::c_Control, id_help_contents), 
        vpiDomains::a(86, vpiDomains::c_Control, id_edit_paste), 
        vpiDomains::a(67, vpiDomains::c_Control, id_edit_copy), 
        vpiDomains::a(88, vpiDomains::c_Control, id_edit_cut), 
        vpiDomains::a(vpiDomains::k_backtab, vpiDomains::c_ShiftAlt, id_edit_redo), 
        vpiDomains::a(vpiDomains::k_backtab, vpiDomains::c_Alt, id_edit_undo), 
        vpiDomains::a(vpiDomains::k_f2, vpiDomains::c_Nothing, id_file_save), 
        vpiDomains::a(vpiDomains::k_f8, vpiDomains::c_Nothing, id_file_open), 
        vpiDomains::a(vpiDomains::k_f7, vpiDomains::c_Nothing, id_file_new)
        ].
end interface resourceIdentifiers
