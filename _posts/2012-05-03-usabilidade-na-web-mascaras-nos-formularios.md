---
layout: post
title: 'Usabilidade na Web: Máscaras nos formulários'
category: Desenvolvimento de Sistemas
tags: [formulários, usabilidade]
---

{% include JB/setup %}


Usabilidade na Web: Máscaras nos formulários

O exemplo que vou te mostrar é de um formulário de consulta por dados institucionais, que exige que seja digitado

o CPF ou o CNPJ do interessado. As fotos abaixo mostra a evolução da interface com o objetivo de deixar mais simples para usuário final.

<a href="http://valeriofarias.com/wp-content/uploads/2012/05/form-barra.jpg"><img src="http://valeriofarias.com/wp-content/uploads/2012/05/form-barra.jpg" alt="" title="form-barra" width="190" height="121" class="aligncenter size-full wp-image-399" /></a>

Na foto 01 temos a idéia inicial de em um campo só o usuário poder digitar o número do CPF ou CNPJ. Já podemos notar uma falha no label

do campo: CPF/CNPJ   dá a entender que é preciso digitar primeiro o CPF depois digitar uma barra e por último digitar o CNPJ. Vamos corrigir isso na próxima imagem.

Na foto 02 entrei no dilema de colocar ou não a mascara. Uma máscara em um campo tem pelo menos 2 objetivos:

1. Instruir ou guiar o usuário - ele consegue identificar visualmente a quantidade de caracteres, quanto falta para finalizar.
2. Colocar um limite para o usuário - com a máscara fica fácil permitir a digitação somente de números, evitar que se digite mais que o necessário

Em um primeiro momento, pensei em colocar uma máscara que se ajustasse de acordo com o número de caracteres digitados:
- se o usuário digitasse até 11 caracteres, mostraria no campo a máscara do CPF
- se o usuário digitasse mais de 11 caracteres, a mascara mudaria para o formato do CNPJ

Depois parei um pouco pra pensar e abandonei essa idéia, pois além da complexidade de programação, isso iria confundir o usuário pois fere os dois princípios que acabei de citar: guirar e colocar limites.

A decisão final ficou entre duas opções:
- 	usar um campo limitado a digitação de 14 caracteres somente números e sem o uso da máscara
- 	Criar dois campos. O primeiro para o CPF, o segundo para CNPJ. Cada qual com sua máscara específica.

A primeira opção, de não usar máscara, apesar de eu colocar limites, eu não consigo guiar o usuário. Ele vai digitando e terá que saber se digitou corretamente todos os dígitos. 

Devido a essa conclusão acabei optando pela última opção. Apesar de possuir um campo a mais, creio que ele facilita mais a vida do usuário. 

O resultado na imagem abaixo. Para complementar a usabilidade eu coloquei uma marca dágua em cada campo, mostrando o que deve ser digitado e ao lado um lembrete explicativo mostando que deve escolher entre digitar o CPF ou o CNPJ

E você? Que sugestão você daria diferente desse post para facilitar a vida do usuário?

<a href="http://valeriofarias.com/wp-content/uploads/2012/05/form-final.jpg"><img src="http://valeriofarias.com/wp-content/uploads/2012/05/form-final-300x47.jpg" alt="" title="form-final" width="300" height="47" class="aligncenter size-medium wp-image-400" /></a>
