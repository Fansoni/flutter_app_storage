class TelefoneModel {
  String? telefone;
  String? user;

  TelefoneModel({
    this.telefone,
    this.user,
  });

  factory TelefoneModel.fromJson(Map<String, dynamic> json) => TelefoneModel(
        telefone: json["telefone"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "telefone": telefone,
        "user": user,
      };
}
