---
layout: post
title: Introdução à Linguagem Assembly (tradução)
category: Desenvolvimento de Sistemas
tags: [Assembly, programação, linguagem de máquina, tradução]
---

{% include JB/setup %}


<blockquote>Para quem não é da área de informática e até mesmo para quem é programador mas sempre trabalhou com linguagens de alto nível esse artigo é muito esclarecedor.  A gente passa a ter consciência e respeitar o esforço que os primeiros programadores e projetistas tiveram para chegar ao que temos hoje. Para ler o artigo original acesse <a href="http://www.swansontec.com/sprogram.html">esse link</a>. Fique agora com a tradução:
</blockquote>

Esta é uma breve introdução à linguagem assembly. Assembly é a linguagem de programação mais básica disponível para qualquer processador. Com a linguagem Assembly, um programador só trabalha com as operações executadas diretamente sobre a CPU física. A linguagem Assembly carece de alto nível de conforto, tais como variáveis e funções, e não é portátil entre as diversas famílias de processadores. No entanto, Assembly é a linguagem de programação mais poderosa disponível no computador, e ela dá aos programadores a visão necessária para escrever código eficiente em linguagens de alto nível. Aprender Assembly é valorizar o tempo e o esforço de todos os programadores sérios.

__O Básico__

Antes de podermos explorar o processo de escrever programas de computador, temos que voltar para o básico e saber exatamente o que é um computador e como ele funciona. Cada computador, não importa quão simples ou complexo, tem no seu cerne exatamente duas coisas: __uma CPU e alguma memória__. Juntas, essas duas coisas são o que tornam possível que o seu computador execute programas.

No nível mais __básico__, um __programa de computador__ nada mais é do que uma coleção de __números armazenados na memória__. Números diferentes dizem para a CPU fazer coisas diferentes. A CPU lê os números um de cada vez, decodifica-os e executa o que os números dizem. Por exemplo, se a CPU lê o número 64 como parte de um programa, ela irá adicionar 1 ao número armazenado em um local especial chamado AX. Se a CPU lê o número 146, vai trocar o número armazenado em AX com o número armazenado em outro local chamado BX. Ao combinar várias operações simples, como estas em um programa, um programador pode fazer o computador realizar muitas coisas incríveis.

Como exemplo, aqui estão os números de um simples programa de computador: `184, 0, 184, 142, 216, 198, 6, 158, 15, 36, 205, 32`. Se você digitar esses números na memória do seu computador e executá-los no MS-DOS, você veria um sinal de dólar ($) colocado no canto inferior direito da tela, uma vez que é o que estes números dizem que o computador faça.

__Linguagem Assembly__
Embora os números do programa acima façam sentido para um computador, eles não são claros para um ser humano. Quem poderia imaginar que o código colocaria um cifrão na tela? Claramente, manipular números diretamente é uma péssima maneira de escrever um programa.

Não tem que ser assim. Um tempo atrás, alguém veio com a ideia de que os programas de computador poderiam ser escritos com palavras, em vez de números. Então um programa especial chamado montador pegaria as palavras do programador e converteria em números que o computador pudesse entender. Este novo método consiste em escrever um programa em linguagem Assembly. Isso salvou os programadores de milhares de horas de esforço, já que não tinham mais que procurar números difíceis de lembrar nas costas de livros de programação, em vez disso bastava usar palavras simples.

O programa acima, escrito em linguagem Assembly, é assim:

{% highlight bash %}

 MOV AX, 47104
 MOV DS, AX
 MOV [3998], 36
 32 INT

{% endhighlight %}

Quando um montador lê este programa exemplo, converte cada linha de código em uma instrução de nível de CPU. Este programa utiliza dois tipos de instruções, MOV e INT. Em processadores Intel, a instrução MOV movimenta dados, enquanto a instrução INT transfere o controle do processador para os drivers de dispositivo ou sistema operacional.

O programa ainda não está completamente claro, mas é muito mais fácil de entender do que era antes. A primeira instrução, MOV AX, 47104, informa ao computador para copiar o número 47104 no local AX. A próxima instrução, MOV DS, AX, informa ao computador para copiar o número em AX para o local DS. A próxima instrução, MOV \[3998\], 36 diz ao computador para colocar o número 36 em memória na posição 3998. Finalmente, INT 32 finaliza o programa, retornando ao sistema operacional.

