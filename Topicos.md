Dia 1
=====

Configuração do Ambiente
-------------------------

### Instalação do RVM (Ruby Version Manager)

bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

### Instalar dependências
    Ver `rvm notes`

    Para um sistema Ubuntu, ele retorna:
    `/usr/bin/apt-get install build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake

    Nota: Se esse passo não for executado, o Ruby resultante vai ter menos funcionalidades do que o esperado.
   
### Instalar Ruby

    Usando o Ruby-1.9.2 neste exemplo:
    `rvm install 1.9.2`

    Se for desejada um _patchlevel_ diferente:
    `rvm install 1.9.2-p390`

### Instalar `rake` e `bundler` no _gemset_ global:

    `rvm use 1.9.2@global`

### Criar um _gemset_ para a nova aplicação (exemplo: SCS)

    `rvm gemset create scs`

### Indicando ao RVM qual o Ruby e o Gemset desejados:

    `rvm use 1.9.2@scs`

### Instalando o rails

    `gem install rails`

    Se for desejada uma versão específica:

    `gem install rails -V=3.2.2`

### Criando a nova aplicação:

    `rails new scs`

    Nota: Em versões mais novas do Rails, o comando 'bundle install' é executado automaticamente. Dependendo das configurações de rede, este comando pode falhar, ou demorar um longo tempo para completar. Para evitar isso, pode-se usar o cache de gems. Para utilizá-lo, deve-se alterar o arquivo Gemfile como abaixo:

    `#source 'https://rubygems.org'
     source 'http://172.25.137.101:8808'`

### Adicionando a aplicação ao GIT (repositório local)

    Dentro do diretório da aplicação:
    
    `git init` (deve ser feito na primeira vez, apenas por quem criar o repositório)
    `git add .`
    `git commit` (git vai pedir uma mensagem de commit)

    Nota: O `git commit` não envia nada para o servidor.

### Alternativa: Aplicação já criada e adicionada ao controle de versão

    Usar o comando `git clone git@github.com:outworlder/SCS.git` para baixar a aplicação direto do GitHub.
    
### Instalar as gems

    `bundle install`

### Iniciar o servidor

    `rails s` ou `rails server`

    Acessar em `http://localhost:3000`


Aplicação de exemplo
--------------------

A aplicação de exemplo foi batizada criativamente de "Sistema de Controle de Sistemas". É uma aplicação que tem como objetivo cadastrar os sistemas rodando dentro do ambiente da empresa, escolhendo a linguagem e os servidores associados.


*TODO*: Detalhar o que foi visto aqui. Paramos no relacionamento entre Sistema e Linguagem.


Dia 2
=====

Continuando o desenvolvimento da aplicação.

Backlog:

	* Usar Postgresql
 	* Mais validações (validar ip?)
	* Adicionar o relacionamento com Servidor
	* Adicionar um servidor na view
	
	Se der tempo:
	* Testes unitários 
	* Debugging

Dia 3
=====

Backlog:
	* Adicionar mais servidores por sistema
	* Adicionar restrições (2 servidores por sistema)
	* Adicionando um design decente (Twitter bootstrap?)
	  * VER: _Asset Pipeline_

Dia 4
=====

Backlog:
	* Criar menus
	* "Ajax"
	* Deployment com Capistrano

Dia 5
=====

GIT
---

Dia 6 em diante
===============

TVN! :D
-------