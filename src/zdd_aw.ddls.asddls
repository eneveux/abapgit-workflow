@AbapCatalog.sqlViewName: 'ZV_AW_TUT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS for abapGit Workflow Tutorial'
define view ZDD_AW as select from ztawcust {
  ztawcust.name as name,
  ztawcust.int_num as id
}
