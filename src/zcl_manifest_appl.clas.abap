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



  endmethod.
ENDCLASS.
