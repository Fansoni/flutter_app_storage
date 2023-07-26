class UserModel {
  String? cep;
  String? nome;
  String? foto;

  UserModel({
    this.cep,
    this.nome,
    this.foto,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        cep: json["cep"],
        nome: json["nome"],
        foto: json["foto"],
      );

  Map<String, dynamic> toJson() => {
        "cep": cep,
        "nome": nome,
        "foto": foto,
      };
}
