---
layout: post
title: Tabela na Web tem que ser Super Enxuta!
category: Desenvolvimento de Sistemas
tags: [padrões web, tabela, marcação semântica]
---

{% include JB/setup %}

Eu sei disso! Já passou o tempo das tabelas aninhadas que se usava para criar layout! Ufa! Só que também devemos ter cuidado com as informações tabulares que disponibilizamos na web, sejam elas consultas de bancos de dados, dados armazenados em planilhas eletrônicas ou uma tabela simples que o secretária da empresa criou no editor de texto (broffice ou word).

Vamos ver o seguinte cenário: Você acaba de receber uma planilha eletrônica (excel ou calc) com a tabela abaixo e tem que disponibilizar em uma página web o mais rápido possível. A imagem a seguir é fictícia e representa a programação de algum evento no formato de uma tabela, representando uma agenda mensal.
<img class="alignnone" title="planilha do excel" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte01tabelaemplanilha.jpg" alt="" width="726" height="269" />
Como a divulgação precisa ser imediata, o primeiro pensamento é utilizar a opção salvar como HTML do Excel. Só que isso é muito inapropriado, pois vai gerar um arquivo com absurdas 311 linhas de código. Se olharmos para o código vamos perceber que a maior parte dele é desnecessário e na parte 2 desse post, vamos ver como eliminar todo o código desnecessário, de um jeito que façamos o mínimo esforço possível.

<img class="alignnone" title="código de tabela gerado com o salvar como do excel" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte02tabelaemplanilha-1.jpg" alt="" width="733" height="560" />

### Parte 2: Gerando uma tabela HTML enxuta com o mínimo esforço possível:

Nesse experimento utilizei o notepad++ que é gratuito e simples de usar. O primeiro passo é selecionar a tabela da planilha do excel e colar em um novo documento criado no notepad++. Nosso objetivo aqui é transformar esses dados no formato Textyle, um padrão simples de estruturação de texto. Para isso devemos identificar agora os padrões de estruturação do código e em seguida modificar para o padrão de tabela no formato Textyle.

<img class="alignnone" title="código da tabela copiado no notepad++" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte03tabelaemplanilha.jpg" alt="" width="517" height="134" />

O código acima segue o seguinte padrão:

- as células estão separadas por tabulações
- vamos focar nos comandos de início de linha "^", fim de linha "$" e tabulação "t"

Com __Ctrl+H__ abrimos a janela substituir no notepad++ e digitamos o caractere __"^" __ no campo __localizar.__ No campo __substituir por__ digitamos o caractere __|__ (pipe) que é, no padrão textyle, o delimitador das células de uma tabela.  Mais abaixo devemos marcar a opção __Expressão regular__, que vai fazer com que a busca encontre o início de cada linha do código. Para finalizar devemos clicar no botão substituir para cada linha da tabela. O Resultado é o código iniciado pelo caractere | em cada linha.

<img class="alignnone" title="tabela com substituição no inicio da linha pelo caractere |" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte04tabelaemplanilha.jpg" alt="" width="738" height="330" />

Seguindo o mesmo padrão anterior vamos fazer as alterações de final de linha utilizando agora o caractere __"$"__ no campo localizar:

<img class="alignnone" title="tabela com o caractere de fim de linha substituido por |" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte05tabelaemplanilha.jpg" alt="" width="763" height="311" />

Finalmente vamos preencher os espaços entre as células colocando o caractere de tabulação no __campo localizar__, __"t"__. Dessa vez podemos clicar em substituir todos:

<img class="alignnone" title="substituindo os espaços entre as células da tabela por |" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte06tabelaemplanilha.jpg" alt="" width="831" height="325" />

Por útimos copiamos esse código e colamos no site <a href="http://www.textism.com/tools/textile/">http://www.textism.com/tools/textile/</a> para gerar a tabela final. Esse site possui uma ferramenta que transforma o código no formato textyle em HTML. Devemos lembrar de colocar qualquer caractere entre os pipes que estão vazios (|| célula vazia). Nesse caso estou colocando somente um ponto (|.|).

O resultado vocês podem ver abaixo. Ao invés das 311 linhas de código da opção salvar como HTML do Excel, agora nós temos somente 56 linhas de código, super enxuto e de forma produtiva (sem perder muito tempo e sem alterar código de forma manual):

<img class="alignnone" title="formato final com textyle" src="http://i716.photobucket.com/albums/ww163/valeriofarias/parte07tabelaemplanilha.jpg" alt="" width="457" height="645" />
