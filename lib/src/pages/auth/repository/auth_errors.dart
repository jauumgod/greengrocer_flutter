String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENTIALS':
      return 'Email ou senha Invalidos!';

    default:
      return 'Um erro indefinido ocorreu.';
  }
}
