---
layout: post
title: Introdução ao Git para Designers
category: Desenvolvimento de Sistemas
tags: [Sistema de Controle de Versão, SCV, Git, Designer]
---

{% include JB/setup %}

<blockquote>Como a grande maioria dos artigos, tutoriais e comentários sobre Git são feitos por e para programadores \(eu me encaixo nesse perfil\), achei interessante traduzir esse texto da designer <em>Mindy Wagner</em>. O post mostra uma visão geral sobre o git de uma forma simples. Ele é ótimo para mostrar para designers e até desenvolvedores que ainda não utilizam sistemas de controle de versão. Para sair do caos, use Git! Fique agora com a tradução:</blockquote>

A menos que você tenha uma loja na web com uma só pessoa sem equipe para colaborar, você está passando pela frustração que vem com o compartilhamento de arquivos. Não importa o quanto você se esforce, __quando várias pessoas estão trabalhando em um único projeto, sem um sistema de controle de versão, as coisas se tornam caóticas.__

Se você trabalha com desenvolvedores na criação e implementação de websites, a junção entre templates front-end e funcionalidades no back-end pode ser um assustador buraco negro.

__Problemas como arquivos sobrescritos, arquivos perdidos, bem como o fenômeno de querer "se livrar da versão anterior" que aparece constantemente.__ E uma vez que as funcionalidades back-end tenham sido colocadas nos seus templates, você fica com medo de mexer e quebrar alguma coisa que um programador gastou muito tempo trabalhando para deixar pronto.

Além disso, mesmo se você tem um repositório comum e todos pegam os arquivos a partir dele, ainda existe a probabilidade de pelo menos um membro da sua equipe esquecer de obter as últimas atualizações e está prestes a destruir, sobrescrevendo o trabalho de outras pessoas com suas mais recentes adições.

Neste artigo, vou mostrar uma __visão geral e rápida do GIT, um excelente sistema de controle de versão.__

## Controle de Versão - Uma explicação curta e grossa

Controle de Versão \(também conhecido como Controle de Revisão ou Controle do gerenciamento de código\) é uma ótima maneira de resolver o problema de compartilhamento de arquivos.

O conceito básico é este: __há um repositório principal para todos os arquivos do projeto.__ Os membros da equipe pegam os arquivos, modificam, e depois os devolve novamente \(usando o comando commit\). O Sistema de Controle de Versão \(SCV\), detecta automaticamente quem alterou os arquivos, quando foram alterados, e o que foi modificado ou adicionado.

Ele também solicita que você escreva uma pequena nota sobra a sua mudança para que todos possam saber o que você fez e por quê. __Cada arquivo terá, dessa forma, um histórico de revisão__, que permite que você volte facilmente para uma versão anterior de qualquer arquivo se alguma coisa der errado.

Um bom SCV também permite que você __mescle \(merging\) as alterações de um mesmo arquivo.__ Se você e outra pessoa trabalham localmente com um  mesmo arquivo ao mesmo tempo, quando vocês movem os arquivos de novo para o repositório principal o sistema irá mesclar os dois conjuntos de alterações para criar uma novo arquivo totalmente atualizado, que reflete as modificações dos dois. Se surgir algum conflito durante a junção, será mostrado para você solucionar.

Você provavelmente está usando um sistema de controle de versão muito grosseiro agora para manter seus arquivos. Se você é um designer, que é algo como isto:

<img class="alignnone" src="/images/dpcwqxg_312gvhkh4s6_b.png" alt="" width="415" height="114" />

Controle de versão de Designer - FALHO

Isso funciona bem o suficiente para PSDs e outros arquivos binários, pois realmente eles não são adequados para SCV. Mas há uma forma muito melhor de fazer isso quando você estiver gerenciando o código fonte de um site.

## Benefícios de usar um Sistema de Controle Versão inclui:

* Os arquivos __não podem__ ser sobrescritos
* Há um __repositório comum__ que armazena todos os últimos arquivos
* As pessoas podem trabalhar no mesmos arquivos __simultaneamente__ sem conflito
* Permite que você __volte__ a uma versão mais antiga do arquivo/projeto se necessário
* Deixam os desenvolvedores __muito felizes__

