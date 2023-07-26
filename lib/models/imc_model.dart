class IMCModel {
  double? altura;
  double? peso;
  double? imc;
  String? user;

  IMCModel({
    this.altura,
    this.peso,
    this.imc,
    this.user,
  });

  factory IMCModel.fromJson(Map<String, dynamic> json) => IMCModel(
        altura: json["altura"],
        peso: json["peso"],
        imc: json["imc"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "altura": altura,
        "peso": peso,
        "imc": imc,
        "user": user,
      };
}
