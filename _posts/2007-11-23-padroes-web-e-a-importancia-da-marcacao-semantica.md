---
layout: post
title: Padrões Web e a importância da Marcação Semântica
category: Desenvolvimento de Sistemas
tags: [padrões web, marcação semântica]
---

{% include JB/setup %}

Nesse primeiro post sobre Padrões Web, gostaria de comentar um tema aparentemente já [batido](http://www.tableless.com.br/a-semantica-e-que-manda) e muito [discutido](http://revolucao.etc.br/archives/validacao-e-semantica/), mas que infelizmente [uma parte dos desenvolvedores](http://www.tableless.com.br/desenvolvedor-retrogrado) não seguem os princípios, talvez, por comodidade ou por desconhecimento, então vou fazer uma tentativa para que pelo menos uma parte consigam cair na real.

Vou começar com dois conceitos básicos segundo [Jeffrey Zeldman](http://www.zeldman.com/):

- __Marcação Válida:__ é quando não contém erros (ex: esquecer de fechar tags) e não contém tags ou atributos ilegais (ex: usar atributo height em tabelas que não é permitido).


- __Marcação Semântica__: É quando as tags representam o tipo de conteúdo para qual foram projetadas (ex: quando colocamos a tag de título h1 marcando o trecho de conteúdo mais importante da página).

Se eu utilizar o __h1__ em um trecho somente para deixá-lo um pouco maior visualmente, sem ter a certeza de que o trecho é realmente mais relevante não é uma prática de marcação semântica.

Uma página web pode ser válida sem ser semanticamente estruturada que é o caso dos layouts de tabela onde a marcação das células da tabela são usadas para criar uma aparência visual e não para representar o conteúdo, porém elas não apresentam nenhum erro de sintaxe ou de atributos ilegais e portanto são válidas.

O inverso também é possível como uma tabela representando um calendário ( marcação semântica ) só que com algumas tags sem fechar (não válido).  Os profissionais que tentam criar páginas baseadas nas boas práticas dos padrões web se preocupam tanto em deixar a página válida quanto em escolher as tags apropriadas para cada trecho de conteúdo conseguindo também uma marcação semântica.

O que ainda muitos desenvolvedores confundem e inclusive alguns instrutores que repassam de forma distorcida é com relação ao conceito do html voltado para o visual, provavelmente devido a herança das práticas do layout de tabela que era utilizada quando o CSS ainda não era suportado nos principais navegadores. Outro complicador é o fato da percepção do ser humano ser voltada de forma muito intensa para o sentido da visão. Então poderá ocorrer de profissionais falarem que é melhor usar a tag h3 já que a tag h1 fica grande demais no navegador e a tag h6 ficar quase ilegível (concepção presa na formatação).  Só que o pensamento deve ser: podemos usar h1 para o título que realmente for o mais importante da página e sucessivamente nos demais quando forem menos relevantes que o principal.

Esse princípio básico de compreensão da marcação semântica é o primeiro passo e é essencial para construir uma página acessível e que tenha um nível bom de usabilidade, deixando-a confortável para o usuário e também facilmente indexável por mecanismos de busca, ampliando os horizontes permitindo a utilização através de dispositivos móveis, leitores de tela e outros mecanismos ou dispositivos que venham a ser criados.

A __Marcação Válida__ é facilmente detectada por <a href="http://validator.w3.org/">softwares automatizados</a> porque se trata de sintaxe e de regras pré-definidas. Porém a boa utilização da __Marcação Semântica__ depende estritamente do nível de consciência e da maturidade que o desenvolvedor tem com relação aos padrões Web. Nesse momento o fator humano é essencial.

Essa é minha tentativa de dar uma contribuição, pois iniciar uma página com foco na marcação semântica é "iniciar uma página com o pé direito" e dependendo do contexto, caso a página seja feita sem preocupação em utilizar a tag contextualizada com o conteúdo, é muito provável que essa página esteja fadada ao fracasso ou até mesmo já esteja obsoleta ao ser finalizada, quando o dono perceber que ela <a href="http://www.google.com.br/search?q=html&amp;hl=pt-BR&amp;client=firefox-a&amp;rls=org.mozilla:pt-BR:official&amp;start=150&amp;sa=N">fica muito distante na lista do google</a>.
