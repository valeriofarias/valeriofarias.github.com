---
layout: post
title: "Como escolher um nome para um site de evento"
category: Desenvolvimento de Sistemas
tags: [endereço, nomear sites]
---
{% include JB/setup %}

> Obs.: Apesar de eu focar em sites de eventos, as dicas aqui servem também para sites em geral. 

Na hora de criar um nome para um site de evento muitas vezes gera dúvidas de qual seria a melhor opção. Para minimizar esse problema siga o seguinte roteiro:

1. Sempre que possível, use um ou dois nomes por extenso 
2. Se possível, evite siglas 
3. Evite, a qualquer custo, números no nome (edição do evento).

<img src="/images/nomear-sites.jpg" alt="roteiro para nomear sites" />

Compreenda a intensidade dos ítens anteriores: Priorize o nome completo, por extenso. Caso seja inevitável o uso da sigla, tudo bem, use a sigla, mas evite adicionar números ao nome.

__Ex: Um evento de contabilidade em Patu, RN - Brasil.__

A minha sugestão seria o seguinte endereço: 

`http://dominio-da-instituicao/eventos/encontrocontabilidade`

Ou ainda:

`http://dominio-da-instituicao/encontrocontabilidade`

Se a instituição for grande e houver o mesmo evento em outra cidade ex: Mossoró-RN ou Natal-RN pode adicionar o nome da cidade ao evento no decorrer do endereço:

`/eventos/encontrocontabilidade/patu` - para mostrar o evento de Patu

`dominio/eventos/encontrocontabilidade/mossoro` - para mostrar o evento em Mossoró

Não recomendo o uso de siglas, pois elas são difíceis de serem lembradas e podem ter sentidos diferentes dependendo de quem acessa. Caso a política da instituição exija o uso de siglas, tudo bem, só garanta que se trate de um evento que tenha um calendário anual. O uso da sigla requer um tempo para que as pessoas compreendam, por isso não sugiro que use sigla em um evento que só ocorrerá uma única vez.

Exemplo de uso de sigla: ENCON (encontro contabilidade)

O endereço ficaria: `/eventos/encon/`

Mas, evite a qualquer custo colocar números junto com a sigla. Não use isso: 

`/eventos/IV-ENCON`

Caso a instituição queira armazenar documentos de todas as edições dos eventos, esse nome prejudicaria. Forçaria o participante a ter que lembrar de que edição do evento ele participou. 

Configuração da página para resolver o problema das edições do evento:
No endereço mantenha somente a sigla ENCON. No topo, da página, coloque um banner com o nome do evento e o número da edição. Adicione um link no menu com o nome: Edições anteriores. Dessa forma no decorrer dos anos o endereço permanece o mesmo e os participantes compreendem isso. 

__Obs.__: A excessão para o uso de números no nome do evento seria se o número fizesse parte do nome, como ocorre nos sites: `http://37signals.com/` e em `http://www.codeminer42.com/`. O número 42 não indica que é a quadragésima segunda edição de um evento, ele literalmente faz parte do nome do site. Não modificará no decorrer dos anos, portanto com o tempo será lembrado. 

Um abraço e até o próximo post.
