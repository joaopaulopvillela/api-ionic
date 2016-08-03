API de comunicação do o Aplicativo de Meus convidados
==============================

Requisitos
------------

Por favor, consulte o arquivo [composer.json] (composer.json).

Instalação
-----------

### Via Git (clone)

Em primeiro lugar, clonar o repositório:

```bash
git clone https://github.com/joaopaulopvillela/api-ionic.git 
cd path/to/install
```

Neste ponto, você precisa usar [Composer] (https://getcomposer.org/) para instalar
dependências. Supondo que você já tem Compositor:

```bash
composer.phar install
```

### Todos os métodos

Depois de ter a instalação básica, você precisa colocá-lo no modo de desenvolvimento:

```bash
cd path/to/install
php public/index.php development enable # colocar a api no modo de desenvolvimento
```

Agora, vamos la! Execute um dos seguintes procedimentos:

- Criar um vhost em seu servidor web que aponta o DocumentRoot para o
  `public/` diretório do projeto
- Fogo até o built-in servidor web em PHP (5.4.8+) (** Nota **: não use isso para Produção!)

Neste último caso, faça o seguinte:

```bash
cd path/to/install
php -S 0.0.0.0:8080 -ddisplay_errors=0 -t public public/index.php
```

Em seguida, pode visitar o site em http://localhost:8080/ - o que fará com que 
uma página de boas-vindas e a possibilidade de visitar o painel de instrumentos, 
a fim de criar e inspecionar suas APIs.

### NOTA sobre como usar o PHP Built-in servidor WEB

servidor web embutido do PHP não começar a apoiar o método `HTTP PATCH` até 5.4.8. 
Uma vez que a API de administração faz uso deste método HTTP, você deve usar uma 
versão &gt;= 5.4.8 quando utilizar o servidor web embutido.

### NOTA USANDO APACHE

Apache proíbe a sequências de caracteres `%2F` e`%5C` em caminhos URI. No entanto, 
a API Apigility administrador utiliza estes caracteres para um número de terminais de 
serviços. Como tal, se você quiser usar a interface do usuário do administrador e/ou API 
administrador com o Apache, você precisará configurar o Apache vhost / projeto para permitir barras codificadas:

```apache
AllowEncodedSlashes On
```

Esta mudança terá de ser feita no ficheiro vHost do seu servidor (não pode ser adicionado ao `.htaccess`).

### NOTA SOBRE OPCACHE

** Desative todos os caches opcode ao executar o administrador! **

O administrador não pode e não será executado corretamente quando um opcode cache, 
tais como APC ou OpCache, está habilitado. Apigility não usa um banco de dados para armazenar a configuração;
em vez disso, ele usa arquivos de configuração do PHP. caches opcode irá armazenar 
em cache esses arquivos em primeira carga, levando a inconsistências como você escrever 
para eles, e normalmente irá levar a um estado em que a API de administração e código de ficar inutilizado.

O administrador é um **development** ferramenta, e destinado a ser utilizado um ambiente de desenvolvimento. 
Como tal, você provavelmente deve desabilitar o cache opcode, independentemente.

Quando estiver pronto para implantar seu API para a **production**, no entanto, você 
pode desativar o modo de desenvolvimento, impossibilitando assim a interface de administração, 
e executar com segurança um opcode cache novamente. Se o fizer, é recomendado para a produção
devido aos benefícios de desempenho enormes caches opcode fornecem.

### NOTA SOBRE display_errors

A configuração `display_errors` no `php.ini` é útil no desenvolvimento de entender o que as 
advertências, avisos e condições de erro estão afetando sua aplicação. No entanto, eles causar problemas para APIs:
APIs são tipicamente um formato de serialização específico e relatório de erros é geralmente ou 
em texto simples, ou, com extensões como XDebug, em HTML. Isso quebra a carga de resposta, 
tornando-o inutilizável pelos clientes.

Por este motivo, recomendamos desativar `display_errors` ao usar a interface Apigility administrador.
Isso pode ser feito usando o `-ddisplay_errors = 0` bandeira ao usar o built-in PHP servidor web, 
ou você pode configurá-lo em sua definição de host ou servidor virtual. Se você desativá-lo, verifique 
se você tem as configurações de log de erro razoáveis ​​no lugar. Para o servidor web PHP built-in, os 
erros serão relatados no console em si; de outra forma, garantir que você tenha um arquivo de log de erro 
especificado na sua configuração.

`display_errors` deve *nunca* estar habilitado produção, independentemente.
