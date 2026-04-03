# OTC Monitor S/4HANA - ABAP CDS + OData V4 + Fiori

Projeto portfólio focado em **Order-to-Cash (OTC)** no SAP S/4HANA, construído com:

- ABAP CDS Views
- Service Definition
- Service Binding OData V4
- Exposição no Fiori
- Estrutura organizada para estudo, portfólio e evolução futura

## Objetivo

Entregar um monitor operacional OTC com foco em:

- pedidos de venda
- crédito
- entrega
- pricing
- exceções e pendências
- visão analítica por organização de vendas

## Arquitetura

```text
CORE CDS  ->  CONS CDS  ->  EXC / AGGR  ->  OData V4  ->  Fiori Preview / App
```

## Estrutura do repositório

```text
src/
 ├── cds/
 │   ├── core/
 │   ├── consumption/
 │   ├── exceptions/
 │   └── aggregations/
 ├── services/
 ├── reports/
 └── ui/
docs/
portfolio/
linkedin/
```

## Objetos principais

### CORE
- `ZI_SD_SALESORDER_OVW`
- `ZI_SD_CREDIT_EXPOSURE`
- `ZI_SD_PRICING_ANALYSIS`
- `ZI_SD_MARGIN_ANALYSIS`
- `ZI_SD_OTC_FIN_FLOW`
- `ZI_SD_PARTNER_OVW`
- `ZI_SD_BLOCKED_ORDERS`
- `ZI_SD_DELIVERY_STATUS`
- `ZI_SD_BILLING_STATUS`

### CONSUMPTION
- `ZC_SD_OTC_MONITOR`
- `ZC_SD_CREDIT_MONITOR`
- `ZC_SD_DELIVERY_MONITOR`
- `ZC_SD_PRICING_MONITOR`

### EXCEPTIONS
- `ZI_SD_OPEN_DELIVERY`
- `ZI_SD_OPEN_BILLING`
- `ZI_SD_CREDIT_BLOCKED`
- `ZI_SD_EXCEPTION_MONITOR`

### AGGREGATIONS
- `ZI_SD_BILLING_AGGR`
- `ZI_SD_DELIVERY_AGGR`
- `ZI_SD_CREDIT_AGGR`
- `ZI_SD_OTC_SALESORG_AGGR`

### SERVICES
- `ZUI_SD_OTC_MONITOR_04` (Service Definition)
- `ZUI_SD_OTC_MONITOR_O4` (Service Binding)

### REPORT
- `ZREP_SD_OTC_VALIDATE`

## Destaques técnicos

- correção de problemas comuns de view entity
- remoção de `@AbapCatalog.sqlViewName` em `define view entity`
- ajuste de aliases e campos monetários/quantitativos
- exposição OData V4 publicada no Gateway
- validação via preview e Fiori

## Melhorias futuras

- object page
- drill-down por pedido
- RAP behavior
- ações de aprovação/bloqueio
- KPIs com analytical queries
- app Fiori Elements formal para deploy produtivo

## Observação importante

Este repositório foi montado como **versão portfólio/documentada** do projeto. Os arquivos ABAP aqui servem para estudo, organização e apresentação técnica. Em ambientes SAP reais, a criação/ativação/deploy dependem do sistema, pacote, autorização e configuração do Gateway/Fiori.
