# Monitoramento do Preço da Cesta Básica (Visualg)

Este projeto é um algoritmo desenvolvido em pseudocódigo (Visualg) como atividade prática para a disciplina de "Algoritmos e Pensamento Computacional".

## Objetivo

O algoritmo analisa a variação de preços de 3 produtos da cesta básica, comparando o preço do mês anterior com o preço do mês atual.

## Funcionalidades

* Lê o nome, preço anterior e preço atual de 3 produtos.
* Calcula a variação percentual do preço.
* Classifica a situação como "AUMENTO", "QUEDA" ou "ESTÁVEL".
* Exibe um resumo formatado para cada produto.
* Emite um "ALERTA" caso o aumento seja superior a 10%.

## Lógica e Estruturas Utilizadas

O fluxo do programa é controlado por um laço de repetição `Para...Faca`. Foram utilizadas estruturas de decisão `Se...Senao...FimSe` para classificar a situação, identificar aumentos abusivos e evitar divisão por zero.