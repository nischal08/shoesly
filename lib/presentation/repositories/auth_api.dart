// import 'dart:developer';

// import 'package:shoesly/core/dio/dio_dependency_injection.dart';
// import 'package:shoesly/core/values/constants/app_urls.dart';
// import 'package:shoesly/core/values/enums.dart';
// import 'package:shoesly/presentation/models/response/login_response_model.dart';

// abstract class AuthRepository {
//   Future<LoginResponseModel> login(Map data);
//   Future<dynamic> register(Map data);
// }

// class AuthRepositoryImpl extends AuthRepository {
//   @override
//   Future<LoginResponseModel> login(Map data) async {
//     try {
//       final response = await getApiClient().request(
//         url: AppUrls.loginUrl,
//         body: data,
//         requestType: RequestType.post,
//       );
//       return LoginResponseModel.fromJson(response);
//     } catch (e) {
//       rethrow;
//     }
//   }

//   @override
//   Future<dynamic> register(Map data) async {
//     try {
//       final response = await getApiClient().request(
//         url: AppUrls.registerApiUrl,
//         body: data,
//         requestType: RequestType.post,
//       );
//       log(data.toString(), name: "Sign Up Data");
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
