import 'package:flutter_app_storage/models/cep_model.dart';
import 'package:flutter_app_storage/repositories/back4app/back4app_custom_dio.dart';

class CEPBack4AppRepository {
  final _back4AppCustom = Back4AppCustomDio();

  Future<CepModel> getCep(String cep) async {
    final response = await _back4AppCustom.dio.get('/Cep');

    return CepModel.fromJson(response.data);
  }

  Future<void> criar(CepModel cepModel) async {
    try {
      await _back4AppCustom.dio.post("/Cep", data: cepModel.toJson());
    } catch (e) {
      rethrow;
    }
  }

  Future<void> atualizar(CepModel cepModel) async {
    try {
      await _back4AppCustom.dio
          .put("/Cep/${cepModel.objectId}", data: cepModel.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
