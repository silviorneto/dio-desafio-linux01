#!/bin/bash

deps=("publico" "adm" "ven" "sec")
groups=("GRP_ADM" "GRP_VEN" "GRP_SEC")
adm_users=("carlos" "maria" "joao_")
ven_users=("debora" "sebastiana" "roberto")
sec_users=("josefina" "amanda"  "rogerio")

echo "### INICIANDO O SCRIPT ###"
echo "Criando departamentos..."
for dep in ${deps[@]}; do
  mkdir /$dep
done

echo "Criando grupos de usuários..."
for group in ${groups[@]}; do
  groupadd $group
done

echo "Criando usuários..."
for user in ${adm_users[@]}; do
  useradd $user -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
done

for user in ${ven_users[@]}; do
  useradd $user -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
done

for user in ${sec_users[@]}; do
  useradd $user -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
done

echo "Definindo permissões..."
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "### FINALIZANDO O SCRIPT ###"
