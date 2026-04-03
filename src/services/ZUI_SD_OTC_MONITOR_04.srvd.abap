@EndUserText.label: 'UI Service Definition - OTC'
define service ZUI_SD_OTC_MONITOR_04 {
  expose ZC_SD_OTC_MONITOR      as OTCMonitor;
  expose ZC_SD_CREDIT_MONITOR   as CreditMonitor;
  expose ZC_SD_DELIVERY_MONITOR as DeliveryMonitor;
  expose ZC_SD_PRICING_MONITOR  as PricingMonitor;
}
