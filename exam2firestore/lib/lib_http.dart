import 'package:dio/dio.dart';
import 'package:exam2firestore/transfer.dart';

Future<int> envoyerNumbers(RequetePlusGrand requetePlusGrand) async {
  try {
    Dio dio = Dio();
    var response = await dio.post('http://10.0.2.2:8080/examen/plusgrand/', data: requetePlusGrand.toJson());
    print(response);
    return response.data;
  } catch (e) {
    print(e);
    rethrow;
  }
}