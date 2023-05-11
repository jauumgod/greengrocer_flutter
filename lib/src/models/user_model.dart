class UserModel {
  String nome, email, celular, cpf, senha;

  UserModel({required this.nome,
    required this.email,
    required this.celular,
    required this.cpf,
    required this.senha
  });
}

UserModel user = UserModel(nome: 'Joao Marcos',
                          email: 'joao@gmail.com',
                          celular:' 92965-4854',
                          cpf: '96596421522',
                          senha: '');