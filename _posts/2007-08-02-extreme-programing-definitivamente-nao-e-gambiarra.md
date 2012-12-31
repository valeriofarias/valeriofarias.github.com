---
layout: post
title: Extreme Programing definitivamente não é Gambiarra!
category: Desenvolvimento de Sistemas
tags: [desenvolvimento de sistemas, software, desenvolvimento ágil]
---

{% include JB/setup %}

Nessa primeira sessão do  "Pense nisso", vou contar para vocês um caso que me ocorreu na saída do meu curso de especialização. Eu consegui uma carona e no carro tinha alguns alunos e alguns professores que continuaram a discussão sobre boas práticas de software, sobre RUP também, que foi um subtema de uma palestra sobre engenharia de software. Mas sem argumentos mais técnicos, simplesmente associaram o XP (Extreme Programing) à uma prática de gambiarra e inclusive citaram até o POG (programação orientada a gambiarras).

Bom, como vocês podem perceber não coloquei nem vou colocar link para páginas que explicam sobre POG, pois trata-se de práticas que realmente são inúteis para um desenvolvedor, mas caso queiram ler com o intuito de distração, ou divertimento sem tomar como referência profissional, podem colocar o termo no google ou na wikipedia que encontrarão algo.

Vejam a definição de <a href="http://pt.wikipedia.org/wiki/Gambiarra">gambiarra</a> citada por Rodrigo em sua dissertação de Mestrado.

"Gambiarra é o nome dado informalmente ao procedimento necessário para a configuração de um artefato improvisado. O termo também costuma ser usado para definir o artefato em si."

Ele também mostra que é preciso compreender tal atitude como um raciocínio projetivo imediato, determinado em situações momentâneas além de associa-lo culturalmente ao chamado jeitinho brasileiro.

Já sei, agora vocês querem saber o que é que isso tem a ver com a prática do XP.

É exatamente isso que vocês pensaram! Não tem absolutamente nada a ver! XP não é improviso, não é um jeitinho e definitivamente não é gambiarra!

O XP são um conjunto de práticas consolidadas que visa tornar o desenvolvimento de software mais dinâmico, <a href="http://www.improveit.com.br/xp/praticas/design_incremental">incremental</a>, com maior velocidade de resposta, com mudanças freqüentes e sempre com <a href="http://www.improveit.com.br/xp/praticas/cliente_real">participação ativa do cliente</a> e usuários.

Ele segue com princípios contrários a outras práticas mais tradicionais, devido ao gargalo formado pelo excesso de documentação e dificuldade de comunicação efetiva entre os diversos responsáveis pelo desenvolvimento. Que terminavam com muita freqüência entregando software com prazo extrapolado e muitas vezes com cliente insatisfeito, que quando não falava pelo menos pensava na seguinte frase: "Não é nada disso que eu estava querendo!".

Ao invés de separar a equipe por funções diferenciadas: analista, gerente de projeto, programadores, etc, cada integrante deve estar envolvido em todo o processo do desenvolvimento de um software, da reunião para decidir o que deverá ser feito, de uma análise para definir como será feito, criação do teste (TDD), criação do módulo escolhido (interface que o usuário poderá testar para dar seu feedback). Essa forma de deixar o profissional ficar a par de todo o processo, deixando-o muito bom no específico ato criativo de programar e também possibilitando uma visão geral foi inspirado na metodologia da Toyota.

Na década de 40 a Toyota precisava encontrar formas de produzir automóveis com maior agilidade e qualidade e ao mesmo tempo reduzindo os custos. Foi assim que criou a chamada Produção Enxuta e aperfeiçoou por décadas, hoje é conhecida como <em>just in time</em>.

O quinto e o sétimo princípio básico do método se chama "delegar poder à equipe" e "Ver o Todo" respectivamente. Eles partem do princípio que para ampliar ao máximo a qualidade é necessário obter os detalhes corretamente e a pessoa mais adequada para isso são as que efetivamente executam o trabalho, no popular "põem a mão na massa". Coordenando com isso a uma constante verificação do todo, o conjunto final deve ser sempre mais importante que um componente específico, o que gera a necessidade de cada integrante estar além de sua especificidade tomando decisões também em níveis de análise e projeto.

Utilizando desses e de outros princípios, a Toyota conseguiu em abril de 2007 a marca história e simbólica de <a href="http://www.wsws.org/pt/2007/apr2007/toyo-a28.shtml"> ultrapassar a General Motors(GM)</a> na venda mundial de automóveis.

Em sua <a href="http://www.treinatom.com.br/betaEventos">palestra sobre XP</a> utilizando a interface do Treina Tom, Vinícius Teles mostrou um slide com a foto de Jack Järkvik que é o Vice-Presidente da Ericsson na suécia e que ele falava do quanto a empresa ganhava dinheiro no decorrer dos anos. Muito dinheiro, mas muito dinheiro mesmo! Falou também que Jack apontou para a tela que mostrava as práticas do XP e disse que tudo isso que estava sendo exposto no evento sobre XP eles já utilizavam desde a década de oitenta, que conseqüentemente foi o que fez com que eles ganhassem muito dinheiro.

