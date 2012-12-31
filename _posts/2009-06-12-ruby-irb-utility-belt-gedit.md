---
layout: post
title: Ruby + irb + utility-belt + gedit = :)
category: Desenvolvimento de Sistemas
tags: [Ruby, programação, linux, irb, gedit]
---

{% include JB/setup %}

Em setembro de 2008, Akita fez um <a href="http://www.akitaonrails.com/2008/9/21/ruby-irb-utility-belt">post interessante sobre o utility-belt</a>, uma gem
que adiciona várias funcionalidades ao irb (é algo parecido como dar Red Bull para o irb). Entre as várias funcionalidades temos:

- acionar o Vi ou o TextMate a partir do irb, permitindo que você escreva ou cole um código rapidamente, salve, feche o editor e já possa testar no irb, sem precisar criar arquivo e salvar em diretório.
- visualizar um histórico de comandos digitando "h"
-	abrir o histórico no TextMate ou Vi usando hvi ou hmate
-	assista ao <a href="http://www.akitaonrails.com/2008/9/21/ruby-irb-utility-belt">screencast</a> do Akita para ver o funcionamento

Até aí tudo bem, mas o grande problema é que eu uso __ubuntu__ com __gedit__ para escrever códigos ruby. E o utility-belt não possui métodos específicos para acionar o gedit. O help do utility belt dá a opção edit_interactively(:gedit), mas é claro que eu não poderia me contentar com esse método, eu queria que funcionasse da mesma forma que funciona para o Vi ou TextMate.

Pesquisando um pouco, achei um artigo que mostra como  <a href="http://www.vanutsteen.nl/2008/05/12/interactiveinline-editor-in-irb/">abrir o editor nano do linux através do irb</a>, extendendo o utility-belt. A partir dele eu fiz algumas modificações no arquivo .irbrc que vocês verão na sequência do Post.

A primeira etapa é instalar o utility-belt:

    git clone git://github.com/akitaonrails/utility-belt.git
    cd utility-belt
    gem build utility_belt.gemspec
    sudo gem install utility_belt-1.0.12.gem

Agora é só editar o arquivo .irbrc no home do seu sistema e acrescentar as seguintes linhas:

{% highlight ruby %}
   require 'rubygems'
   require 'utility_belt'

   module InteractiveEditing
      def gedit
         edit_interactively(:gedit)
      end
   end

   class Object
      def history_to_gedit
         handling_jruby_bug do
            file = Tempfile.new("gedit_tempfile")
            get_lines(0..(Readline::HISTORY.size - 1)).each do |line|
               file << "#{line}\n"
            end
            file.close
            system("gedit #{file.path}")
         end
      end
      alias :hgedit :history_to_gedit
   end
    UtilityBelt.equip(:all)
{% endhighlight %}

Depois disso é só salvar e partir para a execução!

Agora você pode usar o comando `gedit` direto do irb e também abrir o histórico no gedit usando `hgedit` ou `history_to_gedit`. Se quiser entender um pouco mais sobre os códigos leia os arquivos: interactive_editor.rb e command_history.rb na pasta: utility-belt/lib/utility_belt$

Para quem não utiliza o gedit, nem o Vi, nem o TextMate,  é só modificar esse código para o seu editor favorito!

Fico por aqui.

<blockquote>Obs.:O primeiro teste que eu fiz não funcionou, pois estava faltando uma dependência no meu sistema. Era o xsel que é responsável para fazer cópias de texto do shell para clipboard. Resolvi esse problema usando: `sudo apt-get install xsel`

Para saber mais sobre o xsel acesse <a href="http://www.pgrs.net/2008/1/11/command-line-clipboard-access">aqui</a>.</blockquote>