__Mesmo se você não trabalhar com uma equipe, versão controle pode ser um salva-vidas.__ Fazer o backup de arquivos é uma das coisas mais simples que você pode fazer para salvar-se de perder o trabalho ou de ter que começar de novo.

A idéia de um SCV Parece intimidante no início, especialmente porque __a maior parte da documentação é escrita por e para os desenvolvedores.__ Mas uma vez que você fizer a mudança para incorporá-la no seu trabalho, você verá que não é tão difícil como parece.

##Conheça o GIT

OK, agora você pode ver porque um __Sistema de Controle de Versão__ é indispensável para a sua equipe de desenvolvimento. Se você fizer uma pesquisa, verá que há poucas opções disponíveis, incluindo SVN, Mercurial, CVS, Bazar e GIT. Qualquer um deles poderia ser uma boa solução para as suas necessidades, e eu encorajo a fazer alguma pesquisa antes de escolher um SCV. Neste artigo vou concentrar a atenção sobre GIT, que uso diariamente. É uma "Estrela em Ascenção", que ganhou popularidade graças a um grande fã do Linux, GitHub e da comunidade Rails.

GIT é __Sistem de Controle de versão de código aberto__ criado por Linus Torvalds para o desenvolvimento do Linux. Linus é um cara muito inteligente, quando ele se foca para resolver um problema, ele não ficar à toa. Um dos grandes diferenciais do GIT é que ao contrário do SVN e CVS é um sistema de controle de versão distribuído. Isto significa que cada usuário tem uma cópia completa do repositório de dados armazenados localmente em sua máquina. O que isso tem de tão importante? Algumas coisas:

- __Tudo é local__, assim você pode trabalhar offline
-	__Não existe um único ponto de falha.__ Ele não confia em um servidor central que poderia pifar e queimar, destruindo o único repositório do seu projeto com ele.
-	Como ele não tem que se comunicar com um servidor central, constantemente, os __processos executam muito mais rápido.__

__GIT tem uma curva de aprendizado um pouco maior do que SVN__, mas vale a pena o esforço. Basta pensar como seus amigos desenvolvedores vão ficar impressionados se você disser que está usando o SCV do momento, que é GIT! Com toda a seriedade, não creio que a curva de aprendizagem seja tão grande. SVN foi igualmente confuso para mim no início, e eu vivia cheio de problemas utiliza ele.

Instalar GIT não é tão divertido como video game. Tive a sorte de ter um desenvolvedor dispostos a me ajudar, mas há abundância de informações on-line para que você possa aprender através deles. Git pode ser executado em um PC, Mac ou Linux, apesar de instalação para Linux e OSX ser mais fácil do que para Windows.

Você pode fazer o download da versão mais recente do GIT <a href="http://git-scm.com/download">aqui</a>. Depois que baixar os arquivos, tente este <a href="http://book.git-scm.com/2_installing_git.html">guia rápido</a> para você começar com o processo de instalação. Para usuários do Windows, este <a href="http://nathanj.github.com/gitguide/installing.html">guia visual</a> passo-a-passo deve ser útil. Usuários do Mac, tente este guia encontrado no <a href="http://github.com/guides/compiling-and-installing-git-on-mac-os-x">GitHub</a>

##Primeiros passos

Depois de ter GIT instalado, __você pode criar seu repositório.__ Para transformar uma pasta existente em um repositório GIT, use os seguintes comandos em seu terminal ou janela do Prompt de comando:

    cd  caminho/para/projeto
    git init
    git add .
    git commit

O que você está dizendo GIT de fazer é:


- __Inicialize__ este diretório
- __Adicione todos os arquivos__ e subdiretórios na área de índice \(como se fosse uma sala de espera\).
- __Armazene__, todos as mudanças atuais no repositório \(sai da sala de espera para ser atendido\)

Se você odeia linha de comando, poderá fazer isso usando o __Git GUI__. Não é a coisa mais bonita que você já viu, mas está lá se você precisar dele.

