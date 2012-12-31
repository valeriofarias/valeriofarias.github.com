---
layout: post
title: Atualizando o Editor TinyMCE
category: Desenvolvimento de Sistemas
tags: [Padrões Web, editor HTML, WYSIWYG]
---

{% include JB/setup %}

O <a href="http://tinymce.moxiecode.com/index.php">Tiny_mce</a> é o editor HTML do tipo <a href="http://pt.wikipedia.org/wiki/WYSIWYG">WYSIWYG</a> que eu utilizo nos meus aplicativos. O papel dele é substituir os campos do tipo textarea por um editor com diversas funcionalidades. Você pode ter uma noção das funcionalidades pelo tamanho da barra abaixo:

<img class="alignnone" title="barra do tini_mce editor " src="http://valeriofarias.com/wp-content/uploads/2010/05/botoes_tiny_mce_editor.jpg" alt="" width="861" height="137" />

São 94 botões no total. Em um dos __meus aplicativos__ eu cheguei a usar __41__ desse __botões__.  Mas aproveitando a atualização eu __resolvi dar uma enxugada na quantidade de botões__, pois pode-se facilmente perceber que a maioria quase nunca é utilizado. Depois de uma breve análise das funcionalidades refiz a configuração da barra para o formato a seguir:

<img class="alignnone" title="Barra resumida do tiny_mce" src="http://valeriofarias.com/wp-content/uploads/2010/05/barra_resumida_tiny_mce_editor.jpg" alt="" width="721" height="42" />

-	Não permitir sublinhado para não deixar os usuário caírem em mal costume de sublinhar o texto além do necessário.
-	Fiz questão de deixar de fora as barras de alinhamento, pois o padrão de alinhamento que utilizo nos meus aplicativos é à esquerda. 
-	A seção de list box com formatação eu preferi não utilizar já que os tamanhos e cores são padronizados.  É possível que eu habilite no futuro o ítem styles, mas para isso os usuários tem que compreender que ele estará aplicando uma formatação predefinida.
-	a seção copiar, colar achei desnecessária, pois geralmente os usuários usam o ctrl+c e ctrl+v mesmo. Deixo claro para eles que copiem do word para o bloco de notas para eliminar o "lixo" (caracteres de formatação), depois é só copiar o conteúdo do bloco de notas, sem nenhuma formatação e colar no editor.
-	A seção de links e imagens não tenho o que comentar pois é imprescindível. 
-	Achei interessante deixar como complemento os botões de subscrito e sobrescrito para eventuais necessidades, bem como o de inserir símbolos.
-	Na penúltima seção eu deixo a régua para divisão de seções, a tabela que é muito útil quando usada de forma apropriada, um botão que remove a formatação eu acho bastante interessante para evitar que o usuário comum tenha que acessar o código HTML fazer a mudança e finalmente o editor de HTML que é imprescindível já que tem coisas que só podem ser "resolvidas na unha mesmo".
-	Finalizo a barra no canto direito com o botão de preview para ter uma noção de como o texto ficará. 

O resultado é uma barra super enxuta e o script de configuração você pode ver abaixo:

{% highlight javascript %}

tinyMCE.init({
mode : "textareas",
theme : "advanced",
plugins : "table,save,layer,advhr,inlinepopups,advimage,advlink,emotions,iespell,insertdatetime,preview,zoom,flash,searchreplace,print,paste,directionality,fullscreen,noneditable,contextmenu,wordcount",
theme_advanced_buttons1 : "bold,italic, strikethrough,|,bullist,numlist,|,undo,redo,|,link,unlink,anchor,image,|,sub,sup,charmap,|,hr,table,removeformat,code,|,preview",
theme_advanced_buttons2 : "",
theme_advanced_buttons3 : "",
theme_advanced_buttons4 : "",
theme_advanced_toolbar_location : "top",
theme_advanced_toolbar_align : "left",
theme_advanced_statusbar_location : "bottom",
theme_advanced_resizing : true
});
{% endhighlight %}


Gostaria de citar 2 plugins em especial que adiciono no script:

1.	wordcount - contador de palavras. Tem um sistema de artigos científicos que gerencio que vai utilizar esse recurso para facilitar a vida do usuário na hora de saber se o texto está dentro do tamanho limite. 
2.	inlinepopups - já não aguentava mais a versão antiga abrir uma nova janela popup para cada inclusão de imagem ou link. Esse plugin aumenta bastante a usabilidade.

Agora queria saber a sua opinião. Que tipo de editor você usa e porque você escolheu? Quem sabe eu não mude de editor depois do seu argumento!
