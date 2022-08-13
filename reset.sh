#!/bin/bash

deps=("publico" "adm" "ven" "sec")
groups=("GRP_ADM" "GRP_VEN" "GRP_SEC")
users=("carlos" "maria" "joao_" "debora" "sebastiana" "roberto" "josefina" "amanda"  "rogerio")

for user in ${users[@]}; do
  userdel -r -f $user
done

for group in ${groups[@]}; do
  groupdel $group
done

for dep in ${deps[@]}; do
  rm -Rf /$dep
done
