---
layout: post
title: "Git para gerentes de TI: Os comandos usados em 90% do tempo"
category: desenvolvimento de sistemas
tags: [git, controle de versão, gestão de TI]
---
{% include JB/setup %}

Simulando a utilização da Linguagem C# com Visual Studio. Mas, o processo a seguir serve para qualquer outra linguagem de programação.

## Inicializando com Git
- Instala o git na máquina, marcando a 2 opção de configuração Download do git
- Abre um prompt de comando DOS
- Configura nome: git config user.name "UserName"
- Configura email: git config user.email "username@rn.gov.br"
- Clona o projeto: git clone url.git
- entra na pasta do sistema clonado: cd pasta_do_sistema
- Cria branch dev: git branch dev
- muda para o branch dev: git checkout dev
- Faz o download do dev do servidor para o dev local: git pull origin dev

A partir daqui já pode abrir o projeto no Visual Studio e executá-lo

## Fazendo modificações em projetos com Git

- Ao chegar no trabalho atualize seu projeto local com as últimas mudanças do servidor: 'git pull origin dev'
- Faça as modificações no código fonte via VisualStudio
- Siga os 2 passos a seguir para adicionar suas mudanças no repositório local:
- git add .
- git commit -m "atualização no formulário de cadastro de curso"
- Envie para o servidor: git push origin dev

Continue repetindo esse fluxo enquanto durar o projeto

## Publicando um projeto com Git

- configure o endereço do servidor no VisualStudio
- No branch dev, clique com o botão direito no projeto interface e clique em publish
- Verifique se o projeto está funcionando corretamente.
- Se projeto funcionou corretamente atualize o branch master da seguinte forma:
- acesse o branch master: git checkout master
- execute o merge: git merge dev