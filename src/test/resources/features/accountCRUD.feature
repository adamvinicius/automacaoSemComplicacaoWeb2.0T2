#language:pt
Funcionalidade: AccountCRUD

  @cadastroConta
  Cenario: Cadastro nova conta
    Dado que a pagina new account esteja sendo exibida
    Quando os campos de cadastro estiverem preenchido com
      | username | chronosTeste         |
      | email    | chronos@email.com.br |
      | password | Senha123             |
      | contry   | Brazil               |
    Entao deve ser possivel logar no sistema
