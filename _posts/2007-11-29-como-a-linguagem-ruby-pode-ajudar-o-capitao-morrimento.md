---
layout: post
title: Como a Linguagem Ruby pode ajudar o Capitão Morrimento
category: Desenvolvimento de Sistemas
tags: [ruby, rubyonrails, dsl, linguagem de programação]
---

{% include JB/setup %}


Tudo bem Pessoal, já tinha feito uma <a href="http://valeriofarias.wordpress.com/2007/08/23/primeira-linguagem-de-programacao/">comparação do ruby com o Pascal</a> anteriormente e agora recebi um pedido para ajudar o Capitão Morrimento a selecionar seus aspirantes por meio de um software.

 <a href='http://valeriofarias.files.wordpress.com/2007/11/capitaomorrimento.jpg' title='Capitão Morrimento'><img src='http://valeriofarias.files.wordpress.com/2007/11/capitaomorrimento.jpg' alt='Capitão Morrimento' /></a>

O problema é que o Capitão Morrimento precisou sair de férias do seu batalhão, mas mesmo assim quer garantir que a equipe continue na linha e quer acompanhar os aspirantes para não ter problema com eles no futuro.

Para piorar a situação descobri que o Capitão Morrimento é muito estressado e não quer perder tempo com interface complexa. Ele tem conhecimento dos softwares básicos de escritório (somente o editor de texto). Então ele quer algo que se aproxime o máximo possível de copiar dos registros dos aspirantes que ele tem no seu PC e colocar em um campo que faça a verificação e diagnóstico do Aspira.

Sabendo da necessidade de criar algo simples, resolvi usar os conceitos de DSL (Linguagens Especificas de Domínio) do Ruby e fiz a seguinte classe para que ele pudesse entrar com dados no formato que ele usa no dia-a-dia dele:



    def aspirante(nome, &amp;bloco)
    	 Aspirante.new(nome, &amp;bloco)
    end
    
    
    class Aspirante
    
    def initialize(nome, &amp;bloco)
   	@nome = nome
    	@dados = {
    		:descricoes =&gt; [],
   		:numero =&gt; nil
    		}

    		instance_eval(&amp;bloco)

    end

    def descricao(dados)
    	@dados[:descricoes] &lt;&lt; dados
    end
    
    def numero(numero)
    	@dados[:numero] = numero
    end

    def resultado()
    
    	if @dados[:descricoes].include? "corrupto" then 5.times{ puts "PEDE PRA SAIR!"}
    
    	elsif @dados[:numero] == 2 then 5.times{ puts "PEDE PRA SAIR! SEU 02! Tu e CORRUPTO!"}

   	elsif @dados[:descricoes].include? "PM" then 2.times{ puts "NAO VAI SUBIR NINGUEM!"}

   	elsif @dados[:descricoes].include? "dorminhoco" then 2.times{ puts "TRAGAM A GRANADA!..."}

    	else puts "O senhor e um FANFARRAO seu #{@dados[:numero]}.\n Sera interrogado diretamente pelo CAPITAO."

    	end
    end

    end

Agora é só salvar esse código num arquivo e carregar (load class_aspirante.rb). Então O Capitão pode usar da seguinte forma:



    a1 = aspirante "José dos Azóis" do
      numero = 04
      descricao = "Disciplinado"
      descricao = "Competente"
      descricao = "etc"
    end

A partir daí é só usar a1.resultado e obtém a resposta que queria.

Bom esse exemplo está em aberto, gostaria de dicas para melhorá-lo, porque, como falei antes, o capitão morrimento é muito esquentado e eu não quero ser chamado de Fanfarrão ;)

Quem puder contribuir com novas dicas de implementação para que a linguagem DSL Caveira fique mais intuitiva e eficiente fique à vontade para comentar.

Até logo.
