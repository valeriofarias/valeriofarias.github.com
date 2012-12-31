---
layout: post
title: Acessando o Twitter via Interactive Ruby Shell (irb)
category: Desenvolvimento de Sistemas
tags: [Ruby, programação, shell, twitter]
---

{% include JB/setup %}

Estava procurando por uma solução simples em Ruby para fazer o update de mensagens via irb.
Achei as seguintes opções de classes Ruby:

- [Twitter](http://twitter.rubyforge.org/) John Nunemaker - essa é a mais completa
- 	[Twittery](http://rubyforge.org/projects/twittery/) uma classe bem simplista que faz upload de fotos pela TwitPic's API. Esse projeto é administrado por Chris Ledet

Eu tomei como base para aprendizado, a classe do projeto Twittery, pois queria uma solução rápida e simples. Apesar dela não ter a segurança do protocolo de autenticação oAuth que já consta no projeto de John Nunemaker.

## A idéia foi a seguinte: colocar o código Ruby para ser pré-carregado no arquivo .irbrc toda vez que o irb for acionado via shell.

Depois de vários teste o código final você pode ver abaixo:

{% highlight ruby %}
# twitting by irb
require 'net/http'

class Object
  def twitter_config(username, password)
    @username = username
    @password = password
  end

# the message must be between 1 and 160 characters
  def twitter(status = nil, format = 'json')
     if status.empty? or status.length > 160
        puts "twitter 'message with spaces'             (IRB)"
        puts "Obs. (The message must been less than 160 characters and cannot be empty)"
     else
        api_url = 'http://twitter.com/statuses/update.' + format
        url = URI.parse(api_url)
        req = Net::HTTP::Post.new(url.path)
        req.basic_auth(@username, @password)
        req.set_form_data({ 'status'=> status }, ';')
        res = Net::HTTP.new(url.host, url.port).start {|http| http.request(req) }
        puts res
     end
 end
alias :twit :twitter
end

twitter_config('username', 'password')
{% endhighlight %}

Os dados de usuário e senha já são pré-carregados na inicialização do irb. A vantagem é que esses dados ficam ocultos no arquivo .irbrc, dando um pouquinho de privacidade, caso tenha alguém do lado. ;)

Para "twittar" é só usar o seguinte comando, a qualquer momento, dentro do irb:

{% highlight ruby %}
irb> twitter "mensagem via irb"

# ou ainda

irb> twit "outra mensagem via irb"
{% endhighlight %}

<blockquote>Obs.: Esse exemplo usa a forma de autenticação mais simples, via HTTP. O twitter está em processo de mudança da autenticação para usar <a href="http://oauth.net/">oAuth</a>. A tendência é que a autenticação básica via HTTP deixe de ser usada, mas isso ainda vai demorar um pouco. Enquanto isso não acontece, vou continuar "twittando" por esse script via irb. ;)</blockquote>

Fico por aqui.

Até a próxima.