Peço então aos que ainda acham que XP é gambiarra que perguntem aos dirigentes da Toyota e da Ericsson se os processos deles são gambiarra e acho que terão uma resposta muito interessante. E ainda dou uma dica, <a href="http://www.improveit.com.br/vinicius">Vinícius</a> falou que o Vice-Presidente da Ericsson em sua palestra tinha uma postura bem arrogante. Aqui em baixo está a foto dele para vocês terem uma noção:

<img src='http://valeriofarias.files.wordpress.com/2007/08/jack.jpg' alt='vice presidente da ericsson jack Järkvik' />


Mas ainda acredito bastante na liberdade de expressão, pois foi justamente por isso que consegui ter contato com novos conceitos e tenho também confiança que alunos, profissionais ou pessoas antenadas vão saber detectar a diferença entre um comentário superficial, sem valor, e um comentário melhor elaborado, que aliás é um dos princípios da academia, que repassa conceitos científicos e filosóficos para o cidadão obter mais ferramentas além do conhecimento do senso comum, que é importante, mas quando lidamos com ambientes de produção, ele sozinho não dá conta do domínio do problema.

Mas aí algum profissional pode me questionar, mas o <a href="http://pt.wikipedia.org/wiki/Rational_Unified_Process">RUP</a> tem dado certo em instituições como Banco do Nordeste e não é uma metodologia ágil.

Não estou aqui me desfazendo de nenhum outro processo, só estou afirmando tecnicamente e historicamente que o XP é um processo válido, consolidado e tem gerado resultados bons, inclusive em grandes empresas. Sou a favor que o aluno tenha contato com diversas abordagens e no fim tome a decisão de tentar seguir a que mais se aproxime das suas expectativas e princípios. Confirmo novamente que a desburocratização do processo de comunicação que é praticado no XP torna o ambiente mais dinâmico, menos entediante e mais saudável para essa geração que não se identifica muito com exagero de hierarquias e processos   burocráticos, para pessoas que gostam de priorizar o software e não o exagero de documentos.

Com relação a documentação, sempre há a dúvida se é feita ou não no XP. Sim é feita mas como complemento, somente o necessário, depois da iteração terminada e mostrado algum resultado  para o cliente (interface do software) e ele afirmar que é realmente o que ele procura. A própria classe, se for bem feita é facilmente compreendida por um desenvolvedor experiente, que já pode ser considerado um documento que nunca fica desatualizado. Mas sabemos que também é importante dependendo da complexidade do software complementar com por exemplo um diagrama de classes ou um diagrama ER para obter facilmente uma visão geral do sistema, mas eles são utilizados primeiramente para planejar (tentar encontrar as melhores combinações em um nível de abstração mais alto) e consequentemente como documentação. Outro fator que complementa a documentação são os testes automatizados <a href="http://www.improveit.com.br/xp/praticas/tdd">TDD</a> (Desenvolvimento Orientado a Teste) que no caso específico dos testes unitários são rotinas para verificar se determinada classe terá um funcionamento adequado ou não, dando uma garantia melhor para que seja evitado falhas. Para garantir a integridade dessas práticas voltadas "mais para o software menos para os documentos", utiliza-se as técnica de <a href="http://www.improveit.com.br/xp/praticas/refatoracao">refatoração</a> com o objetivo de deixar o código cada vez mais simples, sem modificar a execução e <a href="http://www.improveit.com.br/xp/praticas/programacao_par">programação em pares</a> que consegue diminuir a quantidade de falhas que um programador individualmente poderia cometer além de propagar o conhecimento sobre o software de uma forma que se torne responsabilidade de cada membro da equipe, não somente de indivíduos isolados.

Para fechar digo também que as práticas do XP não devem ser tomadas como imposições necessárias para obter sucesso. Elas podem e devem ser modificadas dependendo do contexto, podem ou não ser usadas em conjunto. Elas devem ser tomadas como princípios que podem ser aprimorados.

Bom, fico por aqui, até o próximo "Pense nisso".
Para saber mais sobre XP e metodologias ágeis acessem os seguintes links:

- <a href="http://www.improveit.com.br/">
Dissertação de Vinicius Teles e um extenso material de divulgação do XP e suas práticas</a>

- <a href="http://tudoquequerosaber.com/">Podcasts tudoquequerosaber sobre desenvolvimento ágil</a>

- <a href="http://blog.improveit.com.br/articles/tag/podcast">podcast da improvit sobre Extreme Programing</a>

- <a href="http://agilcoop.incubadora.fapesp.br/portal/agilcast">Podcast da Cooperativa de Desenvolvimento Ágil de Software - Agilcoop</a>
