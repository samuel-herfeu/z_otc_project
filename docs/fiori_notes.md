# Notas de Exposição Fiori

## O que funcionou no projeto

- Service Definition criada com múltiplas entidades
- Service Binding OData V4 publicado
- Preview aberto com sucesso
- Visualização em formato List Report/preview

## Lições aprendidas

- `Preview` do binding não substitui uma app Fiori formal
- tile apontando para endpoint OData não equivale a uma UI app
- problemas no Gateway podem ocorrer por service group não publicado corretamente
- `Content` do service binding precisa mostrar as entidades expostas

## Próximo passo recomendado

Criar app Fiori Elements real baseada em:
- service: `ZUI_SD_OTC_MONITOR_O4`
- entity: `OTCMonitor`
