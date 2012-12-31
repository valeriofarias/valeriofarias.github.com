---
layout: post
title: Como mudar a fonte do DOS para Monaco)
category: Desenvolvimento de Sistemas
tags: [windows, fontes, monaco, dos, prompt]
---

{% include JB/setup %}

Fala galera!

Nesse post vocês verão como mudar a fonte do console do windows XP (CMD.exe),  que usa como fonte padrão __lucida console__, para uma fonte mais agradável e bonita. Veja primeiro a foto do prompt com a fonte padrão:

<img class="alignnone" title="prompt DOS windows xp" src=" http://i716.photobucket.com/albums/ww163/valeriofarias/promptdos.jpg" alt="" width="669" height="338" />

Antes de continuarmos é preciso saber que para ser utilizada no console (prompt,  shell )  a fonte deve ter os mesmos requisitos necessários para ser utilizada em programação:

1. ser monoespaçada
2.	diferenciar zero da letra "O" e um da letra "l"
3.	de preferência não ser serifada (menos cansativo para leitura na tela)

Sugiro duas aqui que passam nesses requisitos acima:

- Bitstream Vera Sans Mono
- Monaco (prefiro essa)

A Monaco é utilizada como padrão no Editor TextMate do MacOS, mas é possível baixar uma versão para windows aqui: <a href="http://www.webdevkungfu.com/textmate-envy-aka-monaco-font-for-windows/">http://www.webdevkungfu.com/textmate-envy-aka-monaco-font-for-windows/</a>

Até aí tudo bem. Já estamos com as fontes no nosso computador mas agora vem o problema: O Windows não aceita múltipla escolha de fontes para utilizar no prompt.

###O segredo é renomear a fonte escolhida (Monaco) em um editor de fontes para o nome Lucida console, executando os seguintes passos:

1. baixe e instale o editor de fontes FontCreator. A versão trial é o suficiente para o que queremos aqui(eu utilizei a versão 5.6)
2. Abra a fonte Monaco no editor.
3. Abra o menu Tools depois AutoNaming
4. No campo Font Family Name digite o nome Lucida console sobrescrevendo o nome anterior. Clique em seguida no botão "next". Para finalizar botão "finish"
5. Agora é só ir no menu File depois Save as (salvar como). Salva como o nome Lucida console.
6. Para instalar a fonte é só deletar a lucida console original e copiar a fonte monaco renomeada para a pasta fontes do windows.

A fonte será instalada como Lucida Console e poderemos visualizar o resultado final na figura abaixo:

<img class="alignnone" title="prompt DOS com fonte Monaco" src=" http://i716.photobucket.com/albums/ww163/valeriofarias/cmdmonaco.gif" alt="" width="829" height="418" />
<blockquote>Obs: Não façam essa modificação em servidores de produção ou máquinas que gerenciam diretamente esses servidores. Os servidores de produção devem permanecer com a configuração de fontes padrão para evitar problemas de performance ou incompatibilidade de fontes.</blockquote>
