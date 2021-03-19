class Usuario {
  String _idUser;
  String _nome;
  String _email;
  String _senha;
  String _dataDeNascimento;
  String _cpf;
  String _numeroTelefone1;
  String _numeroTelefone2;
  String _enderecoLogradouro;
  String _enderecoCidade;
  String _enderecoNumero;


  Usuario();

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }
}
