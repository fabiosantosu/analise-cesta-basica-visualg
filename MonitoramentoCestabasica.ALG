Algoritmo "MonitoramentoCestaBasica"
// Autor: Fabio Junior Lima dos Santos
// Disciplina: Algoritmos e Pensamento Computacional
// Data: Setembro/2025
// Objetivo: Analisar a variação de preços de 3 produtos da cesta básica.

Var
 // Variáveis para os dados do produto
 nome: caractere
 preco_anterior, preco_atual: real

 // Variáveis para cálculos e classificação
 variacao: real
 situacao: caractere

 // Variável de controle para o laço de repetição
 contador: inteiro

Inicio
 EscrevaL("===================================================")
 EscrevaL(" Ferramenta de Análise de Preços da Cesta Básica ")
 EscrevaL("===================================================")
 EscrevaL("")

 // Laço de repetição para ler e processar os 3 produtos
 Para contador de 1 ate 3 faca
 // --- Seção 1: Leitura dos Dados ---
 EscrevaL("-----------------------------------------")
 EscrevaL("INFORME OS DADOS DO PRODUTO ", contador, "/3")
 Escreva("Digite o nome do produto: ")
 Leia(nome)
 Escreva("Digite o preço no mês anterior (R$): ")
 Leia(preco_anterior)
 Escreva("Digite o preço no mês atual (R$): ")
 Leia(preco_atual)
 EscrevaL("") // Pula uma linha para organizar

 // --- Seção 2: Cálculos e Classificação ---

 // Calcula a variação percentual
 // Adicionado um teste para evitar divisão por zero
 Se preco_anterior > 0 entao
 variacao <- ((preco_atual - preco_anterior) / preco_anterior) * 100
 Senao
 // Se o preço anterior for zero, não é possível calcular a variação
 variacao <- 0
 FimSe

 // Classifica a situação do produto com base na variação
 Se variacao > 0 entao
 situacao <- "AUMENTO"
 Senao
 Se variacao < 0 entao
 situacao <- "QUEDA"
 Senao
 situacao <- "ESTÁVEL"
 FimSe
 FimSe

 // --- Seção 3: Exibição do Resumo Final por Produto ---

 EscrevaL("--- RESUMO DA ANÁLISE DO PRODUTO ---")
 EscrevaL("Produto: ", nome)
 EscrevaL("Preço Anterior: R$ ", preco_anterior:5:2)
 EscrevaL("Preço Atual: R$ ", preco_atual:5:2)
 EscrevaL("Variação Percentual: ", variacao:5:2, "%")
 EscrevaL("Situação: ", situacao)

 // Verifica se o aumento foi abusivo (superior a 10%)
 Se variacao > 10 entao
 EscrevaL("ALERTA: Aumento abusivo detectado!")
 FimSe
 FimPara
 EscrevaL("-----------------------------------------")
 EscrevaL("Análise dos 3 produtos foi concluída com sucesso.")
 EscrevaL("===================================================")
FimAlgoritmo


