#language: pt
#utf-8

Funcionalidade: Cadastrar e editar usuário
Logar no site ORANGEHRM e cadastrar um novo empregado e editar um existente.


@cadastro_OrangeRhm
Cenario: Cadastro do usuário no site ORANGEHRM
Dado que dentro do site do site ORANGEHRM
Quando Efetuo o login de administrador corretamente
E Logado no site, efetuar o cadastro de um empregado
Então Cadastro efetuado com sucesso.

@atualiza
Cenario: editar o usuário no site ORANGEHRM
Dado Após login no ORANGEHRM
Quando Verifico a lista de usuarios
E Seleciono um cadastrado da lista
Então Edito normalmente e salvo o usuário