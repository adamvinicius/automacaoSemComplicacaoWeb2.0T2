#language:pt

Funcionalidade: Login

  Contexto:
    Dado que a modal esteja sendo exibida
  @fecharModal
  Cenario: Fechar a modal ao clicar fora da mesma
    Quando for realizado um clique fora da modal
    Entao a janela modal deve ser fechada
  @fecharModalIcone
  Cenario: Fechar a modal ao clicar no icone fechar
    Quando for realizado um clique no icone de fechar da modal
    Entao a janela modal deve ser fechada
  @createNewAccount
  Cenario: Link Create New Account
    Quando for realizado um clique no link Create New Account
    Entao a pagina Create Account deve ser exibida
  @loginComSucesso
  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Entao deve ser possivel logar no sistema
    Exemplos:
      | identificacao       | login   | password | remember |
      | campos obrigatorios | chronos | Senha123 | false    |
      | todos os campos     | chronos | Senha123 | true     |
  @loginInvalido
  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Entao o sistema deve exibir uma mensagem de erro
    Exemplos:
      | identificacao    | login    | password | remember |
      | usuario invalido | invalido | Senha123 | false    |
      | senha invalida   | chronos  | invalida | false    |
  @dadosEmBranco
  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Entao o botao sign in deve permanecer desabilitado
    Exemplos:
      | identificacao     | login   | password | remember |
      | usuario em branco |         | senha    | false    |
      | senha em branco   | chronos |          | false    |