<img class="alignnone" src="/images/dpcwqxg_318cxx44p9f_b.png " alt="" width="451" height="257" />

## Uma amostra do fluxo de trabalho com GIT

Eu estou usando atualmente GIT em um Mac para trabalhar em uma aplicação web com múltiplos desenvolvedores web. Temos um do código "master", para onde enviamos nossos arquivos depois da criação ou modificação, e todos tempos uma cópia completa do repositório localmente. Em um determinado dia, o meu fluxo de trabalho é algo parecido com isto:

<img class="alignnone" src="/images/dpcwqxg_323gnhgbwg3_b.gif  " alt="" width="505" height="225" />

1. __Abro o Terminal.__ Inicio o meu banco mysql local (dessa forma a aplicação que estamos construindo pode rodar localmente na minha máquina ).
2. Verificar as últimas mudanças, usando o comando `git pull` (puxar) no terminal. Isso me dá todas as mudanças feitas pelos outros membros da equipe centralizadas em nosso repositório mestre.
3. Abro o projeto no __TextMate__ e faço as minhas alterações.
4. Uso o __comando commit__ com uma __notificação__ para atualizar as mudanças que fiz. Por enquanto somente na minha máquina local. Faço commits frequentemente, provavelmente dez ou mais vezes por dia. Isso me ajuda a manter-me no caminho certo.
5. __Devolvo as minhas alterações__ ao repositório central usando `git push`. Agora, outros membros da equipe podem baixar e vê as minhas alterações. Você deve fazer isso pelo menos uma vez por dia ou depois de qualquer grande adição.

Todas estas ações podem ser feito facilmente através da __janela do terminal__, mas eu sou um  tipo de garota visual. Por esse motivo, eu uso <a href="http://gitx.frim.nl/">GitX</a>, um __Git gui para OSX__, para fazer meus commits (adicionar no repositório local). Eu continuo a baixar os arquivos do servidor (git pull) e a enviar de volta (git push) através do terminal, mas GitX torna fácil para mim a organização dos meus commits e a ter um controle mais efetivo em torno do que estou fazendo.

<img class="alignnone" src="/images/dpcwqxg_324cjsfbw2t_b.png" alt="" width="640" height="461" />

No topo, ele mostra as alteração que foram feitas nos arquivos. No canto inferior esquerdo está a lista de alterações à espera de serem comitadas \(Unstaged Changes\). Para comitar as mesmas, você arrasta um ou mais arquivos para a área "Staged Changes" do lado direito, escreva o a sua nota no campo "Commit Message", e clique o botão Commit.

Se eu mudar para a exibição em árvore, eu posso ver o que foi enviado para o repositório. Se meus arquivos não fossem atualizados com os arquivos do repositores mestre, as tags verde e azul no topo estariam fora de sincronia. <a href="http://wiki.github.com/Caged/gitnub">GitNub</a> oferece uma interface com estilo semelhante Mac.

<img class="alignnone" src="/images/dpcwqxg_325dvqqw5gf_b.png" alt="" width="640" height="462" />

Há também um grande pacote para TextMate \(<a href="http://gitorious.org/projects/git-tmbundle">TextMate bundle</a>\) disponível. Com ele, você pode usar os comandos push, pull, commit e outros sem sair do TextMate. É extremamente eficiente.

<img class="alignnone" src="/images/dpcwqxg_320g5j4rsdx_b.jpg" alt="" width="459" height="500" />

##Saiba Mais

GIT Cheat Sheet
<a href="http://zrusin.blogspot.com/2007/09/git-cheat-sheet.html"><img class="alignnone" title="git cheat sheet" src="/images/dpcwqxg_321d3h2crhg_b.png" alt="" width="640" height="495" /></a>
Acima: Zack Rusin’s Git Cheat Sheet

### Eu ainda sou iniciante no Git, então só falei de uma forma geral o que você pode fazer com ele, mas eu definitivamente vejo a luz quando se trata de controle versão, e estou satisfeita por finalmente seguir um caminho seguro.
