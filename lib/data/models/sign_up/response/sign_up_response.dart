// class SignUpResponse {//   String? token;//   // String? message;////   SignUpResponse(//     this.token,//     // this.message//   );////   SignUpResponse.fromJson(Map<String, dynamic> json) {//     token = json['token'];//     // message = json['message'];//   }////   Map<String, dynamic> toJson() {//     final Map<String, dynamic> data = <String, dynamic>{};//     data['token'] = token;//     // data['message'] = message;//     return data;//   }// }import 'package:freezed_annotation/freezed_annotation.dart';part 'sign_up_response.freezed.dart';part 'sign_up_response.g.dart';@freezedclass SignUpResponse with _$SignUpResponse {  const factory SignUpResponse(String token) = _SignUpResponse;  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>      _$SignUpResponseFromJson(json);}