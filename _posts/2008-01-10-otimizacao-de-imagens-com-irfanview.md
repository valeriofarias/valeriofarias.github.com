---
layout: post
title: Otimização de imagens com Irfanview
category: Desenvolvimento de Sistemas
tags: [fotos, imagens, redimensionamento de imagens, otimização, Irfanview]
---

{% include JB/setup %}

Essa dica quem me deu foi um grande amigo do trabalho. O Dudulho. Eu apenas aprimorei um pouco para melhorar o resultado. Meu problema era que tinha 20 imagens que foram escaneadas de uma apostila e eu queria gerar um documento final em formato pdf com a junção de todas elas.

Só que cada imagem tinha o tamanho médio de 1,5MB. O que geraria um arquivo impraticável de aproximadamente 30MB no final. Então eu tinha que fazer algo para diminuir o tamanho das imagens.

O programa utilizado foi o IrfanView versão 4.1.0 e fiz os seguintes passos para automatizar o processo:

Menu File -&gt; Batch Conversion/Rename -&gt; Marquei o item "Use advanced Options" e cliquei no botão "Advanced". Na nova janela foi só fazer as configurações abaixo:

<img src='http://valeriofarias.files.wordpress.com/2008/01/configuracoesirfanview.jpg' alt='configuração Irfanview' />

Como vocês podem identificar nos passos acima, eu coloquei o limite de maior altura com o valor equivalente a altura do formato A4(210-297mm) então coloquei 29.7cm.

Marquei a opção de manter as proporções, depois diminui o valor do dpi que era de 600, para 150.  Por último marquei a opção contraste em outras opções e coloquei o valor de 60. Isso fará com que a página fique mais legível pois deixará o fundo mais claro e manterá as letras escuras.

Depois de toda a configuração, voltei para a janela anterior, adicionei os arquivos que deseja modificar (adicionei aqui os 20 arquivos) e cliquei no botão "Start Batch". A partir daí foi só esperar.
O resultado final pode ser visto no arquivo abaixo:

<img src='http://valeriofarias.files.wordpress.com/2008/01/otimizacaoimagemirfanview.jpg' alt='Otimização de imagens com Irfanview' />

Para juntar todos os arquivos no formato jpg utilizei o software "convert image to pdf" que dispensa explicação de tão simples. E obtive um arquivo pdf com tamanho final de 2,3MB ao invés dos prováveis 30MB. Muito bom o resultado tanto em tamanho quanto em qualidade.

Quem tiver alguma outra dica de otimização de imagens pode enviar seu comentário.

Até logo.
