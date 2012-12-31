---
layout: post
title: Ruby como primeira linguagem de programação!
category: Desenvolvimento de Sistemas
tags: [desenvolvimento de sistemas, linguagem de programação, ruby, pascal]
---

{% include JB/setup %}

Pois é, para alguns pode soar um pouco estranho, principalmente para os mais tradicionais, mas é o que estou propondo nesse post.

A minha experiência com a primeira linguagem foi em 1997 com <a href="http://pt.wikipedia.org/wiki/Pascal_\(linguagem_de_programa%C3%A7%C3%A3o\)">Pascal</a> que foi uma linguagem criada em 1970 por Niklaus With com o objetivo principal de encorajar o uso do código estruturado (principalmente para o ensino).

Vamos ver um pequeno exemplo de teste lógico em Pascal:

{% highlight pascal %}
    program Testelogico;
       
    var a,b:integer;

    uses crt;

    begin
     clrscr;
     writeln ('Digite um número para A');
     readln (a);
     writeln ('Digite o número para B');
     readln (b);
    
     if (a = b) then
        writeln ('A é igual a B')
     else
        if (a &lt; b) then
              writeln ('B é maior que A')
        else
              writeln ('A é maior que B');
    end.
{% endhighlight %}

Podemos perceber nesse código a necessidade de aprendizado de vários conceitos voltados para a própria estrutura da linguagem ao invés de se focar no problema. Como exemplo temos a exigência dos parênteses e o ponto e vírgula no final de bloco, além da regra clássica: antes de else não se usa ponto e vírgula, pois o ponto e vírgula é utilizado para finalizar blocos de programação.

[Ruby](http://pt.wikipedia.org/wiki/Ruby_%28linguagem_de_programa%C3%A7%C3%A3o%29) é uma linguagem criada por Yukihiro Matsumoto, projetada para programação em grande escala unido de codificação rápida. Vamos ver o mesmo exemplo anterior feito em Ruby:

{% highlight ruby %}
    print "Entre com o valor de A:"
    a = gets

    print "Entre com o valor de B:"
    b = gets

    if a == b
    print "A é igual a B"
    elsif a &lt; B
       print "B é maior que A"
    else
       print "A é maior que B"
    end
{% endhighlight %}

Além da quantidade de código diminuir tornando-o mais simples, a curva de aprendizado também tende a ser menor, pois agora não temos mais que garantir regras voltadas para a estrutura da linguagem. O bloco if-else faz o que tem que ser feito sem precisar está se preocupando se está faltando ou não ponto e vírgula.

Podemos ver um exemplo ainda mais convincente com estruturas de repetição com final conhecido. Vejam um exemplo em Pascal que mostra 10 vezes na tela a palavra "teste":

{% highlight ruby %}
    Program repeticao
  
    var
    i : integer;
  
    begin

    for i:= 1 to 10 do
         writeln("teste");
    end
{% endhighlight %}

Para fazer esse exemplo simples precisei seguir a burocracia de criar o nome do programa criar a variável e só depois criar a rotina. Vamos ver no Ruby o mesmo exemplo:

{% highlight ruby %}
    10.times do
      puts "teste"
    end
{% endhighlight %}

Ou ainda:

{% highlight ruby %}
    10.times { puts "teste" }
{% endhighlight %}

Deu para perceber a simplificação absurda do código no Ruby? Em algumas rotinas assemelha-se a criação de um texto em inglês (linguagem humana). Ao invés de precisar saber que a repetição será a variação do valor de uma variável i de 1 a 10, simplesmente peço para imprimir 10 vezes a palavra "teste".

Aliando essa simplicidade à característica de ser totalmente orientada a objetos. Além de, junto com o framework <a href="http://pt.wikipedia.org/wiki/Ruby_on_Rails">rails</a> permitir a utilização profissional no desenvolvimento de sistemas web. Já acho que são argumentos suficientes para aposentar de vez o Pascal  <em>(ainda bastante utilizado no ambiente acadêmico e em cursos técnicos como primeira linguagem de programação complementando a disciplina de algoritmos)</em> e seguir com uma linguagem simples, produtiva, de <a href="http://www.rubyonbr.org/articles/2007/04/29/ruby-alem-do-usual/">utilização geral</a> e até divertida como o Ruby.

Lembrando que estou sugerindo como primeira linguagem, para depois continuar com ela ou não. Sempre que possível é muito importante <a href="http://www.akitaonrails.com/articles/2007/03/14/off-topic-um-desabafo">aprender outras linguagens</a> para obter outros pontos de vista.

Um grande abraço e até o próximo Pense nisso!
