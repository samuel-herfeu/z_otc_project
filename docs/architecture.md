# Arquitetura do Projeto

## Visão em camadas

```text
Dados SAP (VBAK, VBAP, VBRK, VBRP, LIKP, LIPS, VBUK, KONV, etc.)
        ↓
CDS Core Views
        ↓
CDS Consumption Views
        ↓
CDS Exceptions / Aggregations
        ↓
Service Definition
        ↓
Service Binding OData V4
        ↓
Fiori Preview / Launchpad / App UI
```

## Objetivo de cada camada

### Core
Camada de consolidação técnica e semântica do processo OTC.

### Consumption
Camada pronta para consumo por interface, monitor operacional e analytics simples.

### Exceptions
Camada para identificar gaps de entrega, faturamento e crédito.

### Aggregations
Camada de consolidação para KPIs e visão gerencial.

### Services
Camada de exposição do backend para consumo via OData V4.

### UI
Camada de experiência de usuário, filtros, colunas, navegação e visualização.
