String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENTIALS':
      return 'Email ou senha Invalidos!';

    case 'INVALID_SESSION_TOKEN':
      return 'Token Invalido.';

    case 'INVALID_FULLNAME':
      return 'Ocorreu um erro ao cadastrar usuario, nome inválido.';

    case 'INVALID_PHONE':
      return 'Ocorreu um erro ao cadastrar usuario, nome inválido.';

    case 'INVALID_CPF':
      return 'Ocorreu um erro ao cadastrar usuario, nome inválido.';

    default:
      return 'Um erro indefinido ocorreu.';
  }
}
