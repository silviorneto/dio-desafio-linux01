# Desafio DIO
Este projeto faz parte do curso Linux Experience da DIO - Digital Innovation One.

## Proposta
- Criar um script bash simulando um provisionamento da infraestrutura por meio de código (IaC);
- Criar os diretório: `/publico`, `/adm`, `/ven` e `/sec`;
- Criar os grupos: `GRP_ADM`, `GRP_VEN` e `GRP_SEC`;
- Criar os seguintes usuários vinculados ao grupo `GRP_ADM`: `carlos`, `maria` e `joao_`;
- Criar os seguintes usuários vinculados ao grupo `GRP_VEN`: `debora`, `sebastiana` e `roberto`;
- Criar os seguintes usuários vinculados ao grupo `GRP_SEC`: `josefina`, `amanda` e `rogerio`;
- **Todos os usuários** terão permissão total dentro do diretório `/publico`;
- **Os usuários de cada grupo** terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;

## Etapas
- Baixar o script `desafio.sh`;
- Dar permissão de execução do script: `chmod +x desafio.sh`;
- Executar o script `./desafio.sh`;
- Caso queria limpar as informações criadas pelo script, seguir as mesmas etapas com o script `reset.sh`.
