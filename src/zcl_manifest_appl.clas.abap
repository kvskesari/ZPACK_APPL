class ZCL_MANIFEST_APPL definition
  public
  final
  create public .

public section.

  interfaces ZIF_APACK_MANIFEST .

  methods CONSTRUCTOR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_MANIFEST_APPL IMPLEMENTATION.


  method CONSTRUCTOR.

    zif_apack_manifest~descriptor-group_id = 'SMARTSHIFT'.
    zif_apack_manifest~descriptor-artifact_id = 'PACKAGE-APPL'.
    zif_apack_manifest~descriptor-version = '0.1'.
    zif_apack_manifest~descriptor-git_url = 'https://github.com/kvskesari/ZPACK_APPL.git'.

TYPES: BEGIN OF ty_dependency,
           group_id       TYPE string,
           artifact_id    TYPE string,
           version        TYPE string,
           git_url        TYPE string,
           target_package TYPE devclass,
         END OF ty_dependency.

data: w_dependencies type ty_dependency.

           w_dependencies-group_id      = 'SMARTSHIFT'.
           w_dependencies-artifact_id   = 'PACKAGE-DDIC'.
           w_dependencies-version       =  '0.1'.
           w_dependencies-git_url       = 'https://github.com/kvskesari/ZPACK_DDIC.git'.
           append w_dependencies to zif_apack_manifest~descriptor-dependencies.
*           zif_apack_manifest~descriptor-target_package


  endmethod.
ENDCLASS.