Antes de prosseguirmos, gostaria de explicar como funciona este programa. Dentro do CPU existe uma quantidade de locais, chamados registradores, que podem armazenar um número. Alguns registradores, como o AX, são de uso geral, e não fazem nada de especial. Outros registradores, como o DS, controla a forma como o processador funciona. DS funciona como um registrador de segmento, e é usado para escolher qual área de memória da CPU pode gravar. Em nosso programa, vamos colocar o número 47104 para DS, que fala para a CPU acessar a memória na placa de vídeo. A próxima coisa que nosso programa faz é colocar o número 36 na localização 3998 da memória da placa de vídeo. Como o 36 é o código para o sinal de dólar "$" e 3998 é a posição de memória do canto inferior direito da tela, um cifrão aparece na tela alguns microssegundos depois. Finalmente, o nosso programa informa a CPU para realizar o que se chama uma interrupção. Uma interrupção é usada para parar um programa e executar um outro em seu lugar. No nosso caso, usamos a interrupção 32, que termina o nosso programa e retorna para o MS-DOS, ou qualquer outro programa que foi usado para iniciar o nosso programa.

__Executando o programa__
Vamos agora rodar este programa. Primeiro, certifique-se de escrever estas instruções em outro local, para servir de referência durante a codificação. Em seguida, clique em seu menu iniciar, e execute o programa chamado "prompt do MS-DOS". Uma tela preta com texto branco deverá aparecer. Estamos agora no MS-DOS, a forma como os computadores eram utilizados 20 anos atrás. MS-DOS existia antes do mouse ser utilizado, então você deve digitar os comandos no teclado para fazer o computador fazer coisas.

Primeiro, eu quero que você digite a palavra "debug", e pressione enter. O cursor irá se mover para baixo uma linha, e você deve ver o prompt de depuração, que é um traço simples. Estamos agora em um programa chamado de depuração. Depuração é uma utilidade poderosa que lhe permite acessar diretamente os registos e memória de seu computador para várias finalidades. No nosso caso, queremos colocar o nosso programa na memória e executá-lo,
então vamos usar um comando debug, para montar. Vá em frente e digite "a100" agora. O cursor irá mover para baixo outra linha, e você vai ver algo como "1073:0100". Esta é a localização de memória, nós vamos colocar as instruções assembly. O primeiro número é o segmento, e o segundo número é a posição de memória dentro do segmento. Seu programa de depuração provavelmente irá escolher um segmento diferente do meu, então não se preocupe se ele for diferente. Outra coisa a observar é que a depuração só entende números hexadecimais, que são uma espécie de atalho do computador. Os números hexadecimais podem conter letras e dígitos, então se você ver algo como "63AF", não se preocupe.

Vamos em frente escrever nosso programa agora. Digite cada uma das instruções abaixo no Debug exatamente como elas aparecem, e pressione enter após cada uma. Quando você terminar de inserir a última instrução, pressione enter duas vezes para dizer ao Debug que nós inserimos instruções.

{% highlight bash %}
mov ax, B800
mov ds, ax
mov byte [0F9E], 24
int 20
{% endhighlight %}

Como vocês podem ver, eu converti todos os números em hexadecimal, e fiz algumas mudanças para o debug poder entender o que está acontecendo. Se você cometer um erro ao entrar no programa acima, pressione enter duas vezes, digite novamente "a100", e comece a introduzir as instruções no início do programa.

Depois de ter entrado no programa, você pode ir em frente e executá-lo. Basta digitar "g" e pressione enter quando estiver pronto para iniciar o programa. Você deve ver um sinal de dólar no canto inferior direito da tela, e as palavras "Program terminated normally." Estas palavras são colocadas pelo Debug para informá-lo que o programa terminou normalmente. Parabéns! Você acabou de inserir e executar o seu programa feito em Assembly!

Vamos voltar para o Windows agora. Vá em frente e digite "q" para sair de depuração. Agora, digite "exit" para sair do MS-DOS. Agora você deve estar de volta ao Windows.
