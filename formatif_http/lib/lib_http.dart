import 'package:dio/dio.dart';
import 'package:formatif_http/transfer.dart';

Future<List<Nombre>> getNombreInfo(int nombre) async {
  try {
    Dio dio = Dio();
    Response<dynamic> response = await dio.get('https://fourn6-mobile-prof.onrender.com/exam/representations/' + nombre.toString());
    print(response);
    var listeJSON = response.data as List;
    var listeTruc = listeJSON.map(
            (elementJSON) {
          return Nombre.fromJson(elementJSON);
        }
    ).toList();
    return listeTruc;
  } catch (e) {
    print(e);
    rethrow;
  }
}