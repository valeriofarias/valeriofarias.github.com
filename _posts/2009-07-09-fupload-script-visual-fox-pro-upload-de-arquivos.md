---
layout: post
title: fupload - script Visual Fox Pro que auxilia o upload de arquivos
category: Desenvolvimento de Sistemas
tags: [Visual Fox Pro, programação, upload, projeto, github, windows]
---

{% include JB/setup %}

fupload é um script feito em Visual Fox Pro. Criei o fupload para facilitar o upload de arquivos pdf e zip em massa, aqui no meu trabalho. Feito usando o princípio de __"coçar a própria coceira"__.

Como eu estava querendo aprender a usar o __git__ e o __github__, resolvi organizar melhor o código e disponibilizá-lo como open source. Esse script foi feito para plataforma __Windows__. É necessário ter o __Visual Fox Pro__ instalado na máquina. Para complementar o script uso um arquivo .bat que faz o envio para o servidor.

Quem utiliza outros sistemas operacionais poderá se inspirar na solução e criar outras soluções multiplataformas.

__Agora fiquem com o tutorial para utilizar o fupload:__

1. baixe o arquivo .zip do fupload e descompacte na sua unidade `c:\`. O aplicativo está no seguinte link:

<a href="http://github.com/valeriofarias/fupload/tree">http://github.com/valeriofarias/fupload/tree</a>

Se você usa o git poderá fazer um clone do projeto com o seguinte comando:

`git clone git://github.com/valeriofarias/fupload.git`

Na figura abaixo você pode ver a hierarquia de pastas do utilitário fupload:
<a href="http://i716.photobucket.com/albums/ww163/valeriofarias/01pastas.jpg" target="_blank"></a>


hierarquia de pastas do fupload
<a><img title="hierarquia de pastas do fupload" src="http://i716.photobucket.com/albums/ww163/valeriofarias/01pastas.jpg" alt="hierarquia de pastas do fupload" width="182" height="218" /></a>



- backup -&gt; (antes era historic) armazena uma cópia de todos os arquivos que são enviados para o servidor
- log -&gt; armazena os arquivos de log
- script -&gt; pasta principal do utilitário. Nela se encontra o arquivo fupload.prg que é o programa principal. Nela também se encontra o arquivo .bat.
- start -&gt; como o nome já diz, essa pasta é onde você coloca os arquivos que serão enviados para o servidor. É o primeiro passo.
- tmp -&gt; quando o arquivo é processado pelo script fupload, ele é renomeado e enviado para essa pasta, nessa pasta também é criado o arquivo de log que será utilizado para criar a página HTML.

O script já vem __pré-configurado__ para ser executado na unidade c, mas você pode facilmente modificar as configurações para executá-lo em outra unidade(d:\, e:\). É só modificar a constante: __DEFAULTFOLDER__, para a unidade que você desejar.

Obs.: É preciso também configurar a pasta destino do servidor. No caso do script modifique as constantes: __SERVERFOLDERPDF__ (caminho no servidor para os arquivos .pdf) e __SERVERFOLDERZIP__ (para arquivos .zip).  Na imagem abaixo você pode ver o trecho do código do arquivo fupload.prg:

<img title="configuração do fupload" src="http://i716.photobucket.com/albums/ww163/valeriofarias/02configuracao.jpg  " alt="configuração do fupload" width="518" height="384" /> 

configuração do fupload

É preciso também fazer a configuração do arquivo __upload.winscript__. Primeiro é preciso renomear esse arquivo para __upload.bat__. Depois abra-o no notepad, modifique o __pathserver__ e __salve__ o arquivo:


{% highlight bash %}
@ECHO OFF
ECHO PAUSA DE SEGURANCA
PAUSE

COPY c:\fupload\tmp\*.pdf pathserver\pdf\
COPY c:\fupload\tmp\*.zip pathserver\zip\

MOVE c:\fupload\tmp\*.log c:\fupload\log\
MOVE c:\fupload\tmp\*.zip c:\fupload\backup\
MOVE c:\fupload\tmp\*.pdf c:\fupload\backup\

DEL c:\fupload\tmp\*.*
{% endhighlight %}

Feita a configuração, agora é só colocar os arquivos que você quer enviar para o servidor na pasta __start__.

No exemplo abaixo você pode ver que os arquivos tem acentos e espaços vazios entre as palavras. É aqui onde o fupload faz a mágica, eliminando os espaços vazios e os acentos:

<img title="aquivos que serão enviados para o servidor" src="http://i716.photobucket.com/albums/ww163/valeriofarias/03pastastart.jpg" alt="primeiro passo: coloque os arquivos na pasta start" width="407" height="175" /> 

primeiro passo: coloque os arquivos na pasta start

Agora você já pode __carregar__ o fupload.prg no Visual Fox Pro como na imagem abaixo. Se quiser usar sem parâmetro não tem problema nenhum. O parâmetro é só para colocar um prenome no início do arquivo identificando sua natureza como: doc, form, etc.

<a href="http://i716.photobucket.com/albums/ww163/valeriofarias/04execucao.jpg" target="_blank">
</a>

<img title="carregando o fupload.prg no Visual Fox Pro" src="http://i716.photobucket.com/albums/ww163/valeriofarias/04execucao.jpg" alt="Carregando o fupload.prg no Visual Fox Pro" width="443" height="86" /> 

Carregando o fupload.prg no Visual Fox Pro

Quando o processamento é finalizado aparece o messagebox abaixo:

Mensagem indicando que o script foi finalizado:
<img title="Messagem indicando que o script foi finalizado" src="http://i716.photobucket.com/albums/ww163/valeriofarias/05fim.jpg" alt="Messagem indicando que o script foi finalizado" width="196" height="167" />


Agora já podemos acessar a pasta tmp e ver o resultado. Note que os arquivos estão todos renomeados, agora sem acento e sem espaço vazio. Foi adicionado também um prenome no início, nesse caso doc. Também foi criado o arquivo de log:

Arquivos modificados pelo fupload:
<img title="arquivos modificados pelo fupload" src="http://i716.photobucket.com/albums/ww163/valeriofarias/06arquivosmodificados-1.jpg  " alt="arquivos modificados pelo fupload" width="387" height="163" />

Vamos dar uma olhada agora no __arquivo de log__. O nome do arquivo segue o padrão: __"logupload_ano_mes_dia__hora_minuto_segundo_\[prenome (facultativo)\]_n\[número de arquivos\].txt"__. Quando você abre o arquivo de log. Já aparece o código HTML definitivo para colocar na página. Se quiser você pode alterar o texto do link para algo mais chamativo ou legível. Depois é só copiar e colocar na página HTML.

Arquivo de log:
<img title="arquivo de log" src="http://i716.photobucket.com/albums/ww163/valeriofarias/07arquivolog-1.jpg  " alt="arquivo de log" width="739" height="257" />

Para __finalizar__ é só __executar__ o arquivo __upload.bat__ (figura abaixo), na pasta script. Esse procedimento enviará os arquivos para o servidor e limpará a pasta tmp. Os arquivos .pdf e .zip serão copiados também para a pasta backup, só por segurança. O arquivo de log será movido para pasta log. Isso te dar um histórico dos últimos uploads. No momento que você quiser, poderá apagar o conteúdo da pasta backup.
<a href="http://i716.photobucket.com/albums/ww163/valeriofarias/08uploadbat-2.jpg" target="_blank"></a>

Arquivo upload.bat:
<a><img title="arquivo upload.bat" src="http://i716.photobucket.com/albums/ww163/valeriofarias/08uploadbat-2.jpg" alt="arquivo upload.bat" width="170" height="167" /></a>
