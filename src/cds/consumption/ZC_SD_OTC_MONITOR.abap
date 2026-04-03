@EndUserText.label: 'OTC - Sales Order Monitor'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI.headerInfo: {
  typeName: 'Sales Order',
  typeNamePlural: 'Sales Orders',
  title: { value: 'SalesOrder' },
  description: { value: 'SoldToPartyName' }
}

define view entity ZC_SD_OTC_MONITOR
  as select from ZI_SD_SALESORDER_OVW as so
{
  @UI.lineItem: [{ position: 10 }]
  @UI.selectionField: [{ position: 10 }]
  key so.SalesOrder,

  @UI.lineItem: [{ position: 20 }]
  key so.SalesOrderItem,

  @UI.lineItem: [{ position: 30 }]
  @UI.selectionField: [{ position: 20 }]
  so.SoldToParty,

  @UI.lineItem: [{ position: 40 }]
  so.SoldToPartyName,

  @UI.lineItem: [{ position: 50 }]
  @UI.selectionField: [{ position: 30 }]
  so.Material,

  @UI.lineItem: [{ position: 60 }]
  so.MaterialDescription,

  @UI.lineItem: [{ position: 70 }]
  so.SalesDocumentType,

  @UI.lineItem: [{ position: 80 }]
  @UI.selectionField: [{ position: 40 }]
  so.SalesOrganization,

  @UI.lineItem: [{ position: 90 }]
  so.DistributionChannel,

  @UI.lineItem: [{ position: 100 }]
  so.Division,

  @UI.lineItem: [{ position: 110 }]
  @UI.selectionField: [{ position: 50 }]
  so.CreatedOn,

  @UI.lineItem: [{ position: 120 }]
  so.DocumentDate,

  @UI.lineItem: [{ position: 130 }]
  so.OrderQuantity,

  @UI.lineItem: [{ position: 140 }]
  so.SalesUnit,

  @UI.lineItem: [{ position: 150 }]
  so.ItemNetValue,

  @UI.lineItem: [{ position: 160 }]
  so.DocCurrency,

  @UI.lineItem: [{ position: 170 }]
  so.OverallProcessingStatus,

  @UI.lineItem: [{ position: 180 }]
  so.OverallDeliveryStatus,

  @UI.lineItem: [{ position: 190 }]
  so.OverallBillingStatus,

  @UI.lineItem: [{ position: 200 }]
  so.OverallCreditStatus
}
