*-----------------------------------------------------------------------
*  constants and global definitions for the transport system
*-----------------------------------------------------------------------

*-----------------------------------------------------------------------
* transport states
*-----------------------------------------------------------------------
DATA: trelr TYPE trstatus  VALUE 'R'.  " released & exported
DATA: treln TYPE trstatus  VALUE 'N'.  " released & not confirmed
DATA: trelo TYPE trstatus  VALUE 'O'.  " released & not exported
DATA: treld TYPE trstatus  VALUE 'D'.  " changeable, not protected
DATA: trell TYPE trstatus  VALUE 'L'.  " changeable, protected

* transport status sets
DATA: relset(3)                VALUE 'RNO'.  " released
DATA: opnset(2)                VALUE 'NO'.   " open/released no confirm
DATA: notrel(2)                VALUE 'DL'.   " not released
DATA: lockset(1)               VALUE 'L'.    " locked
DATA: protect_set(1)           VALUE 'L'.    " protected
DATA: gc_protected(1)          VALUE 'L'.    " protected
DATA: allstat TYPE trpari-w_longstat VALUE 'RNODL'.

*-----------------------------------------------------------------------
* trfunction values
*-----------------------------------------------------------------------
DATA: trco   TYPE trfunction VALUE 'K',"workbench request
      tcor   TYPE trfunction VALUE 'W',"Customizing request

      tcho   TYPE trfunction VALUE 'C',"relocation
      tmvo   TYPE trfunction VALUE 'O',"relocation w/ change of devclass
      tmvd   TYPE trfunction VALUE 'E',"relocation of complete dev.class

      ttra   TYPE trfunction VALUE 'T',"transport of copies
      tccop  TYPE trfunction VALUE 'M',"client transport

      tcol   TYPE trfunction VALUE 'S',"Development/correction
      trep   TYPE trfunction VALUE 'R',"Repair
      tuco   TYPE trfunction VALUE 'X',"Unclassified task
      tcut   TYPE trfunction VALUE 'Q',"Customizing task

      tcom   TYPE trfunction VALUE 'F',"Object list
      tput   TYPE trfunction VALUE 'P',"Piece list for upgrade
      tcust  TYPE trfunction VALUE 'U',"Dummy command file
      tpatch TYPE trfunction VALUE 'D',"Patch  (pre-release correctio
      tdel   TYPE trfunction VALUE 'L',"Deletion request

      tproj  TYPE trfunction VALUE 'G',"Project's object list

      tvirtual TYPE trfunction VALUE 'f',"Does NOT exist on the database
                                       "(used mainly in FUGR STRH)
      terror TYPE trfunction VALUE 'Z',"Task without order
                                       "(used only in FUGR STRH)
      tunsat TYPE trfunction VALUE 'z'."STRKORR-father is not displayed
                                       "(used only in FUGR STRH)

* set for modifications/transports
DATA: korrtype(3)            VALUE 'QRS'.     "all editable task types
DATA: tasktype(4)            VALUE 'QRSX'.    "all task types
DATA: wbtasktype(3)          VALUE 'RSX'.     "all workbench task types

DATA: transport_type(7)      VALUE 'CEKMOTW'. "transportable request
DATA: transp_type(7)         VALUE 'CEKMOTW'. "releaseable requests
DATA: gc_tr_with_log(9)      VALUE 'CDEKMOPTW'."requests with logs
DATA: ordertype(9)           VALUE 'CDEKMOPTW'."all request types
DATA: project_type(2)        VALUE 'KW'.       "Request types with tasks

DATA: file_type(4)           VALUE 'FUDP'.    "All command-file types
DATA: alltype TYPE trpari-w_longstat VALUE 'CDEFGKMOPQRSTWXL'.

* Categories of orders
DATA: cat_eu        TYPE trcateg  VALUE 'SYST'.
DATA: cat_appl        TYPE trcateg  VALUE 'APPL'.
DATA: cat_cust      TYPE trcateg  VALUE 'CUST'.
DATA: cat_sys_cust  TYPE trcateg  VALUE 'CUSY'.

*-----------------------------------------------------------------------
* values of repair flag (TADIR)
*-----------------------------------------------------------------------
CONSTANTS: gc_repaired      VALUE 'R'.

* for creating local workbench or customizing requests
* used for selections only (e070-tarsystem = space cannot be used )
CONSTANTS: gc_local_target  TYPE e070-tarsystem VALUE 'LOCAL'.

*-----------------------------------------------------------------------
* 2nd key value for saved header entry in TADIR (entry created by tp)
*-----------------------------------------------------------------------
CONSTANTS: gc_saved_header TYPE tadir-object VALUE 'SAVE'.

*-----------------------------------------------------------------------
* global variables for system name, type and modification flag
*-----------------------------------------------------------------------
DATA: system_name         TYPE sy-sysid.
DATA: system_type         TYPE sy-sysid.
DATA: system_edit         TYPE tadir-edtflag.
DATA: system_client_edit  TYPE t000-cccoractiv.
DATA: system_cliindep_edit   TYPE t000-ccnocliind.
DATA: system_client_role     TYPE t000-cccategory.

* Types of development classes                         (ct301)
DATA: devc_local           TYPE ko015-devc_type     VALUE '$',
      devc_private         TYPE ko015-devc_type     VALUE 'T',
      devc_sapbas          TYPE ko015-devc_type     VALUE 'S',
      devc_sapappl         TYPE ko015-devc_type     VALUE 'A',
      devc_customer        TYPE ko015-devc_type     VALUE 'Z',
      devc_partner         TYPE ko015-devc_type     VALUE 'J',
      devc_prefixns        TYPE ko015-devc_type     VALUE 'N',
      devc_testprefixns    TYPE ko015-devc_type     VALUE 'M',
      devc_undef           TYPE ko015-devc_type     VALUE 'U',
      devc_invalid         TYPE ko015-devc_type     VALUE 'X'.

* Old length of field trkorr
CONSTANTS: gc_trkorr_wbo_length TYPE i  VALUE '10'.

*** constants for name space project:
*** list of partner projects returning to SAP standard (divided by '&')
* 11.2008:  Following /AFS/ parneter name space , back to SAP:
*  J3A J3M J4A J4K J5A (IM 0002781757 2008)
*  J7L (IM 1570748909) - 2015
DATA: gc_partnrpr_back_to_stndrd(35) VALUE
 '1A&1B&1H&1I&2I&3R&3A&3M&4A&4K&5A&7L'.

* Constants for namespace handling
CONSTANTS: gc_role_prod TYPE trnspace-role VALUE 'P',   "producer
           gc_role_reci TYPE trnspace-role VALUE 'C'.   "recipient

* constants for general namespace names
CONSTANTS: gc_gns_cust          TYPE namespace VALUE '/0CUST/',
           gc_gns_sap_all       TYPE namespace VALUE '/0SAP/',
           gc_gns_spec_partnr   TYPE namespace VALUE '/0SJnx/',
           gc_gns_any_partnr    TYPE namespace VALUE '/0SJ*/',
           gc_gns_sap_n_partnr  TYPE namespace VALUE '/0S*/',
           gc_gns_no_diff       TYPE namespace VALUE '/0*/',
           gc_gns_no_specific   TYPE namespace VALUE '/*/'.
