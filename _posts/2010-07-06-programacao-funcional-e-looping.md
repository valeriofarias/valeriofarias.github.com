---
layout: post
title: Programação Funcional e Looping (tradução)
category: Desenvolvimento de Sistemas
tags: [Ruby, programação, linguagem funcional]
---

{% include JB/setup %}


<blockquote>Quem vem linguagens como C, Java, Delphi, C# e usa a linguagem Ruby pela primeira vez, tende a programar em Ruby do mesmo jeito que programava na linguagem que já era fluente. Lendo o post abaixo você perceberá que linguagens que tem características  funcionais, como o Ruby, possibilitam formas próprias de organizar o código (Jeito Ruby) , mais especificamente nesse texto, escrito por Jon Dahl, você verá as formas mais eficientes de fazer iterações (loops) em Ruby. A versão original você encontra <a href="http://railspikes.com/2008/7/29/functional-loops-in-ruby-each-map-inject-select-and-for">aqui</a>. Fique agora com a tradução:</blockquote>

Se você é um programador, você provavelmente já trabalhou com um ou mais  livros que te ensinava a sintaxe de uma nova linguagem. Eu tive essa  experiência com uma meia dúzia de linguagens, como C, Javascript e Perl.

Estes livros tipicamente introduzem loops no meio da discussão de  sintaxe, depois de tipos de dados e controle de fluxo, mas antes de I/O e  de recursos avançados.

Loops são quase sempre apresentadas de  acordo com esta fórmula:

Texto introdutório: "E se você quiser fazer uma operação mais de uma  vez"?
Introduz o loop while, mostrando a diferença entre do while e  while do.
Apresenta o laço for, o primo louco do while.

\(Bonus\)  Introduz o laço foreach se a linguagem é suficientemente de alto nível.  E é isso - você sabe como fazer um loop através de código e é hora de  seguir em frente.

Não tão rápido. Se você for sortudo o bastante para usar uma  linguagem que possui traços de programação funcional, você não deve usar  um laço dessa maneira.

__O ponto__
De agora em diante, eu vou  usar Ruby para exemplos, mas este artigo não é sobre Ruby. É sobre a  transição de loops primitivos para iterar usando coleções, e sobre a  transição de funções genéricas \(como each\) para funções mais específicas  \(como map\).

__De loops para métodos que percorrem a própria lista__
Durante os  últimos meses, estive trabalhando no Tumblon, uma aplicação Rails de porte  médio. Eu trabalhei em 15-20 aplicações Ruby nos últimos três anos,  provavelmente, totalizando 50.000 linhas de código Ruby.

Eu só usei um laço primitivo uma vez.

Esse laço primitivo era  um loop{} loop, sempre percorrer uma lista tarefas à procura do que  executar. Em outras palavras, um laço sem nenhuma condição de saída além  de ^C, ou uma falha do servidor.

Eu só usei um loop simples em um caso porque o conceito each  geralmente é uma opção melhor. Essa implementação Ruby será familiar  para quem já viu código Ruby antes:

{% highlight ruby %}
["horse", "pig", "cow"].each  do |animal|
   puts "Old MacDonald has a #{animal}"
end
{% endhighlight %}

\(Sim, eu tenho uma  criança pequena.\)

Isto é muito mais enxuto do que as alternativas  usando for e while. Ele representa melhor o que estamos fazendo: não  estamos iterando com uma condição de saída, estamos interagindo entre os  elementos de uma matriz. Mas e se você quiser fazer algo um número fixo  de vezes? Você pode interpretar isso como percorrer a seguinte lista:  `[1,2,3,4,5,6,7,8,9,10].each{}`. Mas claro que Ruby dispõe de uma versão  mais simples para isso: `10.times{}`.

Portanto, se seu loop rodar através de uma lista de algum tipo, each  é a melhor abstração para esse tipo de problema. E, na minha  experiência de construção de aplicações Ruby, a maioria dos loops  percorrem listas. Parsing XML? Iterando por uma lista. Somando números?  Iterando por uma lista. Leitura em um arquivo texto? Lendo o STDIN?  Trabalhando com linhas em um banco de dados? Iterando por uma lista.  Isso é o que o loop each faz bem.

__Além do arr.each__
Mas each não é a palavra final. É um passo acima  das primitivas for ou while quando trabalha com o conjunto de valores,  mas muitos loops each devem ser substituídos por outros métodos de  array, como map, inject e select.

Quando each é útil? Simples: quando você quiser criar efeitos  externos ao array, como salvar no banco de dados, imprimir um resultado  na tela, ou enviar uma chamada de serviço web. Nestes casos, você não  está preocupado com o valor de retorno; você deseja alterar o estado na  tela, o disco, o banco de dados, ou outra coisa. Dê uma olhada neste  código.

{% highlight ruby %}
User.find(:all).each do |user|
   Notification.deliver_email_newsletter(user)
end
{% endhighlight %}

Você não necessita que o código acima retorne valor, você só precisa que o e-mail seja entregue.

Mas não use each se você quer extrair algum  valor novo de um array. Em vez disso, dê uma olhada em outros três  métodos poderosos: map, inject e select.

Para entender vamos analisar o código abaixo que itera por um array e  cria um novo array com elementos que correspondem a determinada  condição, usando each.

{% highlight ruby %}
active_users = []
users.each do |user|
   active_users << user if user.active?
end
active_users
{% endhighlight %}

A primeira e última linhas são feias. Por  que você tem que inicializar e retornar active_users? Resposta: porque  este é um abuso \(má utilização\) do método each. Nesse caso é muito  melhor você usar select \(ou seu equivalente, find_all\):

{% highlight ruby %}
users.select do |user|
   user.active?
end
{% endhighlight %}

Usando  select o código fica menor, mais fácil de entender e menos propenso a  erros. E mais importante, ele claramente encapsula um uso comum de each  \(e looping em geral\).

Duas outras funções-chave: map e inject \(ou reduce\) - complementam  select e seguem um padrão semelhante. E não é de surpreender que eles  formam a base do paradigma mapreduce para processamento distribuído. Eu  escrevi mais sobre map e reduce em outro artigo, e aqui é um atalho para  saber quando usar essas funções:

<table>
<tbody>
<tr>
<td><strong>Valor de retorno</strong></td>
<td><strong>Função</strong></td>
</tr>
<tr>
<td>Nova matriz com o mesmo número de valores</td>
<td>map</td>
</tr>
<tr>
<td>Nova matriz composta de uma parte da matriz velha</td>
<td>select</td>
</tr>
<tr>
<td>Valor único (embora este valor possa ser um array)</td>
<td>inject</td>
</tr>
<tr>
<td>Nenhum</td>
<td>each</td>
</tr>
</tbody>
</table>


__Resumo__

Use each para mudar o estado. Caso contrário use métodos  funcionais de matriz que retorna um valor. Dessa forma seu código ficará  mais limpo e menos propenso a falhas.

__Aprendendo a refatorar__

1.	Inicializar  um valor vazio, ou matriz, ou o que quiser \(new_arr = \[\]\)
2. arr.each, alterando o valor inicializado
3. Devolver o valor \(return  new_arr\)

Sempre que você detectar esse padrão, você sabe que existe um laço `each` que precisa ser substituído.
