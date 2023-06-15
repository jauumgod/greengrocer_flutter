String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENTIALS':
      return 'Email ou senha Invalidos!';
    case 'INVALID_SESSION_TOKEN':
      return 'Token Invalido.';

    default:
      return 'Um erro indefinido ocorreu.';
  }
}
