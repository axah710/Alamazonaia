// import 'package:dio/dio.dart';

// class Api {
//   Dio dio = Dio();

//   Future<dynamic> get({required String url, String? token}) async {
//     try {
//       Options options = Options(headers: {'Authorization': 'Bearer $token'});
//       Response response = await dio.get(url, options: options);

//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         throw Exception(
//             'There is a problem with status code ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }

//   Future<dynamic> post(
//       {required String url, required dynamic body, String? token}) async {
//     try {
//       Options options = Options(headers: {'Authorization': 'Bearer $token'});
//       Response response = await dio.post(url, data: body, options: options);

//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         throw Exception(
//             'There is a problem with status code ${response.statusCode} with body ${response.data}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }

//   Future<dynamic> put(
//       {required String url, required dynamic body, String? token}) async {
//     try {
//       Options options = Options(
//         headers: {
//           'Authorization': 'Bearer $token',
//           'Content-Type': 'application/x-www-form-urlencoded'
//         },
//       );
//       Response response = await dio.put(url, data: body, options: options);

//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         throw Exception(
//             'There is a problem with status code ${response.statusCode} with body ${response.data}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
// }
